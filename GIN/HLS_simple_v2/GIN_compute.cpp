#include "dcl.hpp"

//#define _PRINT_

#define MLP_BATCH 16

/// graph information
int node_feature[MAX_NODE * ND_FEATURE];
int edge_attr[MAX_EDGE * EDGE_ATTR];
int edge_list[MAX_EDGE * 2];

/// MLP data and message buffer
FM_TYPE message[MAX_NODE][EMB_DIM];
FM_TYPE mlp_in[MAX_NODE][MLP_IN_MAX];
FM_TYPE mlp_out[MAX_NODE][MLP_OUT_MAX];

/// graph data
FM_TYPE graph_embedding[EMB_DIM];

/// intermediate node and edge embedding buffer
FM_TYPE edge_embedding[MAX_EDGE][EMB_DIM];
FM_TYPE node_embedding[MAX_NODE][EMB_DIM];

/// embedding tables
WT_TYPE node_embedding_table[ND_FEATURE_TOTAL][EMB_DIM];
WT_TYPE edge_embedding_table[EG_FEATURE_TOTAL][EMB_DIM];

/// MLP related weights
WT_TYPE mlp_eps[LAYER_NUM];
WT_TYPE mlp_1_weights[MLP_1_OUT][MLP_1_IN];
WT_TYPE mlp_1_bias[MLP_1_OUT];
WT_TYPE mlp_2_weights[MLP_2_OUT][MLP_2_IN];
WT_TYPE mlp_2_bias[MLP_2_OUT];

/// graph pred linear weights
WT_TYPE graph_pred_weights[NUM_TASK][MLP_2_OUT];
WT_TYPE graph_pred_bias[NUM_TASK];

int nd_feature_table[ND_FEATURE] = {119, 4, 12, 12, 10, 6, 6, 2};
int ed_feature_table[EDGE_ATTR] = {5, 6, 2};


void message_passing(FM_TYPE ed[MAX_EDGE][EMB_DIM], FM_TYPE h[MAX_NODE][EMB_DIM], int* edge_list, int num_of_nodes, int num_of_edges)
{
#pragma HLS inline off
    memset(message, 0, MAX_NODE * EMB_DIM * sizeof(FM_TYPE));
    for(int e = 0; e < num_of_edges; e++) {
        int u = edge_list[e*2];     // source node id
        int v = edge_list[e*2+1];   // target node id

        for(int dim = 0; dim < EMB_DIM; dim++) {
            // accumulate the embedding vector for edge [u -> v]
            FM_TYPE msg = ed[e][dim] + h[u][dim];
            if(msg < 0) msg = 0.0;
            message[v][dim] += msg;            
        }
    }

#ifdef _PRINT_
    printf("\nMessage of Conv 0\n");
    for(int nd = 0; nd < num_of_nodes; nd++) {
        printf("Node %d: ", nd);
        for(int dim = 0; dim < 10; dim++) {
            printf("%.5f ", message[nd][dim].to_float());
        }
        printf("...\n");
    }
#endif
}

template< int MLP_IN_DIM, int MLP_OUT_DIM>
void load_mlp_weight_vector(WT_TYPE mlp_weights[MLP_OUT_DIM][MLP_IN_DIM], hls::stream<WT_TYPE> &mlp_weight_vector, int d_out)
{
    for(int i = 0; i < MLP_IN_DIM; i++)
    {
#pragma HLS pipeline
    	mlp_weight_vector.write(mlp_weights[d_out][i]);
    }
}


template< int MLP_IN_DIM, int MLP_OUT_DIM >
void MLP_PE(hls::stream<WT_TYPE> &weights_in, hls::stream<WT_TYPE> &weights_out, WT_TYPE bias, FM_TYPE data_in[MLP_IN_DIM], FM_TYPE data_out[MLP_OUT_DIM], int d_out, int is_final_PE, int do_relu)
{
	data_out[d_out] = bias;
    for(int i = 0; i < MLP_IN_DIM; i++) {
#pragma HLS pipeline
    	WT_TYPE w = weights_in.read();
    	data_out[d_out] += w * data_in[i];
        if( is_final_PE != 1 ) weights_out.write(w);
    }
    if((data_out[d_out] < 0) && (do_relu == 1)) {
        data_out[d_out] = 0;
    }
}


