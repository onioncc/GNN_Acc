#include "dcl.h"
#include "math.h"
#include "hls_math.h"
#include "hls_stream.h"
#include "hls_streamofblocks.h"
#include <stdio.h>
#include <array>

using std::array;

template <typename T>
static constexpr T ceildiv(T dividend, T divisor)
{
    return (dividend + divisor - 1) / divisor;
}

template <typename T>
static constexpr T roundup(T dividend, T divisor)
{
    return ceildiv(dividend, divisor) * divisor;
}

//#define _PRINT_

WT_TYPE layers_posttrans_fully_connected_0_linear_weight[4][100][2][100];
WT_TYPE layers_posttrans_fully_connected_0_linear_bias[4][100];
WT_TYPE MLP_layer_FC_layers_0_weight[50][100];
WT_TYPE MLP_layer_FC_layers_0_bias[50];
WT_TYPE MLP_layer_FC_layers_1_weight[25][50];
WT_TYPE MLP_layer_FC_layers_1_bias[25];
WT_TYPE MLP_layer_FC_layers_2_weight[1][25];
WT_TYPE MLP_layer_FC_layers_2_bias[1];

int degree_table[MAX_NODE];
int degree_tables[EDGE_PARALLEL][MAX_NODE][2];
int neighbor_table[MAX_EDGE];
int neighbor_tables[EDGE_PARALLEL][MAX_EDGE];
WT_TYPE eig_w[EDGE_PARALLEL][MAX_EDGE];
WT_TYPE eig_abssums[MAX_NODE];
WT_TYPE eigw_sums[MAX_NODE];
int num_of_edges_per_pe[EDGE_PARALLEL];

// BRAM for intermediate storage
FM_TYPE message_ping[MAX_NODE][2][EMB_DIM];
FM_TYPE message_pong[MAX_NODE][2][EMB_DIM];

FM_TYPE h_node[MAX_NODE][EMB_DIM];
FM_TYPE h_graph[EMB_DIM];

void load_weights(
    WT_TYPE layers_posttrans_fully_connected_0_linear_weight_in[4][100][200],
    WT_TYPE layers_posttrans_fully_connected_0_linear_bias_in[4][100],
    WT_TYPE MLP_layer_FC_layers_0_weight_in[50][100],
    WT_TYPE MLP_layer_FC_layers_0_bias_in[50],
    WT_TYPE MLP_layer_FC_layers_1_weight_in[25][50],
    WT_TYPE MLP_layer_FC_layers_1_bias_in[25],
    WT_TYPE MLP_layer_FC_layers_2_weight_in[1][25],
    WT_TYPE MLP_layer_FC_layers_2_bias_in[1]
)
{
#pragma HLS INLINE off
    memcpy(layers_posttrans_fully_connected_0_linear_weight, layers_posttrans_fully_connected_0_linear_weight_in, sizeof(WT_TYPE) * 4 * 100 * 2 * 100);
    memcpy(layers_posttrans_fully_connected_0_linear_bias, layers_posttrans_fully_connected_0_linear_bias_in, sizeof(WT_TYPE) * 4 * 100);
    memcpy(MLP_layer_FC_layers_0_weight, MLP_layer_FC_layers_0_weight_in, sizeof(WT_TYPE) * 50 * 100);
    memcpy(MLP_layer_FC_layers_0_bias, MLP_layer_FC_layers_0_bias_in, sizeof(WT_TYPE) * 50);
    memcpy(MLP_layer_FC_layers_1_weight, MLP_layer_FC_layers_1_weight_in, sizeof(WT_TYPE) * 25 * 50);
    memcpy(MLP_layer_FC_layers_1_bias, MLP_layer_FC_layers_1_bias_in, sizeof(WT_TYPE) * 25);
    memcpy(MLP_layer_FC_layers_2_weight, MLP_layer_FC_layers_2_weight_in, sizeof(WT_TYPE) * 1 * 25);
    memcpy(MLP_layer_FC_layers_2_bias, MLP_layer_FC_layers_2_bias_in, sizeof(WT_TYPE) * 1);
}

