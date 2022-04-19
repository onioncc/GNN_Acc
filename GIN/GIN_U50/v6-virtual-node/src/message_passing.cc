#include "message_passing.h"

static const int ed_feature_offsets[EDGE_ATTR] = {0, 5, 11};

// #region Internal Function Declarations
static void filter(
    int pe_id,
    hls::stream<mp_in_t> unfiltered_embeddings_per_node[NODE_PARALLEL],
    hls::stream<int>& degrees,
    hls::stream<mp_in_t>& filtered_embeddings_per_node,
    int num_of_nodes
);
static void scatter(
    int pe_id,
    int layer_num,
    hls::stream<int>& degrees,
    hls::stream<mp_in_t>& embeddings_per_node,
    FM_TYPE message[ceildiv(MAX_NODE, EDGE_PARALLEL)][EMB_DIM]
);
// #endregion

void message_passing_pe(
    int pe_id,
    hls::stream<mp_in_t> node_embeddings[NODE_PARALLEL],
    FM_TYPE message[ceildiv(MAX_NODE, EDGE_PARALLEL)][EMB_DIM],
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

    filter(pe_id, node_embeddings, degrees, filtered_embeddings_per_node, num_of_nodes);
    scatter(pe_id, layer_num, degrees, filtered_embeddings_per_node, message);
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
#pragma HLS LOOP_TRIPCOUNT min=ANALYSIS_MIN_NODES max=ANALYSIS_MAX_NODES avg=ANALYSIS_AVG_NODES
        for (int i = 0; i < ceildiv(EMB_DIM, SCATTER_PARALLEL); i++)
        {
#pragma HLS PIPELINE II=1

            mp_in_t embedding;
#pragma HLS AGGREGATE variable=embedding
            unfiltered_embeddings_per_node[nd % NODE_PARALLEL] >> embedding;

            int degree = degree_tables[pe_id][nd];
            if (degree != 0)
            {
                if (i == 0)
                {
#pragma HLS OCCURRENCE cycle=ceildiv(EMB_DIM, SCATTER_PARALLEL)
                    degrees << degree;
                }
                filtered_embeddings_per_node << embedding;
            }
        }
    }
}

static void scatter(
    int pe_id,
    int layer_num,
    hls::stream<int>& degrees,
    hls::stream<mp_in_t>& embeddings_per_node,
    FM_TYPE message[ceildiv(MAX_NODE, EDGE_PARALLEL)][EMB_DIM]
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=ed_feature_offsets complete dim=1
#pragma HLS ARRAY_PARTITION variable=edge_embedding_weights complete dim=1
#pragma HLS ARRAY_PARTITION variable=edge_embedding_weights cyclic factor=SCATTER_PARALLEL dim=4
#pragma HLS BIND_STORAGE variable=edge_embedding_weights type=ram_1wnr
#pragma HLS AGGREGATE variable=edge_attrs

    mp_in_t mp_ins[ceildiv(EMB_DIM, SCATTER_PARALLEL)];
    int e_start = 0;
    int e_end = 0;
    int num_of_edges = num_of_edges_per_pe[pe_id];

    for (int e = 0; e < num_of_edges; e++)
    {
#pragma HLS LOOP_TRIPCOUNT min=0 max=ANALYSIS_MAX_EDGES avg=ceildiv(ANALYSIS_AVG_EDGES, EDGE_PARALLEL)

        int v = neighbor_tables[pe_id][e];
        edge_attr_t attrs = edge_attrs[pe_id][e];

        for (int i = 0, dim_base = 0; i < ceildiv(EMB_DIM, SCATTER_PARALLEL); i++, dim_base += SCATTER_PARALLEL)
        {
#pragma HLS PIPELINE
#pragma HLS DEPENDENCE variable=message inter true distance=ceildiv(EMB_DIM, SCATTER_PARALLEL)

            if (e >= e_end)
            {
                int degree;
                degrees >> degree;
                e_start = e;
                e_end = e + degree;
            }

            mp_in_t node_embedding;
#pragma HLS AGGREGATE variable=node_embedding

            if (e == e_start)
            {
                embeddings_per_node >> node_embedding;
                mp_ins[i] = node_embedding;
            }
            else
            {
                node_embedding = mp_ins[i];
            }

            for (int dim_offset = 0; dim_offset < SCATTER_PARALLEL; dim_offset++)
            {
#pragma HLS UNROLL
                int dim = dim_base + dim_offset;
                if (dim < EMB_DIM)
                {
                    FM_TYPE edge_embed = 0;
                    edge_embed_loop: for (int ef = 0; ef < EDGE_ATTR; ef++)
                    {
#pragma HLS UNROLL
                        int e_ef = ed_feature_offsets[ef] + attrs[ef];
                        edge_embed += edge_embedding_weights[pe_id][layer_num][e_ef][dim];
                    }

                    FM_TYPE total_embed = edge_embed + node_embedding[dim_offset];
                    message[v][dim] += ap_fixed_relu(total_embed);
                }
            }
        }
    }
}
