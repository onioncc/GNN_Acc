#ifndef __DCL_H__
#define __DCL_H__

// #include "gmp.h"

#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "ap_fixed.h"
#include "hls_math.h"

typedef ap_fixed<32, 10> FM_TYPE;
typedef ap_fixed<32, 10> WT_TYPE;


#define MAX_EDGE 500
#define MAX_NODE 500
#define ND_FEATURE 9
#define EDGE_ATTR 3
#define EMB_DIM 80
#define NUM_TASK 1
#define L_IN 960
#define L_OUT 80

extern float node_emb_atom_embedding_list_0_weight[119][80];
extern float node_emb_atom_embedding_list_1_weight[4][80];
extern float node_emb_atom_embedding_list_2_weight[12][80];
extern float node_emb_atom_embedding_list_3_weight[12][80];
extern float node_emb_atom_embedding_list_4_weight[10][80];
extern float node_emb_atom_embedding_list_5_weight[6][80];
extern float node_emb_atom_embedding_list_6_weight[6][80];
extern float node_emb_atom_embedding_list_7_weight[2][80];
extern float node_emb_atom_embedding_list_8_weight[2][80];
extern float convs_0_post_nn_0_weight[80][960];
extern float convs_0_post_nn_0_bias[80];
extern float convs_1_post_nn_0_weight[80][960];
extern float convs_1_post_nn_0_bias[80];
extern float convs_2_post_nn_0_weight[80][960];
extern float convs_2_post_nn_0_bias[80];
extern float convs_3_post_nn_0_weight[80][960];
extern float convs_3_post_nn_0_bias[80];
extern float mlp_0_weight[40][80];
extern float mlp_0_bias[40];
extern float mlp_2_weight[20][40];
extern float mlp_2_bias[20];
extern float mlp_4_weight[1][20];
extern float mlp_4_bias[1];

extern WT_TYPE node_emb_atom_embedding_list_0_weight_fixed[119][80];
extern WT_TYPE node_emb_atom_embedding_list_1_weight_fixed[4][80];
extern WT_TYPE node_emb_atom_embedding_list_2_weight_fixed[12][80];
extern WT_TYPE node_emb_atom_embedding_list_3_weight_fixed[12][80];
extern WT_TYPE node_emb_atom_embedding_list_4_weight_fixed[10][80];
extern WT_TYPE node_emb_atom_embedding_list_5_weight_fixed[6][80];
extern WT_TYPE node_emb_atom_embedding_list_6_weight_fixed[6][80];
extern WT_TYPE node_emb_atom_embedding_list_7_weight_fixed[2][80];
extern WT_TYPE node_emb_atom_embedding_list_8_weight_fixed[2][80];
extern WT_TYPE convs_0_post_nn_0_weight_fixed[80][960];
extern WT_TYPE convs_0_post_nn_0_bias_fixed[80];
extern WT_TYPE convs_1_post_nn_0_weight_fixed[80][960];
extern WT_TYPE convs_1_post_nn_0_bias_fixed[80];
extern WT_TYPE convs_2_post_nn_0_weight_fixed[80][960];
extern WT_TYPE convs_2_post_nn_0_bias_fixed[80];
extern WT_TYPE convs_3_post_nn_0_weight_fixed[80][960];
extern WT_TYPE convs_3_post_nn_0_bias_fixed[80];
extern WT_TYPE mlp_0_weight_fixed[40][80];
extern WT_TYPE mlp_0_bias_fixed[40];
extern WT_TYPE mlp_2_weight_fixed[20][40];
extern WT_TYPE mlp_2_bias_fixed[20];
extern WT_TYPE mlp_4_weight_fixed[1][20];
extern WT_TYPE mlp_4_bias_fixed[1];

extern WT_TYPE convs_ALL_post_nn_0_weight_fixed[4][80][960];
extern WT_TYPE convs_ALL_post_nn_0_bias_fixed[4][80];

void PNA_compute_one_graph();
void load_weights();
void fetch_one_graph(char* graph_name, int* node_feature, int* edge_list, int* edge_attr, int num_of_nodes, int num_of_edges);
void PNA_compute_one_graph(int* node_feature, int* edge_list, int* edge_attr, int* graph_attr);

#endif