void load_graph(int *edge_list_in, WT_TYPE *node_eigen_in, int num_of_nodes, int num_of_edges)
{
#pragma HLS INLINE off

    int neighbor_table_offsets[MAX_NODE];
    int neighbor_tables_offsets[EDGE_PARALLEL][MAX_NODE];
    int edge_list_len = num_of_edges * 2;
    edge_t *edge_list_structs = (edge_t*)edge_list_in;

#pragma HLS ARRAY_PARTITION variable=degree_tables complete dim=1
#pragma HLS ARRAY_PARTITION variable=degree_tables complete dim=3
#pragma HLS ARRAY_PARTITION variable=neighbor_tables complete dim=1
#pragma HLS ARRAY_PARTITION variable=neighbor_tables_offsets complete dim=1
#pragma HLS ARRAY_PARTITION variable=num_of_edges_per_pe complete dim=1

    for (int i = 0; i < num_of_nodes; i++)
    {
        degree_table[i] = 0;
        eig_abssums[i] = 0;
        eigw_sums[i] = 0;

        for (int j = 0; j < EDGE_PARALLEL; j++)
        {
#pragma HLS UNROLL
            degree_tables[j][i][0] = 0;
        }
    }

    for (int i = 0; i < num_of_edges; i++)
    {
        edge_t edge = edge_list_structs[i];
        int u = edge.u;
        int v = edge.v;
        int pe_id = v % EDGE_PARALLEL;
        degree_table[u]++;
        degree_tables[pe_id][u][0]++;
    }

    int acc = 0;
    for (int i = 0; i < EDGE_PARALLEL; i++)
    {
#pragma HLS UNROLL
        num_of_edges_per_pe[i] = 0;
    }

    for (int i = 0; i < num_of_nodes; i++)
    {
        int degree = degree_table[i];
        neighbor_table_offsets[i] = acc;
        acc += degree;

        for (int j = 0; j < EDGE_PARALLEL; j++)
        {
#pragma HLS UNROLL
            int degree_j = degree_tables[j][i][0];
            neighbor_tables_offsets[j][i] = num_of_edges_per_pe[j];
            degree_tables[j][i][1] = num_of_edges_per_pe[j];
            num_of_edges_per_pe[j] += degree_j;
        }
    }

    for (int i = 0; i < num_of_edges; i++)
    {
        edge_t edge = edge_list_structs[i];
        int u = edge.u;
        int v = edge.v;
        int pe_id = v % EDGE_PARALLEL;
        int e = neighbor_table_offsets[u];
        int e_pe = neighbor_tables_offsets[pe_id][u];
        neighbor_table[e] = v;
        neighbor_table_offsets[u] = e + 1;
        neighbor_tables[pe_id][e_pe] = v / EDGE_PARALLEL;
        neighbor_tables_offsets[pe_id][u] = e_pe + 1;

        WT_TYPE u_eigen = node_eigen_in[(u * 4) + 1];
        WT_TYPE v_eigen = node_eigen_in[(v * 4) + 1];
        WT_TYPE diff_eigen = u_eigen - v_eigen;
        eig_w[pe_id][e_pe] = diff_eigen;
        eig_abssums[v] += hls::abs(diff_eigen);
        eigw_sums[v] += diff_eigen;
    }
}

void message_passing_sub(
    int pe_id,
    hls::stream_of_blocks<FM_TYPE[EMB_DIM]>& embeddings_per_edge,
    FM_TYPE message[MAX_NODE][2][EMB_DIM],
    int num_of_edges
)
{
#pragma HLS INLINE off

    for (int e = 0; e < num_of_edges; e++)
    {
#pragma HLS LOOP_TRIPCOUNT min=0 max=40 avg=(40 / EDGE_PARALLEL)
        hls::read_lock<FM_TYPE[EMB_DIM]> embedding(embeddings_per_edge);
#pragma HLS ARRAY_PARTITION variable=embedding cyclic factor=SCATTER_PARALLEL dim=1
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += SCATTER_PARALLEL)
        {
#pragma HLS PIPELINE II=1
            WT_TYPE eig_w_e = eig_w[pe_id][e];
            int v = neighbor_tables[pe_id][e] * EDGE_PARALLEL + pe_id;

            for (int dim_offset = 0; dim_offset < SCATTER_PARALLEL; dim_offset++)
            {
#pragma HLS UNROLL
                int dim = dim_base + dim_offset;
                if (dim < EMB_DIM)
                {
                    message[v][0][dim] += embedding[dim];
                    message[v][1][dim] += embedding[dim] * eig_w_e;
                }
            }
        }
    }
}

