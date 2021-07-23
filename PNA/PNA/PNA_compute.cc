#include "dcl.h"
//#define _PRINT_

/// h_x: node feature vectors
/// e_x: edge attribute vectors
/// message: received message of each node
/// mlp_in/out: buffers for mlp

float message[MAX_NODE][EMB_DIM];
float mlp_in[MAX_NODE][MLP_IN_MAX];
float mlp_out[MAX_NODE][MLP_OUT_MAX];

float h_0[MAX_NODE][EMB_DIM];
float e_0[MAX_EDGE][EMB_DIM];

float h_1[MAX_NODE][EMB_DIM];
float e_1[MAX_EDGE][EMB_DIM];

float h_2[MAX_NODE][EMB_DIM];
float e_2[MAX_EDGE][EMB_DIM];

float h_3[MAX_NODE][EMB_DIM];
float e_3[MAX_EDGE][EMB_DIM];

float h_4[MAX_NODE][EMB_DIM];
float e_4[MAX_EDGE][EMB_DIM];

float h_5[MAX_NODE][EMB_DIM];

float h_graph[EMB_DIM];
float task[NUM_TASK];





void GIN_compute_one_graph(int* node_feature, int* edge_list, int* edge_attr, int* graph_attr)
{
    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];


    printf("Computing GIN ...\n");

    ////////////// Embedding: compute input node embedding
    memset(h_0, 0, MAX_NODE * EMB_DIM * sizeof(float));
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int nf = 0; nf < ND_FEATURE; nf++) {
            int nd_f = node_feature[nd * ND_FEATURE + nf];
            for(int dim = 0; dim < EMB_DIM; dim++) {
                float emb_value = 0;
                switch (nf) {
                case 0:
                    emb_value = gnn_node_atom_encoder_atom_embedding_list_0_weight[nd_f][dim];
                    break;
                case 1:
                    emb_value = gnn_node_atom_encoder_atom_embedding_list_1_weight[nd_f][dim];
                    break;
                case 2:
                    emb_value = gnn_node_atom_encoder_atom_embedding_list_2_weight[nd_f][dim];
                    break;
                case 3:
                    emb_value = gnn_node_atom_encoder_atom_embedding_list_3_weight[nd_f][dim];
                    break;
                case 4:
                    emb_value = gnn_node_atom_encoder_atom_embedding_list_4_weight[nd_f][dim];
                    break;
                case 5:
                    emb_value = gnn_node_atom_encoder_atom_embedding_list_5_weight[nd_f][dim];
                    break;
                case 6:
                    emb_value = gnn_node_atom_encoder_atom_embedding_list_6_weight[nd_f][dim];
                    break;
                case 7:
                    emb_value = gnn_node_atom_encoder_atom_embedding_list_7_weight[nd_f][dim];
                    break;
                case 8:
                    emb_value = gnn_node_atom_encoder_atom_embedding_list_8_weight[nd_f][dim];
                    break;
                }
                h_0[nd][dim] += emb_value;
            }   
        }
    }

#ifdef _PRINT_
    printf("\nInitial node embedding:\n");
    for(int nd = 0; nd < 5; nd++) {
        printf("Node %d: ", nd);
        for(int dim = 0; dim < 10; dim++) {
            printf("%.5f ", h_0[nd][dim]);
        }
        printf("...\n");
    }
#endif

    ////////////// CONV 0 //////////////////////////////////
    CONV_0(node_feature, edge_list, edge_attr, num_of_nodes, num_of_edges);
    ////////////// CONV 1 //////////////////////////////////
    CONV_1(node_feature, edge_list, edge_attr, num_of_nodes, num_of_edges);
    ////////////// CONV 2 //////////////////////////////////
    CONV_2(node_feature, edge_list, edge_attr, num_of_nodes, num_of_edges);
    ////////////// CONV 3 //////////////////////////////////
    CONV_3(node_feature, edge_list, edge_attr, num_of_nodes, num_of_edges);
    ////////////// CONV 4 //////////////////////////////////
    CONV_4(node_feature, edge_list, edge_attr, num_of_nodes, num_of_edges);

    
    ////////////// Global mean pooling //////////////////////
    // node representation is h_5
    memset(h_graph, 0, EMB_DIM * sizeof(float));
    for(int dim = 0; dim < EMB_DIM; dim++) {
        for(int nd = 0; nd < num_of_nodes; nd++) {
            h_graph[dim] += h_5[nd][dim];
        }
        h_graph[dim] = h_graph[dim] / num_of_nodes;
    }

#ifdef _PRINT_
    printf("\nGlobal h_graph (global mean pool):\n");
    for(int dim = 0; dim < 10; dim++) {
        printf("%.5f ", h_graph[dim]);
    }
    printf("...\n");
#endif
    
    ////////////// Graph prediction linear ///////////////////
    memset(task, 0, NUM_TASK * sizeof(float));
    for(int tsk = 0; tsk < NUM_TASK; tsk++) {
        task[tsk] = graph_pred_linear_bias[tsk];
        for(int dim = 0; dim < EMB_DIM; dim++) {
            task[tsk] += h_graph[dim] * graph_pred_linear_weight[tsk][dim];
        }
    }

//#ifdef _PRINT_
    printf("Final graph prediction:\n");
    for(int tsk = 0; tsk < NUM_TASK; tsk++) {
        printf("%.7f\n", task[tsk]);
    }
    printf("\nGIN computation done.\n");
//#endif

}