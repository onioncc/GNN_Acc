#ifndef __DCL_H__
#define __DCL_H__

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#define MAX_EDGE 2000
#define MAX_NODE 1000
#define ND_FEATURE 9
#define EDGE_ATTR 3
#define EMB_DIM 300
#define NUM_TASK 1

#define MLP_0_IN 300
#define MLP_0_OUT 600
#define MLP_3_IN 600
#define MLP_3_OUT 300
#define MLP_IN_MAX 600
#define MLP_OUT_MAX 600
#define MLP_BN_DIM 600
#define CONV_BN_DIM 300
#define E_EPS 0.00001



extern float gnn_node_convs_3_mlp_2_bias[300];
extern float gnn_node_convs_2_bond_encoder_bond_embedding_list_0_weight[5][300];
extern float gnn_node_convs_2_mlp_0_bias[600];
extern float gnn_node_convs_1_mlp_2_weight[300][600];
extern float gnn_node_atom_encoder_atom_embedding_list_1_weight[4][300];
extern float gnn_node_convs_1_mlp_0_weight[600][300];
extern float gnn_node_convs_4_bond_encoder_bond_embedding_list_0_weight[5][300];
extern float gnn_node_convs_4_mlp_2_bias[300];
extern float gnn_node_convs_1_bond_encoder_bond_embedding_list_2_weight[2][300];
extern float gnn_node_convs_0_mlp_2_weight[300][600];
extern float gnn_node_convs_2_mlp_2_weight[300][600];
extern float gnn_node_atom_encoder_atom_embedding_list_8_weight[2][300];
extern float gnn_node_convs_2_bond_encoder_bond_embedding_list_2_weight[2][300];
extern float gnn_node_convs_1_mlp_2_bias[300];
extern float gnn_node_atom_encoder_atom_embedding_list_3_weight[12][300];
extern float gnn_node_convs_1_eps[1];
extern float gnn_node_convs_3_eps[1];
extern float gnn_node_convs_2_mlp_2_bias[300];
extern float gnn_node_convs_1_mlp_0_bias[600];
extern float gnn_node_convs_2_mlp_0_weight[600][300];
extern float gnn_node_convs_4_mlp_0_bias[600];
extern float gnn_node_convs_4_mlp_2_weight[300][600];
extern float gnn_node_convs_4_bond_encoder_bond_embedding_list_1_weight[6][300];
extern float gnn_node_atom_encoder_atom_embedding_list_4_weight[10][300];
extern float gnn_node_convs_3_bond_encoder_bond_embedding_list_2_weight[2][300];
extern float graph_pred_linear_weight[1][300];
extern float gnn_node_convs_3_mlp_0_weight[600][300];
extern float gnn_node_convs_0_bond_encoder_bond_embedding_list_1_weight[6][300];
extern float gnn_node_convs_0_bond_encoder_bond_embedding_list_0_weight[5][300];
extern float gnn_node_atom_encoder_atom_embedding_list_2_weight[12][300];
extern float gnn_node_atom_encoder_atom_embedding_list_7_weight[2][300];
extern float gnn_node_convs_3_bond_encoder_bond_embedding_list_1_weight[6][300];
extern float gnn_node_atom_encoder_atom_embedding_list_5_weight[6][300];
extern float gnn_node_convs_3_mlp_2_weight[300][600];
extern float gnn_node_convs_4_eps[1];
extern float gnn_node_convs_4_bond_encoder_bond_embedding_list_2_weight[2][300];
extern float gnn_node_convs_3_bond_encoder_bond_embedding_list_0_weight[5][300];
extern float gnn_node_convs_2_bond_encoder_bond_embedding_list_1_weight[6][300];
extern float gnn_node_convs_0_mlp_2_bias[300];
extern float gnn_node_convs_0_mlp_0_weight[600][300];
extern float gnn_node_atom_encoder_atom_embedding_list_0_weight[119][300];
extern float gnn_node_convs_1_bond_encoder_bond_embedding_list_0_weight[5][300];
extern float gnn_node_convs_3_mlp_0_bias[600];
extern float gnn_node_convs_1_bond_encoder_bond_embedding_list_1_weight[6][300];
extern float gnn_node_atom_encoder_atom_embedding_list_6_weight[6][300];
extern float gnn_node_convs_0_bond_encoder_bond_embedding_list_2_weight[2][300];
extern float gnn_node_convs_0_mlp_0_bias[600];
extern float gnn_node_convs_0_eps[1];
extern float gnn_node_convs_2_eps[1];
extern float gnn_node_convs_4_mlp_0_weight[600][300];
extern float graph_pred_linear_bias[1];





