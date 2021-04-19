#include "dcl.hpp"

//#define _PRINT_

#define NODE_BATCH 4

/// graph information
int node_feature[MAX_NODE * ND_FEATURE];
int edge_attr[MAX_EDGE][EDGE_ATTR];
int edge_list[MAX_EDGE * 2];

/// MLP data and message buffer
//FM_TYPE message[MAX_NODE][EMB_DIM];
//FM_TYPE mlp_in[MAX_NODE][EMB_DIM];
//FM_TYPE mlp_out[MAX_NODE][EMB_DIM];

/// graph data
FM_TYPE graph_embedding[EMB_DIM];

/// intermediate node and edge embedding buffer
//FM_TYPE edge_embedding[MAX_EDGE][EMB_DIM];
//FM_TYPE node_embedding[MAX_NODE][EMB_DIM];

// merge node_embedding and message into one array to save BRAM
FM_TYPE node_embedding_message[2][MAX_NODE][EMB_DIM];
// first dim = 0: node embedding
// first dim = 1: message

/// embedding tables
WT_TYPE node_embedding_table[ND_FEATURE_TOTAL][EMB_DIM];
WT_TYPE edge_embedding_table[EG_FEATURE_TOTAL][EMB_DIM];

/// MLP related weights
WT_TYPE mlp_eps[LAYER_NUM];
WT_TYPE mlp_1_weights[LAYER_NUM][MLP_1_OUT][MLP_1_IN];
WT_TYPE mlp_1_bias[LAYER_NUM][NODE_BATCH][MLP_1_OUT];
WT_TYPE mlp_2_weights[LAYER_NUM][MLP_2_OUT][MLP_2_IN];
WT_TYPE mlp_2_bias[LAYER_NUM][NODE_BATCH][MLP_2_OUT];

/// graph pred linear weights
WT_TYPE graph_pred_weights[NUM_TASK][MLP_2_OUT];
WT_TYPE graph_pred_bias[NUM_TASK];

int nd_feature_table[ND_FEATURE] = {119, 4, 12, 12, 10, 6, 6, 2};
int ed_feature_table[EDGE_ATTR] = {5, 6, 2};





void MLP_one_node_one_dim(WT_TYPE mlp_1_weight_vector[MLP_1_IN], WT_TYPE mlp_2_weight_vector[MLP_2_OUT],
                          int dim, int nn, int nd, FM_TYPE mlp_in[EMB_DIM], FM_TYPE mlp_out[EMB_DIM], int layer)
{
    FM_TYPE psum[MLP_1_OUT];

#pragma HLS array_partition variable=psum complete

    // first layer of MLP_1_IN x MLP_1_OUT VVM
    FM_TYPE sum = mlp_1_bias[layer][nn][dim];
    for(int dim_in1 = 0; dim_in1 < MLP_1_IN; dim_in1++) {
        psum[dim_in1] = mlp_1_weight_vector[dim_in1] * mlp_in[dim_in1];
        sum += psum[dim_in1];
    }
    sum = sum < 0 ? (FM_TYPE)0 : sum;

    // second layer of MLP_2_IN x MLP_2_OUT VVM
    for(int dim_out2 = 0; dim_out2 < MLP_2_OUT; dim_out2++) {
        mlp_out[dim_out2] += sum * mlp_2_weight_vector[dim_out2];
    }

}


void load_mlp_weight_vector_in_para(WT_TYPE mlp_weights[LAYER_NUM][MLP_1_OUT][MLP_1_IN], WT_TYPE mlp_weight_vector[NODE_BATCH][MLP_1_IN], int d_out, int layer) 
{
    for(int nn = 0; nn < NODE_BATCH; nn++) {
        for(int i = 0; i < MLP_1_IN; i++) {
            mlp_weight_vector[nn][i] = mlp_weights[layer][d_out][i];
        }
    }
}


