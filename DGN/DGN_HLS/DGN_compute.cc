#include "dcl.h"
#include "math.h"
#include "hls_math.h"
#include "hls_stream.h"
#include <stdio.h>

//#define _PRINT_

WT_TYPE layers_posttrans_fully_connected_0_linear_weight[4][100][200];
WT_TYPE layers_posttrans_fully_connected_0_linear_bias[4][100];
WT_TYPE MLP_layer_FC_layers_0_weight[50][100];
WT_TYPE MLP_layer_FC_layers_0_bias[50];
WT_TYPE MLP_layer_FC_layers_1_weight[25][50];
WT_TYPE MLP_layer_FC_layers_1_bias[25];
WT_TYPE MLP_layer_FC_layers_2_weight[1][25];
WT_TYPE MLP_layer_FC_layers_2_bias[1];

int degree_table[MAX_NODE];
int neighbor_table[MAX_EDGE];
WT_TYPE node_eigen[MAX_NODE];

// BRAM for intermediate storage
FM_TYPE h_node_ping[MAX_NODE][EMB_DIM];
FM_TYPE h_node_pong[MAX_NODE][EMB_DIM];

FM_TYPE h_graph[EMB_DIM];

template<typename T, int N>
void load_array_1d(T to[N], T from[N]) {
#pragma HLS INLINE off
    for (int i = 0; i < N; i++) {
        to[i] = from[i];
    }
}

template<typename T, int R, int C>
void load_array_2d(T to[R][C], T from[R][C]) {
#pragma HLS INLINE off
    for (int i = 0; i < R; i++) {
        for (int j = 0; j < C; j++) {
            to[i][j] = from[i][j];
        }
    }
}

template<typename T, int L, int R, int C>
void load_array_3d(T to[L][R][C], T from[L][R][C]) {
#pragma HLS INLINE off
    for (int i = 0; i < L; i++) {
        for (int j = 0; j < R; j++) {
            for (int k = 0; k < C; k++) {
                to[i][j][k] = from[i][j][k];
            }
        }
    }
}

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
    load_array_3d<WT_TYPE, 4, 100, 200>(layers_posttrans_fully_connected_0_linear_weight, layers_posttrans_fully_connected_0_linear_weight_in);
    load_array_2d<WT_TYPE, 4, 100>(layers_posttrans_fully_connected_0_linear_bias, layers_posttrans_fully_connected_0_linear_bias_in);
    load_array_2d<WT_TYPE, 50, 100>(MLP_layer_FC_layers_0_weight, MLP_layer_FC_layers_0_weight_in);
    load_array_1d<WT_TYPE, 50>(MLP_layer_FC_layers_0_bias, MLP_layer_FC_layers_0_bias_in);
    load_array_2d<WT_TYPE, 25, 50>(MLP_layer_FC_layers_1_weight, MLP_layer_FC_layers_1_weight_in);
    load_array_1d<WT_TYPE, 25>(MLP_layer_FC_layers_1_bias, MLP_layer_FC_layers_1_bias_in);
    load_array_2d<WT_TYPE, 1, 25>(MLP_layer_FC_layers_2_weight, MLP_layer_FC_layers_2_weight_in);
    load_array_1d<WT_TYPE, 1>(MLP_layer_FC_layers_2_bias, MLP_layer_FC_layers_2_bias_in);
}

void load_graph(WT_TYPE *node_eigen_in, int degree_table_in[][2], int neighbor_table_in[], int num_of_nodes, int num_of_edges)
{
#pragma HLS INLINE off
    for (int i = 0; i < num_of_nodes; i++)
    {
        node_eigen[i] = node_eigen_in[(i * 4) + 1];
    }
    for (int i = 0; i < num_of_nodes; i++)
    {
        degree_table[i] = degree_table_in[i][0];
    }
    for (int i = 0; i < num_of_edges; i++)
    {
        neighbor_table[i] = neighbor_table_in[i];
    }
}