void filter_embeddings_from_stream(
    int pe_id,
    hls::stream<ne_out_t>& unfiltered_embeddings_per_node,
    hls::stream<int>& degrees,
    hls::stream<ne_out_t>& filtered_embeddings_per_node,
    int num_of_nodes
)
{
#pragma HLS INLINE off

    for (int nd = 0; nd < num_of_nodes; nd++)
    {
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += APPLY_PARALLEL)
        {
#pragma HLS PIPELINE II=1
            int degree = degree_tables[pe_id][nd][0];
            if (dim_base == 0 && degree != 0)
            {
                degrees << degree;
            }

            ne_out_t embedding;
            unfiltered_embeddings_per_node >> embedding;
            if (degree != 0)
            {
                filtered_embeddings_per_node << embedding;
            }
        }
    }
}

void duplicate_embeddings_from_stream(
    int pe_id,
    hls::stream<int>& degrees,
    hls::stream<ne_out_t>& embeddings_per_node,
    hls::stream_of_blocks<FM_TYPE[EMB_DIM]>& embeddings_per_edge,
    int num_of_edges
)
{
#pragma HLS INLINE off

    ne_out_t ne_outs[ceildiv(EMB_DIM, APPLY_PARALLEL)];
    int e_start = 0;
    int e_end = 0;

    for (int e = 0; e < num_of_edges; e++)
    {
#pragma HLS LOOP_TRIPCOUNT min=0 max=40 avg=(40 / EDGE_PARALLEL)
        hls::write_lock<FM_TYPE[EMB_DIM]> embedding(embeddings_per_edge);
        for (int dim_base = 0, i = 0; dim_base < EMB_DIM; dim_base += APPLY_PARALLEL, i++)
        {
#pragma HLS PIPELINE II=1
            if (e >= e_end)
            {
                int degree;
                degrees >> degree;
                e_start = e;
                e_end = e + degree;
            }

            ne_out_t ne_out;
            if (e == e_start)
            {
                embeddings_per_node >> ne_out;
                ne_outs[i] = ne_out;
            }
            else
            {
                ne_out = ne_outs[i];
            }

            for (int dim_offset = 0; dim_offset < APPLY_PARALLEL; dim_offset++)
            {
#pragma HLS UNROLL
                int dim = dim_base + dim_offset;
                if (dim < EMB_DIM)
                {
                    embedding[dim] = ne_out[dim_offset];
                }
            }
        }
    }
}

void message_passing_pe(
    int pe_id,
    hls::stream<ne_out_t>& embeddings_per_node,
    FM_TYPE message[MAX_NODE][2][EMB_DIM],
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS DATAFLOW

    hls::stream<int> degrees("degrees");
#pragma HLS STREAM variable=degrees depth=20
    hls::stream<ne_out_t> filtered_embeddings_per_node("filtered_embeddings_per_node");
#pragma HLS STREAM variable=filtered_embeddings_per_node depth=(20 * ceildiv(EMB_DIM, APPLY_PARALLEL))
    hls::stream_of_blocks<FM_TYPE[EMB_DIM], 20> embeddings_per_edge;
    int num_of_edges = num_of_edges_per_pe[pe_id];

    filter_embeddings_from_stream(pe_id, embeddings_per_node, degrees, filtered_embeddings_per_node, num_of_nodes);
    duplicate_embeddings_from_stream(pe_id, degrees, filtered_embeddings_per_node, embeddings_per_edge, num_of_edges);
    message_passing_sub(pe_id, embeddings_per_edge, message, num_of_edges);
}