void load_mlp_weight_vector_out_para(WT_TYPE mlp_weights[LAYER_NUM][MLP_2_OUT][MLP_2_IN], WT_TYPE mlp_weight_vector[NODE_BATCH][MLP_2_OUT], int d_in, int layer) 
{
    for(int nn = 0; nn < NODE_BATCH; nn++) {
        for(int i = 0; i < MLP_2_OUT; i++) {
            mlp_weight_vector[nn][i] = mlp_weights[layer][i][d_in];
        }
    }
}

void MLP_node_batch(int dim, int nd, FM_TYPE mlp_in[MAX_NODE][EMB_DIM], FM_TYPE mlp_out[NODE_BATCH][EMB_DIM], int layer)
{
#pragma HLS inline off

    WT_TYPE mlp_weight_1_vec_buf[NODE_BATCH][MLP_1_IN];
    WT_TYPE mlp_weight_2_vec_buf[NODE_BATCH][MLP_2_OUT];

#pragma HLS array_partition variable=mlp_weight_1_vec_buf dim=1 complete
#pragma HLS array_partition variable=mlp_weight_1_vec_buf dim=2 complete
#pragma HLS array_partition variable=mlp_weight_2_vec_buf dim=1 complete
#pragma HLS array_partition variable=mlp_weight_2_vec_buf dim=2 complete

    load_mlp_weight_vector_in_para(mlp_1_weights, mlp_weight_1_vec_buf, dim, layer);
    load_mlp_weight_vector_out_para(mlp_2_weights, mlp_weight_2_vec_buf, dim, layer);

    for(int nn = 0; nn < NODE_BATCH; nn++) {
        MLP_one_node_one_dim(mlp_weight_1_vec_buf[nn], mlp_weight_2_vec_buf[nn], dim, nn, nd, mlp_in[nn], mlp_out[nn], layer);
    }
}


void MLP(FM_TYPE node_embedding_message[2][MAX_NODE][EMB_DIM], int num_of_nodes, int layer)
{
#pragma HLS inline off

#pragma HLS array_partition variable=node_embedding_message dim=2 cyclic factor=4
#pragma HLS array_partition variable=node_embedding_message dim=3 complete



    /// something special in GIN
    WT_TYPE _eps = mlp_eps[layer];

    /// MLP input by aggregating messages and self features
    for(int nd = 0; nd < num_of_nodes; nd += NODE_BATCH) {
#pragma HLS pipeline
        for(int nn = 0; nn < NODE_BATCH; nn++) {
            for(int dim = 0; dim < EMB_DIM; dim++) {
                node_embedding_message[1][nd + nn][dim] = node_embedding_message[1][nd + nn][dim] + (1 + _eps) * node_embedding_message[0][nd + nn][dim];
            }
        }
    }

#ifdef _PRINT_
    printf("\nInput of MLP\n");
    for(int nd = 0; nd < 5; nd++) {
        printf("Node %d: ", nd);
        for(int dim = 0; dim < 10; dim++) {
            printf("%.5f ", node_embedding_message[1][nd][dim].to_float());
        }
        printf("...\n");
    }
#endif 


    for(int nd = 0; nd < num_of_nodes; nd += NODE_BATCH) {
        for(int nn = 0; nn < NODE_BATCH; nn++) {
#pragma HLS pipeline
            for(int dim = 0; dim < EMB_DIM; dim++) {
                node_embedding_message[0][nd + nn][dim] = 0;
            }
	    }
    }

    for(int dim = 0; dim < MLP_1_OUT; dim++) {
        for(int nd = 0; nd < num_of_nodes; nd += NODE_BATCH ) {
#pragma HLS pipeline
            MLP_node_batch(dim, nd, node_embedding_message[1] + nd, node_embedding_message[0] + nd, layer);
        }
    }

    for(int nd = 0; nd < num_of_nodes; nd += NODE_BATCH) {
        for(int nn = 0; nn < NODE_BATCH; nn++) {
#pragma HLS pipeline II=2
            for(int dim = 0; dim < EMB_DIM; dim++) {
                if( node_embedding_message[0][nd + nn][dim] + mlp_2_bias[layer][nn][dim] < 0 && (layer != LAYER_NUM - 1) ) {
                    node_embedding_message[0][nd + nn][dim] = 0;
                }
                else node_embedding_message[0][nd + nn][dim] = node_embedding_message[0][nd + nn][dim] + mlp_2_bias[layer][nn][dim];
            }
        }
    }



#ifdef _PRINT_
    printf("\nOutput of MLP\n");
    for(int nd = 0; nd < 5; nd++) {
        printf("Node %d: ", nd);
        for(int dim = 0; dim < 10; dim++) {
            printf("%.5f ", node_embedding_message[0][nd][dim].to_float());
        }
        printf("...\n");
    }
#endif
}



