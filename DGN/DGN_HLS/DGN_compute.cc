#include "dcl.h"
#include "math.h"
#include <stdio.h>

//#define _PRINT_

WT_TYPE embedding_h_atom_embedding_list_0_weight[119][100];
WT_TYPE embedding_h_atom_embedding_list_1_weight[4][100];
WT_TYPE embedding_h_atom_embedding_list_2_weight[12][100];
WT_TYPE embedding_h_atom_embedding_list_3_weight[12][100];
WT_TYPE embedding_h_atom_embedding_list_4_weight[10][100];
WT_TYPE embedding_h_atom_embedding_list_5_weight[6][100];
WT_TYPE embedding_h_atom_embedding_list_6_weight[6][100];
WT_TYPE embedding_h_atom_embedding_list_7_weight[2][100];
WT_TYPE embedding_h_atom_embedding_list_8_weight[2][100];
WT_TYPE layers_0_posttrans_fully_connected_0_linear_weight[100][200];
WT_TYPE layers_0_posttrans_fully_connected_0_linear_bias[100];
WT_TYPE layers_1_posttrans_fully_connected_0_linear_weight[100][200];
WT_TYPE layers_1_posttrans_fully_connected_0_linear_bias[100];
WT_TYPE layers_2_posttrans_fully_connected_0_linear_weight[100][200];
WT_TYPE layers_2_posttrans_fully_connected_0_linear_bias[100];
WT_TYPE layers_3_posttrans_fully_connected_0_linear_weight[100][200];
WT_TYPE layers_3_posttrans_fully_connected_0_linear_bias[100];
WT_TYPE MLP_layer_FC_layers_0_weight[50][100];
WT_TYPE MLP_layer_FC_layers_0_bias[50];
WT_TYPE MLP_layer_FC_layers_1_weight[25][50];
WT_TYPE MLP_layer_FC_layers_1_bias[25];
WT_TYPE MLP_layer_FC_layers_2_weight[1][25];
WT_TYPE MLP_layer_FC_layers_2_bias[1];

FM_TYPE out_0[MAX_EDGE][EMB_DIM];
FM_TYPE out_1[MAX_EDGE][EMB_DIM];
FM_TYPE out_2[MAX_EDGE][EMB_DIM];
FM_TYPE out_3[MAX_EDGE][EMB_DIM];

FM_TYPE h_0[MAX_NODE][EMB_DIM];
FM_TYPE m_0[MAX_NODE][200];

FM_TYPE h_1[MAX_NODE][EMB_DIM];
FM_TYPE m_1[MAX_NODE][200];

FM_TYPE h_2[MAX_NODE][EMB_DIM];
FM_TYPE m_2[MAX_NODE][200];

FM_TYPE h_3[MAX_NODE][EMB_DIM];
FM_TYPE m_3[MAX_NODE][200];

FM_TYPE h_4[MAX_NODE][EMB_DIM];

FM_TYPE h_5[EMB_DIM];
FM_TYPE final;



void message_passing(FM_TYPE h[MAX_NODE][EMB_DIM], FM_TYPE out[MAX_NODE][2 * EMB_DIM], WT_TYPE *node_eigen, int *edge_list, int num_of_nodes, int num_of_edges)
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
            out[n][dim] = mean_index[n][dim] / degree[n];
            FM_TYPE temp = h_mod[n][dim] - eigwsum * h[n][dim];
            if (temp < 0) temp = -temp;
            out[n][dim + EMB_DIM] = temp;
        }
        //printf("eigwsum:%.3f",eigwsum );
        //printf("\n");

        }

}

void Linear_relu(FM_TYPE l_in[MAX_NODE][L_IN], FM_TYPE l_out[MAX_NODE][L_OUT], int num_of_nodes, WT_TYPE weight[100][200], WT_TYPE bias[100])
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=l_in type=complete dim=2

    Linear_relu_loop_nodes:
    for (int nd = 0; nd < num_of_nodes; nd++)
    {
        Linear_relu_loop_l_out:
        for (int dim_out = 0; dim_out < L_OUT; dim_out++)
        {
#pragma HLS PIPELINE II=1
            l_out[nd][dim_out] = bias[dim_out];
            Linear_relu_loop_l_in:
            for (int dim_in = 0; dim_in < L_IN; dim_in++)
            {
                l_out[nd][dim_out] += l_in[nd][dim_in] * weight[dim_out][dim_in];
            }
            if (l_out[nd][dim_out] < 0.0) l_out[nd][dim_out] = 0.0;
        }
    }
    return;
}

