#ifndef __DCL_H__
#define __DCL_H__

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <ap_fixed.h>

// #define GRAPH_CORA
#define GRAPH_CITESEER
// #define GRAPH_PUBMED

#ifdef GRAPH_CORA
#define ND_FEATURE 1433
#endif

#ifdef GRAPH_CITESEER
#define ND_FEATURE 3703
#endif

#ifdef GRAPH_PUBMED
#define ND_FEATURE 500
#endif

#define EMB_DIM 100
#define NUM_TASK 1
#define L_IN 200
#define L_OUT 100

typedef ap_fixed<32, 10> FM_TYPE;
typedef ap_fixed<32, 10> WT_TYPE;

extern "C" {
void DGN_compute_one_graph(
    float* out,
    int* node_feature_in,
    WT_TYPE* node_eigen_in,
    int degree_table[][2],
    int neighbor_table[],
    int* graph_attr,
    WT_TYPE embedding_FC_weights[EMB_DIM][ND_FEATURE],
    WT_TYPE embedding_FC_bias[EMB_DIM],
    WT_TYPE layers_posttrans_fully_connected_0_linear_weight_in[4][100][200],
    WT_TYPE layers_posttrans_fully_connected_0_linear_bias_in[4][100],
    WT_TYPE MLP_layer_FC_layers_0_weight_in[50][100],
    WT_TYPE MLP_layer_FC_layers_0_bias_in[50],
    WT_TYPE MLP_layer_FC_layers_1_weight_in[25][50],
    WT_TYPE MLP_layer_FC_layers_1_bias_in[25],
    WT_TYPE MLP_layer_FC_layers_2_weight_in[1][25],
    WT_TYPE MLP_layer_FC_layers_2_bias_in[1],

    // DRAM for intermediate storage
    FM_TYPE h_node_ping[][EMB_DIM],
    FM_TYPE h_node_pong[][EMB_DIM]
);
}

#endif
