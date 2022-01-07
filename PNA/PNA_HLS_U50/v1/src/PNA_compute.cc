#include "dcl.h"
//#define _PRINT_

WT_TYPE node_emb_atom_embedding_list_0_weight_fixed[119][80];
WT_TYPE node_emb_atom_embedding_list_1_weight_fixed[4][80];
WT_TYPE node_emb_atom_embedding_list_2_weight_fixed[12][80];
WT_TYPE node_emb_atom_embedding_list_3_weight_fixed[12][80];
WT_TYPE node_emb_atom_embedding_list_4_weight_fixed[10][80];
WT_TYPE node_emb_atom_embedding_list_5_weight_fixed[6][80];
WT_TYPE node_emb_atom_embedding_list_6_weight_fixed[6][80];
WT_TYPE node_emb_atom_embedding_list_7_weight_fixed[2][80];
WT_TYPE node_emb_atom_embedding_list_8_weight_fixed[2][80];

WT_TYPE mlp_0_weight_fixed[40][80];
WT_TYPE mlp_0_bias_fixed[40];
WT_TYPE mlp_2_weight_fixed[20][40];
WT_TYPE mlp_2_bias_fixed[20];
WT_TYPE mlp_4_weight_fixed[1][20];
WT_TYPE mlp_4_bias_fixed[1];

WT_TYPE convs_ALL_post_nn_0_weight_fixed[4][80][960];
WT_TYPE convs_ALL_post_nn_0_bias_fixed[4][80];

int node_feature[ND_FEATURE * MAX_NODE];
int edge_list[MAX_EDGE * 2];
// int edge_attr[EDGE_ATTR * MAX_EDGE];

/// h_x: node feature vectors
/// e_x: edge attribute vectors
/// message: received message of each node
/// mlp_in/out: buffers for mlp

FM_TYPE message[MAX_EDGE][EMB_DIM];
int mean_index[MAX_EDGE][EMB_DIM];
FM_TYPE ssquare[MAX_EDGE][EMB_DIM];

FM_TYPE out_0[MAX_EDGE][EMB_DIM];
FM_TYPE out_1[MAX_EDGE][EMB_DIM];
FM_TYPE out_2[MAX_EDGE][EMB_DIM];
FM_TYPE out_3[MAX_EDGE][EMB_DIM];

// FM_TYPE h_0[MAX_NODE][EMB_DIM];
// FM_TYPE m_0[MAX_NODE][960];

// FM_TYPE h_1[MAX_NODE][EMB_DIM];
// FM_TYPE m_1[MAX_NODE][960];

// FM_TYPE h_2[MAX_NODE][EMB_DIM];
// FM_TYPE m_2[MAX_NODE][960];

// FM_TYPE h_3[MAX_NODE][EMB_DIM];
// FM_TYPE m_3[MAX_NODE][960];

// FM_TYPE h_4[MAX_NODE][EMB_DIM];

FM_TYPE h_combined[2][MAX_NODE][EMB_DIM];
FM_TYPE m_single[MAX_NODE][960];
FM_TYPE h_5[EMB_DIM];
FM_TYPE final;

WT_TYPE deg[10] = {2025, 170914, 384897, 253864, 19049, 50, 121, 3, 4, 9};
WT_TYPE avg_deg[2] = {
    83093.6015625,
    6.885701656341553};

template <const int M, typename T>
void zero_1d(T out[M], int a) {
    for (int i = 0; i < a; i++) {
        out[i] = 0;
    }
}

template <const int M, const int N, typename T>
void zero_2d(T out[M][N], int a, int b) {
    for (int i = 0; i < a; i++) {
        for (int j = 0; j < b; j++) {
            out[i][j] = 0;
        }
    }
}

template <const int M, const int N, const int O, typename T>
void zero_3d(T out[M][N][O], int a, int b, int c) {
    for (int i = 0; i < a; i++) {
        for (int j = 0; j < b; j++) {
            for (int k = 0; k < c; k++) {
                out[i][j][k] = 0;
            }
        }
    }
}

template <const int M, typename T>
void copy_1d(T from[M], T to[M]) {
    for (int i = 0; i < M; i++) {
        to[i] = from[i];
    }
}

