#include "dcl.h"
#include "math.h"
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

int node_feature[MAX_NODE * ND_FEATURE];
int edge_list[MAX_EDGE * 2];
int degree_table[MAX_NODE][2];
int neighbor_table[MAX_EDGE];
WT_TYPE node_eigen[MAX_NODE * 4];

FM_TYPE h_node[MAX_NODE][EMB_DIM];
FM_TYPE message_1[MAX_NODE][EMB_DIM];
FM_TYPE message_2[MAX_NODE][EMB_DIM];
FM_TYPE h_graph[EMB_DIM];

// Internal buffers for message passing
FM_TYPE mean_index[MAX_NODE][EMB_DIM];
WT_TYPE eig_w[MAX_NODE][MAX_EDGE];
FM_TYPE h_mod[MAX_NODE][EMB_DIM];
WT_TYPE eig_abssums[MAX_NODE];
WT_TYPE eigw_sums[MAX_NODE];

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

void load_graph(int *node_feature_in, int *edge_list_in, WT_TYPE *node_eigen_in, int num_of_nodes, int num_of_edges)
{
#pragma HLS INLINE off
    for (int i = 0; i < num_of_nodes * ND_FEATURE; i++)
    {
        node_feature[i] = node_feature_in[i];
    }

    for (int i = 0; i < num_of_edges * 2; i++)
    {
        edge_list[i] = edge_list_in[i];
    }

    for (int i = 0; i < num_of_nodes * 4; i++)
    {
        node_eigen[i] = node_eigen_in[i];
    }
}

void prepare_graph(int num_of_nodes, int num_of_edges)
{
#pragma HLS INLINE off

    int neighbor_table_idxs[MAX_NODE];
    int edge_list_len = num_of_edges * 2;

    for (int i = 0; i < num_of_nodes; i++)
    {
        degree_table[i][0] = 0;
        neighbor_table_idxs[i] = 0;
    }

    for (int i = 1; i < edge_list_len; i += 2)
    {
        int v = edge_list[i];
        degree_table[v][0]++;
    }

    int acc = 0;
    for (int i = 0; i < num_of_nodes; i++)
    {
        int degree = degree_table[i][0];
        degree_table[i][1] = acc;
        acc += degree;
    }

    for (int i = 0; i < edge_list_len; i += 2)
    {
        int u = edge_list[i];
        int v = edge_list[i + 1];
        int row_idx = degree_table[v][1];
        int col_idx = neighbor_table_idxs[v];
        neighbor_table[row_idx + col_idx] = u;
        neighbor_table_idxs[v] = col_idx + 1;
    }
}

void message_passing_compute_message_1(int num_of_nodes, int num_of_edges)
{
#pragma HLS INLINE off

    int v = -1;
    int start_idx;
    int end_idx = 0;
    int degree_v;

    for (int e = 0; e < num_of_edges; e++)
    {
        if (e >= end_idx)
        {
            v++;
            degree_v = degree_table[v][0];
            start_idx = degree_table[v][1];
            end_idx = start_idx + degree_v;
        }

        int i = e - start_idx;
        int u = neighbor_table[start_idx + i];

        for (int dim = 0; dim < EMB_DIM; dim++)
        {
            FM_TYPE acc = (i != 0) ? mean_index[v][dim] : FM_TYPE(0);
            acc += h_node[u][dim];
            if (i != degree_v - 1)
                mean_index[v][dim] = acc;
            else
                message_1[v][dim] = acc / degree_v;
            // accumulate the embedding vector for edge [u -> v]
        }
    }
}