// extern float gnn_node_convs_2_bond_encoder_bond_embedding_list_1_weight[6][300];
// extern float gnn_node_convs_0_mlp_3_weight[300][600];
// extern float gnn_node_convs_3_mlp_1_running_var[600];
// extern float gnn_node_batch_norms_3_weight[300];
// extern float gnn_node_convs_1_mlp_3_bias[300];
// extern float gnn_node_convs_0_mlp_1_weight[600];
// extern float gnn_node_batch_norms_4_running_var[300];
// extern float gnn_node_batch_norms_2_running_var[300];
// extern float gnn_node_atom_encoder_atom_embedding_list_2_weight[12][300];
// extern float gnn_node_convs_1_eps[1];
// extern float gnn_node_convs_0_bond_encoder_bond_embedding_list_1_weight[6][300];
// extern float gnn_node_convs_0_mlp_1_running_mean[600];
// extern float gnn_node_atom_encoder_atom_embedding_list_6_weight[6][300];
// extern float gnn_node_convs_2_mlp_3_weight[300][600];
// extern float gnn_node_batch_norms_1_bias[300];
// extern float gnn_node_batch_norms_4_bias[300];
// extern float gnn_node_atom_encoder_atom_embedding_list_0_weight[119][300];
// extern float gnn_node_convs_2_mlp_1_weight[600];
// extern float gnn_node_convs_2_mlp_3_bias[300];
// extern float gnn_node_convs_4_mlp_3_weight[300][600];
// extern float gnn_node_convs_4_bond_encoder_bond_embedding_list_2_weight[2][300];
// extern float gnn_node_convs_3_bond_encoder_bond_embedding_list_0_weight[5][300];
// extern float gnn_node_convs_0_bond_encoder_bond_embedding_list_2_weight[2][300];
// extern float gnn_node_convs_4_mlp_0_bias[600];
// extern float gnn_node_convs_3_mlp_3_bias[300];
// extern float gnn_node_convs_1_mlp_1_weight[600];
// extern float gnn_node_batch_norms_2_weight[300];
// extern float gnn_node_convs_3_mlp_0_weight[600][300];
// extern float gnn_node_convs_2_mlp_0_weight[600][300];
// extern float gnn_node_convs_2_mlp_0_bias[600];
// extern float gnn_node_convs_2_mlp_1_running_mean[600];
// extern float gnn_node_convs_0_mlp_1_bias[600];
// extern float gnn_node_convs_0_eps[1];
// extern float gnn_node_batch_norms_1_running_var[300];
// extern float gnn_node_atom_encoder_atom_embedding_list_8_weight[2][300];
// extern float gnn_node_convs_2_bond_encoder_bond_embedding_list_0_weight[5][300];
// extern float gnn_node_convs_4_mlp_1_running_var[600];
// extern float gnn_node_convs_4_bond_encoder_bond_embedding_list_1_weight[6][300];
// extern float gnn_node_batch_norms_0_running_mean[300];
// extern float gnn_node_convs_2_bond_encoder_bond_embedding_list_2_weight[2][300];
// extern float gnn_node_convs_1_mlp_0_bias[600];
// extern float gnn_node_atom_encoder_atom_embedding_list_4_weight[10][300];
// extern float graph_pred_linear_weight[1][300];
// extern float gnn_node_batch_norms_1_running_mean[300];
// extern float gnn_node_atom_encoder_atom_embedding_list_1_weight[4][300];
// extern float gnn_node_convs_4_mlp_1_bias[600];
// extern float gnn_node_batch_norms_3_bias[300];
// extern float gnn_node_batch_norms_2_running_mean[300];
// extern float gnn_node_convs_1_mlp_3_weight[300][600];
// extern float gnn_node_batch_norms_1_weight[300];
// extern float gnn_node_convs_1_mlp_1_running_var[600];
// extern float gnn_node_convs_3_bond_encoder_bond_embedding_list_1_weight[6][300];
// extern float gnn_node_batch_norms_0_running_var[300];
// extern float gnn_node_convs_2_eps[1];
// extern float gnn_node_batch_norms_0_bias[300];
// extern float gnn_node_convs_1_bond_encoder_bond_embedding_list_0_weight[5][300];
// extern float gnn_node_convs_4_mlp_1_weight[600];
// extern float gnn_node_convs_1_mlp_1_running_mean[600];
// extern float gnn_node_convs_4_eps[1];
// extern float gnn_node_batch_norms_4_running_mean[300];
// extern float gnn_node_atom_encoder_atom_embedding_list_5_weight[6][300];
// extern float gnn_node_convs_3_mlp_0_bias[600];
// extern float gnn_node_convs_3_mlp_3_weight[300][600];
// extern float gnn_node_convs_3_mlp_1_running_mean[600];
// extern float gnn_node_convs_3_bond_encoder_bond_embedding_list_2_weight[2][300];
// extern float gnn_node_convs_3_eps[1];
// extern float gnn_node_atom_encoder_atom_embedding_list_7_weight[2][300];
// extern float gnn_node_convs_0_mlp_0_bias[600];
// extern float gnn_node_convs_2_mlp_1_running_var[600];
// extern float graph_pred_linear_bias[1];
// extern float gnn_node_convs_1_mlp_0_weight[600][300];
// extern float gnn_node_convs_0_mlp_3_bias[300];
// extern float gnn_node_convs_4_mlp_1_running_mean[600];
// extern float gnn_node_batch_norms_3_running_var[300];
// extern float gnn_node_convs_4_bond_encoder_bond_embedding_list_0_weight[5][300];
// extern float gnn_node_convs_1_mlp_1_bias[600];
// extern float gnn_node_convs_4_mlp_3_bias[300];
// extern float gnn_node_batch_norms_2_bias[300];
// extern float gnn_node_convs_0_mlp_0_weight[600][300];
// extern float gnn_node_batch_norms_3_running_mean[300];
// extern float gnn_node_convs_2_mlp_1_bias[600];
// extern float gnn_node_convs_1_bond_encoder_bond_embedding_list_2_weight[2][300];
// extern float gnn_node_convs_4_mlp_0_weight[600][300];
// extern float gnn_node_convs_0_bond_encoder_bond_embedding_list_0_weight[5][300];
// extern float gnn_node_convs_3_mlp_1_weight[600];
// extern float gnn_node_convs_0_mlp_1_running_var[600];
// extern float gnn_node_convs_1_bond_encoder_bond_embedding_list_1_weight[6][300];
// extern float gnn_node_batch_norms_4_weight[300];
// extern float gnn_node_batch_norms_0_weight[300];
// extern float gnn_node_atom_encoder_atom_embedding_list_3_weight[12][300];
// extern float gnn_node_convs_3_mlp_1_bias[600];

void GIN_compute_one_graph();
void load_weights();
void fetch_one_graph(char* graph_name, int* node_feature, int* edge_list, int* edge_attr, int num_of_nodes, int num_of_edges);
void GIN_compute_one_graph(int* node_feature, int* edge_list, int* edge_attr, int* graph_attr);

#endif
