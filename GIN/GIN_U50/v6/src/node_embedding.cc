#include "node_embedding.h"

// #region Internal Function Declarations
static void accumulate(
    FM_TYPE message[EMB_DIM],
    FM_TYPE h_node_v[EMB_DIM],
    FM_TYPE accs[MLP_1_OUT],
    WT_TYPE eps,
    int layer_num,
    int dim_base
);
static void output(
    FM_TYPE h_node_v[EMB_DIM],
    FM_TYPE accs[MLP_1_OUT],
    hls::stream<ne_out_t>& embeddings,
    int layer_num,
    int dim_base
);
// #endregion

void node_embedding_multi_pe(
    hls::stream<ne_out_t> embeddings[NODE_PARALLEL],
    FM_TYPE message[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][EMB_DIM],
    int layer_num,
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=h_node cyclic factor=NODE_PARALLEL dim=1
#pragma HLS ARRAY_PARTITION variable=h_node cyclic factor=APPLY_PARALLEL dim=2

    FM_TYPE accs_ping[NODE_PARALLEL][MLP_1_OUT];
#pragma HLS ARRAY_PARTITION variable=accs_ping complete dim=1
#pragma HLS ARRAY_PARTITION variable=accs_ping complete dim=2
    FM_TYPE accs_pong[NODE_PARALLEL][MLP_1_OUT];
#pragma HLS ARRAY_PARTITION variable=accs_pong complete dim=1
#pragma HLS ARRAY_PARTITION variable=accs_pong complete dim=2

    WT_TYPE eps = node_mlp_eps[layer_num];
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
                            embeddings[v_offset],
                            layer_num,
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
                            eps,
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
    FM_TYPE message[EMB_DIM],
    FM_TYPE h_node_v[EMB_DIM],
    FM_TYPE accs[MLP_1_OUT],
    WT_TYPE eps,
    int layer_num,
    int dim_base
)
{
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=node_mlp_1_weights complete dim=2
#pragma HLS ARRAY_PARTITION variable=node_mlp_1_weights cyclic factor=APPLY_PARALLEL dim=3
#pragma HLS ARRAY_PARTITION variable=node_mlp_1_bias complete dim=2

    for (int dim_offset = 0; dim_offset < APPLY_PARALLEL; dim_offset++)
    {
#pragma HLS UNROLL
        int dim_in = dim_base + dim_offset;
        FM_TYPE message_dim = message[dim_in];
        FM_TYPE h_node_el = h_node_v[dim_in];

        // in preparation for next round of message passing
        message[dim_in] = 0;

        FM_TYPE activation = message_dim + (1 + eps) * h_node_el;
        for (int dim_out = 0; dim_out < MLP_1_OUT; dim_out++)
        {
#pragma HLS UNROLL
            FM_TYPE addend = activation * node_mlp_1_weights[layer_num][dim_out][dim_in];
            FM_TYPE bias = node_mlp_1_bias[layer_num][dim_out];
            accs[dim_out] = addend + ((dim_in == 0) ? bias : accs[dim_out]);
        }
    }
}

static void output(
    FM_TYPE h_node_v[EMB_DIM],
    FM_TYPE accs[MLP_1_OUT],
    hls::stream<ne_out_t>& embeddings,
    int layer_num,
    int dim_base
)
{
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=node_mlp_2_weights cyclic factor=APPLY_PARALLEL dim=2
#pragma HLS ARRAY_PARTITION variable=node_mlp_2_weights complete dim=3
#pragma HLS ARRAY_PARTITION variable=node_mlp_2_bias cyclic factor=APPLY_PARALLEL dim=2

    ne_out_t output;
#pragma HLS AGGREGATE variable=output

    for (int dim_offset = 0; dim_offset < APPLY_PARALLEL; dim_offset++)
    {
#pragma HLS UNROLL
        int dim = dim_base + dim_offset;

        FM_TYPE result = node_mlp_2_bias[layer_num][dim];
        for (int dim_in = 0; dim_in < MLP_1_OUT; dim_in++)
        {
#pragma HLS UNROLL
            FM_TYPE activation = accs[dim_in];
            result += ap_fixed_relu(activation) * node_mlp_2_weights[layer_num][dim][dim_in];
        }

        if (layer_num != NUM_LAYERS - 1)
        {
            result = ap_fixed_relu(result);
        }

        h_node_v[dim] = result;
        output[dim_offset] = result;
    }

    embeddings << output;
}
