#ifndef __DCL_H__
#define __DCL_H__

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <ap_fixed.h>
#include <array>

// Enables fixed num_of_nodes/edges in DGN_compute.cc for timing estimates
#define __SYNTHESIS_DEBUG__

constexpr int MAX_EDGE = 500;
constexpr int MAX_NODE = 500;
constexpr int ND_FEATURE = 9;
constexpr int EDGE_ATTR = 3;
constexpr int EMB_DIM = 100;
constexpr int NUM_TASK = 1;
constexpr int L_IN = 200;
constexpr int L_OUT = 100;
constexpr int NUM_LAYERS = 4;

constexpr int LOAD_IN_EMB_PARALLEL = 2;
constexpr int SCATTER_PARALLEL = 8;
constexpr int APPLY_PARALLEL = 2;
constexpr int NODE_PARALLEL = 2;
constexpr int EDGE_PARALLEL = 4;

typedef ap_fixed<32, 10> FM_TYPE;
typedef ap_fixed<32, 10> WT_TYPE;

typedef std::array<FM_TYPE, APPLY_PARALLEL> ne_out_t;
typedef struct {
    int u;
    int v;
} edge_t;

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
    int* edge_list_in,
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
