#include "dcl.h"
#include "math.h"
#include "hls_math.h"
#include "hls_stream.h"
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
int neighbor_table[MAX_EDGE];
WT_TYPE eig_w[MAX_EDGE];
WT_TYPE eig_abssums[MAX_NODE];
WT_TYPE eigw_sums[MAX_NODE];

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
    int edge_list_len = num_of_edges * 2;
    edge_t *edge_list_structs = (edge_t*)edge_list_in;

    for (int i = 0; i < num_of_nodes; i++)
    {
        degree_table[i] = 0;
        eig_abssums[i] = 0;
        eigw_sums[i] = 0;
    }

    for (int i = 0; i < num_of_edges; i++)
    {
        int u = edge_list_structs[i].u;
        degree_table[u]++;
    }

    int acc = 0;
    for (int i = 0; i < num_of_nodes; i++)
    {
        int degree = degree_table[i];
        neighbor_table_offsets[i] = acc;
        acc += degree;
    }

    for (int i = 0; i < num_of_edges; i++)
    {
        edge_t edge = edge_list_structs[i];
        int u = edge.u;
        int v = edge.v;
        int e = neighbor_table_offsets[u];
        neighbor_table[e] = v;
        neighbor_table_offsets[u] = e + 1;

        WT_TYPE u_eigen = node_eigen_in[(u * 4) + 1];
        WT_TYPE v_eigen = node_eigen_in[(v * 4) + 1];
        WT_TYPE diff_eigen = u_eigen - v_eigen;
        eig_w[e] = diff_eigen;
        eig_abssums[v] += hls::abs(diff_eigen);
        eigw_sums[v] += diff_eigen;
    }
}

void scatter(
    hls::stream<int>& degrees,
    hls::stream<mp_in_t>& embeddings,
    FM_TYPE message[MAX_NODE][2][EMB_DIM],
    int num_of_edges
)
{
#pragma HLS INLINE off

    int start_e = 0;
    int end_e = 0;
    FM_TYPE curr_node_embedding[EMB_DIM];
    mp_in_t embedding;
#pragma HLS ARRAY_PARTITION variable=curr_node_embedding cyclic factor=SCATTER_PARALLEL dim=1

    for (int e = 0; e < num_of_edges; e++)
    {
#pragma HLS PIPELINE II=ceildiv(EMB_DIM, SCATTER_PARALLEL)
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += SCATTER_PARALLEL)
        {
            WT_TYPE eig_w_e = eig_w[e];
            int v = neighbor_table[e];

            if (dim_base == 0 && e == end_e)
            {
                int degree;
                start_e = e;
                degrees >> degree;
                end_e = e + degree;
            }

            if (e == start_e)
            {
                embeddings >> embedding;
            }

            for (int dim_offset = 0; dim_offset < SCATTER_PARALLEL; dim_offset++)
            {
#pragma HLS UNROLL
                int dim = dim_base + dim_offset;
                if (dim < EMB_DIM)
                {
                    if (e == start_e)
                    {
                        curr_node_embedding[dim] = embedding[dim_offset];
                    }
                    message[v][0][dim] += curr_node_embedding[dim];
                    message[v][1][dim] += curr_node_embedding[dim] * eig_w_e;
                }
            }
        }
    }
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
    mp_in_t& output,
    hls::stream<mp_in_t>& embeddings,
    int dim_base
)
{
#pragma HLS INLINE
    for (int dim_offset = 0; dim_offset < APPLY_PARALLEL; dim_offset++)
    {
#pragma HLS UNROLL
        int dim = dim_base + dim_offset;
        FM_TYPE acc = accs[dim];
        FM_TYPE relu_acc = (hls::signbit(acc)) ? FM_TYPE(0.0) : acc;
        FM_TYPE result = h_node_buf[dim] + relu_acc;
        h_node_v[dim] = result;

        int scatter_dim_offset = dim % SCATTER_PARALLEL;
        output[scatter_dim_offset] = result;
        if (dim == EMB_DIM - 1 || scatter_dim_offset == SCATTER_PARALLEL - 1)
        {
            embeddings << output;
        }
    }
}

