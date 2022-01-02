#ifndef __DCL_H__
#define __DCL_H__

// https://support.xilinx.com/s/question/0D52E00006iHkfp/vivado-20153-hls-bug-gmph?language=en_US
#include <gmp.h>
#define __gmp_const const

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <ap_fixed.h>

#define MAX_EDGE 500
#define MAX_NODE 500
#define ND_FEATURE 9
#define EDGE_ATTR 3
#define EMB_DIM 100
#define NUM_TASK 1
#define L_IN 200
#define L_OUT 100

typedef ap_fixed<32, 10> FM_TYPE;
typedef ap_fixed<32, 10> WT_TYPE;

extern WT_TYPE embedding_h_atom_embedding_list_weights[9][119][100];
extern WT_TYPE layers_posttrans_fully_connected_0_linear_weight_in[4][100][200];
extern WT_TYPE layers_posttrans_fully_connected_0_linear_bias_in[4][100];
extern WT_TYPE MLP_layer_FC_layers_0_weight_in[50][100];
extern WT_TYPE MLP_layer_FC_layers_0_bias_in[50];
extern WT_TYPE MLP_layer_FC_layers_1_weight_in[25][50];
extern WT_TYPE MLP_layer_FC_layers_1_bias_in[25];
extern WT_TYPE MLP_layer_FC_layers_2_weight_in[1][25];
extern WT_TYPE MLP_layer_FC_layers_2_bias_in[1];


void load_weights();
void fetch_one_graph(int g, char* graph_name, int* node_feature, WT_TYPE* node_eigen, int* edge_list, int* edge_attr, int num_of_nodes, int num_of_edges);
bool Jacob(float *pMatrix, int nDim, float *pdblVects, float *pdbEigenValues, float dbEps, int nJt);
extern "C" {
void DGN_compute_one_graph(
    float* out,
    int* node_feature_in,
    WT_TYPE* node_eigen_in,
    int degree_table[][2],
    int neighbor_table[],
    int* graph_attr,
    WT_TYPE embedding_h_atom_embedding_list_weights_in[9][119][100],
    WT_TYPE layers_posttrans_fully_connected_0_linear_weight_in[4][100][200],
    WT_TYPE layers_posttrans_fully_connected_0_linear_bias_in[4][100],
    WT_TYPE MLP_layer_FC_layers_0_weight_in[50][100],
    WT_TYPE MLP_layer_FC_layers_0_bias_in[50],
    WT_TYPE MLP_layer_FC_layers_1_weight_in[25][50],
    WT_TYPE MLP_layer_FC_layers_1_bias_in[25],
    WT_TYPE MLP_layer_FC_layers_2_weight_in[1][25],
    WT_TYPE MLP_layer_FC_layers_2_bias_in[1]
);
}

#endif