int get_ed_emb_addr(int ef, int layer)
{
    int addr = 0;
    for(int i = 0; i < ef; i++) {
        addr += ed_feature_table[i];
    }
    return addr + layer * (5+6+2);
}



void compute_edge_embedding_and_message_passing(int num_of_nodes, int num_of_edges, int edge_attr[MAX_EDGE][EDGE_ATTR], int layer)
{
#pragma HLS inline off

//#pragma HLS array_partition variable=message dim=2 complete
#pragma HLS array_partition variable=edge_embedding_table complete
#pragma HLS array_partition variable=edge_attr dim=2 complete


    ////////////// Embedding: compute edge embedding
    for(int nd = 0; nd < num_of_nodes; nd++) {
#pragma HLS pipeline
        for(int dim = 0; dim < EMB_DIM; dim++) {
            node_embedding_message[1][nd][dim] = 0;
        }
    }

    for(int e = 0; e < num_of_edges; e++) {
        int u = edge_list[e*2];     // source node id
        int v = edge_list[e*2+1];   // target node id

#pragma HLS pipeline II=2
        for(int dim = 0; dim < EMB_DIM; dim++) {
            FM_TYPE edge_embed = 0;
            for(int ef = 0; ef < EDGE_ATTR; ef++) {
                int e_f = edge_attr[e][ef];
            	int addr = get_ed_emb_addr(ef, layer);
                FM_TYPE emb_value = 0;
                emb_value = edge_embedding_table[addr + e_f][dim];
                edge_embed += emb_value;

            }   
            FM_TYPE msg = edge_embed + node_embedding_message[0][u][dim];
            if(msg < 0) msg = 0.0;
            node_embedding_message[1][v][dim] += msg;   
        }
    }
}


int get_nd_emb_addr(int nf)
{
    int addr = 0;
    for(int i = 0; i < nf; i++) {
        addr += nd_feature_table[i];
    }
    return addr;
}


void compute_node_embedding(int num_of_nodes, int* features)
{
#pragma HLS inline off
    ////////////// Embedding: compute input node embedding
#pragma HLS array_partition variable=node_embedding_table complete

    for(int nd = 0; nd < num_of_nodes; nd++) {
#pragma HLS pipeline
        for(int dim = 0; dim < EMB_DIM; dim++) {
	       node_embedding_message[0][nd][dim] = 0;
	    }
    }


    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int nf = 0; nf < ND_FEATURE; nf++) {
            int nd_f = features[nd * ND_FEATURE + nf];
            int emb_addr = get_nd_emb_addr(nf);
#pragma HLS pipeline II=2
            for(int dim = 0; dim < EMB_DIM; dim++) {
                FM_TYPE emb_value = node_embedding_table[emb_addr + nd_f][dim]; 
                node_embedding_message[0][nd][dim] += emb_value;
            }   
        }
    }

#ifdef _PRINT_
    printf("\nInitial node embedding:\n");
    for(int nd = 0; nd < 5; nd++) {
        printf("Node %d: ", nd);
        for(int dim = 0; dim < 10; dim++) {
            printf("%.5f ", node_embedding_message[0][nd][dim].to_float());
        }
        printf("...\n");
    }
