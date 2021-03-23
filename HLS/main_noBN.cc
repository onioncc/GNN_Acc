#include <stdio.h>
#include <stdlib.h>
#include "dcl.h"

// global weights
float gnn_node_convs_3_mlp_2_bias[300];
float gnn_node_convs_2_bond_encoder_bond_embedding_list_0_weight[5][300];
float gnn_node_convs_2_mlp_0_bias[600];
float gnn_node_convs_1_mlp_2_weight[300][600];
float gnn_node_atom_encoder_atom_embedding_list_1_weight[4][300];
float gnn_node_convs_1_mlp_0_weight[600][300];
float gnn_node_convs_4_bond_encoder_bond_embedding_list_0_weight[5][300];
float gnn_node_convs_4_mlp_2_bias[300];
float gnn_node_convs_1_bond_encoder_bond_embedding_list_2_weight[2][300];
float gnn_node_convs_0_mlp_2_weight[300][600];
float gnn_node_convs_2_mlp_2_weight[300][600];
float gnn_node_atom_encoder_atom_embedding_list_8_weight[2][300];
float gnn_node_convs_2_bond_encoder_bond_embedding_list_2_weight[2][300];
float gnn_node_convs_1_mlp_2_bias[300];
float gnn_node_atom_encoder_atom_embedding_list_3_weight[12][300];
float gnn_node_convs_1_eps[1];
float gnn_node_convs_3_eps[1];
float gnn_node_convs_2_mlp_2_bias[300];
float gnn_node_convs_1_mlp_0_bias[600];
float gnn_node_convs_2_mlp_0_weight[600][300];
float gnn_node_convs_4_mlp_0_bias[600];
float gnn_node_convs_4_mlp_2_weight[300][600];
float gnn_node_convs_4_bond_encoder_bond_embedding_list_1_weight[6][300];
float gnn_node_atom_encoder_atom_embedding_list_4_weight[10][300];
float gnn_node_convs_3_bond_encoder_bond_embedding_list_2_weight[2][300];
float graph_pred_linear_weight[1][300];
float gnn_node_convs_3_mlp_0_weight[600][300];
float gnn_node_convs_0_bond_encoder_bond_embedding_list_1_weight[6][300];
float gnn_node_convs_0_bond_encoder_bond_embedding_list_0_weight[5][300];
float gnn_node_atom_encoder_atom_embedding_list_2_weight[12][300];
float gnn_node_atom_encoder_atom_embedding_list_7_weight[2][300];
float gnn_node_convs_3_bond_encoder_bond_embedding_list_1_weight[6][300];
float gnn_node_atom_encoder_atom_embedding_list_5_weight[6][300];
float gnn_node_convs_3_mlp_2_weight[300][600];
float gnn_node_convs_4_eps[1];
float gnn_node_convs_4_bond_encoder_bond_embedding_list_2_weight[2][300];
float gnn_node_convs_3_bond_encoder_bond_embedding_list_0_weight[5][300];
float gnn_node_convs_2_bond_encoder_bond_embedding_list_1_weight[6][300];
float gnn_node_convs_0_mlp_2_bias[300];
float gnn_node_convs_0_mlp_0_weight[600][300];
float gnn_node_atom_encoder_atom_embedding_list_0_weight[119][300];
float gnn_node_convs_1_bond_encoder_bond_embedding_list_0_weight[5][300];
float gnn_node_convs_3_mlp_0_bias[600];
float gnn_node_convs_1_bond_encoder_bond_embedding_list_1_weight[6][300];
float gnn_node_atom_encoder_atom_embedding_list_6_weight[6][300];
float gnn_node_convs_0_bond_encoder_bond_embedding_list_2_weight[2][300];
float gnn_node_convs_0_mlp_0_bias[600];
float gnn_node_convs_0_eps[1];
float gnn_node_convs_2_eps[1];
float gnn_node_convs_4_mlp_0_weight[600][300];
float graph_pred_linear_bias[1];


extern float task[NUM_TASK];

int main()
{
    printf("\n******* This is the golden C file for GIN model *******\n");

    load_weights();

    float all_results[4113];
    FILE* c_output = fopen("HLS_output.txt", "w+");
    for(int g = 1; g <= 10; g++ ) {
        char graph_name[128];
        char info_file[128];
        int num_of_nodes;
        int num_of_edges;

        sprintf(info_file, "./graph_info/g%d_info.txt", g);
        FILE* f_info = fopen(info_file, "r");
        fscanf (f_info, "%d\n%d", &num_of_nodes, &num_of_edges);
        sprintf(graph_name, "./graph_bin/g%d", g);
        printf("********** Computing Graph %s *************\n", graph_name);
        printf("# of nodes: %d, # of edges: %d\n", num_of_nodes, num_of_edges);

        int* node_feature = (int*)malloc(ND_FEATURE * num_of_nodes * sizeof(int));
        int* edge_list = (int*)malloc(2 * num_of_edges * sizeof(int));
        int* edge_attr = (int*)malloc(EDGE_ATTR * num_of_edges * sizeof(int));
        int graph_attr[2];
        graph_attr[0] = num_of_nodes;
        graph_attr[1] = num_of_edges;

        fetch_one_graph(graph_name, node_feature, edge_list, edge_attr, num_of_nodes, num_of_edges);
        
        GIN_compute_one_graph(node_feature, edge_list, edge_attr, graph_attr);
        
        all_results[g-1] = task[0];

        free(node_feature);
        free(edge_list);
        free(edge_attr);
    }

    // for(int g = 1; g <= 10; g++) {
    //     fprintf(c_output, "g%d: %.8f\n", g, all_results[g-1]);
    // }
    // fclose(c_output);
    
    return 0;
}