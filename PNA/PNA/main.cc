#include <stdio.h>
#include <stdlib.h>
#include "dcl.h"
float node_emb_atom_embedding_list_0_weight[119][80];
float node_emb_atom_embedding_list_1_weight[4][80];
float node_emb_atom_embedding_list_2_weight[12][80];
float node_emb_atom_embedding_list_3_weight[12][80];
float node_emb_atom_embedding_list_4_weight[10][80];
float node_emb_atom_embedding_list_5_weight[6][80];
float node_emb_atom_embedding_list_6_weight[6][80];
float node_emb_atom_embedding_list_7_weight[2][80];
float node_emb_atom_embedding_list_8_weight[2][80];
float convs_0_post_nn_0_weight[80][960];
float convs_0_post_nn_0_bias[80];
float convs_1_post_nn_0_weight[80][960];
float convs_1_post_nn_0_bias[80];
float convs_2_post_nn_0_weight[80][960];
float convs_2_post_nn_0_bias[80];
float convs_3_post_nn_0_weight[80][960];
float convs_3_post_nn_0_bias[80];
float mlp_0_weight[40][80];
float mlp_0_bias[40];
float mlp_2_weight[20][40];
float mlp_2_bias[20];
float mlp_4_weight[1][20];
float mlp_4_bias[1];
// global weights

extern float task[NUM_TASK];

int main()
{
    printf("\n******* This is the golden C file for GIN model *******\n");

    load_weights();

    float all_results[4113];
    FILE* c_output = fopen("Golden_C_output_txt", "w+");
    for(int g = 1; g <= 10; g++ ) {
        char graph_name[128];
        char info_file[128];
        int num_of_nodes;
        int num_of_edges;

        sprintf(info_file, "__/__/__/graph_info/g%d_info_txt", g);
        sprintf(graph_name, "__/__/__/graph_bin/g%d", g);

        FILE* f_info = fopen(info_file, "r");
        fscanf (f_info, "%d\n%d", &num_of_nodes, &num_of_edges);
        fclose(f_info);
        

        printf("********** Computing Graph %s *************\n", graph_name);
        printf("# of nodes: %d, # of edges: %d\n", num_of_nodes, num_of_edges);

        int* node_feature = (int*)malloc(ND_FEATURE * num_of_nodes * sizeof(int));
        int* edge_list = (int*)malloc(2 * num_of_edges * sizeof(int));
        int* edge_attr = (int*)malloc(EDGE_ATTR * num_of_edges * sizeof(int));
        int graph_attr[2];
        graph_attr[0] = num_of_nodes;
        graph_attr[1] = num_of_edges;

        fetch_one_graph(graph_name, node_feature, edge_list, edge_attr, num_of_nodes, num_of_edges);
        
        PNA_compute_one_graph(node_feature, edge_list, edge_attr, graph_attr);
        
        all_results[g-1] = task[0];

        free(node_feature);
        free(edge_list);
        free(edge_attr);
    }

    for(int g = 1; g <= 10; g++) {
        fprintf(c_output, "g%d: %_8f\n", g, all_results[g-1]);
    }
    fclose(c_output);
    
    return 0;
}