void message_passing_compute_message_2(int num_of_nodes, int num_of_edges)
{
#pragma HLS INLINE off

    {
        int v = -1;
        int start_idx;
        int end_idx = 0;
        int degree_v;
        WT_TYPE v_eigen;

        for (int e = 0; e < num_of_edges; e++)
        {
            if (e >= end_idx)
            {
                v++;
                degree_v = degree_table[v][0];
                start_idx = degree_table[v][1];
                end_idx = start_idx + degree_v;
                v_eigen = node_eigen[(v * 4) + 1];
            }

            int i = e - start_idx;
            int u = neighbor_table[start_idx + i];
            WT_TYPE u_eigen = node_eigen[(u * 4) + 1];

            WT_TYPE diff_eigen = u_eigen - v_eigen;
            eig_w[v][i] = diff_eigen;
            WT_TYPE abs_diff_eigen = (diff_eigen >= 0) ? diff_eigen : WT_TYPE(-diff_eigen);
            WT_TYPE eig_abssum = (i != 0) ? eig_abssums[v] : WT_TYPE(0);
            eig_abssums[v] = eig_abssum + abs_diff_eigen;
            WT_TYPE eigw_sum = (i != 0) ? eigw_sums[v] : WT_TYPE(0);
            eigw_sums[v] = eigw_sum + diff_eigen;
        }
    }

    {
        int v = -1;
        int start_idx;
        int end_idx = 0;
        int degree_v;
        WT_TYPE v_eigen;

        for (int e = 0; e < num_of_edges; e++)
        {
            if (e >= end_idx)
            {
                v++;
                degree_v = degree_table[v][0];
                start_idx = degree_table[v][1];
                end_idx = start_idx + degree_v;
            }

            int i = e - start_idx;
            int u = neighbor_table[start_idx + i];
            WT_TYPE eig_abssum = eig_abssums[v];
            if (eig_abssum == 0) eig_abssum = 1;
            WT_TYPE eig_w_v_i = eig_w[v][i] / eig_abssum;

            for (int j = 0; j < EMB_DIM; j++)
            {
                FM_TYPE acc = (i != 0) ? h_mod[v][j] : FM_TYPE(0);
                acc += h_node[u][j] * eig_w_v_i;
                h_mod[v][j] = acc;
            }
        }
    }

    for (int n = 0; n < num_of_nodes; n++)
    {
        for (int dim = 0; dim < EMB_DIM; dim++)
        {
            WT_TYPE eig_abssum = eig_abssums[n];
            if (eig_abssum == 0) eig_abssum = 1;
            FM_TYPE temp = h_mod[n][dim] - eigw_sums[n] * h_node[n][dim] / eig_abssum;
            message_2[n][dim] = (temp >= 0) ? temp : FM_TYPE(-temp);
        }
    }
}

void message_passing(int num_of_nodes, int num_of_edges)
{
#pragma HLS INLINE off

    message_passing_compute_message_1(num_of_nodes, num_of_edges);
    message_passing_compute_message_2(num_of_nodes, num_of_edges);
}

void copy_message_to_next_buffer(FM_TYPE to[], int nd, int num_of_nodes)
{
#pragma HLS INLINE off
    nd++;
    if (nd < num_of_nodes)
    {
        for (int j = 0; j < EMB_DIM; j++)
        {
            to[j] = message_1[nd][j];
        }
        for (int j = 0; j < EMB_DIM; j++)
        {
            to[j + EMB_DIM] = message_2[nd][j];
        }
    }
}

void add_linear_relu_acc(FM_TYPE from[], int i, int nd)
{
#pragma HLS INLINE off
    if (nd >= 0)
    {
        for (int dim_out = 0; dim_out < L_OUT; dim_out++)
        {
#pragma HLS PIPELINE II=1
            FM_TYPE acc(layers_posttrans_fully_connected_0_linear_bias[i][dim_out]);
            for (int dim_in = 0; dim_in < L_IN; dim_in++)
            {
                // from[dim_in] == message[nd][dim_in]
                acc += from[dim_in] * layers_posttrans_fully_connected_0_linear_weight[i][dim_out][dim_in];
            }
            if (acc > 0.0) h_node[nd][dim_out] += acc;
        }
    }
}

void add_linear_relu(int num_of_nodes, int i)
{
#pragma HLS INLINE off
    // TODO: partition m in intermediate buffer; don't touch m
    // #pragma HLS ARRAY_PARTITION variable=m cyclic factor=16 dim=1

    FM_TYPE buffer1[L_IN];
    FM_TYPE buffer2[L_IN];

    for (int nd = -1; nd < num_of_nodes; nd++)
    {
        if (nd % 2 == 0)
        {
            copy_message_to_next_buffer(buffer2, nd, num_of_nodes);
            add_linear_relu_acc(buffer1, i, nd);
        }
        else
        {
            copy_message_to_next_buffer(buffer1, nd, num_of_nodes);
            add_linear_relu_acc(buffer2, i, nd);
        }
    }
    return;
}