void apply_accumulate_one_batch(
    FM_TYPE message[2][EMB_DIM],
    FM_TYPE h_node_v[EMB_DIM],
    FM_TYPE accs[L_OUT],
    FM_TYPE h_node_buf[EMB_DIM],
    int degree,
    WT_TYPE eigw_sum,
    WT_TYPE eig_abssum,
    int i,
    int dim_base
)
{
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=layers_posttrans_fully_connected_0_linear_weight complete dim=2
#pragma HLS ARRAY_PARTITION variable=layers_posttrans_fully_connected_0_linear_weight complete dim=3
#pragma HLS ARRAY_PARTITION variable=layers_posttrans_fully_connected_0_linear_weight cyclic factor=APPLY_PARALLEL dim=4
#pragma HLS ARRAY_PARTITION variable=layers_posttrans_fully_connected_0_linear_bias complete dim=2

    for (int dim_offset = 0; dim_offset < APPLY_PARALLEL; dim_offset++)
    {
#pragma HLS UNROLL
        int dim_in = dim_base + dim_offset;

        FM_TYPE h_node_el = h_node_v[dim_in];
        h_node_buf[dim_in] = h_node_el;

        FM_TYPE activation_1 = message[0][dim_in] / degree;
        FM_TYPE activation_2 = hls::abs(FM_TYPE((message[1][dim_in] - eigw_sum * h_node_el) / eig_abssum));

        for (int dim_out = 0; dim_out < L_OUT; dim_out++)
        {
#pragma HLS UNROLL
            accs[dim_out] = (
                activation_1 * layers_posttrans_fully_connected_0_linear_weight[i][dim_out][0][dim_in]
                + activation_2 * layers_posttrans_fully_connected_0_linear_weight[i][dim_out][1][dim_in]
                + ((dim_in == 0)
                    ? FM_TYPE(layers_posttrans_fully_connected_0_linear_bias[i][dim_out])
                    : accs[dim_out])
            );
        }

        // clear message table in preparation for next round of message passing
        message[0][dim_in] = 0;
        message[1][dim_in] = 0;
    }
}

void apply_output_one_batch(
    FM_TYPE h_node_v[EMB_DIM],
    FM_TYPE accs[L_OUT],
    FM_TYPE h_node_buf[EMB_DIM],
    hls::stream<ne_out_t> embeddings[EDGE_PARALLEL],
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
    for (int pe_id = 0; pe_id < EDGE_PARALLEL; pe_id++)
    {
#pragma HLS UNROLL
        embeddings[pe_id] << output;
    }
}

void apply(
    hls::stream<ne_out_t> embeddings[EDGE_PARALLEL],
    FM_TYPE message[][2][EMB_DIM],
    int i,
    int num_of_nodes
)
{
#pragma HLS INLINE off
// #pragma HLS ARRAY_PARTITION variable=h_node cyclic factor=NODE_PARALLEL dim=1
#pragma HLS ARRAY_PARTITION variable=h_node cyclic factor=APPLY_PARALLEL dim=2

    FM_TYPE accs_ping[L_OUT];
#pragma HLS ARRAY_PARTITION variable=accs_ping complete dim=1
    FM_TYPE accs_pong[L_OUT];
#pragma HLS ARRAY_PARTITION variable=accs_pong complete dim=1
    FM_TYPE h_node_ping[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=h_node_ping cyclic factor=APPLY_PARALLEL dim=1
    FM_TYPE h_node_pong[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=h_node_pong cyclic factor=APPLY_PARALLEL dim=1

    for (int v = 0; v <= num_of_nodes; v++)
    {
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += APPLY_PARALLEL)
        {
#pragma HLS PIPELINE II=1
            if (v != 0)
            {
                apply_output_one_batch(
                    h_node[v - 1],
                    (v % 2 == 0) ? accs_pong : accs_ping,
                    (v % 2 == 0) ? h_node_pong : h_node_ping,
                    embeddings,
                    dim_base
                );
            }

            if (v != num_of_nodes)
            {
                apply_accumulate_one_batch(
                    message[v],
                    h_node[v],
                    (v % 2 == 0) ? accs_ping : accs_pong,
                    (v % 2 == 0) ? h_node_ping : h_node_pong,
                    degree_table[v],
                    eigw_sums[v],
                    eig_abssums[v],
                    i,
                    dim_base
                );
            }
        }
    }
}

void read_embeddings(hls::stream<ne_out_t> embeddings[EDGE_PARALLEL], int num_of_nodes)
{
#pragma HLS INLINE off

    ne_out_t embedding;
#pragma HLS AGGREGATE variable=embedding

    for (int v = 0; v < num_of_nodes; v++)
    {
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += APPLY_PARALLEL)
        {
            for (int dim_offset = 0; dim_offset < APPLY_PARALLEL; dim_offset++)
            {
#pragma HLS UNROLL
                int dim = dim_base + dim_offset;
                embedding[dim_offset] = h_node[v][dim];
            }
            for (int pe_id = 0; pe_id < EDGE_PARALLEL; pe_id++)
            {
#pragma HLS UNROLL
                embeddings[pe_id] << embedding;
            }
        }
    }
}

void discard_embeddings(hls::stream<ne_out_t>& embeddings, int num_of_nodes)
{
#pragma HLS INLINE off
    ne_out_t embedding;
#pragma HLS AGGREGATE variable=embedding
    for (int v = 0; v < num_of_nodes; v++)
    {
        for (int i = 0; i < EMB_DIM; i += SCATTER_PARALLEL)
        {
            embeddings >> embedding;
        }
    }
}

