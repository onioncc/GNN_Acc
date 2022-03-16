#include "edge_embedding.h"

static const int ed_feature_offsets[ED_FEATURE_PER_LAYER] = {0, 5, 11};

void edge_embedding_multi_pe(
    hls::stream<mp_in_t> embeddings[EDGE_PARALLEL],
    int layer_num
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=ed_feature_offsets complete dim=1
// I'll let Vitis figure out the most appropriate partitioning for edge_embedding_weight dim=2
#pragma HLS ARRAY_PARTITION variable=edge_embedding_weight cyclic factor=SCATTER_PARALLEL dim=3

    for (int e = 0;; e++)
    {
#pragma HLS LOOP_TRIPCOUNT min=ceildiv(ANALYSIS_MIN_EDGES, EDGE_PARALLEL) max=ANALYSIS_MAX_EDGES avg=ceildiv(ANALYSIS_AVG_EDGES, EDGE_PARALLEL)
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += SCATTER_PARALLEL)
        {
#pragma HLS PIPELINE II=1

            bool edge_present[EDGE_PARALLEL];
            bool any_edge_present = false;

            for (int pe_id = 0; pe_id < EDGE_PARALLEL; pe_id++)
            {
                edge_present[pe_id] = e < num_of_edges_per_pe[pe_id];
                any_edge_present = any_edge_present || edge_present[pe_id];
            }

            if (!any_edge_present) return;

            for (int pe_id = 0; pe_id < EDGE_PARALLEL; pe_id++)
            {
                if (!edge_present[pe_id]) continue;

                mp_in_t edge_embedding;
                edge_attr_t attrs = edge_attrs[pe_id][e];

                for (int ef = 0; ef < EDGE_ATTR; ef++)
                {
                    int e_ef = ed_feature_offsets[ef] + attrs[ef];
                    for (int dim_offset = 0; dim_offset < SCATTER_PARALLEL; dim_offset++)
                    {
                        int dim = dim_base + dim_offset;
                        if (dim >= EMB_DIM) continue;

                        FM_TYPE prev = (ef == 0) ? FM_TYPE(0) : edge_embedding[dim_offset];
                        edge_embedding[dim_offset] = prev + edge_embedding_weight[layer_num][e_ef][dim];
                    }
                }

                embeddings[pe_id] << edge_embedding;
            }
        }
    }
}