#endif
}



void load_mlp_weights_one_layer(int layer, FM_TYPE* gnn_node_mlp_1_weights_fixed, FM_TYPE* gnn_node_mlp_1_bias_fixed,
                                           FM_TYPE* gnn_node_mlp_2_weights_fixed, FM_TYPE* gnn_node_mlp_2_bias_fixed)
{
#pragma HLS inline off

#pragma HLS array_partition variable=mlp_1_weights dim=3 complete
#pragma HLS array_partition variable=mlp_1_bias dim=2 complete
#pragma HLS array_partition variable=mlp_1_bias dim=3 complete
#pragma HLS array_partition variable=mlp_2_weights dim=2 complete
#pragma HLS array_partition variable=mlp_2_bias dim=2 complete
#pragma HLS array_partition variable=mlp_2_bias dim=3 complete


    for(int dim_out = 0; dim_out < MLP_1_OUT; dim_out++) {
        for(int nn = 0; nn < NODE_BATCH; nn++) {
            mlp_1_bias[layer][nn][dim_out] = gnn_node_mlp_1_bias_fixed[layer * MLP_1_OUT + dim_out];
        }
        for(int dim_in = 0; dim_in < MLP_1_IN; dim_in++) {
            mlp_1_weights[layer][dim_out][dim_in] = gnn_node_mlp_1_weights_fixed[layer * MLP_1_OUT * MLP_1_IN + dim_out * MLP_1_IN + dim_in];
        }
    }        
    for(int dim_out = 0; dim_out < MLP_2_OUT; dim_out++) {
        for(int nn = 0; nn < NODE_BATCH; nn++) {
            mlp_2_bias[layer][nn][dim_out] = gnn_node_mlp_2_bias_fixed[layer * MLP_2_OUT + dim_out];
        }
        for(int dim_in = 0; dim_in < MLP_2_IN; dim_in++) {
            mlp_2_weights[layer][dim_out][dim_in] = gnn_node_mlp_2_weights_fixed[layer * MLP_2_OUT * MLP_2_IN + dim_out * MLP_2_IN + dim_in];
        }
    }
}


void compute_CONV_layer(FM_TYPE node_embedding_message[2][MAX_NODE][EMB_DIM], int num_of_nodes, int num_of_edges, int layer)
{
#pragma HLS inline off
    
    compute_edge_embedding_and_message_passing(num_of_nodes, num_of_edges, edge_attr, layer);

    MLP(node_embedding_message, num_of_nodes, layer);


#ifdef _PRINT_
    printf("\nOutput of Conv %d\n", layer);
    for(int nd = 0; nd < 5; nd++) {
        printf("Node %d: ", nd);
        for(int dim = 0; dim < 10; dim++) {
            printf("%.5f ", h_node[nd][dim].to_float());
        }
        printf("...\n");
    }
#endif
}


// void global_mean_pooling(FM_TYPE* h_graph, FM_TYPE h_node[MAX_NODE][EMB_DIM], int num_of_nodes)
// {
// #pragma HLS inline off

	
//     for(int dim = 0; dim < EMB_DIM; dim++) {
//         WT_TYPE sum = 0;
// #pragma HLS pipeline
//         for(int nd = 0; nd < num_of_nodes; nd += NODE_BATCH) {
//             for(int nn = 0; nn < NODE_BATCH; nn++) {
//                 sum += h_node[nd + nn][dim];
//             }
//         }
//         h_graph[dim] = sum / num_of_nodes;
//     }

// #ifdef _PRINT_
//     printf("\nGlobal h_graph (global mean pool):\n");
//     for(int dim = 0; dim < 10; dim++) {
//         printf("%.5f ", h_graph[dim].to_float());
//     }
//     printf("...\n");
// #endif
// }



