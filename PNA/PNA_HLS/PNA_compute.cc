#include "dcl.h"
#include "math.h"
//#define _PRINT_

/// h_x: node feature vectors
/// e_x: edge attribute vectors
/// message: received message of each node
/// mlp_in/out: buffers for mlp

float message[MAX_EDGE][EMB_DIM];
int mean_index[MAX_EDGE][EMB_DIM];
float ssquare[MAX_EDGE][EMB_DIM];

float out_0[MAX_EDGE][EMB_DIM];
float out_1[MAX_EDGE][EMB_DIM];
float out_2[MAX_EDGE][EMB_DIM];
float out_3[MAX_EDGE][EMB_DIM];

float h_0[MAX_NODE][EMB_DIM];
float m_0[MAX_NODE][960];

float h_1[MAX_NODE][EMB_DIM];
float m_1[MAX_NODE][960];

float h_2[MAX_NODE][EMB_DIM];
float m_2[MAX_NODE][960];

float h_3[MAX_NODE][EMB_DIM];
float m_3[MAX_NODE][960];

float h_4[MAX_NODE][EMB_DIM];

float h_5[EMB_DIM];
float final;

float deg[10] = {2025, 170914, 384897, 253864, 19049, 50, 121, 3, 4, 9};
float avg_deg[2] = {
    83093.6015625,
    6.885701656341553};

void scatter_sum(float src[MAX_EDGE][EMB_DIM], float out[MAX_NODE][EMB_DIM], int index[MAX_EDGE][EMB_DIM], int index_i, int index_j)
{
    for (int i = 0; i < index_i; i++)
    {
        for (int j = 0; j < index_j; j++)
        {
            int t = index[i][j];
            out[t][j] += src[i][j];
        }
    }/*
    if(index_i == 250)
    {
        for (int i = 0; i < 250; i++)
        {
            for (int j = 0; j < 80;j++)
                printf("%f,",out[i][j]);
            printf("%d,\n",i);

        }
    }
    */
}

void aggr_mean(float src[MAX_EDGE][EMB_DIM], float out[MAX_NODE][EMB_DIM], int index[MAX_EDGE], int dim_size, int num_of_edges, int mean_index[MAX_EDGE][EMB_DIM])
{
    scatter_sum(src, out, mean_index, num_of_edges, EMB_DIM);

    float count[MAX_NODE];
    memset(count, 0, MAX_NODE * sizeof(float));
    //count on the nodes
    for (int j = 0; j < num_of_edges; j++)
    {
        int t = index[j];
        count[t] += 1;
    }
    ///dimsize:num of the nodes
    for (int i = 0; i < dim_size; i++)
    {
        for (int j = 0; j < EMB_DIM; j++)
        {
            out[i][j] = out[i][j] / count[i];
        }
    }
}

void aggr_std(float src[MAX_EDGE][EMB_DIM], float out[MAX_NODE][EMB_DIM], int mean_index[MAX_EDGE][EMB_DIM], int index[MAX_EDGE], int dim_size, int num_of_edges)
{

    memset(ssquare, 0, MAX_EDGE * EMB_DIM * sizeof(float));
    for (int i = 0; i < num_of_edges; i++)
    {
        for (int j = 0; j < EMB_DIM; j++)
            ssquare[i][j] = src[i][j] * src[i][j];
    }
    aggr_mean(ssquare, out, index, dim_size, EMB_DIM, mean_index);
    for (int i = 0; i < dim_size; i++)
    {
        for (int j = 0; j < EMB_DIM; j++)
        {
            out[i][j] -= out_0[i][j] * out_0[i][j];
            out[i][j] = out[i][j] > 0 ? out[i][j] : 0.0;
            out[i][j] += 1e-5;
            out[i][j] = sqrt(out[i][j]);
        }
    }
}
//dim_size:numofnodes

void aggr_max(float src[MAX_EDGE][EMB_DIM], float out[MAX_NODE][EMB_DIM], int index[MAX_EDGE][EMB_DIM], int dim_size, int num_of_edges)
{
    for (int i = 0; i < dim_size; i++)
    {
        for (int j = 0; j < EMB_DIM; j++)
        {
            out_2[i][j] = -10;
        }
    }
    for (int i = 0; i < num_of_edges; i++)
    {
        for (int j = 0; j < EMB_DIM; j++)
        {
            int t = index[i][j];
            if (src[i][j] >= out[t][j])
                out[t][j] = src[i][j];
        }
    }
}
void aggr_min(float src[MAX_EDGE][EMB_DIM], float out[MAX_NODE][EMB_DIM], int index[MAX_EDGE][EMB_DIM], int dim_size, int num_of_edges)
{
    for (int i = 0; i < dim_size; i++)
    {
        for (int j = 0; j < EMB_DIM; j++)
        {
            out[i][j] = 10;
        }
    }
    for (int i = 0; i < num_of_edges; i++)
    {
        for (int j = 0; j < EMB_DIM; j++)
        {
            int t = index[i][j];
            if (src[i][j] <= out[t][j])
                out[t][j] = src[i][j];
        }
    }
}