void check_apply(
    hls::stream<ne_out_t> embeddings[EDGE_PARALLEL],
    FM_TYPE message[][2][EMB_DIM],
    int i,
    int num_of_nodes
)
{
#pragma HLS INLINE off

    if (i == 0)
    {
        read_embeddings(embeddings, num_of_nodes);
    }
    else
    {
        apply(embeddings, message, i - 1, num_of_nodes);
    }
}

void message_passing(
    hls::stream<ne_out_t> embeddings[EDGE_PARALLEL],
    FM_TYPE message[MAX_NODE][2][EMB_DIM],
    int i,
    int num_of_nodes
)
{
#pragma HLS INLINE off

    for (int pe_id = 0; pe_id < EDGE_PARALLEL; pe_id++)
    {
#pragma HLS UNROLL
        if (i == NUM_LAYERS)
        {
            discard_embeddings(embeddings[pe_id], num_of_nodes);
        }
        else
        {
            message_passing_pe(pe_id, embeddings[pe_id], message, num_of_nodes);
        }
    }
}

void compute_CONV_layer(
    int i,
    FM_TYPE message[][2][EMB_DIM],
    FM_TYPE next_message[][2][EMB_DIM],
    int num_of_nodes,
    int num_of_edges
)
{
#pragma HLS INLINE off
#pragma HLS DATAFLOW

#pragma HLS ARRAY_PARTITION variable=message complete dim=2
#pragma HLS ARRAY_PARTITION variable=message cyclic factor=SCATTER_PARALLEL dim=3
#pragma HLS ARRAY_PARTITION variable=next_message complete dim=2
#pragma HLS ARRAY_PARTITION variable=next_message cyclic factor=SCATTER_PARALLEL dim=3

    hls::stream<ne_out_t> embeddings[EDGE_PARALLEL];
#pragma HLS STREAM variable=embeddings depth=20

    check_apply(embeddings, message, i, num_of_nodes);
    message_passing(embeddings, next_message, i, num_of_nodes);
}

void global_mean_pooling(int num_of_nodes, FM_TYPE h_node[][EMB_DIM])
{
#pragma HLS INLINE off

    for (int i = 0; i < num_of_nodes; i++)
    {
        for (int j = 0; j < EMB_DIM; j++)
        {
            FM_TYPE temp = h_node[i][j];
            if (i == 0)
                h_graph[j] = temp;
            else if (i == num_of_nodes - 1)
                h_graph[j] = (h_graph[j] + temp) / num_of_nodes;
            else
                h_graph[j] += temp;
        }
    }
}

float MLP()
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=MLP_layer_FC_layers_1_weight type=complete dim=2

    FM_TYPE temp_0[50];
    FM_TYPE temp_1[25];
    FM_TYPE temp_2;

    MLP_loop_1:
    for (int dim_out = 0; dim_out < 50; dim_out++)
    {
        temp_0[dim_out] = MLP_layer_FC_layers_0_bias[dim_out];
        for (int dim_in = 0; dim_in < 100; dim_in++)
        {
            temp_0[dim_out] += h_graph[dim_in] * MLP_layer_FC_layers_0_weight[dim_out][dim_in];
        }
        if (temp_0[dim_out] < FM_TYPE(0.0)) temp_0[dim_out] = FM_TYPE(0.0);
    }

    MLP_loop_2:
    for (int dim_out = 0; dim_out < 25; dim_out++)
    {
        temp_1[dim_out] = MLP_layer_FC_layers_1_bias[dim_out];
        for (int dim_in = 0; dim_in < 50; dim_in++)
        {
            temp_1[dim_out] += temp_0[dim_in] * MLP_layer_FC_layers_1_weight[dim_out][dim_in];
        }
        if (temp_1[dim_out] < FM_TYPE(0.0)) temp_1[dim_out] = FM_TYPE(0.0);
    }

    temp_2 = MLP_layer_FC_layers_2_bias[0];
    MLP_loop_3:
    for (int dim_in = 0; dim_in < 25; dim_in++)
    {
        temp_2 += temp_1[dim_in] * MLP_layer_FC_layers_2_weight[0][dim_in];
    }
    return temp_2.to_float();
}