void global_mean_pooling(FM_TYPE* h_graph, FM_TYPE h_node[MAX_NODE][EMB_DIM], int num_of_nodes)
{
#pragma HLS inline off
	
    for(int dim = 0; dim < EMB_DIM; dim++) {
#pragma HLS pipeline II=4

        WT_TYPE sum = 0;
        for(int nd = 0; nd < num_of_nodes; nd++) {
            sum += h_node[nd][dim];
        }
        h_graph[dim] = sum / num_of_nodes;
    }

#ifdef _PRINT_
    printf("\nGlobal h_graph (global mean pool):\n");
    for(int dim = 0; dim < 10; dim++) {
        printf("%.5f ", h_graph[dim].to_float());
    }
    printf("...\n");
#endif
}


void global_graph_prediction(FM_TYPE* d_out, FM_TYPE* d_in)
{
#pragma HLS inline off
    for(int tsk = 0; tsk < NUM_TASK; tsk++) {
        d_out[tsk] = graph_pred_bias[tsk];
        for(int dim = 0; dim < EMB_DIM; dim++) {
            d_out[tsk] += d_in[dim] * graph_pred_weights[tsk][dim];
        }
    }
}


void load_graph(int* node_feature, int edge_attr[MAX_EDGE][EDGE_ATTR], int* edge_list, int* node_feature_in, int* edge_list_in, int* edge_attr_in, int num_of_nodes, int num_of_edges)
{
#pragma HLS inline off
    for(int i = 0; i < num_of_nodes * ND_FEATURE; i++) {
        node_feature[i] = node_feature_in[i];
    }
    
    for(int e = 0; e < num_of_edges; e++) {
        for(int i = 0; i < EDGE_ATTR; i++) {
            edge_attr[e][i] = edge_attr_in[e * EDGE_ATTR + i];
        }
    }

    for(int i = 0; i < num_of_edges * 2; i++) {
        edge_list[i] = edge_list_in[i];
    }
}


/// these weights will be loaded once and stay in BRAM forever
void load_misc_weights(
    WT_TYPE eps_in[LAYER_NUM],
    WT_TYPE graph_pred_weight_in[NUM_TASK * MLP_2_OUT],
    WT_TYPE graph_pred_bias_in[NUM_TASK],
    WT_TYPE node_embedding_table_in[ND_FEATURE_TOTAL * EMB_DIM],
    WT_TYPE edge_embedding_table_in[EG_FEATURE_TOTAL * EMB_DIM])
{
#pragma HLS inline off
    for(int i = 0; i < LAYER_NUM; i++) {
        mlp_eps[i] = eps_in[i];
    }
    
	for(int t = 0; t < NUM_TASK; t++) {
		graph_pred_bias[t] = graph_pred_bias_in[t];
		for(int dim_in = 0; dim_in < MLP_2_OUT; dim_in++ ) {
			graph_pred_weights[t][dim_in] = graph_pred_weight_in[t * MLP_2_OUT + dim_in];
		}
	}

    for(int i = 0; i < ND_FEATURE_TOTAL; i++) {
        for(int dim = 0; dim < EMB_DIM; dim++) {	
			node_embedding_table[i][dim] = node_embedding_table_in[i * EMB_DIM + dim];
		}
    }

    for(int i = 0; i < EG_FEATURE_TOTAL; i++) {
        for(int dim = 0; dim < EMB_DIM; dim++) {
			edge_embedding_table[i][dim] = edge_embedding_table_in[i * EMB_DIM + dim];
		}
	}
}


