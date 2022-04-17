#include "message_passing.h"
#include "hls_math.h"

// #region Internal Function Declarations
static void read_degrees(
    int pe_id,
    hls::stream<int>& degrees,
    hls::stream<int>& nonzero_degrees,
    int num_of_nodes
);
static void gather(
    int pe_id,
    hls::stream<int>& nonzero_degrees,
    FM_VEC h_node[ceildiv(MAX_NODE, EDGE_PARALLEL)][EMB_DIM],
    FM_VEC scores_target[MAX_NODE],
    FM_VEC scores_source[ceildiv(MAX_NODE, EDGE_PARALLEL)],
    hls::stream<mp_out_t>& messages,
    hls::stream<FM_VEC>& score_sums
);
static void expand(
    int pe_id,
    hls::stream<mp_out_t>& messages_per_nz_deg_node,
    hls::stream<FM_VEC>& score_sums_per_nz_deg_node,
    hls::stream<int>& degrees,
    hls::stream<mp_out_t> messages_per_node[NODE_PARALLEL],
    hls::stream<FM_VEC> score_sums_per_node[NODE_PARALLEL],
    int num_of_nodes
);
// #endregion

void message_passing_pe(
    int pe_id,
    FM_VEC h_node[ceildiv(MAX_NODE, EDGE_PARALLEL)][EMB_DIM],
    FM_VEC scores_target[MAX_NODE],
    FM_VEC scores_source[ceildiv(MAX_NODE, EDGE_PARALLEL)],
    hls::stream<mp_out_t> messages[NODE_PARALLEL],
    hls::stream<FM_VEC> score_sums[NODE_PARALLEL],
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS DATAFLOW

    hls::stream<int> degrees("degrees");
#pragma HLS STREAM variable=degrees depth=20
    hls::stream<int> nonzero_degrees("nonzero_degrees");
#pragma HLS STREAM variable=nonzero_degrees depth=20
    hls::stream<mp_out_t> messages_per_nz_deg_node("messages_per_nz_deg_node");
#pragma HLS STREAM variable=messages_per_nz_deg_node depth=(20 * ceildiv(EMB_DIM, GATHER_PARALLEL))
    hls::stream<FM_VEC> score_sums_per_nz_deg_node("score_sums_per_nz_deg_node");
#pragma HLS STREAM variable=score_sums_per_nz_deg_node depth=20

    read_degrees(pe_id, degrees, nonzero_degrees, num_of_nodes);
    gather(pe_id, nonzero_degrees, h_node, scores_target, scores_source, messages_per_nz_deg_node, score_sums_per_nz_deg_node);
    expand(pe_id, messages_per_nz_deg_node, score_sums_per_nz_deg_node, degrees, messages, score_sums, num_of_nodes);
}

static void read_degrees(
    int pe_id,
    hls::stream<int>& degrees,
    hls::stream<int>& nonzero_degrees,
    int num_of_nodes
)
{
#pragma HLS INLINE off

    for (int nd = 0; nd < num_of_nodes; nd++)
    {
        int degree = degree_tables[pe_id][nd];
        degrees << degree;
        if (degree != 0) nonzero_degrees << degree;
    }
}

static void gather(
    int pe_id,
    hls::stream<int>& nonzero_degrees,
    FM_VEC h_node[ceildiv(MAX_NODE, EDGE_PARALLEL)][EMB_DIM],
    FM_VEC scores_target[MAX_NODE],
    FM_VEC scores_source[ceildiv(MAX_NODE, EDGE_PARALLEL)],
    hls::stream<mp_out_t>& messages,
    hls::stream<FM_VEC>& score_sums
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=h_node cyclic factor=GATHER_PARALLEL dim=2
#pragma HLS ARRAY_PARTITION variable=scores_source complete dim=1
#pragma HLS ARRAY_PARTITION variable=scores_source complete dim=3
#pragma HLS ARRAY_PARTITION variable=scores_target complete dim=2
#pragma HLS BIND_STORAGE variable=scores_target type=ram_1wnr

    mp_out_t mp_outs[ceildiv(EMB_DIM, GATHER_PARALLEL)];
    FM_VEC score_sums_acc;
    int v = -1;
    int e_start = 0;
    int e_end = 0;
    int num_of_edges = num_of_edges_per_pe[pe_id];

    for (int e = 0; e < num_of_edges; e++)
    {
#pragma HLS LOOP_TRIPCOUNT min=0 max=ANALYSIS_MAX_EDGES avg=ceildiv(ANALYSIS_AVG_EDGES, EDGE_PARALLEL)

        int u = neighbor_tables[pe_id][e];

        for (int i = 0, dim_base = 0; i < ceildiv(EMB_DIM, GATHER_PARALLEL); i++, dim_base += GATHER_PARALLEL)
        {
#pragma HLS PIPELINE

            if (e >= e_end)
            {
                int degree;
                nonzero_degrees >> degree;
                e_start = e;
                e_end = e + degree;
                score_sums_acc = FM_TYPE(0);
                v++;
            }

            FM_VEC scores = scores_source[u] + scores_target[v];
            for (int head = 0; head < NUM_HEADS; head++)
            {
#pragma HLS UNROLL
                FM_TYPE score = scores[head];
                if (score < 0) score = score * FM_TYPE(0.2);
                scores[head] = hls::exp(score);
            }
            if (i == 0) score_sums_acc += scores;

            for (int dim_offset = 0; dim_offset < GATHER_PARALLEL; dim_offset++)
            {
#pragma HLS UNROLL
                int dim = dim_base + dim_offset;
                if (dim < EMB_DIM)
                {
                    FM_VEC addend = scores * h_node[u][dim];
                    FM_VEC prev = (e != e_start) ? mp_outs[i][dim_offset] : FM_TYPE(0);
                    mp_outs[i][dim_offset] = prev + addend;
                }
            }

            if (e + 1 == e_end)
            {
                messages << mp_outs[i];
                if (i == 0) score_sums << score_sums_acc;
            }
        }
    }
}

static void expand(
    int pe_id,
    hls::stream<mp_out_t>& messages_per_nz_deg_node,
    hls::stream<FM_VEC>& score_sums_per_nz_deg_node,
    hls::stream<int>& degrees,
    hls::stream<mp_out_t> messages_per_node[NODE_PARALLEL],
    hls::stream<FM_VEC> score_sums_per_node[NODE_PARALLEL],
    int num_of_nodes
)
{
#pragma HLS INLINE off

    int degree;
    for (int nd = 0; nd < num_of_nodes; nd++)
    {
#pragma HLS LOOP_TRIPCOUNT min=ANALYSIS_MIN_NODES max=ANALYSIS_MAX_NODES avg=ANALYSIS_AVG_NODES
        for (int i = 0; i < ceildiv(EMB_DIM, GATHER_PARALLEL); i++)
        {
#pragma HLS PIPELINE II=1

            if (i == 0)
            {
#pragma HLS OCCURRENCE cycle=ceildiv(EMB_DIM, GATHER_PARALLEL)
                degrees >> degree;

                FM_VEC score_sum;
                if (degree != 0)
                {
                    score_sums_per_nz_deg_node >> score_sum;
                }
                else
                {
                    score_sum = FM_TYPE(0);
                }
                score_sums_per_node[nd % NODE_PARALLEL] << score_sum;
            }

            mp_out_t message;
            if (degree != 0)
            {
                messages_per_nz_deg_node >> message;
            }
            else
            {
                message = FM_VEC(0);
            }
            messages_per_node[nd % NODE_PARALLEL] << message;
        }
    }
}