void compute_CONV_layer(int i, int num_of_nodes, int num_of_edges)
{
#pragma HLS INLINE off
#pragma HLS bind_storage variable=message_1 type=RAM_2P impl=bram
#pragma HLS bind_storage variable=message_2 type=RAM_2P impl=bram

    message_passing(num_of_nodes, num_of_edges);
    add_linear_relu(num_of_nodes, i);
}

void global_mean_pooling(int num_of_nodes)
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

void load_input_node_embeddings(WT_TYPE embedding_h_atom_embedding_list_weights[9][119][100], int num_of_nodes)
{
#pragma HLS INLINE off

    /*Embedding: compute input node embedding */
    for (int nf = 0; nf < ND_FEATURE; nf++)
    {
        for (int nd = 0; nd < num_of_nodes; nd++)
        {
            //if(ND_FEATURE < 4)
            //{
            //    node_eigen[nd][ND_FEATURE] ;
            //}
            int nd_f = node_feature[nd * ND_FEATURE + nf];
            for (int dim = 0; dim < EMB_DIM; dim++)
            {
                WT_TYPE weight = embedding_h_atom_embedding_list_weights[nf][nd_f][dim];
                if (nf == 0)
                    h_node[nd][dim] = weight;
                else
                    h_node[nd][dim] += weight;
            }
        }
    }
}

extern "C" {
float DGN_compute_one_graph(
    int* node_feature_in,
    WT_TYPE* node_eigen_in,
    int* edge_list_in,
    int* edge_attr_in,
    int* graph_attr,
    WT_TYPE embedding_h_atom_embedding_list_weights[9][119][100],
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

#pragma HLS INTERFACE m_axi depth=100000 port=node_feature_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=node_eigen_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=edge_list_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=edge_attr_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=graph_attr offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=embedding_h_atom_embedding_list_weights offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=layers_posttrans_fully_connected_0_linear_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=layers_posttrans_fully_connected_0_linear_bias_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=MLP_layer_FC_layers_0_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=MLP_layer_FC_layers_0_bias_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=MLP_layer_FC_layers_1_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=MLP_layer_FC_layers_1_bias_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=MLP_layer_FC_layers_2_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=MLP_layer_FC_layers_2_bias_in offset=slave bundle=mem
// #pragma HLS INTERFACE m_axi depth=100000 port=out offset=slave bundle=mem2

#pragma HLS bind_storage variable=node_feature type=RAM_2P impl=bram
#pragma HLS bind_storage variable=edge_list type=RAM_2P impl=bram
#pragma HLS bind_storage variable=h_node type=RAM_2P impl=bram
#pragma HLS bind_storage variable=h_graph type=RAM_2P impl=bram
#pragma HLS bind_storage variable=degree_table type=RAM_2P impl=bram
#pragma HLS bind_storage variable=neighbor_table type=RAM_2P impl=bram
#pragma HLS bind_storage variable=layers_posttrans_fully_connected_0_linear_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=layers_posttrans_fully_connected_0_linear_bias type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_0_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_0_bias type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_1_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_1_bias type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_2_weight type=RAM_2P impl=bram
// #pragma HLS bind_storage variable=MLP_layer_FC_layers_2_bias type=RAM_2P impl=bram

#pragma HLS array_partition variable=degree_table complete dim=2

    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];
    int is_first = graph_attr[2];

#ifdef __SYNTHESIS__
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

    // Load a new graph onto chip
    load_graph(node_feature_in, edge_list_in, node_eigen_in, num_of_nodes, num_of_edges);
    prepare_graph(num_of_nodes, num_of_edges);

    printf("Computing DGN ...\n");
    load_input_node_embeddings(embedding_h_atom_embedding_list_weights, num_of_nodes);

    for (int i = 0; i < 4; i++)
    {
        compute_CONV_layer(i, num_of_nodes, num_of_edges);
    }

    global_mean_pooling(num_of_nodes);
    return MLP();
    // my_print(result);

    // return;
}
}