template< int MLP_IN_DIM, int MLP_OUT_DIM>
void MLP_batch_nodes(FM_TYPE mlp_in_local[MLP_BATCH][MLP_IN_DIM], FM_TYPE mlp_out_local[MLP_BATCH][MLP_OUT_DIM], WT_TYPE mlp_weights[MLP_OUT_DIM][MLP_IN_DIM], WT_TYPE mlp_bias[MLP_OUT_DIM], int d_out, int do_relu)
{
#pragma HLS dataflow
#pragma HLS array_partition variable=mlp_in_local dim=1 complete
#pragma HLS array_partition variable=mlp_out_local dim=1 complete


    hls::stream<WT_TYPE> mlp_weight_fifo[MLP_BATCH + 1];

    load_mlp_weight_vector<MLP_IN_DIM, MLP_OUT_DIM>(mlp_weights, mlp_weight_fifo[0], d_out);

    for(int n = 0; n < MLP_BATCH; n++) {
#pragma HLS unroll
        int is_final_PE = (n == MLP_BATCH - 1) ? 1 : 0;
        MLP_PE<MLP_IN_DIM, MLP_OUT_DIM>(mlp_weight_fifo[n], mlp_weight_fifo[n+1], mlp_bias[d_out], mlp_in_local[n], mlp_out_local[n], d_out, is_final_PE, do_relu);
    }
}


