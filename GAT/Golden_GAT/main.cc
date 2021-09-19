#include <stdio.h>
#include <stdlib.h>
#include "dcl.h"

// global weights
float graph_pred_linear_weight[1][16];
float graph_pred_linear_bias[1];
float gat_net_0_scoring_fn_target[1][4][16];
float gat_net_0_scoring_fn_source[1][4][16];
float gat_net_0_bias[64];
float gat_net_0_linear_proj_weight[64][9];
float gat_net_0_skip_proj_weight[64][9];
float gat_net_1_scoring_fn_target[1][6][16];
float gat_net_1_scoring_fn_source[1][6][16];
float gat_net_1_bias[16];
float gat_net_1_linear_proj_weight[96][64];
float gat_net_1_skip_proj_weight[96][64];

extern float task[NUM_TASK];

int main()
{
    printf("\n******* This is the golden C file for GAT model *******\n");

    load_weights();

    float all_results[4113];
    FILE* c_output = fopen("Golden_C_output.txt", "w+");
    for(int g = 1; g <= 10; g++ ) {
        char graph_name[128];
        char info_file[128];
        int num_of_nodes;
        int num_of_edges;

        sprintf(info_file, "../../graphs/graph_info/g%d_info.txt", g);
        sprintf(graph_name, "../../graphs/graph_bin/g%d", g);
        
        FILE* f_info = fopen(info_file, "r");
        fscanf(f_info, "%d\n%d", &num_of_nodes, &num_of_edges);
        fclose(f_info);
        
        printf("********** Computing Graph %s *************\n", graph_name);
        printf("# of nodes: %d, # of edges: %d\n", num_of_nodes, num_of_edges);

        int* node_feature = (int*)malloc(ND_FEATURE * num_of_nodes * sizeof(int));
        int* edge_list = (int*)malloc(2 * num_of_edges * sizeof(int));
        int graph_attr[2];
        graph_attr[0] = num_of_nodes;
        graph_attr[1] = num_of_edges;
        int num_heads_per_layer[3] = {1, 4, 6};
        int num_features_per_layer[3] = {9, 16, 16};

        fetch_one_graph(graph_name, node_feature, edge_list, num_of_nodes, num_of_edges);
        
        GAT_compute_one_graph(node_feature, edge_list, graph_attr, num_heads_per_layer, num_features_per_layer);
        
        all_results[g-1] = task[0];

        free(node_feature);
        free(edge_list);
    }

    for(int g = 1; g <= 10; g++) {
        fprintf(c_output, "g%d: %.8f\n", g, all_results[g-1]);
    }
    fclose(c_output);
    
    return 0;
}
