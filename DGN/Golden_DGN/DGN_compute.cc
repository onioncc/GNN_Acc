#include "dcl.h"
#include "math.h"
#include <fstream>

//#define _PRINT_

float node_eig[MAX_NODE][4];

float out_0[MAX_EDGE][EMB_DIM];
float out_1[MAX_EDGE][EMB_DIM];
float out_2[MAX_EDGE][EMB_DIM];
float out_3[MAX_EDGE][EMB_DIM];

float h_0[MAX_NODE][EMB_DIM];
float m_0[MAX_NODE][200];

float h_1[MAX_NODE][EMB_DIM];
float m_1[MAX_NODE][200];

float h_2[MAX_NODE][EMB_DIM];
float m_2[MAX_NODE][200];

float h_3[MAX_NODE][EMB_DIM];
float m_3[MAX_NODE][200];

float h_4[MAX_NODE][EMB_DIM];

float h_5[EMB_DIM];
float final;



void message_passing(float h[MAX_NODE][EMB_DIM], float out[MAX_NODE][2 * EMB_DIM], int *edge_list, int num_of_nodes, int num_of_edges)
{
    float mean_index[MAX_NODE][EMB_DIM];
    int *degree = new int[MAX_NODE];
    memset(degree, 0, MAX_NODE * sizeof(int));
    memset(mean_index, 0, MAX_NODE * EMB_DIM * sizeof(float));
    float eig_w[MAX_NODE][MAX_EDGE];
    memset(eig_w, 0, MAX_NODE * MAX_EDGE * sizeof(float));
    int eigwct[num_of_nodes] = {0};
    for (int e = 0; e < num_of_edges; e++)
    {
        int u = edge_list[e * 2];     // source node id
        int v = edge_list[e * 2 + 1]; // target node id
        //printf("e%d:%d->%d\n",e,u,v );
        degree[v] += 1;
        eig_w[v][eigwct[v]] = node_eig[u][1] - node_eig[v][1];
        eigwct[v]++;
            for (int dim = 0; dim < EMB_DIM; dim++)
            {
                mean_index[v][dim] += h[u][dim];
                // accumulate the embedding vector for edge [u -> v]
            }
    }

    for (int n = 0; n < num_of_nodes; n++)
    {
        float eigsum = 0;
        for (int i = 0; i < degree[n];i++)
        {
            eigsum += fabsf(eig_w[n][i]);
        }
        //printf("n%d:%f\n",n,eigsum);

        for (int d = 0; d < degree[n]; d++)
        {
            eig_w[n][d] /= (eigsum +1e-8);
        }
    }

    float h_mod[MAX_NODE][EMB_DIM];
    memset(h_mod, 0, MAX_NODE * EMB_DIM * sizeof(float));
    int curdegree[MAX_NODE];
    memset(curdegree, 0, MAX_NODE  * sizeof(float));
    for (int e = 0; e < num_of_edges; e++)
    {
        int u = edge_list[e * 2];     // source node id
        int v = edge_list[e * 2 + 1]; // target node id
            for (int j = 0; j < EMB_DIM;j++)
            {
                h_mod[v][j] += h[u][j]*eig_w[v][curdegree[v]];
            }
        curdegree[v] += 1;

    }


    for (int n = 0; n < num_of_nodes; n++)
    {
        float eigwsum = 0;
        //printf("n%d:", n);
        for (int deg = 0; deg < degree[n];deg++)
            {
                eigwsum += eig_w[n][deg];
            }
            for (int dim = 0; dim < EMB_DIM; dim++)
            {
                out[n][dim] = mean_index[n][dim] / degree[n];
                out[n][dim + EMB_DIM] = fabsf(h_mod[n][dim] - eigwsum * h[n][dim]);
        }
        //printf("eigwsum:%.3f",eigwsum );
        //printf("\n");

        }

}

void Linear_relu(float l_in[MAX_NODE][L_IN], float l_out[MAX_NODE][L_OUT], int num_of_nodes, float weight[100][200], float bias[100])
{
    for (int nd = 0; nd < num_of_nodes; nd++)
    {
        for (int dim_out = 0; dim_out < L_OUT; dim_out++)
        {
            l_out[nd][dim_out] = bias[dim_out];
            for (int dim_in = 0; dim_in < L_IN; dim_in++)
            {
                l_out[nd][dim_out] += l_in[nd][dim_in] * weight[dim_out][dim_in];
            }
        }
    }
    for (int nd = 0; nd < num_of_nodes; nd++)
    {
        for (int dim_out = 0; dim_out < L_OUT; dim_out++)
        {
            l_out[nd][dim_out] = l_out[nd][dim_out] > 0 ? l_out[nd][dim_out] : 0.0;
        }
    }
    return;
}

