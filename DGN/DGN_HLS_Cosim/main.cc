#include <stdio.h>
#include <stdlib.h>
#include "dcl.h"

extern WT_TYPE embedding_h_atom_embedding_list_weights[9][119][100];
extern WT_TYPE layers_posttrans_fully_connected_0_linear_weight_in[4][100][200];
extern WT_TYPE layers_posttrans_fully_connected_0_linear_bias_in[4][100];
extern WT_TYPE MLP_layer_FC_layers_0_weight_in[50][100];
extern WT_TYPE MLP_layer_FC_layers_0_bias_in[50];
extern WT_TYPE MLP_layer_FC_layers_1_weight_in[25][50];
extern WT_TYPE MLP_layer_FC_layers_1_bias_in[25];
extern WT_TYPE MLP_layer_FC_layers_2_weight_in[1][25];
extern WT_TYPE MLP_layer_FC_layers_2_bias_in[1];

// global weights
float result[EMB_DIM * MAX_NODE];

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

        int node_feature[ND_FEATURE * MAX_NODE];
        WT_TYPE node_eigen[4 * MAX_NODE];
        int edge_list[2 * MAX_EDGE];
        int edge_attr[EDGE_ATTR * MAX_EDGE];
        int graph_attr[3];
        graph_attr[0] = num_of_nodes;
        graph_attr[1] = num_of_edges;
        graph_attr[2] = g == 1;

        fetch_one_graph(g, graph_name, node_feature, node_eigen, edge_list, edge_attr, num_of_nodes, num_of_edges);

        int degree_table[MAX_NODE][2];
        int neighbor_table[MAX_EDGE];
        prepare_graph(num_of_nodes, num_of_edges, edge_list, degree_table, neighbor_table);

        printf("Computing DGN ...\n");
        DGN_compute_one_graph(
            result,
            node_feature,
            node_eigen,
            degree_table,
            neighbor_table,
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
        for (int i = 0; i < num_of_nodes; i++)
        {
            for (int j = 0; j < EMB_DIM; j++)
            {
                printf("out[%d][%d] = %.8f\n", i, j, result[i * EMB_DIM + j]);
            }
        }
    }

    fclose(c_output);

    
    
    return (abs(result[0] - (-0.64753222)) <= 0.05) ? 0 : 1;
}