#include "load_inputs.h"
#include "message_passing.h"

using std::array;

static const int nd_feature_offsets[ND_FEATURE] = {0, 119, 123, 135, 147, 157, 163, 169, 171};

void load_weights(
    WT_TYPE node_conv_weights_in[NUM_LAYERS][EMB_DIM][NUM_SCALERS][NUM_AGGRS][EMB_DIM],
    WT_TYPE node_conv_bias_in[NUM_LAYERS][EMB_DIM],
    WT_TYPE graph_mlp_1_weights_in[GRAPH_MLP_1_OUT][EMB_DIM],
    WT_TYPE graph_mlp_1_bias_in[GRAPH_MLP_1_OUT],
    WT_TYPE graph_mlp_2_weights_in[GRAPH_MLP_2_OUT][GRAPH_MLP_1_OUT],
    WT_TYPE graph_mlp_2_bias_in[GRAPH_MLP_2_OUT],
    WT_TYPE graph_mlp_3_weights_in[NUM_TASK][GRAPH_MLP_2_OUT],
    WT_TYPE graph_mlp_3_bias_in[NUM_TASK],
    WT_TYPE avg_deg_in
)
{
#pragma HLS INLINE off
    memcpy(node_conv_weights, node_conv_weights_in, sizeof(WT_TYPE) * NUM_LAYERS * EMB_DIM * NUM_SCALERS * NUM_AGGRS * EMB_DIM);
    memcpy(node_conv_bias, node_conv_bias_in, sizeof(WT_TYPE) * NUM_LAYERS * EMB_DIM);
    memcpy(graph_mlp_1_weights, graph_mlp_1_weights_in, sizeof(WT_TYPE) * GRAPH_MLP_1_OUT * EMB_DIM);
    memcpy(graph_mlp_1_bias, graph_mlp_1_bias_in, sizeof(WT_TYPE) * GRAPH_MLP_1_OUT);
    memcpy(graph_mlp_2_weights, graph_mlp_2_weights_in, sizeof(WT_TYPE) * GRAPH_MLP_2_OUT * GRAPH_MLP_1_OUT);
    memcpy(graph_mlp_2_bias, graph_mlp_2_bias_in, sizeof(WT_TYPE) * GRAPH_MLP_2_OUT);
    memcpy(graph_mlp_3_weights, graph_mlp_3_weights_in, sizeof(WT_TYPE) * NUM_TASK * GRAPH_MLP_2_OUT);
    memcpy(graph_mlp_3_bias, graph_mlp_3_bias_in, sizeof(WT_TYPE) * NUM_TASK);
    avg_deg = avg_deg_in;
}

void load_graph(
    edge_t* edge_list_in,
    int num_of_nodes,
    int num_of_edges
)
{
#pragma HLS INLINE off

    int neighbor_table_offsets[MAX_NODE];
    int neighbor_tables_offsets[EDGE_PARALLEL][MAX_NODE];

#pragma HLS ARRAY_PARTITION variable=out_degree_tables complete dim=1
#pragma HLS ARRAY_PARTITION variable=out_degree_tables complete dim=3
#pragma HLS ARRAY_PARTITION variable=neighbor_tables complete dim=1
#pragma HLS ARRAY_PARTITION variable=neighbor_tables_offsets complete dim=1
#pragma HLS ARRAY_PARTITION variable=num_of_edges_per_pe complete dim=1

    for (int i = 0; i < num_of_nodes; i++)
    {
#pragma HLS LOOP_TRIPCOUNT min=ANALYSIS_MIN_NODES max=ANALYSIS_MAX_NODES avg=ANALYSIS_AVG_NODES
        in_degree_table[i] = 0;
        out_degree_table[i] = 0;

        for (int j = 0; j < EDGE_PARALLEL; j++)
        {
#pragma HLS UNROLL
            out_degree_tables[j][i][0] = 0;
        }
    }

    for (int i = 0; i < num_of_edges; i++)
    {
        // TODO: can we make this II=1?
#pragma HLS PIPELINE II=3
#pragma HLS LOOP_TRIPCOUNT min=ANALYSIS_MIN_EDGES max=ANALYSIS_MAX_EDGES avg=ANALYSIS_AVG_EDGES
        edge_t edge = edge_list_in[i];
        int u = edge.u;
        int v = edge.v;
        int pe_id = v % EDGE_PARALLEL;
        in_degree_table[v]++;
        out_degree_table[u]++;
        out_degree_tables[pe_id][u][0]++;
    }

    int acc = 0;
    for (int i = 0; i < EDGE_PARALLEL; i++)
    {
#pragma HLS UNROLL
        num_of_edges_per_pe[i] = 0;
    }

    for (int i = 0; i < num_of_nodes; i++)
    {
#pragma HLS LOOP_TRIPCOUNT min=ANALYSIS_MIN_NODES max=ANALYSIS_MAX_NODES avg=ANALYSIS_AVG_NODES
        int degree = out_degree_table[i];
        neighbor_table_offsets[i] = acc;
        acc += degree;
        log_degrees[i] = hls::log(FM_TYPE(degree + 1));

        for (int j = 0; j < EDGE_PARALLEL; j++)
        {
#pragma HLS UNROLL
            int degree_j = out_degree_tables[j][i][0];
            neighbor_tables_offsets[j][i] = num_of_edges_per_pe[j];
            out_degree_tables[j][i][1] = num_of_edges_per_pe[j];
            num_of_edges_per_pe[j] += degree_j;
        }
    }

    for (int i = 0; i < num_of_edges; i++)
    {
        // TODO: can we make this II=1?
#pragma HLS PIPELINE II=4
#pragma HLS LOOP_TRIPCOUNT min=ANALYSIS_MIN_EDGES max=ANALYSIS_MAX_EDGES avg=ANALYSIS_AVG_EDGES
        edge_t edge = edge_list_in[i];
        int u = edge.u;
        int v = edge.v;
        int pe_id = v % EDGE_PARALLEL;
        int e = neighbor_table_offsets[u];
        int e_pe = neighbor_tables_offsets[pe_id][u];
        neighbor_table_offsets[u] = e + 1;
        neighbor_tables[pe_id][e_pe] = v / EDGE_PARALLEL;
        neighbor_tables_offsets[pe_id][u] = e_pe + 1;
    }
}