void CONV_0(int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
{
    message_passing(h_0, m_0, edge_list, num_of_nodes, num_of_edges);
    Linear_relu(m_0, h_1, num_of_nodes, layers_0_posttrans_fully_connected_0_linear_weight, layers_0_posttrans_fully_connected_0_linear_bias);
}

void CONV_1(int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
{
    message_passing(h_1, m_1, edge_list, num_of_nodes, num_of_edges);
    Linear_relu(m_1, h_2, num_of_nodes, layers_1_posttrans_fully_connected_0_linear_weight, layers_1_posttrans_fully_connected_0_linear_bias);
}

void CONV_2(int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
{
    message_passing(h_2, m_2, edge_list, num_of_nodes, num_of_edges);
    Linear_relu(m_2, h_3, num_of_nodes, layers_2_posttrans_fully_connected_0_linear_weight, layers_2_posttrans_fully_connected_0_linear_bias);
}

void CONV_3(int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
{
    message_passing(h_3, m_3, edge_list, num_of_nodes, num_of_edges);
    Linear_relu(m_3, h_4, num_of_nodes, layers_3_posttrans_fully_connected_0_linear_weight, layers_3_posttrans_fully_connected_0_linear_bias);
}
void GLOBAL_MEAN_POOL(float h[MAX_NODE][EMB_DIM], float f[EMB_DIM], int num_of_nodes)
{
    memset(f, 0, EMB_DIM * sizeof(float));
    for (int j = 0; j < EMB_DIM; j++)
    {
        for (int i = 0; i < num_of_nodes; i++)
            f[j] += h[i][j];
        f[j] /= num_of_nodes;
    }
    return;
}

void MLP()
{
    float temp_0[50];
    float temp_1[25];
    for (int dim_out = 0; dim_out < 50; dim_out++)
    {
        temp_0[dim_out] = MLP_layer_FC_layers_0_bias[dim_out];
        for (int dim_in = 0; dim_in < 100; dim_in++)
        {
            temp_0[dim_out] += h_5[dim_in] * MLP_layer_FC_layers_0_weight[dim_out][dim_in];
        }
        temp_0[dim_out] = temp_0[dim_out] > 0 ? temp_0[dim_out] : 0.0;
    }
    for (int dim_out = 0; dim_out < 25; dim_out++)
    {
        temp_1[dim_out] = MLP_layer_FC_layers_1_bias[dim_out];
        for (int dim_in = 0; dim_in < 50; dim_in++)
        {
            temp_1[dim_out] += temp_0[dim_in] * MLP_layer_FC_layers_1_weight[dim_out][dim_in];
        }
        temp_1[dim_out] = temp_1[dim_out] > 0 ? temp_1[dim_out] : 0.0;
    }

    final = MLP_layer_FC_layers_2_bias[0];
    for (int dim_in = 0; dim_in < 25; dim_in++)
    {
        final += temp_1[dim_in] * MLP_layer_FC_layers_2_weight[0][dim_in];
    }
    return;
}

void DGN_compute_one_graph(int g, int* node_feature, int* edge_list, int* edge_attr, int* graph_attr)
{
    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];

    //embedding node eigen features
    char graph_n[30];
    memset(graph_n, 0, 30 * sizeof(char));
    sprintf(graph_n, "eig/g%d.txt", g);
	double firstdata=0.0;
	FILE *eigfile = fopen(graph_n, "r");
	fscanf(eigfile, "tensor([[%e, %e,%e,%e],\n", &node_eig[0][0], &node_eig[0][1], &node_eig[0][2], &node_eig[0][3]);
    for (int nd = 1; nd < num_of_nodes - 1; nd++)
    {
	    fscanf(eigfile, "[%e, %e,%e,%e],\n", &node_eig[nd][0], &node_eig[nd][1], &node_eig[nd][2], &node_eig[nd][3]);
    }
	fscanf(eigfile, "[%e, %e,%e,%e]])", &node_eig[num_of_nodes-1][0], &node_eig[num_of_nodes-1][1], &node_eig[num_of_nodes-1][2], &node_eig[num_of_nodes-1][3]);
    fclose(eigfile);
    
    printf("Computing DGN ...\n");
    /*Embedding: compute input node embedding */
    memset(h_0, 0, MAX_NODE * EMB_DIM * sizeof(float));
    for (int nd = 0; nd < num_of_nodes; nd++)
    {
        for (int nf = 0; nf < ND_FEATURE; nf++)
        {
            if(ND_FEATURE < 4)
            {
                node_eig[nd][ND_FEATURE] ;
            }
            int nd_f = node_feature[nd * ND_FEATURE + nf];
            for (int dim = 0; dim < EMB_DIM; dim++)
            {
                float emb_value = 0;
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
    CONV_0(edge_list, edge_attr, num_of_nodes, num_of_edges);
    for (int i = 0; i < num_of_nodes; i++)
    {
        for (int j = 0; j < 100; j++)
        {
            h_1[i][j] += h_0[i][j];
        }
    }

    ////////////// CONV 1 //////////////////////////////////
    CONV_1(edge_list, edge_attr, num_of_nodes, num_of_edges);
    for (int i = 0; i < num_of_nodes; i++)
    {
        for (int j = 0; j < 100; j++)
        {
            h_2[i][j] += h_1[i][j];
        }
    }
    ////////////// CONV 2 //////////////////////////////////
    CONV_2(edge_list, edge_attr, num_of_nodes, num_of_edges);
    for (int i = 0; i < num_of_nodes; i++)
    {
        for (int j = 0; j < 100; j++)
        {
            h_3[i][j] += h_2[i][j];
        }
    }
    ////////////// CONV 3 //////////////////////////////////
    CONV_3(edge_list, edge_attr, num_of_nodes, num_of_edges);
    for (int i = 0; i < num_of_nodes; i++)
    {
        for (int j = 0; j < 100; j++)
        {
            h_4[i][j] += h_3[i][j];
        }
    }
    GLOBAL_MEAN_POOL(h_4, h_5, num_of_nodes);
    MLP();
    printf("%.8f\n", final);

    return;
}
