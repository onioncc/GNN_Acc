#include "dcl.h"


/// graph information
int node_feature[MAX_NODE * ND_FEATURE];
int edge_attr[MAX_EDGE][EDGE_ATTR];
int edge_list[MAX_EDGE * 2];

WT_TYPE message[MAX_NODE][EMB_DIM];
WT_TYPE edge_message[MAX_EDGE][EMB_DIM];
//int deg[MAX_NODE];

WT_TYPE norm[MAX_EDGE];
WT_TYPE deg[MAX_NODE];
WT_TYPE degsqrt[MAX_NODE];

WT_TYPE edge_embedding[MAX_EDGE][EMB_DIM];
WT_TYPE node_embedding[MAX_NODE][EMB_DIM];

WT_TYPE linear_out[MAX_NODE][MLP_OUT_MAX];
WT_TYPE conv_out[MAX_NODE][MLP_OUT_MAX];


WT_TYPE h_graph[EMB_DIM];
WT_TYPE task[NUM_TASK];

/// embedding weights
WT_TYPE node_embedding_weight[ND_FEATURE_TOTAL][EMB_DIM];
WT_TYPE edge_embedding_weight[EG_FEATURE_TOTAL][EMB_DIM];

int nd_feature_table[ND_FEATURE] = {119, 4, 12, 12, 10, 6, 6, 2, 2};
int ed_feature_table[EDGE_ATTR] = {5, 6, 2};


WT_TYPE convs_weight[LAYER_NUM][100][100];
WT_TYPE convs_bias[LAYER_NUM][100];
WT_TYPE convs_root_emb_weight[LAYER_NUM][100];

WT_TYPE bn_weight[LAYER_NUM][100];
WT_TYPE bn_bias[LAYER_NUM][100];
WT_TYPE bn_mean[LAYER_NUM][100];
WT_TYPE bn_var[LAYER_NUM][100];

WT_TYPE graph_pred_weights[NUM_TASK][MLP_0_OUT];
WT_TYPE graph_pred_bias[NUM_TASK];
 


int get_nd_emb_addr(int nf)
{
    int addr = 0;
    nd_emb_addr: for(int i = 0; i < nf; i++) {
        addr += nd_feature_table[i];
    }
    return addr;
}

int get_ed_emb_addr(int ef, int layer)
{
    int addr = 0;
    ed_emb_addr: for(int i = 0; i < ef; i++) {
        addr += ed_feature_table[i];
    }
    return addr + layer * (5+6+2);
}


void compute_edge_embedding(int num_of_edges, int edge_attr[MAX_EDGE][EDGE_ATTR], int layer)
{
#pragma HLS inline off
    ////////////// Embedding: compute edge embedding
    memset(edge_embedding, 0, MAX_EDGE * EMB_DIM * sizeof(float));
    edge_embedding: for(int e = 0; e < num_of_edges; e++) {
        edge_embedding_attrs: for(int ef = 0; ef < EDGE_ATTR; ef++) {
            int e_f = edge_attr[e][ef];
            edge_embedding_dim: for(int dim = 0; dim < EMB_DIM; dim++) {
                FM_TYPE emb_value = 0;
                int addr = get_ed_emb_addr(ef, layer);
                emb_value = edge_embedding_weight[addr + e_f][dim];
                edge_embedding[e][dim] += emb_value;
            }   
        }
    }
#ifdef _PRINT_
    printf("\nEdge embedding of layer %d:\n", layer);
    for(int e = 0; e < 5; e++) {
        printf("Edge %d: ", e);
        for(int dim = 0; dim < 10; dim++) {
            //printf("%.5f ", edge_embedding[e][dim].to_float());
            printf("%.5f ", edge_embedding[e][dim]);
        }
        printf("...\n");
    }
#endif
}


