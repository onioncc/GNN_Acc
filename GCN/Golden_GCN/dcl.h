#ifndef __DCL_H__
#define __DCL_H__

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#define MAX_EDGE 300
#define MAX_NODE 100
#define ND_FEATURE 9
#define EDGE_ATTR 3
#define EMB_DIM 100
#define NUM_TASK 1

#define MLP_0_IN 100
#define MLP_0_OUT 100
#define MLP_IN_MAX 100
#define MLP_OUT_MAX 100
#define E_EPS 0.00001

extern float gnn_node_atom_encoder_atom_embedding_list_0_weight[119][100];
extern float gnn_node_atom_encoder_atom_embedding_list_1_weight[4][100];
extern float gnn_node_atom_encoder_atom_embedding_list_2_weight[12][100];
extern float gnn_node_atom_encoder_atom_embedding_list_3_weight[12][100];
extern float gnn_node_atom_encoder_atom_embedding_list_4_weight[10][100];
extern float gnn_node_atom_encoder_atom_embedding_list_5_weight[6][100];
extern float gnn_node_atom_encoder_atom_embedding_list_6_weight[6][100];
extern float gnn_node_atom_encoder_atom_embedding_list_7_weight[2][100];
extern float gnn_node_atom_encoder_atom_embedding_list_8_weight[2][100];
extern float gnn_node_convs_0_weight[100][100];
extern float gnn_node_convs_0_bias[100];
extern float gnn_node_convs_0_bond_encoder_bond_embedding_list_0_weight[5][100];
extern float gnn_node_convs_0_bond_encoder_bond_embedding_list_1_weight[6][100];
extern float gnn_node_convs_0_bond_encoder_bond_embedding_list_2_weight[2][100];
extern float gnn_node_convs_1_weight[100][100];
extern float gnn_node_convs_1_bias[100];
extern float gnn_node_convs_1_bond_encoder_bond_embedding_list_0_weight[5][100];
extern float gnn_node_convs_1_bond_encoder_bond_embedding_list_1_weight[6][100];
extern float gnn_node_convs_1_bond_encoder_bond_embedding_list_2_weight[2][100];
extern float gnn_node_convs_2_weight[100][100];
extern float gnn_node_convs_2_bias[100];
extern float gnn_node_convs_2_bond_encoder_bond_embedding_list_0_weight[5][100];
extern float gnn_node_convs_2_bond_encoder_bond_embedding_list_1_weight[6][100];
extern float gnn_node_convs_2_bond_encoder_bond_embedding_list_2_weight[2][100];
extern float gnn_node_convs_3_weight[100][100];
extern float gnn_node_convs_3_bias[100];
extern float gnn_node_convs_3_bond_encoder_bond_embedding_list_0_weight[5][100];
extern float gnn_node_convs_3_bond_encoder_bond_embedding_list_1_weight[6][100];
extern float gnn_node_convs_3_bond_encoder_bond_embedding_list_2_weight[2][100];
extern float gnn_node_convs_4_weight[100][100];
extern float gnn_node_convs_4_bias[100];
extern float gnn_node_convs_4_bond_encoder_bond_embedding_list_0_weight[5][100];
extern float gnn_node_convs_4_bond_encoder_bond_embedding_list_1_weight[6][100];
extern float gnn_node_convs_4_bond_encoder_bond_embedding_list_2_weight[2][100];
extern float graph_pred_linear_weight[1][100];
extern float gnn_node_convs_4_root_emb_weight[100];
extern float gnn_node_convs_3_root_emb_weight[100];
extern float gnn_node_convs_2_root_emb_weight[100];
extern float gnn_node_convs_1_root_emb_weight[100];
extern float gnn_node_convs_0_root_emb_weight[100];
extern float graph_pred_linear_bias[1];

extern float gnn_node_batch_norms_0_weight[100];
extern float gnn_node_batch_norms_0_bias[100];
extern float gnn_node_batch_norms_0_running_mean[100];
extern float gnn_node_batch_norms_0_running_var[100];
extern float gnn_node_batch_norms_0_track[1];

extern float gnn_node_batch_norms_1_weight[100];
extern float gnn_node_batch_norms_1_bias[100];
extern float gnn_node_batch_norms_1_running_mean[100];
extern float gnn_node_batch_norms_1_running_var[100];
extern float gnn_node_batch_norms_1_track[1];

extern float gnn_node_batch_norms_2_weight[100];
extern float gnn_node_batch_norms_2_bias[100];
extern float gnn_node_batch_norms_2_running_mean[100];
extern float gnn_node_batch_norms_2_running_var[100];
extern float gnn_node_batch_norms_2_track[1];

extern float gnn_node_batch_norms_3_weight[100];
extern float gnn_node_batch_norms_3_bias[100];
extern float gnn_node_batch_norms_3_running_mean[100];
extern float gnn_node_batch_norms_3_running_var[100];
extern float gnn_node_batch_norms_3_track[1];

extern float gnn_node_batch_norms_4_weight[100];
extern float gnn_node_batch_norms_4_bias[100];
extern float gnn_node_batch_norms_4_running_mean[100];
extern float gnn_node_batch_norms_4_running_var[100];
extern float gnn_node_batch_norms_4_track[1];




void GCN_compute_one_graph();
void load_weights();
void fetch_one_graph(char* graph_name, int* node_feature, int* edge_list, int* edge_attr, int num_of_nodes, int num_of_edges);
void GCN_compute_one_graph(int* node_feature, int* edge_list, int* edge_attr, int* graph_attr);

#endif