void load_input_node_embeddings(int* node_feature, WT_TYPE embedding_h_atom_embedding_list_weights[9][119][100], int num_of_nodes, FM_TYPE h_node[][EMB_DIM])
{
#pragma HLS INLINE off

    /*Embedding: compute input node embedding */
    for (int nd = 0, node_feature_base = 0; nd < num_of_nodes; nd++, node_feature_base += ND_FEATURE)
    {
// I wouldn't pipeline this loop, myself, but Vitis wanted to, so:
#pragma HLS PIPELINE II=111

        array<WT_TYPE, EMB_DIM> weights[ND_FEATURE];
        for (int nf = 0; nf < ND_FEATURE; nf++)
        {
#pragma HLS UNROLL
            int nd_f = node_feature[node_feature_base + nf];
            weights[nf] = *((array<WT_TYPE, EMB_DIM>*)embedding_h_atom_embedding_list_weights[nf][nd_f]);
        }

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
            }
        }
    }
}

extern "C" {
void DGN_compute_one_graph(
    float* out,
    int* node_feature_in,
    WT_TYPE* node_eigen_in,
    int* edge_list_in,
    int* graph_attr,
    WT_TYPE embedding_h_atom_embedding_list_weights_in[9][119][100],
    WT_TYPE layers_posttrans_fully_connected_0_linear_weight_in[4][100][200],
    WT_TYPE layers_posttrans_fully_connected_0_linear_bias_in[4][100],
    WT_TYPE MLP_layer_FC_layers_0_weight_in[50][100],
    WT_TYPE MLP_layer_FC_layers_0_bias_in[50],
    WT_TYPE MLP_layer_FC_layers_1_weight_in[25][50],
    WT_TYPE MLP_layer_FC_layers_1_bias_in[25],
    WT_TYPE MLP_layer_FC_layers_2_weight_in[1][25],
    WT_TYPE MLP_layer_FC_layers_2_bias_in[1]
)
{
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS INTERFACE m_axi depth=(1) port=out offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(9 * 500) port=node_feature_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(4 * 500) port=node_eigen_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(500) port=edge_list_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(3) port=graph_attr offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(9 * 119 * 100) port=embedding_h_atom_embedding_list_weights_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(4 * 100 * 200) port=layers_posttrans_fully_connected_0_linear_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(4 * 100) port=layers_posttrans_fully_connected_0_linear_bias_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(50 * 100) port=MLP_layer_FC_layers_0_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(50) port=MLP_layer_FC_layers_0_bias_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(25 * 50) port=MLP_layer_FC_layers_1_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(25) port=MLP_layer_FC_layers_1_bias_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(1 * 25) port=MLP_layer_FC_layers_2_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(1) port=MLP_layer_FC_layers_2_bias_in offset=slave bundle=mem

#pragma HLS bind_storage variable=h_graph type=RAM_2P impl=bram
#pragma HLS bind_storage variable=layers_posttrans_fully_connected_0_linear_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=layers_posttrans_fully_connected_0_linear_bias type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_0_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_0_bias type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_1_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_1_bias type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_2_weight type=RAM_2P impl=bram

    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];
    int is_first = graph_attr[2];

#ifdef __SYNTHESIS_DEBUG__
    num_of_nodes = 19;
    num_of_edges = 40;
    is_first = 1;
#endif

    if (is_first)
    {
        load_weights(
            layers_posttrans_fully_connected_0_linear_weight_in,
            layers_posttrans_fully_connected_0_linear_bias_in,
            MLP_layer_FC_layers_0_weight_in,
            MLP_layer_FC_layers_0_bias_in,
            MLP_layer_FC_layers_1_weight_in,
            MLP_layer_FC_layers_1_bias_in,
            MLP_layer_FC_layers_2_weight_in,
            MLP_layer_FC_layers_2_bias_in
        );
    }

    load_graph(edge_list_in, node_eigen_in, num_of_nodes, num_of_edges);
    load_input_node_embeddings(node_feature_in, embedding_h_atom_embedding_list_weights_in, num_of_nodes, h_node);

    for (int i = 0; i <= NUM_LAYERS; i++)
    {
        if (i % 2 == 0)
            compute_CONV_layer(i, message_ping, message_pong, num_of_nodes, num_of_edges);
        else
            compute_CONV_layer(i, message_pong, message_ping, num_of_nodes, num_of_edges);
    }

    global_mean_pooling(num_of_nodes, h_node);
    *out = MLP();
}
}
