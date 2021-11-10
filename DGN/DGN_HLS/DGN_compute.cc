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
WT_TYPE node_eigen[MAX_NODE * 4];

FM_TYPE h_0[MAX_NODE][EMB_DIM];
FM_TYPE h_1[MAX_NODE][EMB_DIM];
FM_TYPE h_2[MAX_NODE][EMB_DIM];
FM_TYPE h_3[MAX_NODE][EMB_DIM];
FM_TYPE h_4[MAX_NODE][EMB_DIM];
FM_TYPE h_5[EMB_DIM];
FM_TYPE message[MAX_NODE][2 * EMB_DIM];

void load_weights(
    WT_TYPE layers_posttrans_fully_connected_0_linear_weight[4][100][200],
    WT_TYPE layers_posttrans_fully_connected_0_linear_bias[4][100],
    WT_TYPE MLP_layer_FC_layers_0_weight[50][100],
    WT_TYPE MLP_layer_FC_layers_0_bias[50],
    WT_TYPE MLP_layer_FC_layers_1_weight[25][50],
    WT_TYPE MLP_layer_FC_layers_1_bias[25],
    WT_TYPE MLP_layer_FC_layers_2_weight[1][25],
    WT_TYPE MLP_layer_FC_layers_2_bias[1],
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
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 100; j++)
        {
            for (int k = 0; k < 200; k++)
            {
                layers_posttrans_fully_connected_0_linear_weight[i][j][k] = layers_posttrans_fully_connected_0_linear_weight_in[i][j][k];
            }
            layers_posttrans_fully_connected_0_linear_bias[i][j] = layers_posttrans_fully_connected_0_linear_bias_in[i][j];
        }
    }

    for (int i = 0; i < 50; i++)
    {
        for (int j = 0; j < 100; j++)
        {
            MLP_layer_FC_layers_0_weight[i][j] = MLP_layer_FC_layers_0_weight_in[i][j];
        }
        MLP_layer_FC_layers_0_bias[i] = MLP_layer_FC_layers_0_bias_in[i];
    }

    for (int i = 0; i < 25; i++)
    {
        for (int j = 0; j < 50; j++)
        {
            MLP_layer_FC_layers_1_weight[i][j] = MLP_layer_FC_layers_1_weight_in[i][j];
        }
        MLP_layer_FC_layers_1_bias[i] = MLP_layer_FC_layers_1_bias_in[i];
    }

    for (int i = 0; i < 25; i++)
    {
        MLP_layer_FC_layers_2_weight[0][i] = MLP_layer_FC_layers_2_weight_in[0][i];
    }
    MLP_layer_FC_layers_2_bias[0] = MLP_layer_FC_layers_2_bias_in[0];
}

void load_graph(int *node_feature, int *edge_list, WT_TYPE *node_eigen, int *node_feature_in, int *edge_list_in, WT_TYPE *node_eigen_in, int num_of_nodes, int num_of_edges)
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


void message_passing(FM_TYPE h[MAX_NODE][EMB_DIM], FM_TYPE m[MAX_NODE][2 * EMB_DIM], int num_of_nodes, int num_of_edges)
{
#pragma HLS INLINE off

    int edge_list_len = num_of_edges * 2;
    FM_TYPE mean_index[MAX_NODE][EMB_DIM];
    int degree[MAX_NODE];
    WT_TYPE eig_w[MAX_NODE][MAX_EDGE];
    FM_TYPE h_mod[MAX_NODE][EMB_DIM];
    int curdegree[MAX_NODE];

    for (int i = 0; i < num_of_nodes; i++)
    {
        degree[i] = 0;
        curdegree[i] = 0;
        for (int j = 0; j < EMB_DIM; j++)
        {
            mean_index[i][j] = FM_TYPE(0);
            h_mod[i][j] = FM_TYPE(0);
        }
        for (int j = 0; j < num_of_edges; j++)
        {
            eig_w[i][j] = WT_TYPE(0);
        }
    }

    for (int e = 0; e < edge_list_len; e += 2)
    {
        int u = edge_list[e];     // source node id
        int v = edge_list[e + 1]; // target node id
        //printf("e%d:%d->%d\n",e,u,v );
        int d = degree[v];
        degree[v] = d + 1;
        eig_w[v][d] = node_eigen[(u * 4) + 1] - node_eigen[(v * 4) + 1];
        for (int dim = 0; dim < EMB_DIM; dim++)
        {
            mean_index[v][dim] += h[u][dim];
            // accumulate the embedding vector for edge [u -> v]
        }
    }

    for (int n = 0; n < num_of_nodes; n++)
    {
        WT_TYPE eigsum = 0;
        for (int i = 0; i < degree[n];i++)
        {
#pragma HLS LOOP_TRIPCOUNT avg=19 max=19
            WT_TYPE temp = eig_w[n][i];
            if (temp < 0) temp = -temp;
            eigsum += temp;
        }

        if (eigsum != 0)
        {
            for (int d = 0; d < degree[n]; d++)
            {
#pragma HLS LOOP_TRIPCOUNT avg=19 max=19
                // eig_w[n][d] /= (eigsum + WT_TYPE(1e-8));
                eig_w[n][d] /= eigsum;
            }
        }
    }

    for (int e = 0; e < edge_list_len; e += 2)
    {
        int u = edge_list[e];     // source node id
        int v = edge_list[e + 1]; // target node id
        int d = curdegree[v];
        curdegree[v] = d + 1;
        for (int j = 0; j < EMB_DIM;j++)
        {
            h_mod[v][j] += h[u][j]*eig_w[v][d];
        }
    }


    for (int n = 0; n < num_of_nodes; n++)
    {
        WT_TYPE eigwsum = 0;
        //printf("n%d:", n);
        for (int deg = 0; deg < degree[n];deg++)
        {
#pragma HLS LOOP_TRIPCOUNT avg=19 max=19
            eigwsum += eig_w[n][deg];
        }
        for (int dim = 0; dim < EMB_DIM; dim++)
        {
            m[n][dim] = mean_index[n][dim] / degree[n];
            FM_TYPE temp = h_mod[n][dim] - eigwsum * h[n][dim];
            if (temp < 0) temp = -temp;
            m[n][dim + EMB_DIM] = temp;
        }
        //printf("eigwsum:%.3f",eigwsum );
        //printf("\n");

        }

}