void message_passing(WT_TYPE ed[MAX_EDGE][EMB_DIM], WT_TYPE h[MAX_NODE][EMB_DIM], int* edge_list, int num_of_nodes, int num_of_edges)
{
    memset(message, 0, MAX_NODE * EMB_DIM * sizeof(float));
    memset(edge_message, 0, MAX_EDGE * EMB_DIM * sizeof(float));
    edge_message: for (int e = 0; e < num_of_edges; e++)
    {
        int u = edge_list[e*2];     // source node id
        int v = edge_list[e*2+1];   // target node id
        edge_message_dim: for (int dim = 0; dim < EMB_DIM; dim++)
        {   
            // accumulate the embedding vector for edge [u -> v]
            WT_TYPE msg = ed[e][dim] + h[u][dim];
            if(msg < 0) msg = 0.0;
            edge_message[e][dim] += msg;
        }
    }
    //WT_TYPE degsqrt[num_of_nodes];
    degsqrt: for (int n = 0; n < num_of_nodes; n++)
    {
        if(deg[n] != 0)
        degsqrt[n] = 1 / hls::sqrt(deg[n]+1);
    }
    //WT_TYPE norm[num_of_edges];
    node_message: for (int e = 0; e < num_of_edges; e++)
    {
        int u = edge_list[e*2];     // source node id
        int v = edge_list[e*2+1];   // target node id
        norm[e] = degsqrt[u] * degsqrt[v];
        node_message_dim: for (int dim = 0; dim < EMB_DIM;dim++)
        {
            message[v][dim] += norm[e] * edge_message[e][dim];
        }
    }
}


void Conv_BatchNorm_Relu(WT_TYPE d_in[MAX_NODE][MLP_OUT_MAX], WT_TYPE d_out[MAX_NODE][EMB_DIM], 
                     WT_TYPE (*weight), WT_TYPE (*bias), 
                     WT_TYPE (*running_mean),
                     WT_TYPE (*running_var),
                    int num_of_nodes, bool last_layer = false)
{

    batch_norm: for(int nd = 0; nd < num_of_nodes; nd++) {
        batch_norm_dim: for(int dim_out = 0; dim_out < 100; dim_out++) {
                     float temp = (float) (running_var[dim_out] + (WT_TYPE)E_EPS);
                     d_in[nd][dim_out] = (d_in[nd][dim_out] - running_mean[dim_out]) / (FM_TYPE)hls::sqrt(temp)* weight[dim_out] + bias[dim_out];
        
            d_out[nd][dim_out] = (d_in[nd][dim_out] < 0 && !last_layer ) ? (WT_TYPE)0 : d_in[nd][dim_out];
        }
    }
}



void CONV(int* node_feature, int* edge_list, int edge_attr[MAX_EDGE][EDGE_ATTR], int num_of_nodes, int num_of_edges, int layer)
{
    //printf("\n---- Computing CONV 0 ----\n");
    ////////////// Embedding: compute edge embedding
    compute_edge_embedding(num_of_edges, edge_attr, layer);

    //linear,        x = self.linear(x)
    memset(linear_out, 0, MAX_NODE * EMB_DIM * sizeof(WT_TYPE));
    linear_layer: for(int nd = 0; nd < num_of_nodes; nd++) {
        linear_layer_dim_out: for(int dim_out = 0; dim_out < MLP_0_OUT; dim_out++) {
            linear_out[nd][dim_out] = convs_bias[layer][dim_out];
            linear_layer_dim_in: for(int dim_in = 0; dim_in < MLP_0_IN; dim_in++) {
                linear_out[nd][dim_out] += node_embedding[nd][dim_in] * convs_weight[layer][dim_out][dim_in];
            }
        }
    }
    ////////////// Message Passing
    message_passing(edge_embedding, linear_out, edge_list, num_of_nodes, num_of_edges);


    memset(conv_out, 0, MAX_NODE * EMB_DIM * sizeof(WT_TYPE));
    //return self.propagate(edge_index, x=x, edge_attr = edge_embedding, norm=norm) + F.relu(x + self.root_emb.weight) * 1./deg.view(-1,1)
    aft_message: for(int nd = 0; nd < num_of_nodes; nd++) {
        aft_message_dim: for (int dim = 0; dim < EMB_DIM; dim++)
        {
            if((linear_out[nd][dim] + convs_root_emb_weight[layer][dim]) < 0)
                conv_out[nd][dim] = message[nd][dim];
            else
                conv_out[nd][dim] = message[nd][dim] + (linear_out[nd][dim] + convs_root_emb_weight[layer][dim]) / (deg[nd]+1);

        }
    }    


    ////////////// Batchnorm + Relu of Conv 0
    bool is_last_layer = true ? (layer == LAYER_NUM - 1) : false;
    Conv_BatchNorm_Relu(conv_out, node_embedding, 
                    bn_weight[layer], bn_bias[layer],
                    bn_mean[layer], bn_var[layer], 
                    num_of_nodes, is_last_layer);

}