template <const int M, const int N, typename T>
void copy_2d(T from[M][N], T to[M][N]) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            to[i][j] = from[i][j];
        }
    }
}

template <const int M, const int N, const int O, typename T>
void copy_3d(T from[M][N][O], T to[M][N][O]) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            for (int k = 0; k < O; k++) {
                to[i][j][k] = from[i][j][k];
            }
        }
    }
}

void scatter_sum(FM_TYPE src[MAX_EDGE][EMB_DIM], FM_TYPE out[MAX_NODE][EMB_DIM], int index[MAX_EDGE][EMB_DIM], int index_i, int index_j) {
#pragma HLS inline off

    for (int i = 0; i < index_i; i++) {
        for (int j = 0; j < index_j; j++) {
            int t = index[i][j];
            out[t][j] += src[i][j];
        }
    } /*
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

int count[MAX_NODE];

void aggr_mean(FM_TYPE src[MAX_EDGE][EMB_DIM], FM_TYPE out[MAX_NODE][EMB_DIM], int index[MAX_EDGE], int dim_size, int num_of_edges, int mean_index[MAX_EDGE][EMB_DIM]) {
#pragma HLS inline off
#pragma HLS array_partition variable = count complete

    //#pragma HLS PIPELINE

    scatter_sum(src, out, mean_index, num_of_edges, EMB_DIM);

    // memset(count, 0, MAX_NODE * sizeof(int));
    zero_1d<MAX_NODE, int>(count, num_of_edges);
    // count on the nodes
    for (int j = 0; j < num_of_edges; j++) {
        // #pragma HLS PIPELINE
        int t = index[j];
        count[t] += 1;
    }
    /// dimsize:num of the nodes
    for (int i = 0; i < dim_size; i++) {
        for (int j = 0; j < EMB_DIM; j++) {
            // printf("%f \n", count[i].to_float());
            if (count[i] != 0) {
                out[i][j] = out[i][j] / (FM_TYPE)count[i];
            }
        }
    }
}

void aggr_std(FM_TYPE src[MAX_EDGE][EMB_DIM], FM_TYPE out[MAX_NODE][EMB_DIM], int mean_index[MAX_EDGE][EMB_DIM], int index[MAX_EDGE], int dim_size, int num_of_edges) {
#pragma HLS inline off
    const FM_TYPE epsilon = 1e-5;

    //    memset(ssquare, 0, MAX_EDGE * EMB_DIM * sizeof(FM_TYPE));
    zero_2d<MAX_EDGE, EMB_DIM, FM_TYPE>(ssquare, MAX_EDGE, EMB_DIM);

    for (int i = 0; i < num_of_edges; i++) {
        for (int j = 0; j < EMB_DIM; j++)
            ssquare[i][j] = src[i][j] * src[i][j];
    }
    aggr_mean(ssquare, out, index, dim_size, EMB_DIM, mean_index);
    for (int i = 0; i < dim_size; i++) {
        //#pragma HLS PIPELINE

        for (int j = 0; j < EMB_DIM; j++) {
            out[i][j] -= out_0[i][j] * out_0[i][j];
            out[i][j] = out[i][j] > 0 ? out[i][j] : (FM_TYPE)0;
            // out[i][j] += (FM_TYPE)1e-5;
            out[i][j] += epsilon;
            out[i][j] = hls::sqrt(out[i][j]);
        }
    }
}
// dim_size:numofnodes

void aggr_max(FM_TYPE src[MAX_EDGE][EMB_DIM], FM_TYPE out[MAX_NODE][EMB_DIM], int index[MAX_EDGE][EMB_DIM], int dim_size, int num_of_edges) {
#pragma HLS inline off

    for (int i = 0; i < dim_size; i++) {
        //#pragma HLS PIPELINE

        for (int j = 0; j < EMB_DIM; j++) {
            out_2[i][j] = -10;
        }
    }
    for (int i = 0; i < num_of_edges; i++) {
        //#pragma HLS PIPELINE

        for (int j = 0; j < EMB_DIM; j++) {
            int t = index[i][j];
            if (src[i][j] >= out[t][j])
                out[t][j] = src[i][j];
        }
    }
}
void aggr_min(FM_TYPE src[MAX_EDGE][EMB_DIM], FM_TYPE out[MAX_NODE][EMB_DIM], int index[MAX_EDGE][EMB_DIM], int dim_size, int num_of_edges) {
#pragma HLS inline off
    //#pragma HLS PIPELINE

    for (int i = 0; i < dim_size; i++) {
        //#pragma HLS PIPELINE

        for (int j = 0; j < EMB_DIM; j++) {
            out[i][j] = 10;
        }
    }
    for (int i = 0; i < num_of_edges; i++) {
        //#pragma HLS PIPELINE

        for (int j = 0; j < EMB_DIM; j++) {
            int t = index[i][j];
            if (src[i][j] <= out[t][j])
                out[t][j] = src[i][j];
        }
    }
}

void scale(FM_TYPE hout[4 * MAX_NODE][EMB_DIM], FM_TYPE out[MAX_NODE][12 * EMB_DIM], int num_of_nodes, int degree[MAX_NODE]) {
#pragma HLS inline off
#pragma HLS ARRAY_PARTITION variable = out block dim = 2 factor = 12

    for (int node = 0; node < num_of_nodes; node++) {
        //#pragma HLS PIPELINE
        FM_TYPE t = hls::log(((FM_TYPE)degree[node] + (FM_TYPE)1)) / (FM_TYPE)avg_deg[1];
        FM_TYPE scale = (FM_TYPE)avg_deg[1] / hls::log((FM_TYPE)(degree[node] + (FM_TYPE)1));
        if (scale == 0)
            scale = (FM_TYPE)1;
        for (int dim = 0; dim < EMB_DIM; dim++) {
            FM_TYPE out_0_buf = out_0[node][dim];
            FM_TYPE out_1_buf = out_1[node][dim];
            FM_TYPE out_2_buf = out_2[node][dim];
            FM_TYPE out_3_buf = out_3[node][dim];

            out[node][dim] = out_0_buf;
            out[node][dim + EMB_DIM] = out_1_buf;
            out[node][dim + 2 * EMB_DIM] = out_2_buf;
            out[node][dim + 3 * EMB_DIM] = out_3_buf;
            out[node][dim + 4 * EMB_DIM] = out_0_buf * t;
            out[node][dim + 5 * EMB_DIM] = out_1_buf * t;
            out[node][dim + 6 * EMB_DIM] = out_2_buf * t;
            out[node][dim + 7 * EMB_DIM] = out_3_buf * t;
            out[node][dim + 8 * EMB_DIM] = out_0_buf * scale;
            out[node][dim + 9 * EMB_DIM] = out_1_buf * scale;
            out[node][dim + 10 * EMB_DIM] = out_2_buf * scale;
            out[node][dim + 11 * EMB_DIM] = out_3_buf * scale;
        }
    }
}
void aggr(FM_TYPE hin[MAX_EDGE][EMB_DIM], int index[MAX_EDGE], int dim_size, FM_TYPE hout[4 * MAX_NODE][EMB_DIM], int num_of_edges, int mean_index[MAX_EDGE][EMB_DIM]) {
#pragma HLS inline off
#pragma HLS ARRAY_PARTITION variable = hout cyclic dim = 1 factor = 4
    //#pragma HLS PIPELINE

    //    memset(out_0, 0, MAX_EDGE * EMB_DIM * sizeof(FM_TYPE));
    //    memset(out_1, 0, MAX_EDGE * EMB_DIM * sizeof(FM_TYPE));
    //    memset(out_2, 0, MAX_EDGE * EMB_DIM * sizeof(FM_TYPE));
    //    memset(out_3, 0, MAX_EDGE * EMB_DIM * sizeof(FM_TYPE));

    zero_2d<MAX_EDGE, EMB_DIM, FM_TYPE>(out_0, num_of_edges + 1, EMB_DIM);
    zero_2d<MAX_EDGE, EMB_DIM, FM_TYPE>(out_1, num_of_edges + 1, EMB_DIM);
    zero_2d<MAX_EDGE, EMB_DIM, FM_TYPE>(out_2, num_of_edges + 1, EMB_DIM);
    zero_2d<MAX_EDGE, EMB_DIM, FM_TYPE>(out_3, num_of_edges + 1, EMB_DIM);

    aggr_mean(hin, out_0, index, dim_size, num_of_edges, mean_index);
    // its ok above
    aggr_min(hin, out_1, mean_index, dim_size, num_of_edges);
    aggr_max(hin, out_2, mean_index, dim_size, num_of_edges);
    aggr_std(hin, out_3, mean_index, index, dim_size, num_of_edges);

    for (int i = 0; i < dim_size; i++) {
        //#pragma HLS PIPELINE

        for (int j = 0; j < EMB_DIM; j++) {
            hout[4 * i][j] = out_0[i][j];
            hout[4 * i + 1][j] = out_1[i][j];
            hout[4 * i + 2][j] = out_2[i][j];
            hout[4 * i + 3][j] = out_3[i][j];
        }
    }
}

// this function is problematic because it uses "new" and "free"
// needs to be changed to used fixed arrays declared ahead of time

int index_buf[MAX_EDGE];
int degree_buf[MAX_NODE];
FM_TYPE aggrout[4 * MAX_NODE][EMB_DIM];

void message_passing(FM_TYPE h[MAX_NODE][EMB_DIM], FM_TYPE out[MAX_NODE][12 * EMB_DIM], int *edge_list, int num_of_nodes, int num_of_edges) {
#pragma HLS inline off
#pragma HLS array_partition variable = index_buf complete

    // memset(message, 0, MAX_EDGE * EMB_DIM * sizeof(FM_TYPE));
    // memset(mean_index, 0, MAX_EDGE * EMB_DIM * sizeof(int));
    // memset(index_buf, 0, MAX_EDGE * sizeof(int));

    zero_2d<MAX_EDGE, EMB_DIM, FM_TYPE>(message, num_of_edges, EMB_DIM);
    zero_2d<MAX_EDGE, EMB_DIM, int>(mean_index, num_of_edges, EMB_DIM);
    zero_1d<MAX_EDGE, int>(index_buf, MAX_EDGE);

    // this aggrout double pointer array is confusing to follow, maybe a fix to make it simpler
    // float **aggrout = new float *[4 * MAX_NODE];
    // for (int i = 0; i < 4 * MAX_NODE; i++)
    //     aggrout[i] = new float[EMB_DIM];

    // memset(degree_buf, 0, MAX_NODE * sizeof(int));
    zero_1d<MAX_NODE, int>(degree_buf, MAX_NODE);

    for (int e = 0; e < num_of_edges; e++) {
        int u = edge_list[e * 2];     // source node id
        int v = edge_list[e * 2 + 1]; // target node id
        index_buf[e] = edge_list[e * 2 + 1];
        degree_buf[u] += 1;
        for (int dim = 0; dim < EMB_DIM; dim++) {
            mean_index[e][dim] = edge_list[e * 2 + 1];
            // accumulate the embedding vector for edge [u -> v]
            message[e][dim] += h[u][dim];
        };
    };
    // it's ok above
    aggr(message, index_buf, num_of_nodes, aggrout, num_of_edges, mean_index);
    scale(aggrout, out, num_of_nodes, degree_buf);

    // for (int i = 1; i < 3 * MAX_NODE; i++)
    //     delete[] aggrout[i];
    // delete[] aggrout;
}

void Linear_relu(FM_TYPE l_in[MAX_NODE][L_IN], FM_TYPE l_out[MAX_NODE][L_OUT], int num_of_nodes, WT_TYPE weight[80][960], WT_TYPE bias[80]) {

#pragma HLS inline off

    for (int nd = 0; nd < num_of_nodes; nd++) {

        for (int dim_out = 0; dim_out < L_OUT; dim_out++) {
            l_out[nd][dim_out] = bias[dim_out];

            // #pragma HLS PIPELINE II=1

            for (int dim_in = 0; dim_in < L_IN; dim_in++) {
                l_out[nd][dim_out] += l_in[nd][dim_in] * weight[dim_out][dim_in];
            }
        }
    }
    for (int nd = 0; nd < num_of_nodes; nd++) {
        for (int dim_out = 0; dim_out < L_OUT; dim_out++) {
            l_out[nd][dim_out] = l_out[nd][dim_out] > 0 ? l_out[nd][dim_out] : (FM_TYPE)0;
        }
    }
    return;
}

// void CONV_0(int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
// {
// 	#pragma HLS inline off
//     message_passing(h_0, m_0, edge_list, num_of_nodes, num_of_edges);
//     Linear_relu(m_0, h_1, num_of_nodes, convs_0_post_nn_0_weight_fixed, convs_0_post_nn_0_bias_fixed);
// }

// void CONV_1(int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
// {
// 	#pragma HLS inline off
//     message_passing(h_1, m_1, edge_list, num_of_nodes, num_of_edges);
//     Linear_relu(m_1, h_2, num_of_nodes, convs_1_post_nn_0_weight_fixed, convs_1_post_nn_0_bias_fixed);
//     return;
// }

// void CONV_2(int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
// {
// 	#pragma HLS inline off
//     message_passing(h_2, m_2, edge_list, num_of_nodes, num_of_edges);
//     Linear_relu(m_2, h_3, num_of_nodes, convs_2_post_nn_0_weight_fixed, convs_2_post_nn_0_bias_fixed);
// }

// void CONV_3(int *edge_list, int *edge_attr, int num_of_nodes, int num_of_edges)
// {
// 	#pragma HLS inline off
//     message_passing(h_3, m_3, edge_list, num_of_nodes, num_of_edges);
//     Linear_relu(m_3, h_4, num_of_nodes, convs_3_post_nn_0_weight_fixed, convs_3_post_nn_0_bias_fixed);
// }

void CONV(int *edge_list, int num_of_nodes, int num_of_edges, int layer) {
#pragma HLS inline off

    if (layer % 2 == 0) {
        message_passing(h_combined[0], m_single, edge_list, num_of_nodes, num_of_edges);
        Linear_relu(m_single, h_combined[1], num_of_nodes, convs_ALL_post_nn_0_weight_fixed[layer], convs_ALL_post_nn_0_bias_fixed[layer]);
    } else {
        message_passing(h_combined[1], m_single, edge_list, num_of_nodes, num_of_edges);
        Linear_relu(m_single, h_combined[0], num_of_nodes, convs_ALL_post_nn_0_weight_fixed[layer], convs_ALL_post_nn_0_bias_fixed[layer]);
    }

    // message_passing(h_combined[layer], m_single, edge_list, num_of_nodes, num_of_edges);
    // Linear_relu(m_single, h_combined[layer + 1], num_of_nodes, convs_ALL_post_nn_0_weight_fixed[layer], convs_ALL_post_nn_0_bias_fixed[layer]);
}

void GLOBAL_MEAN_POOL(FM_TYPE h[MAX_NODE][EMB_DIM], FM_TYPE f[EMB_DIM], int num_of_nodes) {
#pragma HLS inline off
    // memset(f, 0, EMB_DIM * sizeof(FM_TYPE));
    zero_1d<EMB_DIM, FM_TYPE>(f, EMB_DIM);

    for (int j = 0; j < EMB_DIM; j++) {
        for (int i = 0; i < num_of_nodes; i++)
            //			#pragma HLS pipeline II=4
            f[j] += h[i][j];
        f[j] /= num_of_nodes;
    }
    return;
}

FM_TYPE MLP(int num_of_nodes) {
#pragma HLS inline off
    FM_TYPE temp_0[40];
    FM_TYPE temp_1[20];

#pragma HLS array_partition variable = temp_0 complete
#pragma HLS array_partition variable = temp_1 complete

#pragma HLS array_partition variable = mlp_0_weight_fixed dim = 1 complete
#pragma HLS array_partition variable = mlp_0_bias_fixed dim = 0 complete
#pragma HLS array_partition variable = mlp_2_weight_fixed dim = 1 complete
#pragma HLS array_partition variable = mlp_2_bias_fixed dim = 0 complete
#pragma HLS array_partition variable = mlp_4_weight_fixed dim = 1 complete
#pragma HLS array_partition variable = mlp_4_bias_fixed dim = 0 complete

    for (int dim_out = 0; dim_out < 40; dim_out++) {
        temp_0[dim_out] = mlp_0_bias_fixed[dim_out];
        for (int dim_in = 0; dim_in < 80; dim_in++) {
            temp_0[dim_out] += h_5[dim_in] * mlp_0_weight_fixed[dim_out][dim_in];
        }
        temp_0[dim_out] = temp_0[dim_out] > 0 ? temp_0[dim_out] : (FM_TYPE)0;
    }
    for (int dim_out = 0; dim_out < 20; dim_out++) {
        temp_1[dim_out] = mlp_2_bias_fixed[dim_out];
        for (int dim_in = 0; dim_in < 40; dim_in++) {
            temp_1[dim_out] += temp_0[dim_in] * mlp_2_weight_fixed[dim_out][dim_in];
        }
        temp_1[dim_out] = temp_1[dim_out] > 0 ? temp_1[dim_out] : (FM_TYPE)0;
    }

    FM_TYPE out;
    out = mlp_4_bias_fixed[0];
    for (int dim_in = 0; dim_in < 20; dim_in++) {
        out += temp_1[dim_in] * mlp_4_weight_fixed[0][dim_in];
    }
    return out;
}

void PNA_compute_one_graph(
    FM_TYPE *task,

    int *node_feature_in,
    int *edge_list_in,
    int *graph_attr,

    WT_TYPE node_emb_atom_embedding_list_0_weight_fixed_in[119][80],
    WT_TYPE node_emb_atom_embedding_list_1_weight_fixed_in[4][80],
    WT_TYPE node_emb_atom_embedding_list_2_weight_fixed_in[12][80],
    WT_TYPE node_emb_atom_embedding_list_3_weight_fixed_in[12][80],
    WT_TYPE node_emb_atom_embedding_list_4_weight_fixed_in[10][80],
    WT_TYPE node_emb_atom_embedding_list_5_weight_fixed_in[6][80],
    WT_TYPE node_emb_atom_embedding_list_6_weight_fixed_in[6][80],
    WT_TYPE node_emb_atom_embedding_list_7_weight_fixed_in[2][80],
    WT_TYPE node_emb_atom_embedding_list_8_weight_fixed_in[2][80],

    WT_TYPE mlp_0_weight_fixed_in[40][80],
    WT_TYPE mlp_0_bias_fixed_in[40],
    WT_TYPE mlp_2_weight_fixed_in[20][40],
    WT_TYPE mlp_2_bias_fixed_in[20],
    WT_TYPE mlp_4_weight_fixed_in[1][20],
    WT_TYPE mlp_4_bias_fixed_in[1],

    WT_TYPE convs_ALL_post_nn_0_weight_fixed_in[4][80][960],
    WT_TYPE convs_ALL_post_nn_0_bias_fixed_in[4][80]) {

#pragma HLS INTERFACE m_axi depth = 100000 port = node_feature_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = edge_list_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = graph_attr offset = slave bundle = mem

#pragma HLS INTERFACE m_axi depth = 100000 port = node_emb_atom_embedding_list_0_weight_fixed_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = node_emb_atom_embedding_list_1_weight_fixed_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = node_emb_atom_embedding_list_2_weight_fixed_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = node_emb_atom_embedding_list_3_weight_fixed_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = node_emb_atom_embedding_list_4_weight_fixed_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = node_emb_atom_embedding_list_5_weight_fixed_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = node_emb_atom_embedding_list_6_weight_fixed_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = node_emb_atom_embedding_list_7_weight_fixed_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = node_emb_atom_embedding_list_8_weight_fixed_in offset = slave bundle = mem

#pragma HLS INTERFACE m_axi depth = 100000 port = mlp_0_weight_fixed_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = mlp_0_bias_fixed_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = mlp_2_weight_fixed_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = mlp_2_bias_fixed_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = mlp_4_weight_fixed_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = mlp_4_bias_fixed_in offset = slave bundle = mem

#pragma HLS INTERFACE m_axi depth = 100000 port = convs_ALL_post_nn_0_weight_fixed_in offset = slave bundle = mem
#pragma HLS INTERFACE m_axi depth = 100000 port = convs_ALL_post_nn_0_bias_fixed_in offset = slave bundle = mem



#pragma HLS bind_storage variable = node_feature type = RAM_2P impl = bram
#pragma HLS bind_storage variable = edge_list type = RAM_2P impl = bram

#pragma HLS bind_storage variable = message type = RAM_2P impl = bram
#pragma HLS bind_storage variable = mean_index type = RAM_2P impl = bram
#pragma HLS bind_storage variable = ssquare type = RAM_2P impl = bram

#pragma HLS bind_storage variable = out_0 type = RAM_2P impl = bram
#pragma HLS bind_storage variable = out_1 type = RAM_2P impl = bram
#pragma HLS bind_storage variable = out_2 type = RAM_2P impl = bram
#pragma HLS bind_storage variable = out_3 type = RAM_2P impl = bram

#pragma HLS bind_storage variable = h_combined type = RAM_2P impl = bram
#pragma HLS bind_storage variable = m_single type = RAM_2P impl = URAM

#pragma HLS bind_storage variable = h_5 type = RAM_2P impl = bram

#pragma HLS bind_storage variable = index_buf type = RAM_2P impl = bram
#pragma HLS bind_storage variable = degree_buf type = RAM_2P impl = bram
#pragma HLS bind_storage variable = aggrout type = RAM_2P impl = bram


#pragma HLS ARRAY_PARTITION variable = h_combined dim = 1 complete

    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];
    int is_first = graph_attr[2];
    //  int num_of_nodes = 19;
    //  int num_of_edges = 40;

    if (is_first) {
        copy_2d<119, 80>(node_emb_atom_embedding_list_0_weight_fixed_in, node_emb_atom_embedding_list_0_weight_fixed);
        copy_2d<4, 80>(node_emb_atom_embedding_list_1_weight_fixed_in, node_emb_atom_embedding_list_1_weight_fixed);
        copy_2d<12, 80>(node_emb_atom_embedding_list_2_weight_fixed_in, node_emb_atom_embedding_list_2_weight_fixed);
        copy_2d<12, 80>(node_emb_atom_embedding_list_3_weight_fixed_in, node_emb_atom_embedding_list_3_weight_fixed);
        copy_2d<10, 80>(node_emb_atom_embedding_list_4_weight_fixed_in, node_emb_atom_embedding_list_4_weight_fixed);
        copy_2d<6, 80>(node_emb_atom_embedding_list_5_weight_fixed_in, node_emb_atom_embedding_list_5_weight_fixed);
        copy_2d<6, 80>(node_emb_atom_embedding_list_6_weight_fixed_in, node_emb_atom_embedding_list_6_weight_fixed);
        copy_2d<2, 80>(node_emb_atom_embedding_list_7_weight_fixed_in, node_emb_atom_embedding_list_7_weight_fixed);
        copy_2d<2, 80>(node_emb_atom_embedding_list_8_weight_fixed_in, node_emb_atom_embedding_list_8_weight_fixed);

        copy_2d<40, 80>(mlp_0_weight_fixed_in, mlp_0_weight_fixed);
        copy_1d<40>(mlp_0_bias_fixed_in, mlp_0_bias_fixed);

        copy_2d<20, 40>(mlp_2_weight_fixed_in, mlp_2_weight_fixed);
        copy_1d<20>(mlp_2_bias_fixed_in, mlp_2_bias_fixed);

        copy_2d<1, 20>(mlp_4_weight_fixed_in, mlp_4_weight_fixed);
        copy_1d<1>(mlp_4_bias_fixed_in, mlp_4_bias_fixed);

        copy_3d<4, 80, 960>(convs_ALL_post_nn_0_weight_fixed_in, convs_ALL_post_nn_0_weight_fixed);
        copy_2d<4, 80>(convs_ALL_post_nn_0_bias_fixed_in, convs_ALL_post_nn_0_bias_fixed);
    }

    for (int nd = 0; nd < num_of_nodes; nd++) {
        for (int nf = 0; nf < ND_FEATURE; nf++) {
            node_feature[nd * ND_FEATURE + nf] = node_feature_in[nd * ND_FEATURE + nf];
        }
    }

    for (int i = 0; i < num_of_edges * 2; i++) {
        edge_list[i] = edge_list_in[i];
    }

    printf("Computing PNA ...\n");
    /*Embedding: compute input node embedding */
    // memset(h_0, 0, MAX_NODE * EMB_DIM * sizeof(FM_TYPE));
    // memset(h_combined, 0, 2 * MAX_NODE * EMB_DIM * sizeof(FM_TYPE));
    zero_3d<2, MAX_NODE, EMB_DIM, FM_TYPE>(h_combined, 2, num_of_nodes, EMB_DIM);

    for (int nd = 0; nd < num_of_nodes; nd++) {
        for (int nf = 0; nf < ND_FEATURE; nf++) {
            int nd_f = node_feature[nd * ND_FEATURE + nf];
            for (int dim = 0; dim < EMB_DIM; dim++) {
                FM_TYPE emb_value = 0;
                switch (nf) {
                case 0:
                    emb_value = node_emb_atom_embedding_list_0_weight_fixed[nd_f][dim];
                    break;
                case 1:
                    emb_value = node_emb_atom_embedding_list_1_weight_fixed[nd_f][dim];
                    break;
                case 2:
                    emb_value = node_emb_atom_embedding_list_2_weight_fixed[nd_f][dim];
                    break;
                case 3:
                    emb_value = node_emb_atom_embedding_list_3_weight_fixed[nd_f][dim];
                    break;
                case 4:
                    emb_value = node_emb_atom_embedding_list_4_weight_fixed[nd_f][dim];
                    break;
                case 5:
                    emb_value = node_emb_atom_embedding_list_5_weight_fixed[nd_f][dim];
                    break;
                case 6:
                    emb_value = node_emb_atom_embedding_list_6_weight_fixed[nd_f][dim];
                    break;
                case 7:
                    emb_value = node_emb_atom_embedding_list_7_weight_fixed[nd_f][dim];
                    break;
                case 8:
                    emb_value = node_emb_atom_embedding_list_8_weight_fixed[nd_f][dim];
                    break;
                }
                h_combined[0][nd][dim] += emb_value;
            }
        }
    }

    ////////////// CONV 0 //////////////////////////////////
    // CONV_0(edge_list, edge_attr, num_of_nodes, num_of_edges);
    // for (int i = 0; i < num_of_nodes; i++)
    // {
    //     for (int j = 0; j < 80; j++)
    //     {
    //         h_1[i][j] += h_0[i][j];
    //     }
    // }

    CONV(edge_list, num_of_nodes, num_of_edges, 0);
    for (int i = 0; i < num_of_nodes; i++) {
        for (int j = 0; j < 80; j++) {
            h_combined[1][i][j] += h_combined[0][i][j];
        }
    }

    ////////////// CONV 1 //////////////////////////////////
    CONV(edge_list, num_of_nodes, num_of_edges, 1);
    for (int i = 0; i < num_of_nodes; i++) {
        for (int j = 0; j < 80; j++) {
            h_combined[0][i][j] += h_combined[1][i][j];
        }
    }
    ////////////// CONV 2 //////////////////////////////////
    CONV(edge_list, num_of_nodes, num_of_edges, 2);
    for (int i = 0; i < num_of_nodes; i++) {
        for (int j = 0; j < 80; j++) {
            h_combined[1][i][j] += h_combined[0][i][j];
        }
    }
    ////////////// CONV 3 //////////////////////////////////
    CONV(edge_list, num_of_nodes, num_of_edges, 3);
    for (int i = 0; i < num_of_nodes; i++) {
        for (int j = 0; j < 80; j++) {
            h_combined[0][i][j] += h_combined[1][i][j];
        }
    }
    GLOBAL_MEAN_POOL(h_combined[0], h_5, num_of_nodes);
    task[0] = MLP(num_of_nodes);

    printf("%f \n", task[0].to_float());

    return;
}
