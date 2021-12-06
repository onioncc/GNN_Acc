#include <stdio.h>
#include <stdlib.h>
#include "dcl.h"

// global weights
float result;

int main()
{
    printf("\n******* This is the golden C file for DGN model *******\n");

    load_weights();

    float all_results[4113];
    FILE* c_output = fopen("Golden_C_output.txt", "w+");
    for(int g = 1; g <= 4113; g++ ) {
        char graph_name[128];
        char info_file[128];
        int num_of_nodes;
        int num_of_edges;


        sprintf(info_file, "../../graphs/graph_info/g%d_info.txt", g);
        sprintf(graph_name, "../../graphs/graph_bin/g%d", g);


        FILE* f_info = fopen(info_file, "r");
        fscanf (f_info, "%d\n%d", &num_of_nodes, &num_of_edges);
        fclose(f_info);
        

        printf("********** Computing Graph %s *************\n", graph_name);
        printf("# of nodes: %d, # of edges: %d\n", num_of_nodes, num_of_edges);

        int* node_feature = (int*)malloc(ND_FEATURE * num_of_nodes * sizeof(int));
        WT_TYPE* node_eigen = (WT_TYPE*)malloc(4 * num_of_nodes * sizeof(WT_TYPE));
        int* edge_list = (int*)malloc(2 * num_of_edges * sizeof(int));
        int* edge_attr = (int*)malloc(EDGE_ATTR * num_of_edges * sizeof(int));
        int graph_attr[3];
        graph_attr[0] = num_of_nodes;
        graph_attr[1] = num_of_edges;
        graph_attr[2] = g == 1;

        fetch_one_graph(g, graph_name, node_feature, node_eigen, edge_list, edge_attr, num_of_nodes, num_of_edges);
        
        result = DGN_compute_one_graph(node_feature, node_eigen, edge_list, edge_attr, graph_attr, embedding_h_atom_embedding_list_weights, layers_posttrans_fully_connected_0_linear_weight_in, layers_posttrans_fully_connected_0_linear_bias_in, MLP_layer_FC_layers_0_weight_in, MLP_layer_FC_layers_0_bias_in, MLP_layer_FC_layers_1_weight_in, MLP_layer_FC_layers_1_bias_in, MLP_layer_FC_layers_2_weight_in, MLP_layer_FC_layers_2_bias_in);
        printf("%.8f\n", float(result));
        all_results[g - 1] = float(result);
        free(node_feature);
        free(edge_list);
        free(edge_attr);
    }

    for(int g = 1; g <= 4113; g++) {
        fprintf(c_output, "g%d: %.8f\n", g, all_results[g-1]);
    }
    fclose(c_output);

    
    
    return 0;
}