void one_node_embedding(int nd, int* node_features)
{
#pragma HLS inline off
#pragma HLS array_partition variable=node_embedding_weight dim=1 complete

    one_node_embdding: for(int dim = 0; dim < EMB_DIM; dim++) {

        FM_TYPE sum = 0;
        one_node_embedding_features: for(int nf = 0; nf < ND_FEATURE; nf++) {
            int nd_f = node_features[nd * ND_FEATURE + nf];
            int emb_addr = get_nd_emb_addr(nf);

            FM_TYPE emb_value = node_embedding_weight[emb_addr + nd_f][dim]; 
            sum += emb_value;
        }  
        node_embedding[nd][dim] = sum;
    }
    
}



void compute_node_embedding(int num_of_nodes, int num_of_edges, int* node_features)
{
#pragma HLS inline off
    ////////////// Embedding: compute input node embedding
    loop_node_emb: for(int nd = 0; nd < num_of_nodes; nd++) {
        one_node_embedding(nd, node_features);
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



void load_graph(int* node_feature, int edge_attr[MAX_EDGE][EDGE_ATTR], int* edge_list, 
                int* node_feature_in, int* edge_list_in, int* edge_attr_in, int num_of_nodes, int num_of_edges)
{
#pragma HLS inline off
    load_features: for(int i = 0; i < num_of_nodes * ND_FEATURE; i++) {
        node_feature[i] = node_feature_in[i];
    }
    
    load_edges: for(int e = 0; e < num_of_edges; e++) {
        load_edge_attrs: for(int i = 0; i < EDGE_ATTR; i++) {
            edge_attr[e][i] = edge_attr_in[e * EDGE_ATTR + i];
        }
    }

    load_graph:for(int i = 0; i < num_of_edges * 2; i++) {
        edge_list[i] = edge_list_in[i];
    }
}

void load_layer_specific_weights(
    WT_TYPE convs_weight_in[LAYER_NUM][100][100], WT_TYPE convs_bias_in[LAYER_NUM][100], WT_TYPE convs_root_emb_weight_in[LAYER_NUM][100],
    WT_TYPE bn_weigh_in[LAYER_NUM][100], WT_TYPE bn_bias_in[LAYER_NUM][100], WT_TYPE bn_mean_in[LAYER_NUM][100], WT_TYPE bn_var_in[LAYER_NUM][100]
)
{
    load_layer_weights: for(int l = 0; l < LAYER_NUM; l++) {
        load_layer_weights_dim_out:for(int dim_out = 0; dim_out < MLP_0_OUT; dim_out++) {
            convs_bias[l][dim_out] = convs_bias_in[l][dim_out];
            convs_root_emb_weight[l][dim_out] = convs_root_emb_weight_in[l][dim_out];
            bn_weight[l][dim_out] = bn_weigh_in[l][dim_out];
            bn_bias[l][dim_out] = bn_bias_in[l][dim_out];
            bn_mean[l][dim_out] = bn_mean_in[l][dim_out];
            bn_var[l][dim_out] = bn_var_in[l][dim_out];

            load_layer_weights_dim_in: for(int dim_in = 0; dim_in < MLP_0_IN; dim_in++) {
                convs_weight[l][dim_out][dim_in] = convs_weight_in[l][dim_out][dim_in];
            }
        }        
    }
}

void load_misc_weights(WT_TYPE node_embedding_weight_in[ND_FEATURE_TOTAL][EMB_DIM], WT_TYPE edge_embedding_weight_in[EG_FEATURE_TOTAL][EMB_DIM],
                       WT_TYPE graph_pred_weights_in[NUM_TASK][MLP_0_OUT], WT_TYPE graph_pred_bias_in[NUM_TASK])
{
    load_node_emb_weights: for(int i = 0; i < ND_FEATURE_TOTAL; i++) {
        load_node_emb_weights_dim: for(int dim = 0; dim < EMB_DIM; dim++) {	
			node_embedding_weight[i][dim] = node_embedding_weight_in[i][dim];
		}
    }

    load_edge_emb_weigths: for(int i = 0; i < EG_FEATURE_TOTAL; i++) {
         load_edge_emb_weigths_dim: for(int dim = 0; dim < EMB_DIM; dim++) {
			edge_embedding_weight[i][dim] = edge_embedding_weight_in[i][dim];
		}
	}

    load_prediction_layer_weights: for(int t = 0; t < NUM_TASK; t++) {
		graph_pred_bias[t] = graph_pred_bias_in[t];
		load_prediction_layer_weights_dim: for(int dim_in = 0; dim_in < MLP_0_OUT; dim_in++ ) {
			graph_pred_weights[t][dim_in] = graph_pred_weights_in[t][dim_in];
		}
	}
}


void GCN_compute_one_graph(
    int* node_feature_in, int* edge_list_in, int* edge_attr_in, int* graph_attr, WT_TYPE* task,
    WT_TYPE convs_weight_in[LAYER_NUM][100][100], WT_TYPE convs_bias_in[LAYER_NUM][100], WT_TYPE convs_root_emb_weight_in[LAYER_NUM][100],
    WT_TYPE bn_weigh_in[LAYER_NUM][100], WT_TYPE bn_bias_in[LAYER_NUM][100], WT_TYPE bn_mean_in[LAYER_NUM][100], WT_TYPE bn_var_in[LAYER_NUM][100],
    WT_TYPE node_embedding_weight_in[ND_FEATURE_TOTAL][EMB_DIM], WT_TYPE edge_embedding_weight_in[EG_FEATURE_TOTAL][EMB_DIM],
    WT_TYPE graph_pred_weights_in[NUM_TASK][MLP_0_OUT], WT_TYPE graph_pred_bias_in[NUM_TASK]
    )
{
    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];
    int is_first = graph_attr[2];

    if( is_first == 1 ) {
        //////////////// Load weights
        loading_weights: for(int layer = 0; layer < LAYER_NUM; layer++) {
            load_layer_specific_weights(convs_weight_in, convs_bias_in, convs_root_emb_weight_in, 
                                        bn_weigh_in, bn_bias_in, bn_mean_in, bn_var_in);
        }
        load_misc_weights(node_embedding_weight_in, edge_embedding_weight_in, graph_pred_weights_in, graph_pred_bias_in);
    }

    ///////////// Load a new graph onto chip
    load_graph(node_feature, edge_attr, edge_list, node_feature_in, edge_list_in, edge_attr_in, num_of_nodes, num_of_edges);


    printf("Computing GCN ...\n");

    // ////////////// Embedding: compute input node embedding

    compute_node_embedding(num_of_nodes, num_of_edges, node_feature);

    memset(deg, 0, MAX_NODE * sizeof(int));
    calculate_degree: for (int e = 0; e < num_of_edges; e++)
    {
        int u = edge_list[e*2];
        deg[u]++;
    }


    gcn_layers: for(int layer = 0; layer < LAYER_NUM; layer++) {
        CONV(node_feature, edge_list, edge_attr, num_of_nodes, num_of_edges, layer);
    }
    
    ////////////// Global mean pooling //////////////////////
    // node representation is h_5
    memset(h_graph, 0, EMB_DIM * sizeof(WT_TYPE));
    mean_pooling_dim: for(int dim = 0; dim < EMB_DIM; dim++) {
        mean_pooling: for(int nd = 0; nd < num_of_nodes; nd++) {
            h_graph[dim] += node_embedding[nd][dim];
        }
    	h_graph[dim] = h_graph[dim] / num_of_nodes;
    }
    //mean_pooling: for(int nd = 0;nd < num_of_nodes; nd++){
    //	mean_pooling_dim: for(int dim=0; dim < EMB_DIM; dim++){
    //		h_graph[dim] += node_embedding[nd][dim];
    //		h_graph[dim] = h_graph[dim] / num_of_nodes;
    //	}
    //}


    
    ////////////// Graph prediction linear ///////////////////
    memset(task, 0, NUM_TASK * sizeof(WT_TYPE));
    prediction_layer: for(int tsk = 0; tsk < NUM_TASK; tsk++) {
        task[tsk] = graph_pred_bias[tsk];
        prediction_layer_dim: for(int dim = 0; dim < EMB_DIM; dim++) {
            task[tsk] += h_graph[dim] * graph_pred_weights[tsk][dim];
        }
    }

//#ifdef _PRINT_
    printf("Final graph prediction:\n");
    for(int tsk = 0; tsk < NUM_TASK; tsk++) {
        printf("%.7f\n", task[tsk].to_float());
    }
    printf("\nGCN computation done.\n");
//#endif

}