void CONV_0(WT_TYPE *node_eigen, int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
{
    message_passing(h_0, m_0, node_eigen, edge_list, num_of_nodes, num_of_edges);
    Linear_relu(m_0, h_1, num_of_nodes, layers_0_posttrans_fully_connected_0_linear_weight, layers_0_posttrans_fully_connected_0_linear_bias);
}

void CONV_1(WT_TYPE *node_eigen, int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
{
    message_passing(h_1, m_1, node_eigen, edge_list, num_of_nodes, num_of_edges);
    Linear_relu(m_1, h_2, num_of_nodes, layers_1_posttrans_fully_connected_0_linear_weight, layers_1_posttrans_fully_connected_0_linear_bias);
}

void CONV_2(WT_TYPE *node_eigen, int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
{
    message_passing(h_2, m_2, node_eigen, edge_list, num_of_nodes, num_of_edges);
    Linear_relu(m_2, h_3, num_of_nodes, layers_2_posttrans_fully_connected_0_linear_weight, layers_2_posttrans_fully_connected_0_linear_bias);
}

void CONV_3(WT_TYPE *node_eigen, int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
{
    message_passing(h_3, m_3, node_eigen, edge_list, num_of_nodes, num_of_edges);
    Linear_relu(m_3, h_4, num_of_nodes, layers_3_posttrans_fully_connected_0_linear_weight, layers_3_posttrans_fully_connected_0_linear_bias);
}
void GLOBAL_MEAN_POOL(FM_TYPE h[MAX_NODE][EMB_DIM], FM_TYPE f[EMB_DIM], int num_of_nodes)
{
    for (int j = 0; j < EMB_DIM; j++)
    {
        f[j] = FM_TYPE(0);
        for (int i = 0; i < num_of_nodes; i++)
            f[j] += h[i][j];
        f[j] /= num_of_nodes;
    }
    return;
}

void MLP()
{
    WT_TYPE temp_0[50];
    WT_TYPE temp_1[25];
    for (int dim_out = 0; dim_out < 50; dim_out++)
    {
        temp_0[dim_out] = MLP_layer_FC_layers_0_bias[dim_out];
        for (int dim_in = 0; dim_in < 100; dim_in++)
        {
            temp_0[dim_out] += h_5[dim_in] * MLP_layer_FC_layers_0_weight[dim_out][dim_in];
        }
        temp_0[dim_out] = temp_0[dim_out] > 0 ? temp_0[dim_out] : WT_TYPE(0.0);
    }
    for (int dim_out = 0; dim_out < 25; dim_out++)
    {
        temp_1[dim_out] = MLP_layer_FC_layers_1_bias[dim_out];
        for (int dim_in = 0; dim_in < 50; dim_in++)
        {
            temp_1[dim_out] += temp_0[dim_in] * MLP_layer_FC_layers_1_weight[dim_out][dim_in];
        }
        temp_1[dim_out] = temp_1[dim_out] > 0 ? temp_1[dim_out] : WT_TYPE(0.0);
    }

    final = MLP_layer_FC_layers_2_bias[0];
    for (int dim_in = 0; dim_in < 25; dim_in++)
    {
        final += temp_1[dim_in] * MLP_layer_FC_layers_2_weight[0][dim_in];
    }
    return;
}

void DGN_compute_one_graph(int g, int* node_feature, WT_TYPE* node_eigen, int* edge_list, int* edge_attr, int* graph_attr)
{
#pragma HLS INTERFACE s_axilite port=return

    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];

    // int num_of_nodes = 19;
    // int num_of_edges = 40;

    printf("Computing DGN ...\n");
    /*Embedding: compute input node embedding */
    for (int i = 0; i < num_of_nodes; i++)
    {
        for (int j = 0; j < EMB_DIM; j++)
        {
            h_0[i][j] = 0;
        }
    }
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
                WT_TYPE emb_value = 0;
                switch (nf)
                {
                case 0:
                    emb_value = embedding_h_atom_embedding_list_0_weight[nd_f][dim];
                    break;
                case 1:
                    emb_value = embedding_h_atom_embedding_list_1_weight[nd_f][dim];
                    break;
                case 2:
                    emb_value = embedding_h_atom_embedding_list_2_weight[nd_f][dim];
                    break;
                case 3:
                    emb_value = embedding_h_atom_embedding_list_3_weight[nd_f][dim];
                    break;
                case 4:
                    emb_value = embedding_h_atom_embedding_list_4_weight[nd_f][dim];
                    break;
                case 5:
                    emb_value = embedding_h_atom_embedding_list_5_weight[nd_f][dim];
                    break;
                case 6:
                    emb_value = embedding_h_atom_embedding_list_6_weight[nd_f][dim];
                    break;
                case 7:
                    emb_value = embedding_h_atom_embedding_list_7_weight[nd_f][dim];
                    break;
                case 8:
                    emb_value = embedding_h_atom_embedding_list_8_weight[nd_f][dim];
                    break;
                }
                h_0[nd][dim] += emb_value;
            }
        }
    }

    ////////////// CONV 0 //////////////////////////////////
    CONV_0(node_eigen, edge_list, edge_attr, num_of_nodes, num_of_edges);
    for (int i = 0; i < num_of_nodes; i++)
    {
        for (int j = 0; j < 100; j++)
        {
            h_1[i][j] += h_0[i][j];
        }
    }

    ////////////// CONV 1 //////////////////////////////////
    CONV_1(node_eigen, edge_list, edge_attr, num_of_nodes, num_of_edges);
    for (int i = 0; i < num_of_nodes; i++)
    {
        for (int j = 0; j < 100; j++)
        {
            h_2[i][j] += h_1[i][j];
        }
    }
    ////////////// CONV 2 //////////////////////////////////
    CONV_2(node_eigen, edge_list, edge_attr, num_of_nodes, num_of_edges);
    for (int i = 0; i < num_of_nodes; i++)
    {
        for (int j = 0; j < 100; j++)
        {
            h_3[i][j] += h_2[i][j];
        }
    }
    ////////////// CONV 3 //////////////////////////////////
    CONV_3(node_eigen, edge_list, edge_attr, num_of_nodes, num_of_edges);
    for (int i = 0; i < num_of_nodes; i++)
    {
        for (int j = 0; j < 100; j++)
        {
            h_4[i][j] += h_3[i][j];
        }
    }
    GLOBAL_MEAN_POOL(h_4, h_5, num_of_nodes);
    MLP();
    printf("%.8f\n", double(final));

    return;
}
