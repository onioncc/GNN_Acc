#include <stdio.h>
#include <stdlib.h>
#include "dcl.h"

// global weights
float gnn_node_convs_2_bond_encoder_bond_embedding_list_1_weight[6][300];
float gnn_node_convs_0_mlp_3_weight[300][600];
float gnn_node_convs_3_mlp_1_running_var[600];
float gnn_node_batch_norms_3_weight[300];
float gnn_node_convs_1_mlp_3_bias[300];
float gnn_node_convs_0_mlp_1_weight[600];
float gnn_node_batch_norms_4_running_var[300];
float gnn_node_batch_norms_2_running_var[300];
float gnn_node_atom_encoder_atom_embedding_list_2_weight[12][300];
float gnn_node_convs_1_eps[1];
float gnn_node_convs_0_bond_encoder_bond_embedding_list_1_weight[6][300];
float gnn_node_convs_0_mlp_1_running_mean[600];
float gnn_node_atom_encoder_atom_embedding_list_6_weight[6][300];
float gnn_node_convs_2_mlp_3_weight[300][600];
float gnn_node_batch_norms_1_bias[300];
float gnn_node_batch_norms_4_bias[300];
float gnn_node_atom_encoder_atom_embedding_list_0_weight[119][300];
float gnn_node_convs_2_mlp_1_weight[600];
float gnn_node_convs_2_mlp_3_bias[300];
float gnn_node_convs_4_mlp_3_weight[300][600];
float gnn_node_convs_4_bond_encoder_bond_embedding_list_2_weight[2][300];
float gnn_node_convs_3_bond_encoder_bond_embedding_list_0_weight[5][300];
float gnn_node_convs_0_bond_encoder_bond_embedding_list_2_weight[2][300];
float gnn_node_convs_4_mlp_0_bias[600];
float gnn_node_convs_3_mlp_3_bias[300];
float gnn_node_convs_1_mlp_1_weight[600];
float gnn_node_batch_norms_2_weight[300];
float gnn_node_convs_3_mlp_0_weight[600][300];
float gnn_node_convs_2_mlp_0_weight[600][300];
float gnn_node_convs_2_mlp_0_bias[600];
float gnn_node_convs_2_mlp_1_running_mean[600];
float gnn_node_convs_0_mlp_1_bias[600];
float gnn_node_convs_0_eps[1];
float gnn_node_batch_norms_1_running_var[300];
float gnn_node_atom_encoder_atom_embedding_list_8_weight[2][300];
float gnn_node_convs_2_bond_encoder_bond_embedding_list_0_weight[5][300];
float gnn_node_convs_4_mlp_1_running_var[600];
float gnn_node_convs_4_bond_encoder_bond_embedding_list_1_weight[6][300];
float gnn_node_batch_norms_0_running_mean[300];
float gnn_node_convs_2_bond_encoder_bond_embedding_list_2_weight[2][300];
float gnn_node_convs_1_mlp_0_bias[600];
float gnn_node_atom_encoder_atom_embedding_list_4_weight[10][300];
float graph_pred_linear_weight[1][300];
float gnn_node_batch_norms_1_running_mean[300];
float gnn_node_atom_encoder_atom_embedding_list_1_weight[4][300];
float gnn_node_convs_4_mlp_1_bias[600];
float gnn_node_batch_norms_3_bias[300];
float gnn_node_batch_norms_2_running_mean[300];
float gnn_node_convs_1_mlp_3_weight[300][600];
float gnn_node_batch_norms_1_weight[300];
float gnn_node_convs_1_mlp_1_running_var[600];
float gnn_node_convs_3_bond_encoder_bond_embedding_list_1_weight[6][300];
float gnn_node_batch_norms_0_running_var[300];
float gnn_node_convs_2_eps[1];
float gnn_node_batch_norms_0_bias[300];
float gnn_node_convs_1_bond_encoder_bond_embedding_list_0_weight[5][300];
float gnn_node_convs_4_mlp_1_weight[600];
float gnn_node_convs_1_mlp_1_running_mean[600];
float gnn_node_convs_4_eps[1];
float gnn_node_batch_norms_4_running_mean[300];
float gnn_node_atom_encoder_atom_embedding_list_5_weight[6][300];
float gnn_node_convs_3_mlp_0_bias[600];
float gnn_node_convs_3_mlp_3_weight[300][600];
float gnn_node_convs_3_mlp_1_running_mean[600];
float gnn_node_convs_3_bond_encoder_bond_embedding_list_2_weight[2][300];
float gnn_node_convs_3_eps[1];
float gnn_node_atom_encoder_atom_embedding_list_7_weight[2][300];
float gnn_node_convs_0_mlp_0_bias[600];
float gnn_node_convs_2_mlp_1_running_var[600];
float graph_pred_linear_bias[1];
float gnn_node_convs_1_mlp_0_weight[600][300];
float gnn_node_convs_0_mlp_3_bias[300];
float gnn_node_convs_4_mlp_1_running_mean[600];
float gnn_node_batch_norms_3_running_var[300];
float gnn_node_convs_4_bond_encoder_bond_embedding_list_0_weight[5][300];
float gnn_node_convs_1_mlp_1_bias[600];
float gnn_node_convs_4_mlp_3_bias[300];
float gnn_node_batch_norms_2_bias[300];
float gnn_node_convs_0_mlp_0_weight[600][300];
float gnn_node_batch_norms_3_running_mean[300];
float gnn_node_convs_2_mlp_1_bias[600];
float gnn_node_convs_1_bond_encoder_bond_embedding_list_2_weight[2][300];
float gnn_node_convs_4_mlp_0_weight[600][300];
float gnn_node_convs_0_bond_encoder_bond_embedding_list_0_weight[5][300];
float gnn_node_convs_3_mlp_1_weight[600];
float gnn_node_convs_0_mlp_1_running_var[600];
float gnn_node_convs_1_bond_encoder_bond_embedding_list_1_weight[6][300];
float gnn_node_batch_norms_4_weight[300];
float gnn_node_batch_norms_0_weight[300];
float gnn_node_atom_encoder_atom_embedding_list_3_weight[12][300];
float gnn_node_convs_3_mlp_1_bias[600];




int main()
{
    printf("\n******* This is the golden C file for GIN model *******\n");

    load_weights();

    // these values are specific to a particular graph
    // should be read from files
    int num_of_nodes = 19;
    int num_of_edges = 40;

    int* node_feature = (int*)malloc(ND_FEATURE * num_of_nodes * sizeof(int));
    int* edge_list = (int*)malloc(2 * num_of_edges * sizeof(int));
    int* edge_attr = (int*)malloc(EDGE_ATTR * num_of_edges * sizeof(int));

    fetch_one_graph(node_feature, edge_list, edge_attr, num_of_nodes, num_of_edges);
    
    GIN_compute_one_graph(node_feature, edge_list, edge_attr, num_of_nodes, num_of_edges);

    
    free(node_feature);
    free(edge_list);
    free(edge_attr);
    

    return 0;
}