void apply(
    hls::stream<int>& degrees,
    hls::stream<mp_in_t>& embeddings,
    FM_TYPE message[][2][EMB_DIM],
    int i,
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=h_node cyclic factor=NODE_PARALLEL dim=1
#pragma HLS ARRAY_PARTITION variable=h_node cyclic factor=APPLY_PARALLEL dim=2

    FM_TYPE accs_ping[L_OUT];
#pragma HLS ARRAY_PARTITION variable=accs_ping complete dim=1
    FM_TYPE accs_pong[L_OUT];
#pragma HLS ARRAY_PARTITION variable=accs_pong complete dim=1
    FM_TYPE h_node_ping[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=h_node_ping cyclic factor=APPLY_PARALLEL dim=1
    FM_TYPE h_node_pong[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=h_node_pong cyclic factor=APPLY_PARALLEL dim=1
    mp_in_t embedding;
#pragma HLS AGGREGATE variable=embedding

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
                    embedding,
                    embeddings,
                    dim_base
                );
            }

            if (v != num_of_nodes)
            {
                int degree = degree_table[v];
                apply_accumulate_one_batch(
                    message[v],
                    h_node[v],
                    (v % 2 == 0) ? accs_ping : accs_pong,
                    (v % 2 == 0) ? h_node_ping : h_node_pong,
                    degree,
                    eigw_sums[v],
                    eig_abssums[v],
                    i,
                    dim_base
                );
                if (dim_base == 0)
                {
                    degrees << degree;
                }
            }
        }
    }
}

void read_degrees(hls::stream<int> &degrees, int num_of_nodes)
{
#pragma HLS INLINE off
    for (int nd = 0; nd < num_of_nodes; nd++)
    {
        degrees << degree_table[nd];
    }
}

void read_embeddings(hls::stream<mp_in_t>& embeddings, int num_of_nodes)
{
#pragma HLS INLINE off

    mp_in_t embedding;
#pragma HLS AGGREGATE variable=embedding

    for (int v = 0; v < num_of_nodes; v++)
    {
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += APPLY_PARALLEL)
        {
            for (int dim_offset = 0; dim_offset < APPLY_PARALLEL; dim_offset++)
            {
#pragma HLS UNROLL
                int dim = dim_base + dim_offset;
                int scatter_dim_offset = dim % SCATTER_PARALLEL;
                embedding[scatter_dim_offset] = h_node[v][dim];
                if (dim == EMB_DIM - 1 || scatter_dim_offset == SCATTER_PARALLEL - 1)
                {
                    embeddings << embedding;
                }
            }
        }
    }
}

void discard_degrees(hls::stream<int>& degrees, int num_of_nodes)
{
#pragma HLS INLINE off
    int degree;
    for (int v = 0; v < num_of_nodes; v++)
    {
        degrees >> degree;
    }
}

void discard_embeddings(hls::stream<mp_in_t>& embeddings, int num_of_nodes)
{
#pragma HLS INLINE off
    mp_in_t embedding;
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
    hls::stream<int>& degrees,
    hls::stream<mp_in_t>& embeddings,
    FM_TYPE message[][2][EMB_DIM],
    int i,
    int num_of_nodes
)
{
#pragma HLS INLINE off

    if (i == 0)
    {
        read_degrees(degrees, num_of_nodes);
        read_embeddings(embeddings, num_of_nodes);
    }
    else
    {
        apply(degrees, embeddings, message, i - 1, num_of_nodes);
    }
}

void check_scatter(
    hls::stream<int>& degrees,
    hls::stream<mp_in_t>& embeddings,
    FM_TYPE message[MAX_NODE][2][EMB_DIM],
    int i,
    int num_of_nodes,
    int num_of_edges
)
{
#pragma HLS INLINE off

    if (i == NUM_LAYERS)
    {
        discard_degrees(degrees, num_of_nodes);
        discard_embeddings(embeddings, num_of_nodes);
    }
    else
    {
        scatter(degrees, embeddings, message, num_of_edges);
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

    hls::stream<int> degrees("degrees");
#pragma HLS STREAM variable=degrees depth=20
    hls::stream<mp_in_t> embeddings("embeddings");
#pragma HLS STREAM variable=embeddings depth=20

    check_apply(degrees, embeddings, message, i, num_of_nodes);
    check_scatter(degrees, embeddings, next_message, i, num_of_nodes, num_of_edges);
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
