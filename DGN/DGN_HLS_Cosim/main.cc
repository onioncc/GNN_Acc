#include <stdio.h>
#include <stdlib.h>
#include "dcl.h"

// global weights
FM_TYPE result;

int main()
{
    printf("\n******* This is the golden C file for DGN model *******\n");

    load_weights();

    FILE* c_output = fopen("Cosim_output.txt", "w+");
    for(int g = 1; g <= 1; g++ ) {
        char graph_name[128];
        char info_file[128];
        int num_of_nodes;
        int num_of_edges;


        sprintf(info_file, "gtest_info.txt");
        sprintf(graph_name, "gtest");


        FILE* f_info = fopen(info_file, "r");
        fscanf (f_info, "%d\n%d", &num_of_nodes, &num_of_edges);
        fclose(f_info);
        

        printf("********** Computing Graph %s *************\n", graph_name);
        printf("# of nodes: %d, # of edges: %d\n", num_of_nodes, num_of_edges);

        int node_feature[ND_FEATURE * MAX_NODE];
        WT_TYPE node_eigen[4 * MAX_NODE];
        int edge_list[2 * MAX_EDGE];
        int graph_attr[3];
        graph_attr[0] = num_of_nodes;
        graph_attr[1] = num_of_edges;
        graph_attr[2] = g == 1;

        fetch_one_graph(g, graph_name, node_feature, node_eigen, edge_list, num_of_nodes, num_of_edges);

        printf("Computing DGN ...\n");
        DGN_compute_one_graph(
            &result,
            node_feature,
            node_eigen,
            edge_list,
            graph_attr,
            embedding_h_atom_embedding_list_weights,
            layers_posttrans_fully_connected_0_linear_weight_in,
            layers_posttrans_fully_connected_0_linear_bias_in,
            MLP_layer_FC_layers_0_weight_in,
            MLP_layer_FC_layers_0_bias_in,
            MLP_layer_FC_layers_1_weight_in,
            MLP_layer_FC_layers_1_bias_in,
            MLP_layer_FC_layers_2_weight_in,
            MLP_layer_FC_layers_2_bias_in
        );
        printf("%.8f\n", float(result));
    }

    
    
    return 0;
}
