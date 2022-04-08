#include "node_embedding.h"
#include "message_passing.h"
#include "hls_math.h"

// #region Internal Function Declarations
static void accumulate(
    FM_TYPE message[NUM_AGGRS][EMB_DIM],
    FM_TYPE h_node_v[EMB_DIM],
    FM_TYPE accs[EMB_DIM],
    FM_TYPE h_node_buf[EMB_DIM],
    int in_degree,
    int out_degree,
    FM_TYPE log_degree,
    int layer_num,
    int dim_base
);
static void output(
    FM_TYPE h_node_v[EMB_DIM],
    FM_TYPE accs[EMB_DIM],
    FM_TYPE h_node_buf[EMB_DIM],
    hls::stream<ne_out_t>& embeddings,
    int dim_base
);
// #endregion

void node_embedding_multi_pe(
    hls::stream<ne_out_t> embeddings[NODE_PARALLEL],
    FM_TYPE message[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][NUM_AGGRS][EMB_DIM],
    int layer_num,
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=h_node cyclic factor=NODE_PARALLEL dim=1
#pragma HLS ARRAY_PARTITION variable=h_node cyclic factor=APPLY_PARALLEL dim=2

    FM_TYPE accs_ping[NODE_PARALLEL][EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=accs_ping complete dim=1
#pragma HLS ARRAY_PARTITION variable=accs_ping complete dim=2
    FM_TYPE accs_pong[NODE_PARALLEL][EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=accs_pong complete dim=1
#pragma HLS ARRAY_PARTITION variable=accs_pong complete dim=2
    FM_TYPE h_node_ping[NODE_PARALLEL][EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=h_node_ping complete dim=1
#pragma HLS ARRAY_PARTITION variable=h_node_ping cyclic factor=APPLY_PARALLEL dim=2
    FM_TYPE h_node_pong[NODE_PARALLEL][EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=h_node_pong complete dim=1
#pragma HLS ARRAY_PARTITION variable=h_node_pong cyclic factor=APPLY_PARALLEL dim=2

    int num_iters = ceildiv(num_of_nodes, NODE_PARALLEL) + 1;
    for (
        int i = 0, acc_v_base = 0, out_v_base = -NODE_PARALLEL;
        i < num_iters;
        i++, acc_v_base += NODE_PARALLEL, out_v_base += NODE_PARALLEL
    )
    {
#pragma HLS LOOP_TRIPCOUNT min=(ceildiv(ANALYSIS_MIN_NODES, NODE_PARALLEL) + 1) max=(ceildiv(ANALYSIS_MAX_NODES, NODE_PARALLEL) + 1) avg=(ceildiv(ANALYSIS_AVG_NODES, NODE_PARALLEL) + 1)
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += APPLY_PARALLEL)
        {
#pragma HLS PIPELINE II=1
#pragma HLS DEPENDENCE variable=message inter false

            if (i != 0)
            {
                for (int v_offset = 0; v_offset < NODE_PARALLEL; v_offset++)
                {
#pragma HLS UNROLL
                    int v = out_v_base + v_offset;
                    if (v < num_of_nodes)
                    {
                        output(
                            h_node[v],
                            (i % 2 == 0) ? accs_pong[v_offset] : accs_ping[v_offset],
                            (i % 2 == 0) ? h_node_pong[v_offset] : h_node_ping[v_offset],
                            embeddings[v_offset],
                            dim_base
                        );
                    }
                }
            }

            if (i != num_iters - 1)
            {
                for (int v_offset = 0; v_offset < NODE_PARALLEL; v_offset++)
                {
#pragma HLS UNROLL
                    int v = acc_v_base + v_offset;
                    if (v < num_of_nodes)
                    {
                        accumulate(
                            message[v % EDGE_PARALLEL][v / EDGE_PARALLEL],
                            h_node[v],
                            (i % 2 == 0) ? accs_ping[v_offset] : accs_pong[v_offset],
                            (i % 2 == 0) ? h_node_ping[v_offset] : h_node_pong[v_offset],
                            in_degree_table[v],
                            out_degree_table[v],
                            log_degrees[v],
                            layer_num,
                            dim_base
                        );
                    }
                }
            }
        }
    }
}

static void accumulate(
    FM_TYPE message[NUM_AGGRS][EMB_DIM],
    FM_TYPE h_node_v[EMB_DIM],
    FM_TYPE accs[EMB_DIM],
    FM_TYPE h_node_buf[EMB_DIM],
    int in_degree,
    int out_degree,
    FM_TYPE log_degree,
    int layer_num,
    int dim_base
)
{
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=node_conv_weights complete dim=2
#pragma HLS ARRAY_PARTITION variable=node_conv_weights complete dim=3
#pragma HLS ARRAY_PARTITION variable=node_conv_weights complete dim=4
#pragma HLS ARRAY_PARTITION variable=node_conv_weights cyclic factor=APPLY_PARALLEL dim=5
#pragma HLS ARRAY_PARTITION variable=node_conv_bias complete dim=2

    if (in_degree == 0) in_degree = 1;

    for (int dim_offset = 0; dim_offset < APPLY_PARALLEL; dim_offset++)
    {
#pragma HLS UNROLL
        int dim_in = dim_base + dim_offset;

        FM_TYPE h_node_el = h_node_v[dim_in];
        h_node_buf[dim_in] = h_node_el;

        FM_TYPE sum = message[AGGR_MEAN][dim_in];
        FM_TYPE sum_squares = message[AGGR_STD][dim_in];
        FM_TYPE min = message[AGGR_MIN][dim_in];
        FM_TYPE max = message[AGGR_MAX][dim_in];

        // clear message table in preparation for next round of message passing
        reset_message(message, dim_in);

        // calculate stddev from mean of values and mean of their squares
        // https://en.wikipedia.org/wiki/Algorithms_for_calculating_variance#Na%C3%AFve_algorithm
        FM_TYPE mean = sum / in_degree;
        FM_TYPE stddev = hls::sqrt(ap_fixed_relu<FM_TYPE>(
            FM_TYPE(sum_squares / in_degree) - FM_TYPE(mean * mean)));

        // calculate scaling factors
        FM_TYPE t = log_degree / avg_deg;
        FM_TYPE scale = avg_deg / log_degree;
        if (scale == 0) scale = 1;

        for (int dim_out = 0; dim_out < EMB_DIM; dim_out++)
        {
#pragma HLS UNROLL
            FM_TYPE addend = (
                mean * node_conv_weights[layer_num][dim_out][SCALER_NONE][AGGR_MEAN][dim_in]
                + stddev * node_conv_weights[layer_num][dim_out][SCALER_NONE][AGGR_STD][dim_in]
                + min * node_conv_weights[layer_num][dim_out][SCALER_NONE][AGGR_MIN][dim_in]
                + max * node_conv_weights[layer_num][dim_out][SCALER_NONE][AGGR_MAX][dim_in]
                + FM_TYPE(mean * t) * node_conv_weights[layer_num][dim_out][SCALER_T][AGGR_MEAN][dim_in]
                + FM_TYPE(stddev * t) * node_conv_weights[layer_num][dim_out][SCALER_T][AGGR_STD][dim_in]
                + FM_TYPE(min * t) * node_conv_weights[layer_num][dim_out][SCALER_T][AGGR_MIN][dim_in]
                + FM_TYPE(max * t) * node_conv_weights[layer_num][dim_out][SCALER_T][AGGR_MAX][dim_in]
                + FM_TYPE(mean * scale) * node_conv_weights[layer_num][dim_out][SCALER_SCALE][AGGR_MEAN][dim_in]
                + FM_TYPE(stddev * scale) * node_conv_weights[layer_num][dim_out][SCALER_SCALE][AGGR_STD][dim_in]
                + FM_TYPE(min * scale) * node_conv_weights[layer_num][dim_out][SCALER_SCALE][AGGR_MIN][dim_in]
                + FM_TYPE(max * scale) * node_conv_weights[layer_num][dim_out][SCALER_SCALE][AGGR_MAX][dim_in]
            );
            FM_TYPE bias = node_conv_bias[layer_num][dim_out];
            accs[dim_out] = addend + ((dim_in == 0) ? bias : accs[dim_out]);
        }
    }
}

static void output(
    FM_TYPE h_node_v[EMB_DIM],
    FM_TYPE accs[EMB_DIM],
    FM_TYPE h_node_buf[EMB_DIM],
    hls::stream<ne_out_t>& embeddings,
    int dim_base
)
{
#pragma HLS INLINE
    ne_out_t output;
#pragma HLS AGGREGATE variable=output
    for (int dim_offset = 0; dim_offset < APPLY_PARALLEL; dim_offset++)
    {
#pragma HLS UNROLL
        int dim = dim_base + dim_offset;
        FM_TYPE acc = accs[dim];
        FM_TYPE relu_acc = (hls::signbit(acc)) ? FM_TYPE(0.0) : acc;
        FM_TYPE result = h_node_buf[dim] + relu_acc;
        h_node_v[dim] = result;
        output[dim_offset] = result;
    }
    embeddings << output;
}