void gather(
    hls::stream<FM_TYPE>& message_1,
    hls::stream<FM_TYPE>& message_2,
    hls::stream<FM_TYPE>& h_node_v,
    FM_TYPE h_node[][EMB_DIM],
    int num_of_nodes,
    int num_of_edges
)
{
#pragma HLS INLINE off

    int e = 0;
    int v = 0;
    int start_idx = 0;
    int degree_v = degree_table[0];
    int end_idx = degree_v;
    WT_TYPE v_eigen = node_eigen[v];
    WT_TYPE eigw_sum = 0;
    WT_TYPE eig_abssum = 0;

    FM_TYPE node_acc_1[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=node_acc_1 complete dim=1
    FM_TYPE node_acc_2[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=node_acc_2 complete dim=1

    for (int _ = 0; _ < num_of_nodes + num_of_edges; _++)
    {
        bool is_start_of_row = (e == start_idx);
        bool is_end_of_row = (e == end_idx);
        bool is_last_v = (v == num_of_nodes - 1);
        int next_v = (!is_last_v) ? v + 1 : 0;

        int cur_v = v;
        int cur_e = e;
        int cur_degree_v = degree_v;
        WT_TYPE cur_eigw_sum = eigw_sum;
        WT_TYPE cur_eig_abssum = eig_abssum;

        for (int dim = 0; dim < EMB_DIM; dim++)
        {
            int u = neighbor_table[cur_e];
            int node_to_fetch = (is_end_of_row) ? cur_v : u;
            int node_eigen_to_fetch = (is_end_of_row) ? next_v : u;
            WT_TYPE node_eigen_el = node_eigen[node_eigen_to_fetch];
            WT_TYPE eig_w = node_eigen_el - v_eigen;
            FM_TYPE h_node_el = h_node[node_to_fetch][dim];

            if (is_end_of_row)
            {
                message_1 << (node_acc_1[dim] / cur_degree_v);
                message_2 << hls::abs((node_acc_2[dim] - cur_eigw_sum * h_node_el) / cur_eig_abssum);
                h_node_v << h_node_el;

                if (dim == 0 && !is_last_v)
                {
                    v = next_v;
                    degree_v = degree_table[next_v];
                    start_idx = e;
                    end_idx = e + degree_v;
                    v_eigen = node_eigen_el;
                    eigw_sum = 0;
                    eig_abssum = 0;
                }
            }
            else
            {
                {
                    FM_TYPE acc = (is_start_of_row) ? FM_TYPE(0) : node_acc_1[dim];
                    node_acc_1[dim] = acc + h_node_el;
                }
                {
                    FM_TYPE acc = (is_start_of_row) ? FM_TYPE(0) : node_acc_2[dim];
                    node_acc_2[dim] = acc + h_node_el * eig_w;
                }

                if (dim == 0)
                {
                    eigw_sum += eig_w;
                    eig_abssum += hls::abs(eig_w);
                    e++;
                }
            }
        }
    }
}

void apply(
    hls::stream<FM_TYPE>& message_1,
    hls::stream<FM_TYPE>& message_2,
    hls::stream<FM_TYPE>& h_node_v,
    FM_TYPE next_h_node[][EMB_DIM],
    int i,
    int num_of_nodes
)
{
#pragma HLS INLINE off

    for (int v = 0; v < num_of_nodes; v++)
    {
        FM_TYPE accs[L_OUT];
        for (int j = 0; j < EMB_DIM * 2; j++)
        {
#pragma HLS PIPELINE II=1
            if (j < EMB_DIM)
            {
                int dim_in = j;
                FM_TYPE activation_1;
                message_1 >> activation_1;
                FM_TYPE activation_2;
                message_2 >> activation_2;

                for (int dim_out = 0; dim_out < L_OUT; dim_out++)
                {
                    FM_TYPE acc = (dim_in == 0)
                        ? FM_TYPE(layers_posttrans_fully_connected_0_linear_bias[i][dim_out])
                        : accs[dim_out];
                    acc += (
                        activation_1 * layers_posttrans_fully_connected_0_linear_weight[i][dim_out][dim_in]
                        + activation_2 * layers_posttrans_fully_connected_0_linear_weight[i][dim_out][dim_in + EMB_DIM]
                    );
                    accs[dim_out] = acc;
                }
            }
            else
            {
                int dim_out = j - EMB_DIM;
                FM_TYPE h_node_v_el;
                h_node_v >> h_node_v_el;
                FM_TYPE acc = accs[dim_out];
                FM_TYPE abs_acc = (acc > 0.0) ? acc : FM_TYPE(0.0);
                next_h_node[v][dim_out] = h_node_v_el + abs_acc;
            }
        }
    }
}

void compute_CONV_layer(
    int i,
    FM_TYPE h_node[][EMB_DIM],
    FM_TYPE next_h_node[][EMB_DIM],
    int num_of_nodes,
    int num_of_edges
)
{
#pragma HLS INLINE off
#pragma HLS DATAFLOW

    hls::stream<FM_TYPE> message_1;
#pragma HLS STREAM variable=message_1 depth=(100 * 10)
    hls::stream<FM_TYPE> message_2;
#pragma HLS STREAM variable=message_2 depth=(100 * 10)
    hls::stream<FM_TYPE> h_node_v;
#pragma HLS STREAM variable=h_node_v depth=(100 * 10)

    gather(message_1, message_2, h_node_v, h_node, num_of_nodes, num_of_edges);
    apply(message_1, message_2, h_node_v, next_h_node, i, num_of_nodes);
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
    for (int nd = 0; nd < num_of_nodes; nd++)
    {
        FM_TYPE h_node_nd[EMB_DIM];
        int nd_fs[ND_FEATURE];
#pragma HLS ARRAY_PARTITION variable=nd_fs complete dim=1

        for (int nf = 0; nf < ND_FEATURE; nf++)
        {
            nd_fs[nf] = node_feature[nd * ND_FEATURE + nf];
        }
        {
            int nd_f = nd_fs[0];
            for (int dim = 0; dim < EMB_DIM; dim++)
            {
                h_node_nd[dim] = embedding_h_atom_embedding_list_weights[0][nd_f][dim];
            }
        }
        for (int nf = 1; nf < ND_FEATURE; nf++)
        {
#pragma HLS UNROLL
            int nd_f = nd_fs[nf];
            for (int dim = 0; dim < EMB_DIM; dim++)
            {
                h_node_nd[dim] += embedding_h_atom_embedding_list_weights[nf][nd_f][dim];
            }
        }
        {
            for (int dim = 0; dim < EMB_DIM; dim++)
            {
                h_node[nd][dim] = h_node_nd[dim];
            }
        }
    }
}

extern "C" {
void DGN_compute_one_graph(
    float* out,
    int* node_feature_in,
    WT_TYPE* node_eigen_in,
    int degree_table[][2],
    int neighbor_table[],
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
#pragma HLS INTERFACE m_axi depth=(500 * 2) port=degree_table offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(500) port=neighbor_table offset=slave bundle=mem
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

// #ifdef __SYNTHESIS__
//     num_of_nodes = 19;
//     num_of_edges = 40;
//     is_first = 1;
// #endif

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

    load_graph(node_eigen_in, degree_table, neighbor_table, num_of_nodes, num_of_edges);
    load_input_node_embeddings(node_feature_in, embedding_h_atom_embedding_list_weights_in, num_of_nodes, h_node_ping);

    for (int i = 0; i < 4; i++)
    {
        if (i % 2 == 0)
            compute_CONV_layer(i, h_node_ping, h_node_pong, num_of_nodes, num_of_edges);
        else
            compute_CONV_layer(i, h_node_pong, h_node_ping, num_of_nodes, num_of_edges);
    }

    global_mean_pooling(num_of_nodes, h_node_ping);
    *out = MLP();
}
}
