#ifndef __DCL_H__
#define __DCL_H__

#include <cstddef>
#include "/tools/xilinx/Vitis_HLS/2020.2/include/gmp.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include "ap_fixed.h"
#include "hls_stream.h"
#include <iostream>
#include <fstream>
#include <cmath>
#include <vector>

#include <algorithm>


typedef ap_fixed<32, 10> FM_TYPE;
typedef ap_fixed<32, 10> WT_TYPE;

#define MAX_EDGE 300
#define MAX_NODE 100

#define LAYER_NUM 5

#define ND_FEATURE 9
#define EDGE_ATTR 3
#define EMB_DIM 100
#define NUM_TASK 1

#define MLP_0_IN 100
#define MLP_0_OUT 100
#define MLP_IN_MAX 100
#define MLP_OUT_MAX 100
#define E_EPS 0.00001

#define ND_FEATURE 9
#define EDGE_ATTR 3

extern int nd_feature_table[ND_FEATURE]; // = {119, 4, 12, 12, 10, 6, 6, 2, 2};
#define ND_FEATURE_TOTAL 173 // 119 + 4 + ... + 2
extern int ed_feature_table[EDGE_ATTR]; // = {5, 6, 2};
#define EG_FEATURE_PER_LAYER 13 // (5 + 6 + 2)
#define EG_FEATURE_TOTAL 65 // (5 + 6 + 2) * LAYER_NUM


// global weights
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
extern float gnn_node_convs_4_root_emb_weight[100];
extern float gnn_node_convs_3_root_emb_weight[100];
extern float gnn_node_convs_2_root_emb_weight[100];
extern float gnn_node_convs_1_root_emb_weight[100];
extern float gnn_node_convs_0_root_emb_weight[100];

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


extern float graph_pred_linear_weight[1][100];
extern float graph_pred_linear_bias[1];




void GCN_compute_one_graph();
void load_weights();
void fetch_one_graph(char* graph_name, int* node_feature, int* edge_list, int* edge_attr, int num_of_nodes, int num_of_edges);
void GCN_compute_one_graph(int* node_feature, int* edge_list, int* edge_attr, int* graph_attr);

#endif
