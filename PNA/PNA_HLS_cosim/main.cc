// #include <stdio.h>
// #include <stdlib.h>
#include "dcl.h"

// global weights
//extern float final;


int main()
{
    printf("\n******* This is the golden C file for PNA model *******\n");

    load_weights();

    float all_results[4113];
    FILE* c_output = fopen("Golden_C_output.txt", "w+");
    for(int g = 1; g <= 1; g++ ) {
        char graph_name[128];
        char info_file[128];
        int num_of_nodes;
        int num_of_edges;


        // sprintf(info_file, "../../graphs/graph_info/g%d_info.txt", g);
        // sprintf(graph_name, "../../graphs/graph_bin/g%d", g);

        sprintf(info_file, "g1_info.txt");
        sprintf(graph_name, "g1");


        FILE* f_info = fopen(info_file, "r");
        fscanf(f_info, "%d\n%d", &num_of_nodes, &num_of_edges);
        fclose(f_info);
        

        printf("********** Computing Graph %s *************\n", graph_name);
        printf("# of nodes: %d, # of edges: %d\n", num_of_nodes, num_of_edges);

        int node_feature[100000];
        int edge_list[100000];
        int edge_attr[100000];
        int graph_attr[3];
        graph_attr[0] = num_of_nodes;
        graph_attr[1] = num_of_edges;
        graph_attr[2] = g == 1;
        // graph_attr[2] = 1;

        FM_TYPE task_tb[NUM_TASK];

        fetch_one_graph(graph_name, node_feature, edge_list, edge_attr, num_of_nodes, num_of_edges);
        
        PNA_compute_one_graph(
            task_tb,

            node_feature,
            edge_list,
            graph_attr,

            node_emb_atom_embedding_list_0_weight_fixed_in,
            node_emb_atom_embedding_list_1_weight_fixed_in,
            node_emb_atom_embedding_list_2_weight_fixed_in,
            node_emb_atom_embedding_list_3_weight_fixed_in,
            node_emb_atom_embedding_list_4_weight_fixed_in,
            node_emb_atom_embedding_list_5_weight_fixed_in,
            node_emb_atom_embedding_list_6_weight_fixed_in,
            node_emb_atom_embedding_list_7_weight_fixed_in,
            node_emb_atom_embedding_list_8_weight_fixed_in,

            mlp_0_weight_fixed_in,
            mlp_0_bias_fixed_in,
            mlp_2_weight_fixed_in,
            mlp_2_bias_fixed_in,
            mlp_4_weight_fixed_in,
            mlp_4_bias_fixed_in,

            convs_ALL_post_nn_0_weight_fixed_in,
            convs_ALL_post_nn_0_bias_fixed_in
        );
        all_results[g - 1] = task_tb[0].to_float();
        // free(node_feature);
        // free(edge_list);
        // free(edge_attr);
    }

    for(int g = 1; g <= 4113; g++) {
        fprintf(c_output, "g%d: %.8f\n", g, all_results[g-1]);
    }
    fclose(c_output);

    
    return 0;
}