void add_linear_relu(FM_TYPE h_in[MAX_NODE][EMB_DIM], FM_TYPE m[MAX_NODE][2 * EMB_DIM], FM_TYPE h_out[MAX_NODE][EMB_DIM], int num_of_nodes, int i)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=message type=complete dim=2

    for (int nd = 0; nd < num_of_nodes; nd++)
    {
        for (int dim_out = 0; dim_out < L_OUT; dim_out++)
        {
// #pragma HLS PIPELINE II=1
            FM_TYPE acc(layers_posttrans_fully_connected_0_linear_bias[i][dim_out]);
            for (int dim_in = 0; dim_in < L_IN; dim_in++)
            {
                acc += m[nd][dim_in] * layers_posttrans_fully_connected_0_linear_weight[i][dim_out][dim_in];
            }
            h_out[nd][dim_out] = (acc >= FM_TYPE(0.0)) ? FM_TYPE(h_in[nd][dim_out] + acc) : h_in[nd][dim_out];
        }
    }
    return;
}

void compute_CONV_layer(int i, WT_TYPE h_in[MAX_NODE][EMB_DIM], WT_TYPE h_out[MAX_NODE][EMB_DIM], WT_TYPE *node_eigen, int *edge_list, int num_of_nodes, int num_of_edges)
{
#pragma HLS INLINE off
    // FIXME: need to double-buffer!
    message_passing(h_in, message, num_of_nodes, num_of_edges);
    add_linear_relu(h_in, message, h_out, num_of_nodes, i);
}

void global_mean_pooling(FM_TYPE h_graph[EMB_DIM], FM_TYPE h_node[MAX_NODE][EMB_DIM], int num_of_nodes)
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

float MLP(FM_TYPE h_graph[EMB_DIM])
{
#pragma HLS INLINE off

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

void my_print(FM_TYPE &result)
{
#pragma HLS INLINE off
    result = result + 5;
    printf("%.8f\n", double(result));
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
#pragma HLS bind_storage variable=h_0 type=RAM_2P impl=bram
#pragma HLS bind_storage variable=h_1 type=RAM_2P impl=bram
#pragma HLS bind_storage variable=h_2 type=RAM_2P impl=bram
#pragma HLS bind_storage variable=h_3 type=RAM_2P impl=bram
#pragma HLS bind_storage variable=h_4 type=RAM_2P impl=bram
#pragma HLS bind_storage variable=h_5 type=RAM_2P impl=bram
#pragma HLS bind_storage variable=layers_posttrans_fully_connected_0_linear_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=layers_posttrans_fully_connected_0_linear_bias type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_0_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_0_bias type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_1_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_1_bias type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_2_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_2_bias type=RAM_2P impl=bram
#pragma HLS bind_storage variable=message type=RAM_2P impl=bram

    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];
    int is_first = graph_attr[2];

#ifndef CSIM
    num_of_nodes = 19;
    num_of_edges = 40;
    is_first = 0;
#endif

    if (is_first)
    {
        load_weights(
            layers_posttrans_fully_connected_0_linear_weight,
            layers_posttrans_fully_connected_0_linear_bias,
            MLP_layer_FC_layers_0_weight,
            MLP_layer_FC_layers_0_bias,
            MLP_layer_FC_layers_1_weight,
            MLP_layer_FC_layers_1_bias,
            MLP_layer_FC_layers_2_weight,
            MLP_layer_FC_layers_2_bias,
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
    load_graph(node_feature, edge_list, node_eigen, node_feature_in, edge_list_in, node_eigen_in, num_of_nodes, num_of_edges);

    printf("Computing DGN ...\n");
    /*Embedding: compute input node embedding */
    Init_h_0:
    for (int nd = 0; nd < num_of_nodes; nd++)
    {
        for (int nf = 0; nf < ND_FEATURE; nf++)
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
                    h_0[nd][dim] = weight;
                else
                    h_0[nd][dim] += weight;
            }
        }
    }

    compute_CONV_layer(0, h_0, h_1, node_eigen, edge_list, num_of_nodes, num_of_edges);
    compute_CONV_layer(1, h_1, h_2, node_eigen, edge_list, num_of_nodes, num_of_edges);
    compute_CONV_layer(2, h_2, h_3, node_eigen, edge_list, num_of_nodes, num_of_edges);
    compute_CONV_layer(3, h_3, h_4, node_eigen, edge_list, num_of_nodes, num_of_edges);
    // for (int i = 0; i < 4; i++)
    // {
    //     if (i % 2 == 0)
    //     else
    //         compute_CONV_layer(i, h_1, h_0, node_eigen, edge_list, num_of_nodes, num_of_edges);
    // }

    global_mean_pooling(h_5, h_4, num_of_nodes);
    return MLP(h_5);
    // my_print(result);

    // return;
}
}
