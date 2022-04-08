#include "message_passing.h"

// #region Internal Function Declarations
static void filter(
    int pe_id,
    hls::stream<mp_in_t> unfiltered_embeddings_per_node[NODE_PARALLEL],
    hls::stream<int>& degrees,
    hls::stream<mp_in_t>& filtered_embeddings_per_node,
    int num_of_nodes
);
static void duplicate(
    int pe_id,
    hls::stream<int>& degrees,
    hls::stream<mp_in_t>& embeddings_per_node,
    hls::stream<mp_in_t>& node_embeddings_per_edge
);
static void scatter(
    int pe_id,
    int layer_num,
    hls::stream<mp_in_t>& node_embeddings_per_edge,
    FM_TYPE message[ceildiv(MAX_NODE, EDGE_PARALLEL)][NUM_AGGRS][EMB_DIM]
);
// #endregion

void message_passing_pe(
    int pe_id,
    hls::stream<mp_in_t> node_embeddings[NODE_PARALLEL],
    FM_TYPE message[ceildiv(MAX_NODE, EDGE_PARALLEL)][NUM_AGGRS][EMB_DIM],
    int layer_num,
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS DATAFLOW

    hls::stream<int> degrees("degrees");
#pragma HLS STREAM variable=degrees depth=20
    hls::stream<mp_in_t> filtered_embeddings_per_node("filtered_embeddings_per_node");
#pragma HLS STREAM variable=filtered_embeddings_per_node depth=(20 * ceildiv(EMB_DIM, SCATTER_PARALLEL))
    hls::stream<mp_in_t> node_embeddings_per_edge("node_embeddings_per_edge");
#pragma HLS STREAM variable=node_embeddings_per_edge depth=(20 * ceildiv(EMB_DIM, SCATTER_PARALLEL))

    filter(pe_id, node_embeddings, degrees, filtered_embeddings_per_node, num_of_nodes);
    duplicate(pe_id, degrees, filtered_embeddings_per_node, node_embeddings_per_edge);
    scatter(pe_id, layer_num, node_embeddings_per_edge, message);
}

static void filter(
    int pe_id,
    hls::stream<mp_in_t> unfiltered_embeddings_per_node[NODE_PARALLEL],
    hls::stream<int>& degrees,
    hls::stream<mp_in_t>& filtered_embeddings_per_node,
    int num_of_nodes
)
{
#pragma HLS INLINE off

    for (int nd = 0; nd < num_of_nodes; nd++)
    {
#pragma HLS PIPELINE II=ceildiv(EMB_DIM, SCATTER_PARALLEL)
#pragma HLS LOOP_TRIPCOUNT min=ANALYSIS_MIN_NODES max=ANALYSIS_MAX_NODES avg=ANALYSIS_AVG_NODES
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += SCATTER_PARALLEL)
        {
            int degree = out_degree_tables[pe_id][nd][0];
            if (dim_base == 0 && degree != 0)
            {
                degrees << degree;
            }

            mp_in_t embedding;
            unfiltered_embeddings_per_node[nd % NODE_PARALLEL] >> embedding;
            if (degree != 0)
            {
                filtered_embeddings_per_node << embedding;
            }
        }
    }
}

static void duplicate(
    int pe_id,
    hls::stream<int>& degrees,
    hls::stream<mp_in_t>& embeddings_per_node,
    hls::stream<mp_in_t>& node_embeddings_per_edge
)
{
#pragma HLS INLINE off

    mp_in_t mp_ins[ceildiv(EMB_DIM, SCATTER_PARALLEL)];
    int e_start = 0;
    int e_end = 0;
    int num_of_edges = num_of_edges_per_pe[pe_id];

    for (int e = 0; e < num_of_edges; e++)
    {
#pragma HLS LOOP_TRIPCOUNT min=0 max=ANALYSIS_MAX_EDGES avg=ceildiv(ANALYSIS_AVG_EDGES, EDGE_PARALLEL)
        for (int i = 0; i < ceildiv(EMB_DIM, SCATTER_PARALLEL); i++)
        {
            if (e >= e_end)
            {
                int degree;
                degrees >> degree;
                e_start = e;
                e_end = e + degree;
            }

            mp_in_t mp_in;
            if (e == e_start)
            {
                embeddings_per_node >> mp_in;
                mp_ins[i] = mp_in;
            }
            else
            {
                mp_in = mp_ins[i];
            }
            node_embeddings_per_edge << mp_in;
        }
    }
}

static void scatter(
    int pe_id,
    int layer_num,
    hls::stream<mp_in_t>& node_embeddings_per_edge,
    FM_TYPE message[ceildiv(MAX_NODE, EDGE_PARALLEL)][NUM_AGGRS][EMB_DIM]
)
{
#pragma HLS INLINE off

    mp_in_t node_embedding;
#pragma HLS AGGREGATE variable=node_embedding
    int num_of_edges = num_of_edges_per_pe[pe_id];

    for (int e = 0; e < num_of_edges; e++)
    {
#pragma HLS PIPELINE II=ceildiv(EMB_DIM, SCATTER_PARALLEL)
#pragma HLS LOOP_TRIPCOUNT min=0 max=ANALYSIS_MAX_EDGES avg=ceildiv(ANALYSIS_AVG_EDGES, EDGE_PARALLEL)
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += SCATTER_PARALLEL)
        {
            int v = neighbor_tables[pe_id][e];
            node_embeddings_per_edge >> node_embedding;

            for (int dim_offset = 0; dim_offset < SCATTER_PARALLEL; dim_offset++)
            {
#pragma HLS UNROLL
                int dim = dim_base + dim_offset;
                if (dim < EMB_DIM)
                {
                    message[v][AGGR_MEAN][dim] += node_embedding[dim_offset];
                    message[v][AGGR_STD][dim] += FM_TYPE(
                        node_embedding[dim_offset] * node_embedding[dim_offset]);
                    if (node_embedding[dim_offset] < message[v][AGGR_MIN][dim])
                        message[v][AGGR_MIN][dim] = node_embedding[dim_offset];
                    if (node_embedding[dim_offset] > message[v][AGGR_MAX][dim])
                        message[v][AGGR_MAX][dim] = node_embedding[dim_offset];
                }
            }
        }
    }
}

void reset_message(FM_TYPE message[NUM_AGGRS][EMB_DIM], int dim)
{
#pragma HLS INLINE
    message[AGGR_MEAN][dim] = 0;
    message[AGGR_STD][dim] = 0;
    message[AGGR_MIN][dim] = ap_fixed_max<FM_TYPE>();
    message[AGGR_MAX][dim] = ap_fixed_min<FM_TYPE>();
}