void scale(float **hout, float out[MAX_NODE][12 * EMB_DIM], int num_of_nodes, int degree[MAX_NODE])
{
    for (int node = 0; node < num_of_nodes; node++)
    {
        float t = log(degree[node] + 1) / avg_deg[1];
        float scale = avg_deg[1] / log(degree[node] + 1);
        if (scale == 0)
            scale = 1;
        for (int dim = 0; dim < EMB_DIM; dim++)
        {
            out[node][dim] = out_0[node][dim];
            out[node][dim + EMB_DIM] = out_1[node][dim];
            out[node][dim + 2 * EMB_DIM] = out_2[node][dim];
            out[node][dim + 3 * EMB_DIM] = out_3[node][dim];
            out[node][dim + 4 * EMB_DIM] = out_0[node][dim] * t;
            out[node][dim + 5 * EMB_DIM] = out_1[node][dim] * t;
            out[node][dim + 6 * EMB_DIM] = out_2[node][dim] * t;
            out[node][dim + 7 * EMB_DIM] = out_3[node][dim] * t;
            out[node][dim + 8 * EMB_DIM] = out_0[node][dim] * scale;
            out[node][dim + 9 * EMB_DIM] = out_1[node][dim] * scale;
            out[node][dim + 10 * EMB_DIM] = out_2[node][dim] * scale;
            out[node][dim + 11 * EMB_DIM] = out_3[node][dim] * scale;
        }
    }
}
void aggr(float hin[MAX_EDGE][EMB_DIM], int index[MAX_EDGE], int dim_size, float **hout, int num_of_edges, int mean_index[MAX_EDGE][EMB_DIM])
{

    memset(out_0, 0, MAX_NODE * EMB_DIM * sizeof(float));
    memset(out_1, 0, MAX_NODE * EMB_DIM * sizeof(float));
    memset(out_2, 0, MAX_NODE * EMB_DIM * sizeof(float));
    memset(out_3, 0, MAX_NODE * EMB_DIM * sizeof(float));
    aggr_mean(hin, out_0, index, dim_size, num_of_edges, mean_index);
    // its ok above
    aggr_min(hin, out_1, mean_index, dim_size, num_of_edges);
    aggr_max(hin, out_2, mean_index, dim_size, num_of_edges);
    aggr_std(hin, out_3, mean_index, index, dim_size, num_of_edges);

    for (int i = 0; i < dim_size; i++)
    {
        for (int j = 0; j < EMB_DIM; j++)
        {
            hout[4 * i][j] = out_0[i][j];
            hout[4 * i + 1][j] = out_1[i][j];
            hout[4 * i + 2][j] = out_2[i][j];
            hout[4 * i + 3][j] = out_3[i][j];
        }
    }
}


// this function is problamatic because it uses "new" and "free"
// needs to be chnaged to used fixed arrays declared ahead of time
void message_passing(float h[MAX_NODE][EMB_DIM], float out[MAX_NODE][12 * EMB_DIM], int *edge_list, int num_of_nodes, int num_of_edges)
{
    memset(message, 0, MAX_EDGE * EMB_DIM * sizeof(float));
    memset(mean_index, 0, MAX_EDGE * EMB_DIM * sizeof(int));
    int *index = new int[MAX_EDGE];
    memset(index, 0, MAX_EDGE * sizeof(int));
	
	// this aggrout double pointer array is confusing to follow, maybe a fix to make it simpler
    float **aggrout = new float *[4 * MAX_NODE];
    for (int i = 0; i < 4 * MAX_NODE; i++)
        aggrout[i] = new float[EMB_DIM];

    int *degree = new int[MAX_NODE];
    memset(degree, 0, MAX_NODE * sizeof(int));

    for (int e = 0; e < num_of_edges; e++)
    {
        int u = edge_list[e * 2];     // source node id
        int v = edge_list[e * 2 + 1]; // target node id
        index[e] = edge_list[e * 2 + 1];
        degree[u] += 1;
        for (int dim = 0; dim < EMB_DIM; dim++)
        {
            mean_index[e][dim] = edge_list[e * 2 + 1];
            // accumulate the embedding vector for edge [u -> v]
            message[e][dim] += h[u][dim];
        };
    };
    //it's ok above
    aggr(message, index, num_of_nodes, aggrout, num_of_edges, mean_index);
    scale(aggrout, out, num_of_nodes, degree);

    delete[] index;
    delete[] degree;

    for (int i = 1; i < 3 * MAX_NODE; i++)
        delete[] aggrout[i];

    delete[] aggrout;
}

void Linear_relu(float l_in[MAX_NODE][L_IN], float l_out[MAX_NODE][L_OUT], int num_of_nodes, float weight[80][960], float bias[80])
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
    Linear_relu(m_0, h_1, num_of_nodes, convs_0_post_nn_0_weight, convs_0_post_nn_0_bias);
}

