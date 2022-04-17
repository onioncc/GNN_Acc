#include "conv_layer.h"
#include "node_embedding.h"
#include "message_passing.h"
#include "load_inputs.h"
#include "finalize.h"
#include "hls_stream.h"

// #region Internal Function Declarations
void check_node_embedding(
    hls::stream<ne_in_t> messages[NODE_PARALLEL],
    FM_VEC h_node[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][EMB_DIM],
    FM_VEC out_nodes_features_skip_concat_bias[MAX_NODE][EMB_DIM],
    FM_VEC next_out_nodes_features_skip_concat_bias[MAX_NODE][EMB_DIM],
    FM_VEC scores_target[MAX_NODE],
    FM_VEC scores_source[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)],
    FM_TYPE* result,
    int layer_num,
    int num_of_nodes
);
void mp_to_ne_adapter(
    hls::stream<mp_out_t> mp_out[EDGE_PARALLEL][NODE_PARALLEL],
    hls::stream<FM_VEC> score_sums[EDGE_PARALLEL][NODE_PARALLEL],
    hls::stream<ne_in_t>& ne_in,
    int nd_offset,
    int num_of_nodes
);
// #endregion

void compute_CONV_layer(
    int layer_num,
    FM_VEC h_node[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][EMB_DIM],
    FM_VEC next_h_node[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][EMB_DIM],
    FM_VEC scores_target[MAX_NODE],
    FM_VEC next_scores_target[MAX_NODE],
    FM_VEC scores_source[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)],
    FM_VEC next_scores_source[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)],
    FM_VEC out_nodes_features_skip_concat_bias[MAX_NODE][EMB_DIM],
    FM_VEC next_out_nodes_features_skip_concat_bias[MAX_NODE][EMB_DIM],
    node_feature_t* node_feature_in,
    FM_TYPE* result,
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS DATAFLOW

#pragma HLS ARRAY_PARTITION variable=h_node complete dim=3
#pragma HLS ARRAY_PARTITION variable=h_node cyclic factor=GATHER_PARALLEL dim=4
#pragma HLS ARRAY_PARTITION variable=next_h_node complete dim=3
#pragma HLS ARRAY_PARTITION variable=next_h_node cyclic factor=GATHER_PARALLEL dim=4

    hls::stream<mp_out_t> mp_out[EDGE_PARALLEL][NODE_PARALLEL];
#pragma HLS STREAM variable=mp_out depth=(20 * ceildiv(EMB_DIM, GATHER_PARALLEL))
    hls::stream<ne_in_t> ne_in[NODE_PARALLEL];
#pragma HLS STREAM variable=ne_in depth=(4 * ceildiv(EMB_DIM, APPLY_PARALLEL))
    hls::stream<FM_VEC> score_sums[EDGE_PARALLEL][NODE_PARALLEL];
#pragma HLS STREAM variable=score_sums depth=(20)

    for (int pe_id = 0; pe_id < EDGE_PARALLEL; pe_id++)
    {
#pragma HLS UNROLL
        message_passing_pe(
            pe_id,
            h_node[pe_id],
            scores_target,
            scores_source[pe_id],
            mp_out[pe_id],
            score_sums[pe_id],
            num_of_nodes
        );
    }
    for (int nd_offset = 0; nd_offset < NODE_PARALLEL; nd_offset++)
    {
#pragma HLS UNROLL
        mp_to_ne_adapter(
            mp_out,
            score_sums,
            ne_in[nd_offset],
            nd_offset,
            num_of_nodes
        );
    }
    check_node_embedding(
        ne_in,
        next_h_node,
        out_nodes_features_skip_concat_bias,
        next_out_nodes_features_skip_concat_bias,
        next_scores_target,
        next_scores_source,
        result,
        layer_num,
        num_of_nodes
    );
}

void check_node_embedding(
    hls::stream<ne_in_t> messages[NODE_PARALLEL],
    FM_VEC h_node[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][EMB_DIM],
    FM_VEC out_nodes_features_skip_concat_bias[MAX_NODE][EMB_DIM],
    FM_VEC next_out_nodes_features_skip_concat_bias[MAX_NODE][EMB_DIM],
    FM_VEC scores_target[MAX_NODE],
    FM_VEC scores_source[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)],
    FM_TYPE* result,
    int layer_num,
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=message complete dim=1

    if (layer_num == NUM_LAYERS - 1)
        finalize(
            messages,
            out_nodes_features_skip_concat_bias,
            graph_pred_weights,
            graph_pred_bias,
            result,
            num_of_nodes
        );
    else
        node_embedding_multi_pe(
            messages,
            h_node,
            out_nodes_features_skip_concat_bias,
            next_out_nodes_features_skip_concat_bias,
            scores_target,
            scores_source,
            layer_num,
            num_of_nodes
        );
}

void mp_to_ne_adapter(
    hls::stream<mp_out_t> mp_out[EDGE_PARALLEL][NODE_PARALLEL],
    hls::stream<FM_VEC> score_sums[EDGE_PARALLEL][NODE_PARALLEL],
    hls::stream<ne_in_t>& ne_in,
    int nd_offset,
    int num_of_nodes
)
{
#pragma HLS INLINE off

    int mp_dim_offset = GATHER_PARALLEL;
    mp_out_t last_message;
    FM_VEC curr_score_sums;

    int num_iters = ceildiv(num_of_nodes - nd_offset, NODE_PARALLEL);
    for (int i = 0; i < num_iters; i++)
    {
#pragma HLS LOOP_TRIPCOUNT min=ceildiv(ANALYSIS_MIN_NODES, NODE_PARALLEL) max=ceildiv(ANALYSIS_MAX_NODES, NODE_PARALLEL) avg=ceildiv(ANALYSIS_AVG_NODES, NODE_PARALLEL)
        for (int ne_dim_base = 0; ne_dim_base < EMB_DIM; ne_dim_base += APPLY_PARALLEL)
        {
#pragma HLS PIPELINE

            if (ne_dim_base == 0)
            {
#pragma HLS OCCURRENCE cycle=ceildiv(EMB_DIM, APPLY_PARALLEL)
                curr_score_sums = FM_TYPE(0);
                for (int pe_id = 0; pe_id < EDGE_PARALLEL; pe_id++)
                {
                    FM_VEC partial_sums;
                    score_sums[pe_id][nd_offset] >> partial_sums;
                    curr_score_sums += partial_sums;
                }
            }

            // FIXME: this is probably temporary
            for (int head = 0; head < NUM_HEADS; head++)
            {
                if (curr_score_sums[head] == 0)
                {
                    curr_score_sums[head] = 1;
                }
            }

            ne_in_t curr_ne_in;
            for (int ne_dim_offset = 0; ne_dim_offset < APPLY_PARALLEL; ne_dim_offset++)
            {
                if (mp_dim_offset == GATHER_PARALLEL || (ne_dim_base == 0 && ne_dim_offset == 0))
                {
#pragma HLS OCCURRENCE cycle=min(ceildiv(EMB_DIM, APPLY_PARALLEL), ceildiv(GATHER_PARALLEL, APPLY_PARALLEL))
                    last_message = FM_VEC(0);
                    for (int pe_id = 0; pe_id < EDGE_PARALLEL; pe_id++)
                    {
                        mp_out_t partial_message;
                        mp_out[pe_id][nd_offset] >> partial_message;
                        last_message += partial_message / curr_score_sums;
                    }
                    mp_dim_offset = 0;
                }

                curr_ne_in[ne_dim_offset] = last_message[mp_dim_offset];
                mp_dim_offset++;
            }

            ne_in << curr_ne_in;
        }
    }
}
