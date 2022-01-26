#include <stdio.h>
#include <stdlib.h>
#include "dcl.hpp"

// global weights
float graph_pred_linear_weight[NUM_TASK][FEATURE_OUT];
float graph_pred_linear_bias[NUM_TASK];
float gat_net_scoring_fn_target[LAYER_NUM][HEAD_NUM][FEATURE_OUT];
float gat_net_scoring_fn_source[LAYER_NUM][HEAD_NUM][FEATURE_OUT];
float gat_net_0_linear_proj_weight[HEAD_NUM * FEATURE_OUT][FEATURE_IN];
float gat_net_1_linear_proj_weight[LAYER_NUM - 1][HEAD_NUM * FEATURE_OUT][HEAD_NUM * FEATURE_OUT];
float gat_net_0_skip_proj_weight[HEAD_NUM * FEATURE_OUT][FEATURE_IN];
float gat_net_1_skip_proj_weight[LAYER_NUM - 1][HEAD_NUM * FEATURE_OUT][HEAD_NUM * FEATURE_OUT];

WT_TYPE graph_pred_linear_weight_fixed[NUM_TASK * FEATURE_OUT];
WT_TYPE graph_pred_linear_bias_fixed[NUM_TASK];
WT_TYPE gat_net_scoring_fn_target_fixed[LAYER_NUM * HEAD_NUM * FEATURE_OUT];
WT_TYPE gat_net_scoring_fn_source_fixed[LAYER_NUM * HEAD_NUM * FEATURE_OUT];
WT_TYPE gat_net_linear_proj_weight_fixed[LAYER_NUM * HEAD_NUM * FEATURE_OUT * HEAD_NUM * FEATURE_OUT];
WT_TYPE gat_net_skip_proj_weight_fixed[LAYER_NUM * HEAD_NUM * FEATURE_OUT * HEAD_NUM * FEATURE_OUT];

int main()
{
    printf("\n******* This is the HLS file for GAT model *******\n");

    load_weights();

    float all_results[4113];
    int is_first = 1;
    FILE* c_output = fopen("HLS_output.txt", "w+");
    for(int g = 1; g <= 2; g++ ) {
        char graph_name[128];
        char info_file[128];
        int num_of_nodes;
        int num_of_edges;

        // sprintf(info_file, "g%d_info.txt", g);
        // sprintf(graph_name, "g%d", g);
        sprintf(info_file, "../../graphs/graph_info/g%d_info.txt", g);
        sprintf(graph_name, "../../graphs/graph_bin/g%d", g);
        
        FILE* f_info = fopen(info_file, "r");
        fscanf(f_info, "%d\n%d", &num_of_nodes, &num_of_edges);
        fclose(f_info);
        
        printf("********** Computing Graph %s *************\n", graph_name);
        printf("# of nodes: %d, # of edges: %d\n", num_of_nodes, num_of_edges);

        //int node_feature[100000];
        //int edge_list[100000];
        int* node_feature = (int*)malloc(ND_FEATURE * MAX_NODE * sizeof(int));
        int* edge_list = (int*)malloc(2 * MAX_EDGE * sizeof(int));

        int graph_attr[3];
        graph_attr[0] = num_of_nodes;
        graph_attr[1] = num_of_edges;
        graph_attr[2] = is_first;

        FM_TYPE task_tb[NUM_TASK];

        fetch_one_graph(graph_name, node_feature, edge_list, num_of_nodes, num_of_edges);
        
        GAT_compute_one_graph(node_feature, edge_list, graph_attr, task_tb,
                              graph_pred_linear_weight_fixed, graph_pred_linear_bias_fixed, gat_net_scoring_fn_target_fixed,
                              gat_net_scoring_fn_source_fixed, gat_net_linear_proj_weight_fixed, gat_net_skip_proj_weight_fixed);
        
        all_results[g-1] = task_tb[0].to_float();

        free(node_feature);
        free(edge_list);

        is_first = 0;
    }
    /*
    for(int g = 1; g <= 2; g++) {
        fprintf(c_output, "g%d: %.8f\n", g, all_results[g-1]);
    }
    */
    fclose(c_output);
    
    return 0;
}