void load_input_node_embeddings(
    hls::stream<ne_out_t> embeddings[NODE_PARALLEL],
    node_feature_t* node_feature,
    WT_TYPE node_embedding_weight[ND_FEATURE_TOTAL][EMB_DIM],
    FM_TYPE messages[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][NUM_AGGRS][EMB_DIM],
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=nd_feature_offsets complete dim=1

    /*Embedding: compute input node embedding */
    for (int nd = 0; nd < num_of_nodes; nd++)
    {
// I wouldn't pipeline this loop, myself, but Vitis wanted to, so:
#pragma HLS PIPELINE II=ceildiv(EMB_DIM, LOAD_IN_EMB_PARALLEL)
#pragma HLS LOOP_TRIPCOUNT min=ANALYSIS_MIN_NODES max=ANALYSIS_MAX_NODES avg=ANALYSIS_AVG_NODES

        array<WT_TYPE, EMB_DIM> weights[ND_FEATURE];
        node_feature_t node_feature_nd = node_feature[nd];
        for (int nf = 0; nf < ND_FEATURE; nf++)
        {
#pragma HLS UNROLL
            int nd_f = nd_feature_offsets[nf] + node_feature_nd[nf];
            weights[nf] = *((array<WT_TYPE, EMB_DIM>*)node_embedding_weight[nd_f]);
        }

        ne_out_t embedding;
        int embedding_offset = 0;
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += LOAD_IN_EMB_PARALLEL)
        {
// Commented out since we are pipelining the outer loop:
// #pragma HLS PIPELINE II=1
            for (int dim_offset = 0; dim_offset < LOAD_IN_EMB_PARALLEL; dim_offset++)
            {
                int dim = dim_base + dim_offset;
                FM_TYPE h_node_nd_dim = 0;
                for (int nf = 0; nf < ND_FEATURE; nf++)
                {
                    h_node_nd_dim += weights[nf][dim];
                }
                h_node[nd][dim] = h_node_nd_dim;

                embedding[embedding_offset] = h_node_nd_dim;
                if (embedding_offset == APPLY_PARALLEL - 1 || dim == EMB_DIM - 1)
                {
                    embeddings[nd % NODE_PARALLEL] << embedding;
                    embedding_offset = 0;
                }
                else
                {
                    embedding_offset++;
                }

                // in preparation for next round of message passing
                reset_message(messages[nd % EDGE_PARALLEL][nd / EDGE_PARALLEL], dim);
            }
        }
    }
}

void reset_messages(
    FM_TYPE messages[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][NUM_AGGRS][EMB_DIM],
    int num_of_nodes
)
{
#pragma HLS INLINE off

    int num_iters = ceildiv(num_of_nodes, EDGE_PARALLEL);
    for (int i = 0; i < num_iters; i++)
    {
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += SCATTER_PARALLEL)
        {
#pragma HLS PIPELINE II=1
            for (int nd_offset = 0; nd_offset < EDGE_PARALLEL; nd_offset++)
            {
                for (int dim_offset = 0; dim_offset < SCATTER_PARALLEL; dim_offset++)
                {
                    int dim = dim_base + dim_offset;
                    if (dim < EMB_DIM) reset_message(messages[nd_offset][i], dim);
                }
            }
        }
    }
}
