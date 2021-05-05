#include <stdio.h>
#include <stdlib.h>
#include "dcl.hpp"


float gnn_node_mlp_1_weights[LAYER_NUM][MLP_1_OUT][MLP_1_IN];
float gnn_node_mlp_1_bias[LAYER_NUM][MLP_1_OUT];
float gnn_node_mlp_2_weights[LAYER_NUM][MLP_2_OUT][MLP_2_IN];
float gnn_node_mlp_2_bias[LAYER_NUM][MLP_2_OUT];
float gnn_node_embedding_table[ND_FEATURE_TOTAL][EMB_DIM];
float gnn_edge_embedding_table[EG_FEATURE_TOTAL][EMB_DIM];
float graph_pred_linear_weight[NUM_TASK][MLP_2_OUT];
float graph_pred_linear_bias[NUM_TASK];
float eps[LAYER_NUM];

WT_TYPE gnn_node_mlp_1_weights_fixed[LAYER_NUM * MLP_1_OUT * MLP_1_IN];
WT_TYPE gnn_node_mlp_1_bias_fixed[LAYER_NUM * MLP_1_OUT];
WT_TYPE gnn_node_mlp_2_weights_fixed[LAYER_NUM * MLP_2_OUT * MLP_2_IN];
WT_TYPE gnn_node_mlp_2_bias_fixed[LAYER_NUM * MLP_2_OUT];
WT_TYPE gnn_node_embedding_table_fixed[ND_FEATURE_TOTAL * EMB_DIM];
WT_TYPE gnn_edge_embedding_table_fixed[EG_FEATURE_TOTAL * EMB_DIM];
WT_TYPE graph_pred_linear_weight_fixed[NUM_TASK * MLP_2_OUT];
WT_TYPE graph_pred_linear_bias_fixed[NUM_TASK];
WT_TYPE eps_fixed[LAYER_NUM];


int main()
{
    printf("\n******* This is the optimized HLS code for GIN model *******\n");

    load_weights();

    float all_results[4113];
    int is_first = 1;
    FILE* c_output = fopen("HLS_optimized_output.txt", "w+");
    for(int g = 1; g <= 10; g++ ) {
        char graph_name[128];
        char info_file[128];
        int num_of_nodes;
        int num_of_edges;

        sprintf(info_file, "../../../graph_info/g%d_info.txt", g);
        sprintf(graph_name, "../../../graph_bin/g%d", g);

        FILE* f_info = fopen(info_file, "r");
        fscanf (f_info, "%d\n%d", &num_of_nodes, &num_of_edges);
        fclose(f_info);
        
        printf("********** Computing Graph %s *************\n", graph_name);
        printf("# of nodes: %d, # of edges: %d\n", num_of_nodes, num_of_edges);

        int* node_feature = (int*)malloc(ND_FEATURE * num_of_nodes * sizeof(int));
        int* edge_list = (int*)malloc(3 * num_of_edges * sizeof(int));
        int* edge_attr = (int*)malloc(EDGE_ATTR * num_of_edges * sizeof(int));
        int graph_attr[3];
        graph_attr[0] = num_of_nodes;
        graph_attr[1] = num_of_edges;
        graph_attr[2] = is_first;

        FM_TYPE task_tb[NUM_TASK];

        fetch_one_graph(graph_name, node_feature, edge_list, edge_attr, num_of_nodes, num_of_edges);

        GIN_compute_one_graph(node_feature, edge_list, edge_attr, graph_attr, task_tb, 
                              gnn_node_mlp_1_weights_fixed, gnn_node_mlp_1_bias_fixed, gnn_node_mlp_2_weights_fixed, gnn_node_mlp_2_bias_fixed, 
                              gnn_node_embedding_table_fixed, gnn_edge_embedding_table_fixed, graph_pred_linear_weight_fixed, graph_pred_linear_bias_fixed, eps_fixed);

        
        all_results[g-1] = task_tb[0];

        free(node_feature);
        free(edge_list);
        free(edge_attr);

        is_first = 0;
    }

    for(int g = 1; g <= 10; g++) {
        fprintf(c_output, "g%d: %.8f\n", g, all_results[g-1]);
    }
    fclose(c_output);
    
    return 0;
}