void CONV_1(int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
{
    message_passing(h_1, m_1, edge_list, num_of_nodes, num_of_edges);
    Linear_relu(m_1, h_2, num_of_nodes, convs_1_post_nn_0_weight, convs_1_post_nn_0_bias);
    return;
}

void CONV_2(int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
{
    message_passing(h_2, m_2, edge_list, num_of_nodes, num_of_edges);
    Linear_relu(m_2, h_3, num_of_nodes, convs_2_post_nn_0_weight, convs_2_post_nn_0_bias);
}

void CONV_3(int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
{
    message_passing(h_3, m_3, edge_list, num_of_nodes, num_of_edges);
    Linear_relu(m_3, h_4, num_of_nodes, convs_3_post_nn_0_weight, convs_3_post_nn_0_bias);
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

void MLP(int num_of_nodes)
{
    float temp_0[40];
    float temp_1[20];
    for (int dim_out = 0; dim_out < 40; dim_out++)
    {
        temp_0[dim_out] = mlp_0_bias[dim_out];
        for (int dim_in = 0; dim_in < 80; dim_in++)
        {
            temp_0[dim_out] += h_5[dim_in] * mlp_0_weight[dim_out][dim_in];
        }
        temp_0[dim_out] = temp_0[dim_out] > 0 ? temp_0[dim_out] : 0.0;
    }
    for (int dim_out = 0; dim_out < 20; dim_out++)
    {
        temp_1[dim_out] = mlp_2_bias[dim_out];
        for (int dim_in = 0; dim_in < 40; dim_in++)
        {
            temp_1[dim_out] += temp_0[dim_in] * mlp_2_weight[dim_out][dim_in];
        }
        temp_1[dim_out] = temp_1[dim_out] > 0 ? temp_1[dim_out] : 0.0;
    }

    final = mlp_4_bias[0];
    for (int dim_in = 0; dim_in < 20; dim_in++)
    {
        final += temp_1[dim_in] * mlp_4_weight[0][dim_in];
    }
    return;
}

void PNA_compute_one_graph(int* node_feature, int* edge_list, int* edge_attr, int* graph_attr)
{
    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];
    printf("Computing PNA ...\n");
    /*Embedding: compute input node embedding */
    memset(h_0, 0, MAX_NODE * EMB_DIM * sizeof(float));
    for (int nd = 0; nd < num_of_nodes; nd++)
    {
        for (int nf = 0; nf < ND_FEATURE; nf++)
        {
            int nd_f = node_feature[nd * ND_FEATURE + nf];
            for (int dim = 0; dim < EMB_DIM; dim++)
            {
                float emb_value = 0;
                switch (nf)
                {
                case 0:
                    emb_value = node_emb_atom_embedding_list_0_weight[nd_f][dim];
                    break;
                case 1:
                    emb_value = node_emb_atom_embedding_list_1_weight[nd_f][dim];
                    break;
                case 2:
                    emb_value = node_emb_atom_embedding_list_2_weight[nd_f][dim];
                    break;
                case 3:
                    emb_value = node_emb_atom_embedding_list_3_weight[nd_f][dim];
                    break;
                case 4:
                    emb_value = node_emb_atom_embedding_list_4_weight[nd_f][dim];
                    break;
                case 5:
                    emb_value = node_emb_atom_embedding_list_5_weight[nd_f][dim];
                    break;
                case 6:
                    emb_value = node_emb_atom_embedding_list_6_weight[nd_f][dim];
                    break;
                case 7:
                    emb_value = node_emb_atom_embedding_list_7_weight[nd_f][dim];
                    break;
                case 8:
                    emb_value = node_emb_atom_embedding_list_8_weight[nd_f][dim];
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
        for (int j = 0; j < 80; j++)
        {
            h_1[i][j] += h_0[i][j];
        }
    }

    ////////////// CONV 1 //////////////////////////////////
    CONV_1(edge_list, edge_attr, num_of_nodes, num_of_edges);
    for (int i = 0; i < num_of_nodes; i++)
    {
        for (int j = 0; j < 80; j++)
        {
            h_2[i][j] += h_1[i][j];
        }
    }
    ////////////// CONV 2 //////////////////////////////////
    CONV_2(edge_list, edge_attr, num_of_nodes, num_of_edges);
    for (int i = 0; i < num_of_nodes; i++)
    {
        for (int j = 0; j < 80; j++)
        {
            h_3[i][j] += h_2[i][j];
        }
    }
    ////////////// CONV 3 //////////////////////////////////
    CONV_3(edge_list, edge_attr, num_of_nodes, num_of_edges);
    for (int i = 0; i < num_of_nodes; i++)
    {
        for (int j = 0; j < 80; j++)
        {
            h_4[i][j] += h_3[i][j];
        }
    }
    GLOBAL_MEAN_POOL(h_4, h_5, num_of_nodes);
    MLP( num_of_nodes);
    printf("%.8f\n", final);

    return;
}
