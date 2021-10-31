#include "dcl.h"

/// h_x: node feature vectors
/// e_x: edge attribute vectors
/// message: received message of each node
/// mlp_in/out: buffers for mlp

float message[MAX_NODE][EMB_DIM];
float edge_message[MAX_EDGE][EMB_DIM];
int deg[MAX_NODE];

float edge_embedding[MAX_EDGE][EMB_DIM];
float node_embedding[MAX_NODE][EMB_DIM];

float linear_out[MAX_NODE][MLP_OUT_MAX];
float conv_out[MAX_NODE][MLP_OUT_MAX];


float h_graph[EMB_DIM];
float task[NUM_TASK];

/// embedding tables
float node_embedding_table[ND_FEATURE_TOTAL][EMB_DIM];
float edge_embedding_table[EG_FEATURE_TOTAL][EMB_DIM];

int nd_feature_table[ND_FEATURE] = {119, 4, 12, 12, 10, 6, 6, 2, 2};
int ed_feature_table[EDGE_ATTR] = {5, 6, 2};


float convs_weight[LAYER_NUM][100][100];
float convs_bias[LAYER_NUM][100];
float convs_root_emb_weight[LAYER_NUM][100];

float bn_weight[LAYER_NUM][100];
float bn_bias[LAYER_NUM][100];
float bn_mean[LAYER_NUM][100];
float bn_var[LAYER_NUM][100];

 


int get_nd_emb_addr(int nf)
{
    int addr = 0;
    for(int i = 0; i < nf; i++) {
        addr += nd_feature_table[i];
    }
    return addr;
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
    memset(edge_embedding, 0, MAX_EDGE * EMB_DIM * sizeof(float));
    for(int e = 0; e < num_of_edges; e++) {
        for(int ef = 0; ef < EDGE_ATTR; ef++) {
            int e_f = edge_attr[e * EDGE_ATTR + ef];
            for(int dim = 0; dim < EMB_DIM; dim++) {
                float emb_value = 0;
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
            //printf("%.5f ", edge_embedding[e][dim].to_float());
            printf("%.5f ", edge_embedding[e][dim]);
        }
        printf("...\n");
    }
#endif
}


void message_passing(float ed[MAX_EDGE][EMB_DIM], float h[MAX_NODE][EMB_DIM], int* edge_list, int num_of_nodes, int num_of_edges)
{
    memset(message, 0, MAX_NODE * EMB_DIM * sizeof(float));
    memset(edge_message, 0, MAX_EDGE * EMB_DIM * sizeof(float));
    for (int e = 0; e < num_of_edges; e++)
    {
        int u = edge_list[e*2];     // source node id
        int v = edge_list[e*2+1];   // target node id
        for (int dim = 0; dim < EMB_DIM; dim++)
        {   
            // accumulate the embedding vector for edge [u -> v]
            float msg = ed[e][dim] + h[u][dim];
            if(msg < 0) msg = 0.0;
            edge_message[e][dim] += msg;
        }
    }
    float degsqrt[num_of_nodes];
    for (int n = 0; n < num_of_nodes; n++)
    {
        if(deg[n] != 0)
        degsqrt[n] = 1 / sqrt(deg[n]+1);
    }
    float norm[num_of_edges];
    for (int e = 0; e < num_of_edges; e++)
    {
        int u = edge_list[e*2];     // source node id
        int v = edge_list[e*2+1];   // target node id
        norm[e] = degsqrt[u] * degsqrt[v];
        for (int dim = 0; dim < EMB_DIM;dim++)
        {
            message[v][dim] += norm[e] * edge_message[e][dim];
        }
    }
}


void Conv_BatchNorm_Relu(float d_in[MAX_NODE][MLP_OUT_MAX], float d_out[MAX_NODE][EMB_DIM], 
                     float (*weight), float (*bias), 
                     float (*running_mean),
                     float (*running_var),
                    int num_of_nodes, bool last_layer = false)
{

    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_out = 0; dim_out < 100; dim_out++) {
                     d_in[nd][dim_out] = (d_in[nd][dim_out] - running_mean[dim_out]) / sqrt((running_var[dim_out] + E_EPS))
                                    * weight[dim_out] + bias[dim_out];
        
            d_out[nd][dim_out] = (d_in[nd][dim_out] < 0 && !last_layer ) ? 0.0 : d_in[nd][dim_out];
        }
    }
}



void CONV(int* node_feature, int* edge_list, int* edge_attr, int num_of_nodes, int num_of_edges, int layer)
{
    //printf("\n---- Computing CONV 0 ----\n");
    ////////////// Embedding: compute edge embedding
    compute_edge_embedding(num_of_edges, edge_attr, layer);

    //linear,        x = self.linear(x)
    memset(linear_out, 0, MAX_NODE * EMB_DIM * sizeof(float));
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_out = 0; dim_out < MLP_0_OUT; dim_out++) {
            linear_out[nd][dim_out] = convs_bias[layer][dim_out];
            for(int dim_in = 0; dim_in < MLP_0_IN; dim_in++) {
                linear_out[nd][dim_out] += node_embedding[nd][dim_in] * convs_weight[layer][dim_out][dim_in];
            }
        }
    }
    ////////////// Message Passing
    message_passing(edge_embedding, linear_out, edge_list, num_of_nodes, num_of_edges);


    memset(conv_out, 0, MAX_NODE * EMB_DIM * sizeof(float));
    //return self.propagate(edge_index, x=x, edge_attr = edge_embedding, norm=norm) + F.relu(x + self.root_emb.weight) * 1./deg.view(-1,1)
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for (int dim = 0; dim < EMB_DIM; dim++)
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
#pragma HLS array_partition variable=node_embedding_table dim=1 complete

    for(int dim = 0; dim < EMB_DIM; dim++) {
#pragma HLS pipeline        

        FM_TYPE sum = 0;
        for(int nf = 0; nf < ND_FEATURE; nf++) {
            int nd_f = node_features[nd * ND_FEATURE + nf];
            int emb_addr = get_nd_emb_addr(nf);

            FM_TYPE emb_value = node_embedding_table[emb_addr + nd_f][dim]; 
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



void GCN_compute_one_graph(int* node_feature, int* edge_list, int* edge_attr, int* graph_attr)
{
    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];


    printf("Computing GCN ...\n");

    // ////////////// Embedding: compute input node embedding

    compute_node_embedding(num_of_nodes, num_of_edges, node_feature);

    memset(deg, 0, MAX_NODE * sizeof(int));
    for (int e = 0; e < num_of_edges; e++)
    {
        int u = edge_list[e*2];
        deg[u]++;
    }


    for(int layer = 0; layer < LAYER_NUM; layer++) {
        CONV(node_feature, edge_list, edge_attr, num_of_nodes, num_of_edges, layer);
    }
    
    ////////////// Global mean pooling //////////////////////
    // node representation is h_5
    memset(h_graph, 0, EMB_DIM * sizeof(float));
    for(int dim = 0; dim < EMB_DIM; dim++) {
        for(int nd = 0; nd < num_of_nodes; nd++) {
            h_graph[dim] += node_embedding[nd][dim];
        }
        h_graph[dim] = h_graph[dim] / num_of_nodes;
    }


    
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
    printf("\nGCN computation done.\n");
//#endif

}