void MLP(FM_TYPE mlp_in[MAX_NODE][MLP_IN_MAX], FM_TYPE mlp_out[MAX_NODE][MLP_OUT_MAX], FM_TYPE h_node[MAX_NODE][EMB_DIM], int num_of_nodes, int layer)
{
#pragma HLS inline off

#pragma HLS array_partition variable=mlp_in dim=1 complete
#pragma HLS array_partition variable=mlp_out dim=1 complete

    /// something special in GIN
    WT_TYPE _eps = mlp_eps[layer];

    FM_TYPE mlp_buf_1[MLP_BATCH][MLP_1_IN];
    FM_TYPE mlp_buf_2[MLP_BATCH][MLP_1_OUT];
    FM_TYPE mlp_buf_3[MLP_BATCH][MLP_2_OUT];

    for(int nd = 0; nd < num_of_nodes; nd += MLP_BATCH) {

        for(int dim_out = 0; dim_out < MLP_1_OUT; dim_out++) {

            // Prepare MLP input by aggregating messages and self features
            for(int nn = 0; nn < MLP_BATCH; nn++) {
                for(int dim = 0; dim < EMB_DIM; dim++) {
                    mlp_buf_1[nn][dim] = message[nd + nn][dim] + (1 + _eps) * h_node[nd + nn][dim];
                }
            }
            
            /// MLP 1 (linear)
            MLP_batch_nodes<MLP_1_IN, MLP_1_OUT>(mlp_buf_1, mlp_buf_2, mlp_1_weights, mlp_1_bias, dim_out, 1);
        }

        int do_relu = (layer == LAYER_NUM - 1) ? 0 : 1;        
        for(int dim_out = 0; dim_out < MLP_2_OUT; dim_out++) {
            /// MLP 2 (linear)
            MLP_batch_nodes<MLP_2_IN, MLP_2_OUT>(mlp_buf_2, mlp_buf_3, mlp_2_weights, mlp_2_bias, dim_out, do_relu);
            
            for(int nn = 0; nn < MLP_BATCH; nn++) {
                h_node[nd + nn][dim_out] = mlp_buf_3[nn][dim_out];
            }
        }

    }

#ifdef _PRINT_
    printf("\nOutput of MLP\n");
    for(int nd = 0; nd < 5; nd++) {
        printf("Node %d: ", nd);
        for(int dim = 0; dim < 10; dim++) {
            printf("%.5f ", h_node[nd][dim].to_float());
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



void compute_edge_embedding(int num_of_edges, int* edge_attr, int layer)
{
#pragma HLS inline off
    ////////////// Embedding: compute edge embedding
    memset(edge_embedding, 0, MAX_EDGE * EMB_DIM * sizeof(FM_TYPE));
    for(int e = 0; e < num_of_edges; e++) {
        for(int ef = 0; ef < EDGE_ATTR; ef++) {
            int e_f = edge_attr[e * EDGE_ATTR + ef];
            for(int dim = 0; dim < EMB_DIM; dim++) {
                FM_TYPE emb_value = 0;
                int addr = get_ed_emb_addr(ef, layer);
                emb_value = edge_embedding_table[addr + e_f][dim];
                edge_embedding[e][dim] += emb_value;
            }   
        }
    }
#ifdef _PRINT_
    printf("\nEdge embedding of layer %d:\n", layer);
    for(int e = 0; e < 5; e++) {
        printf("Edge %d: ", e);
        for(int dim = 0; dim < 10; dim++) {
            printf("%.5f ", edge_embedding[e][dim].to_float());
        }
        printf("...\n");
    }
#endif
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
    memset(node_embedding, 0, MAX_NODE * EMB_DIM * sizeof(FM_TYPE));
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int nf = 0; nf < ND_FEATURE; nf++) {
            int nd_f = features[nd * ND_FEATURE + nf];
            for(int dim = 0; dim < EMB_DIM; dim++) {
                FM_TYPE emb_value = 0;
                int emb_addr = get_nd_emb_addr(nf);
                emb_value = node_embedding_table[emb_addr + nd_f][dim]; 
                node_embedding[nd][dim] += emb_value;
            }   
        }
    }

#ifdef _PRINT_
    printf("\nInitial node embedding:\n");
    for(int nd = 0; nd < 5; nd++) {
        printf("Node %d: ", nd);
        for(int dim = 0; dim < 10; dim++) {
            printf("%.5f ", node_embedding[nd][dim].to_float());
        }
        printf("...\n");
    }
#endif
}



void load_mlp_weights_one_layer(int layer, FM_TYPE* gnn_node_mlp_1_weights_fixed, FM_TYPE* gnn_node_mlp_1_bias_fixed,
                                           FM_TYPE* gnn_node_mlp_2_weights_fixed, FM_TYPE* gnn_node_mlp_2_bias_fixed)
{
#pragma HLS inline off

    for(int dim_out = 0; dim_out < MLP_1_OUT; dim_out++) {
        mlp_1_bias[dim_out] = gnn_node_mlp_1_bias_fixed[layer * MLP_1_OUT + dim_out];
        for(int dim_in = 0; dim_in < MLP_1_IN; dim_in++) {
            mlp_1_weights[dim_out][dim_in] = gnn_node_mlp_1_weights_fixed[layer * MLP_1_OUT * MLP_1_IN + dim_out * MLP_1_IN + dim_in];
        }
    }        
    for(int dim_out = 0; dim_out < MLP_2_OUT; dim_out++) {
        mlp_2_bias[dim_out] = gnn_node_mlp_2_bias_fixed[layer * MLP_2_OUT + dim_out];
        for(int dim_in = 0; dim_in < MLP_2_IN; dim_in++) {
            mlp_2_weights[dim_out][dim_in] = gnn_node_mlp_2_weights_fixed[layer * MLP_2_OUT * MLP_2_IN + dim_out * MLP_2_IN + dim_in];
        }
    }

}


void compute_CONV_layer(FM_TYPE h_node[MAX_NODE][EMB_DIM], FM_TYPE e_edge[MAX_EDGE][EMB_DIM], int num_of_nodes, int num_of_edges, int layer,
                        FM_TYPE* gnn_node_mlp_1_weights_fixed, FM_TYPE* gnn_node_mlp_1_bias_fixed,
                        FM_TYPE* gnn_node_mlp_2_weights_fixed, FM_TYPE* gnn_node_mlp_2_bias_fixed)
{
#pragma HLS inline off
    //printf("\n---- Computing CONV 0 ----\n");
    compute_edge_embedding(num_of_edges, edge_attr, layer);

    ////////////// Message Passing
    message_passing(e_edge, h_node, edge_list, num_of_nodes, num_of_edges);

    ////////////// Load weights
    load_mlp_weights_one_layer(layer, gnn_node_mlp_1_weights_fixed, gnn_node_mlp_1_bias_fixed, gnn_node_mlp_2_weights_fixed, gnn_node_mlp_2_bias_fixed);

    ////////////// MLP of Conv 0
    MLP(mlp_in, mlp_out, h_node, num_of_nodes, layer);


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


void global_mean_pooling(FM_TYPE* h_graph, FM_TYPE h_node[MAX_NODE][EMB_DIM], int num_of_nodes)
{
#pragma HLS inline off

	FM_TYPE h_node_sum[EMB_DIM];
	memset(h_node_sum, 0, EMB_DIM * sizeof(FM_TYPE));

	
    for(int dim = 0; dim < EMB_DIM; dim++) {
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


void load_graph(int* node_feature, int* edge_attr, int* edge_list, int* node_feature_in, int* edge_list_in, int* edge_attr_in, int num_of_nodes, int num_of_edges)
{
#pragma HLS inline off
    for(int i = 0; i < num_of_nodes * ND_FEATURE; i++) {
        node_feature[i] = node_feature_in[i];
    }
    
    for(int i = 0; i < num_of_edges * EDGE_ATTR; i++) {
        edge_attr[i] = edge_attr_in[i];
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

#pragma HLS bind_storage variable=node_feature type=RAM_2P impl=bram
#pragma HLS bind_storage variable=edge_attr type=RAM_2P impl=bram
#pragma HLS bind_storage variable=edge_list type=RAM_2P impl=bram
#pragma HLS bind_storage variable=mlp_in type=RAM_2P impl=uram
#pragma HLS bind_storage variable=mlp_out type=RAM_2P impl=uram
#pragma HLS bind_storage variable=graph_embedding type=RAM_2P impl=bram
#pragma HLS bind_storage variable=edge_embedding type=RAM_2P impl=uram
#pragma HLS bind_storage variable=node_embedding type=RAM_2P impl=uram
#pragma HLS bind_storage variable=node_embedding_table type=RAM_2P impl=uram
#pragma HLS bind_storage variable=edge_embedding_table type=RAM_2P impl=uram
#pragma HLS bind_storage variable=message type=RAM_2P impl=uram


    load_misc_weights(eps_fixed, graph_pred_linear_weight_fixed, graph_pred_linear_bias_fixed, 
                      gnn_node_embedding_fixed, gnn_edge_embedding_fixed);

    int num_of_nodes = 19; //graph_attr[0];
    int num_of_edges = 40; //graph_attr[1];

    ///////////// Load a new graph onto chip
    load_graph(node_feature, edge_attr, edge_list, node_feature_in, edge_list_in, edge_attr_in, num_of_nodes, num_of_edges);

    printf("Computing GIN ...\n");

    ////////////// Embedding: compute input node embedding
    compute_node_embedding(num_of_nodes, node_feature);

    ////////////// CONV layers //////////////////////////////////
    for(int layer = 0; layer < 5; layer++) {
        compute_CONV_layer(node_embedding, edge_embedding, num_of_nodes, num_of_edges, layer,
                           gnn_node_mlp_1_weights_fixed, gnn_node_mlp_1_bias_fixed,
                           gnn_node_mlp_2_weights_fixed, gnn_node_mlp_2_bias_fixed);
    }
        
    ////////////// Global mean pooling //////////////////////
    global_mean_pooling(graph_embedding, node_embedding, num_of_nodes);
    
    ////////////// Graph prediction linear ///////////////////
    global_graph_prediction(task, graph_embedding);


    printf("Final graph prediction:\n");
    for(int tsk = 0; tsk < NUM_TASK; tsk++) {
        printf("%.7f\n", task[tsk].to_float());
    }
    printf("\nGIN computation done.\n");

}
}

