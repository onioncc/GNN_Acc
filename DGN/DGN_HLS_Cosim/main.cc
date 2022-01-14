#include <stdio.h>
#include <stdlib.h>
#include "dcl.h"

void prepare_graph(
    int num_of_nodes,
    int num_of_edges,
    int *edge_list,
    int degree_table[][2],
    int neighbor_table[]
)
{
    int neighbor_table_idxs[num_of_nodes];
    int edge_list_len = num_of_edges * 2;

    for (int i = 0; i < num_of_nodes; i++)
    {
        degree_table[i][0] = 0;
        neighbor_table_idxs[i] = 0;
    }

    for (int i = 1; i < edge_list_len; i += 2)
    {
        int v = edge_list[i];
        degree_table[v][0]++;
    }

    int acc = 0;
    for (int i = 0; i < num_of_nodes; i++)
    {
        int degree = degree_table[i][0];
        degree_table[i][1] = acc;
        acc += degree;
    }

    for (int i = 0; i < edge_list_len; i += 2)
    {
        int u = edge_list[i];
        int v = edge_list[i + 1];
        int row_idx = degree_table[v][1];
        int col_idx = neighbor_table_idxs[v];
        int e = row_idx + col_idx;
        neighbor_table[e] = u;
        neighbor_table_idxs[v] = col_idx + 1;
    }
}

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

        int node_feature[ND_FEATURE * num_of_nodes];
        WT_TYPE node_eigen[4 * num_of_nodes];
        int edge_list[2 * num_of_edges];
        int graph_attr[3];
        graph_attr[0] = num_of_nodes;
        graph_attr[1] = num_of_edges;
        graph_attr[2] = g == 1;

        fetch_one_graph(g, graph_name, node_feature, node_eigen, edge_list, num_of_nodes, num_of_edges);

        int degree_table[num_of_nodes][2];
        int neighbor_table[num_of_edges];
        prepare_graph(num_of_nodes, num_of_edges, edge_list, degree_table, neighbor_table);

        FM_TYPE h_node_ping_dram[num_of_nodes][EMB_DIM];
        FM_TYPE h_node_pong_dram[num_of_nodes][EMB_DIM];
        float result[num_of_nodes];

        printf("Computing DGN ...\n");
        DGN_compute_one_graph(
            result,
            node_feature,
            node_eigen,
            degree_table,
            neighbor_table,
            graph_attr,
            embedding_FC_weight_in,
            embedding_FC_bias_in,
            layers_posttrans_fully_connected_0_linear_weight_in,
            layers_posttrans_fully_connected_0_linear_bias_in,
            MLP_layer_FC_layers_0_weight_in,
            MLP_layer_FC_layers_0_bias_in,
            MLP_layer_FC_layers_1_weight_in,
            MLP_layer_FC_layers_1_bias_in,
            MLP_layer_FC_layers_2_weight_in,
            MLP_layer_FC_layers_2_bias_in,

            h_node_ping_dram,
            h_node_pong_dram
        );

        for (int nd = 0; nd < num_of_nodes; nd++) {
            printf("%.7f\n", result[nd]);
        }
    }

    
    
    return 0;
}
