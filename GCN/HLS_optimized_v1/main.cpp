#include <stdio.h>
#include <stdlib.h>
#include "dcl.h"

extern float convs_weight_float[LAYER_NUM][100][100];
extern float convs_bias_float[LAYER_NUM][100];
extern float convs_root_emb_weight_float[LAYER_NUM][100];

extern float bn_weight_float[LAYER_NUM][100];
extern float bn_bias_float[LAYER_NUM][100];
extern float bn_mean_float[LAYER_NUM][100];
extern float bn_var_float[LAYER_NUM][100];

extern float node_embedding_weight_float[ND_FEATURE_TOTAL][EMB_DIM];
extern float edge_embedding_weight_float[EG_FEATURE_TOTAL][EMB_DIM];

extern float graph_pred_linear_weight_float[NUM_TASK][100];
extern float graph_pred_linear_bias_float[NUM_TASK];

int main()
{
    printf("\n******* This is the golden C file for GCN model *******\n");

    load_weights();

    float all_results[4113];
    int is_first = 1;
    FILE* c_output = fopen("Golden_C_output.txt", "w+");
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
        int* edge_list = (int*)malloc(2 * num_of_edges * sizeof(int));
        int* edge_attr = (int*)malloc(EDGE_ATTR * num_of_edges * sizeof(int));
        int graph_attr[3];
        graph_attr[0] = num_of_nodes;
        graph_attr[1] = num_of_edges;
        graph_attr[2] = is_first;

        float task_tb[NUM_TASK];

        fetch_one_graph(graph_name, node_feature, edge_list, edge_attr, num_of_nodes, num_of_edges);
        
        GCN_compute_one_graph(node_feature, edge_list, edge_attr, graph_attr, task_tb, 
                              convs_weight_float, convs_bias_float, convs_root_emb_weight_float, 
                              bn_weight_float, bn_bias_float, bn_mean_float, bn_var_float,
                              node_embedding_weight_float, edge_embedding_weight_float,
                              graph_pred_linear_weight_float, graph_pred_linear_bias_float);
        
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
