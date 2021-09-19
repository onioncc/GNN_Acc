#ifndef __DCL_H__
#define __DCL_H__

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <limits.h>

#define MAX_EDGE 300
#define MAX_NODE 100
#define ND_FEATURE 9
#define EDGE_ATTR 3
#define NUM_TASK 1

#define MLP_0_IN 100
#define MLP_0_OUT 200
#define MLP_3_IN 200
#define MLP_3_OUT 100
#define MLP_IN_MAX 200
#define MLP_OUT_MAX 200
#define MLP_BN_DIM 200
#define CONV_BN_DIM 200
#define E_EPS 0.00001


extern float graph_pred_linear_weight[1][16];
extern float graph_pred_linear_bias[1];
extern float gat_net_0_scoring_fn_target[1][4][16];
extern float gat_net_0_scoring_fn_source[1][4][16];
extern float gat_net_0_bias[64];
extern float gat_net_0_linear_proj_weight[64][9];
extern float gat_net_0_skip_proj_weight[64][9];
extern float gat_net_1_scoring_fn_target[1][6][16];
extern float gat_net_1_scoring_fn_source[1][6][16];
extern float gat_net_1_bias[16];
extern float gat_net_1_linear_proj_weight[96][64];
extern float gat_net_1_skip_proj_weight[96][64];


void GIN_compute_one_graph();
void load_weights();
void fetch_one_graph(char* graph_name, int* node_feature, int* edge_list, int num_of_nodes, int num_of_edges);
void GAT_compute_one_graph(int* node_feature, int* edge_list, int* graph_attr, int* num_heads_per_layer, int* num_features_per_layer);

#endif
