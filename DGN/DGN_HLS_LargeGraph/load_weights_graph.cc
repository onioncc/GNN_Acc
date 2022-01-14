#include <stdlib.h>
#include <stdio.h>
#include "dcl.h"

WT_TYPE embedding_FC_weight_in[EMB_DIM][ND_FEATURE];
WT_TYPE embedding_FC_bias_in[EMB_DIM];
WT_TYPE layers_posttrans_fully_connected_0_linear_weight_in[4][100][2][100];
WT_TYPE layers_posttrans_fully_connected_0_linear_bias_in[4][100];
WT_TYPE MLP_layer_FC_layers_0_weight_in[50][100];
WT_TYPE MLP_layer_FC_layers_0_bias_in[50];
WT_TYPE MLP_layer_FC_layers_1_weight_in[25][50];
WT_TYPE MLP_layer_FC_layers_1_bias_in[25];
WT_TYPE MLP_layer_FC_layers_2_weight_in[1][25];
WT_TYPE MLP_layer_FC_layers_2_bias_in[1];

void load_weights()
{
    printf("Loading weights for DGN ...\n");

    FILE* f;
    int nmemb;
    f = fopen("dgn_ep1_noBN_dim100.weights.all.bin", "rb");

    float *embedding_FC_weight_float = new float[100 * ND_FEATURE];
    nmemb = fread(embedding_FC_weight_float, sizeof(float), 100 * ND_FEATURE, f);
    assert(nmemb == 100 * ND_FEATURE);
    for (int i = 0; i < 100 * ND_FEATURE; i++) embedding_FC_weight_in[i / ND_FEATURE][i % ND_FEATURE] = WT_TYPE(embedding_FC_weight_float[i]);
    delete embedding_FC_weight_float;

    float *embedding_FC_bias_float = new float[100];
    nmemb = fread(embedding_FC_bias_float, sizeof(float), 100, f);
    assert(nmemb == 100);
    for (int i = 0; i < 100; i++) embedding_FC_bias_in[i] = WT_TYPE(embedding_FC_bias_float[i]);
    delete embedding_FC_bias_float;

    float *layers_0_posttrans_fully_connected_0_linear_weight_float = new float[20000];
    nmemb = fread(layers_0_posttrans_fully_connected_0_linear_weight_float, sizeof(float), 20000, f);
    assert(nmemb == 20000);
    for (int i = 0; i < 20000; i++) layers_posttrans_fully_connected_0_linear_weight_in[0][i / 200][(i % 200) / 100][i % 100] = WT_TYPE(layers_0_posttrans_fully_connected_0_linear_weight_float[i]);
    delete layers_0_posttrans_fully_connected_0_linear_weight_float;

    float *layers_0_posttrans_fully_connected_0_linear_bias_float = new float[100];
    nmemb = fread(layers_0_posttrans_fully_connected_0_linear_bias_float, sizeof(float), 100, f);
    assert(nmemb == 100);
    for (int i = 0; i < 100; i++) layers_posttrans_fully_connected_0_linear_bias_in[0][i] = WT_TYPE(layers_0_posttrans_fully_connected_0_linear_bias_float[i]);
    delete layers_0_posttrans_fully_connected_0_linear_bias_float;

    
    float *layers_1_posttrans_fully_connected_0_linear_weight_float = new float[20000];
    nmemb = fread(layers_1_posttrans_fully_connected_0_linear_weight_float, sizeof(float), 20000, f);
    assert(nmemb == 20000);
    for (int i = 0; i < 20000; i++) layers_posttrans_fully_connected_0_linear_weight_in[1][i / 200][(i % 200) / 100][i % 100] = WT_TYPE(layers_1_posttrans_fully_connected_0_linear_weight_float[i]);
    delete layers_1_posttrans_fully_connected_0_linear_weight_float;

    float *layers_1_posttrans_fully_connected_0_linear_bias_float = new float[100];
    nmemb = fread(layers_1_posttrans_fully_connected_0_linear_bias_float, sizeof(float), 100, f);
    assert(nmemb == 100);
    for (int i = 0; i < 100; i++) layers_posttrans_fully_connected_0_linear_bias_in[1][i] = WT_TYPE(layers_1_posttrans_fully_connected_0_linear_bias_float[i]);
    delete layers_1_posttrans_fully_connected_0_linear_bias_float;
    
    float *layers_2_posttrans_fully_connected_0_linear_weight_float = new float[20000];
    nmemb = fread(layers_2_posttrans_fully_connected_0_linear_weight_float, sizeof(float), 20000, f);
    assert(nmemb == 20000);
    for (int i = 0; i < 20000; i++) layers_posttrans_fully_connected_0_linear_weight_in[2][i / 200][(i % 200) / 100][i % 100] = WT_TYPE(layers_2_posttrans_fully_connected_0_linear_weight_float[i]);
    delete layers_2_posttrans_fully_connected_0_linear_weight_float;

    float *layers_2_posttrans_fully_connected_0_linear_bias_float = new float[100];
    nmemb = fread(layers_2_posttrans_fully_connected_0_linear_bias_float, sizeof(float), 100, f);
    assert(nmemb == 100);
    for (int i = 0; i < 100; i++) layers_posttrans_fully_connected_0_linear_bias_in[2][i] = WT_TYPE(layers_2_posttrans_fully_connected_0_linear_bias_float[i]);
    delete layers_2_posttrans_fully_connected_0_linear_bias_float;
    
    float *layers_3_posttrans_fully_connected_0_linear_weight_float = new float[20000];
    nmemb = fread(layers_3_posttrans_fully_connected_0_linear_weight_float, sizeof(float), 20000, f);
    assert(nmemb == 20000);
    for (int i = 0; i < 20000; i++) layers_posttrans_fully_connected_0_linear_weight_in[3][i / 200][(i % 200) / 100][i % 100] = WT_TYPE(layers_3_posttrans_fully_connected_0_linear_weight_float[i]);
    delete layers_3_posttrans_fully_connected_0_linear_weight_float;

    float *layers_3_posttrans_fully_connected_0_linear_bias_float = new float[100];
    nmemb = fread(layers_3_posttrans_fully_connected_0_linear_bias_float, sizeof(float), 100, f);
    assert(nmemb == 100);
    for (int i = 0; i < 100; i++) layers_posttrans_fully_connected_0_linear_bias_in[3][i] = WT_TYPE(layers_3_posttrans_fully_connected_0_linear_bias_float[i]);
    delete layers_3_posttrans_fully_connected_0_linear_bias_float;

    float *MLP_layer_FC_layers_0_weight_float = new float[5000];
    nmemb = fread(MLP_layer_FC_layers_0_weight_float, sizeof(float), 5000, f);
    assert(nmemb == 5000);
    for (int i = 0; i < 5000; i++) MLP_layer_FC_layers_0_weight_in[i / 100][i % 100] = WT_TYPE(MLP_layer_FC_layers_0_weight_float[i]);
    delete MLP_layer_FC_layers_0_weight_float;

    float *MLP_layer_FC_layers_0_bias_float = new float[50];
    nmemb = fread(MLP_layer_FC_layers_0_bias_float, sizeof(float), 50, f);
    assert(nmemb == 50);
    for (int i = 0; i < 50; i++) MLP_layer_FC_layers_0_bias_in[i] = WT_TYPE(MLP_layer_FC_layers_0_bias_float[i]);
    delete MLP_layer_FC_layers_0_bias_float;
    
    float *MLP_layer_FC_layers_1_weight_float = new float[1250];
    nmemb = fread(MLP_layer_FC_layers_1_weight_float, sizeof(float), 1250, f);
    assert(nmemb == 1250);
    for (int i = 0; i < 1250; i++) MLP_layer_FC_layers_1_weight_in[i / 50][i % 50] = WT_TYPE(MLP_layer_FC_layers_1_weight_float[i]);
    delete MLP_layer_FC_layers_1_weight_float;

    float *MLP_layer_FC_layers_1_bias_float = new float[25];
    nmemb = fread(MLP_layer_FC_layers_1_bias_float, sizeof(float), 25, f);
    assert(nmemb == 25);
    for (int i = 0; i < 25; i++) MLP_layer_FC_layers_1_bias_in[i] = WT_TYPE(MLP_layer_FC_layers_1_bias_float[i]);
    delete MLP_layer_FC_layers_1_bias_float;

    float *MLP_layer_FC_layers_2_weight_float = new float[25];
    nmemb = fread(MLP_layer_FC_layers_2_weight_float, sizeof(float), 25, f);
    assert(nmemb == 25);
    for (int i = 0; i < 25; i++) MLP_layer_FC_layers_2_weight_in[0][i] = WT_TYPE(MLP_layer_FC_layers_2_weight_float[i]);
    delete MLP_layer_FC_layers_2_weight_float;

    float *MLP_layer_FC_layers_2_bias_float = new float[1];
    nmemb = fread(MLP_layer_FC_layers_2_bias_float, sizeof(float), 1, f);
    assert(nmemb == 1);
    for (int i = 0; i < 1; i++) MLP_layer_FC_layers_2_bias_in[i] = WT_TYPE(MLP_layer_FC_layers_2_bias_float[i]);
    delete MLP_layer_FC_layers_2_bias_float;

    assert(fgetc(f) == EOF);
    fclose(f);

}
void fetch_one_graph(int g, char* graph_name, int* node_feature, WT_TYPE* node_eigen, int* edge_list, int num_of_nodes, int num_of_edges)
{
    printf("Loading graph ...\n");
        
    FILE* f;

    char f_node_feature[128];
    char f_edge_list[128];
    char f_edge_attr[128];
    char f_node_eigen[128];

    sprintf(f_node_feature, "%s_node_feature.bin", graph_name);
    sprintf(f_edge_list, "%s_edge_list.bin", graph_name);
    sprintf(f_node_eigen, "eig/g%d.txt", g);
    
    
    f = fopen(f_node_feature, "rb");
    fread(node_feature, sizeof(int), num_of_nodes * ND_FEATURE, f);
    fclose(f);


    f = fopen(f_edge_list, "rb");
    fread(edge_list, sizeof(int), 2 * num_of_edges, f);
    fclose(f);

    f = fopen(f_node_eigen, "r");
    float node_eigen_float[4];
    fscanf(f, "tensor([[%e, %e,%e,%e],\n", &node_eigen_float[0], &node_eigen_float[1], &node_eigen_float[2], &node_eigen_float[3]);
    for (int i = 0; i < 4; i++) node_eigen[i] = WT_TYPE(node_eigen_float[i]);
    for (int nd = 1; nd < num_of_nodes - 1; nd++)
    {
        fscanf(f, "[%e, %e,%e,%e],\n", &node_eigen_float[0], &node_eigen_float[1], &node_eigen_float[2], &node_eigen_float[3]);
        for (int i = 0; i < 4; i++) node_eigen[(nd * 4) + i] = WT_TYPE(node_eigen_float[i]);
    }
    fscanf(f, "[%e, %e,%e,%e]])", &node_eigen_float[0], &node_eigen_float[1], &node_eigen_float[2], &node_eigen_float[3]);
    for (int i = 0; i < 4; i++) node_eigen[((num_of_nodes-1) * 4) + i] = WT_TYPE(node_eigen_float[i]);
    fclose(f);

#ifdef _PRINT_
        printf("Node features:\n");
        for(int i = 0; i < num_of_nodes; i++) {
            for(int j = 0; j < ND_FEATURE; j++) {
                printf("%d ", node_feature[i * ND_FEATURE + j]);
            }
            printf("\n");
        }

        printf("Edges:\n");
        for(int i = 0; i < num_of_edges; i++) {
            printf("%d -> %d\n", edge_list[i*2], edge_list[i*2+1]);
        }
    }
#endif
}