extern "C" {
void GIN_compute_one_graph(
    int* node_feature_in, int* edge_list_in, int* edge_attr_in, int* graph_attr, FM_TYPE* task,
    WT_TYPE gnn_node_mlp_1_weights_fixed[LAYER_NUM * MLP_1_OUT * MLP_1_IN],
    WT_TYPE gnn_node_mlp_1_bias_fixed[LAYER_NUM * MLP_1_OUT],
    WT_TYPE gnn_node_mlp_2_weights_fixed[LAYER_NUM * MLP_2_OUT * MLP_2_IN],
    WT_TYPE gnn_node_mlp_2_bias_fixed[LAYER_NUM * MLP_2_OUT],
    WT_TYPE gnn_node_embedding_fixed[ND_FEATURE_TOTAL * EMB_DIM],
    WT_TYPE gnn_edge_embedding_fixed[EG_FEATURE_TOTAL * EMB_DIM],
    WT_TYPE graph_pred_linear_weight_fixed[NUM_TASK * MLP_2_OUT],
    WT_TYPE graph_pred_linear_bias_fixed[NUM_TASK],
    WT_TYPE eps_fixed[LAYER_NUM]
    )
{
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS INTERFACE m_axi depth=100000 port=node_feature_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=edge_list_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=edge_attr_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=graph_attr offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=tasks offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=gnn_node_mlp_1_weights_fixed offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=gnn_node_mlp_1_bias_fixed offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=gnn_node_mlp_2_weights_fixed offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=gnn_node_mlp_2_bias_fixed offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=gnn_node_embedding_fixed offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=gnn_edge_embedding_fixed offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=graph_pred_linear_weight_fixed offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=graph_pred_linear_bias_fixed offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=eps_fixed offset=slave bundle=mem

//#pragma HLS bind_storage variable=node_feature type=RAM_2P impl=bram
//#pragma HLS bind_storage variable=edge_attr type=RAM_2P impl=bram
//#pragma HLS bind_storage variable=edge_list type=RAM_2P impl=bram
//#pragma HLS bind_storage variable=mlp_in type=RAM_2P impl=bram
//#pragma HLS bind_storage variable=mlp_out type=RAM_2P impl=bram
//#pragma HLS bind_storage variable=graph_embedding type=RAM_2P impl=bram
//#pragma HLS bind_storage variable=edge_embedding type=RAM_2P impl=uram
//#pragma HLS bind_storage variable=node_embedding type=RAM_2P impl=bram
//#pragma HLS bind_storage variable=node_embedding_table type=RAM_2P impl=bram
//#pragma HLS bind_storage variable=edge_embedding_table type=RAM_2P impl=bram
//#pragma HLS bind_storage variable=message type=RAM_2P impl=bram


    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];
    int is_first = graph_attr[2]; //is the first graph

    num_of_nodes = 19;
    num_of_edges = 40;
    is_first = 0;

    if( is_first == 1 ) {
		////////////// Load weights
		for(int layer = 0; layer < LAYER_NUM; layer++) {
			load_mlp_weights_one_layer(layer, gnn_node_mlp_1_weights_fixed, gnn_node_mlp_1_bias_fixed, gnn_node_mlp_2_weights_fixed, gnn_node_mlp_2_bias_fixed);
		}

		load_misc_weights(eps_fixed, graph_pred_linear_weight_fixed, graph_pred_linear_bias_fixed,
						  gnn_node_embedding_fixed, gnn_edge_embedding_fixed);
    }


    ///////////// Load a new graph onto chip
    load_graph(node_feature, edge_attr, edge_list, node_feature_in, edge_list_in, edge_attr_in, num_of_nodes, num_of_edges);

    printf("Computing GIN ...\n");

    ////////////// Embedding: compute input node embedding
    compute_node_embedding(num_of_nodes, node_feature);

    ////////////// CONV layers //////////////////////////////////
    for(int layer = 0; layer < LAYER_NUM; layer++) {
        compute_CONV_layer(node_embedding_message, num_of_nodes, num_of_edges, layer);
    }
        
    ////////////// Global mean pooling //////////////////////
    global_mean_pooling(graph_embedding, node_embedding_message[0], num_of_nodes);
    
    ////////////// Graph prediction linear ///////////////////
    global_graph_prediction(task, graph_embedding);


    printf("Final graph prediction:\n");
    for(int tsk = 0; tsk < NUM_TASK; tsk++) {
        printf("%.7f\n", task[tsk].to_float());
    }
    printf("\nGIN computation done.\n");

}
}

