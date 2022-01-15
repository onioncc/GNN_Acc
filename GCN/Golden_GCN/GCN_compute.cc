#include "dcl.h"

/// h_x: node feature vectors
/// e_x: edge attribute vectors
/// message: received message of each node
/// mlp_in/out: buffers for mlp

float message[MAX_NODE][EMB_DIM];
float edge_message[MAX_EDGE][EMB_DIM];
int deg[MAX_NODE];

float linear_out[MAX_NODE][MLP_OUT_MAX];
float conv_out[MAX_NODE][MLP_OUT_MAX];


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



void CONV_0(int* node_feature, int* edge_list, int* edge_attr, int num_of_nodes, int num_of_edges)
{
    //printf("\n---- Computing CONV 0 ----\n");
    ////////////// Embedding: compute edge embedding
    memset(e_0, 0, MAX_EDGE * EMB_DIM * sizeof(float));
    for(int e = 0; e < num_of_edges; e++) {
        for(int ef = 0; ef < EDGE_ATTR; ef++) {
            int e_f = edge_attr[e * EDGE_ATTR + ef];
            for(int dim = 0; dim < EMB_DIM; dim++) {
                float emb_value = 0;
                switch (ef) {
                case 0:
                    emb_value = gnn_node_convs_0_bond_encoder_bond_embedding_list_0_weight[e_f][dim];
                    break;
                case 1:
                    emb_value = gnn_node_convs_0_bond_encoder_bond_embedding_list_1_weight[e_f][dim];
                    break;
                case 2:
                    emb_value = gnn_node_convs_0_bond_encoder_bond_embedding_list_2_weight[e_f][dim];
                    break;
                }
                e_0[e][dim] += emb_value;
            }   
        }
    }
    //linear,        x = self.linear(x)
    memset(linear_out, 0, MAX_NODE * EMB_DIM * sizeof(float));
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_out = 0; dim_out < MLP_0_OUT; dim_out++) {
            linear_out[nd][dim_out] = gnn_node_convs_0_bias[dim_out];
            for(int dim_in = 0; dim_in < MLP_0_IN; dim_in++) {
                linear_out[nd][dim_out] += h_0[nd][dim_in] * gnn_node_convs_0_weight[dim_out][dim_in];
            }
        }
    }
    ////////////// Message Passing
    message_passing(e_0, linear_out, edge_list, num_of_nodes, num_of_edges);


    memset(conv_out, 0, MAX_NODE * EMB_DIM * sizeof(float));
    //return self.propagate(edge_index, x=x, edge_attr = edge_embedding, norm=norm) + F.relu(x + self.root_emb.weight) * 1./deg.view(-1,1)
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for (int dim = 0; dim < EMB_DIM; dim++)
        {
            if((linear_out[nd][dim] + gnn_node_convs_0_root_emb_weight[dim]) < 0)
                conv_out[nd][dim] = message[nd][dim];
            else
                conv_out[nd][dim] = message[nd][dim] + (linear_out[nd][dim] + gnn_node_convs_0_root_emb_weight[dim]) / (deg[nd]+1);

        }
    }    


    ////////////// Batchnorm + Relu of Conv 0
    Conv_BatchNorm_Relu(conv_out, h_1, 
                    gnn_node_batch_norms_0_weight, gnn_node_batch_norms_0_bias,
                    gnn_node_batch_norms_0_running_mean, gnn_node_batch_norms_0_running_var, 
                    num_of_nodes);

}




void CONV_1(int* node_feature, int* edge_list, int* edge_attr, int num_of_nodes, int num_of_edges)
{
    //printf("\n---- Computing CONV 1 ----\n");
    ////////////// Embedding: compute edge embedding
    memset(e_1, 0, MAX_EDGE * EMB_DIM * sizeof(float));
    for(int e = 0; e < num_of_edges; e++) {
        for(int ef = 0; ef < EDGE_ATTR; ef++) {
            int e_f = edge_attr[e * EDGE_ATTR + ef];
            for(int dim = 0; dim < EMB_DIM; dim++) {
                float emb_value = 0;
                switch (ef) {
                case 0:
                    emb_value = gnn_node_convs_1_bond_encoder_bond_embedding_list_0_weight[e_f][dim];
                    break;
                case 1:
                    emb_value = gnn_node_convs_1_bond_encoder_bond_embedding_list_1_weight[e_f][dim];
                    break;
                case 2:
                    emb_value = gnn_node_convs_1_bond_encoder_bond_embedding_list_2_weight[e_f][dim];
                    break;
                }
                e_1[e][dim] += emb_value;
            }   
        }
    }
    //linear,        x = self.linear(x)
    memset(linear_out, 0, MAX_NODE * EMB_DIM * sizeof(float));
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_out = 0; dim_out < MLP_0_OUT; dim_out++) {
            linear_out[nd][dim_out] = gnn_node_convs_1_bias[dim_out];
            for(int dim_in = 0; dim_in < MLP_0_IN; dim_in++) {
                linear_out[nd][dim_out] += h_1[nd][dim_in] * gnn_node_convs_1_weight[dim_out][dim_in];
            }
        }
    }

    ////////////// Message Passing
    message_passing(e_1, linear_out, edge_list, num_of_nodes, num_of_edges);

    memset(conv_out, 0, MAX_NODE * EMB_DIM * sizeof(float));

    //return self.propagate(edge_index, x=x, edge_attr = edge_embedding, norm=norm) + F.relu(x + self.root_emb.weight) * 1./deg.view(-1,1)
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim = 0; dim < EMB_DIM; dim++) {
            if((linear_out[nd][dim] + gnn_node_convs_1_root_emb_weight[dim]) < 0)
                conv_out[nd][dim] = message[nd][dim];
            else
            conv_out[nd][dim] = message[nd][dim] +  (linear_out[nd][dim] + gnn_node_convs_1_root_emb_weight[dim])/(deg[nd]+1);
        }
    }   
    ////////////// Batchnorm + Relu of Conv 1
    Conv_BatchNorm_Relu(conv_out, h_2, 
                    gnn_node_batch_norms_1_weight, gnn_node_batch_norms_1_bias,
                    gnn_node_batch_norms_1_running_mean, gnn_node_batch_norms_1_running_var, 
                    num_of_nodes);


}




void CONV_2(int* node_feature, int* edge_list, int* edge_attr, int num_of_nodes, int num_of_edges)
{
    //printf("\n---- Computing CONV 2 ----\n");
    ////////////// Embedding: compute edge embedding
    memset(e_2, 0, MAX_EDGE * EMB_DIM * sizeof(float));
    for(int e = 0; e < num_of_edges; e++) {
        for(int ef = 0; ef < EDGE_ATTR; ef++) {
            int e_f = edge_attr[e * EDGE_ATTR + ef];
            for(int dim = 0; dim < EMB_DIM; dim++) {
                float emb_value = 0;
                switch (ef) {
                case 0:
                    emb_value = gnn_node_convs_2_bond_encoder_bond_embedding_list_0_weight[e_f][dim];
                    break;
                case 1:
                    emb_value = gnn_node_convs_2_bond_encoder_bond_embedding_list_1_weight[e_f][dim];
                    break;
                case 2:
                    emb_value = gnn_node_convs_2_bond_encoder_bond_embedding_list_2_weight[e_f][dim];
                    break;
                }
                e_2[e][dim] += emb_value;
            }   
        }
    }
        //linear,        x = self.linear(x)
    memset(linear_out, 0, MAX_NODE * EMB_DIM * sizeof(float));
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_out = 0; dim_out < MLP_0_OUT; dim_out++) {
            linear_out[nd][dim_out] = gnn_node_convs_2_bias[dim_out];
            for(int dim_in = 0; dim_in < MLP_0_IN; dim_in++) {
                linear_out[nd][dim_out] += h_2[nd][dim_in] * gnn_node_convs_2_weight[dim_out][dim_in];
            }
        }
    }

    ////////////// Message Passing
    message_passing(e_2, linear_out, edge_list, num_of_nodes, num_of_edges);

        memset(conv_out, 0, MAX_NODE * EMB_DIM * sizeof(float));
    //return self.propagate(edge_index, x=x, edge_attr = edge_embedding, norm=norm) + F.relu(x + self.root_emb.weight) * 1./deg.view(-1,1)
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim = 0; dim < EMB_DIM; dim++) {
            if((linear_out[nd][dim] + gnn_node_convs_2_root_emb_weight[dim]) < 0)
                conv_out[nd][dim] = message[nd][dim];
            else
            conv_out[nd][dim] = message[nd][dim] +  (linear_out[nd][dim] + gnn_node_convs_2_root_emb_weight[dim])/(deg[nd]+1);
        }
    }   
    ////////////// Batchnorm + Relu of Conv 2
    Conv_BatchNorm_Relu(conv_out, h_3, 
                    gnn_node_batch_norms_2_weight, gnn_node_batch_norms_2_bias,
                    gnn_node_batch_norms_2_running_mean, gnn_node_batch_norms_2_running_var, 
                    num_of_nodes);


}





void CONV_3(int* node_feature, int* edge_list, int* edge_attr, int num_of_nodes, int num_of_edges)
{
    //printf("\n---- Computing CONV 3 ----\n");
    ////////////// Embedding: compute edge embedding
    memset(e_3, 0, MAX_EDGE * EMB_DIM * sizeof(float));
    for(int e = 0; e < num_of_edges; e++) {
        for(int ef = 0; ef < EDGE_ATTR; ef++) {
            int e_f = edge_attr[e * EDGE_ATTR + ef];
            for(int dim = 0; dim < EMB_DIM; dim++) {
                float emb_value = 0;
                switch (ef) {
                case 0:
                    emb_value = gnn_node_convs_3_bond_encoder_bond_embedding_list_0_weight[e_f][dim];
                    break;
                case 1:
                    emb_value = gnn_node_convs_3_bond_encoder_bond_embedding_list_1_weight[e_f][dim];
                    break;
                case 2:
                    emb_value = gnn_node_convs_3_bond_encoder_bond_embedding_list_2_weight[e_f][dim];
                    break;
                }
                e_3[e][dim] += emb_value;
            }   
        }
    }

        //linear,        x = self.linear(x)
    memset(linear_out, 0, MAX_NODE * EMB_DIM * sizeof(float));
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_out = 0; dim_out < MLP_0_OUT; dim_out++) {
            linear_out[nd][dim_out] = gnn_node_convs_3_bias[dim_out];
            for(int dim_in = 0; dim_in < MLP_0_IN; dim_in++) {
                linear_out[nd][dim_out] += h_3[nd][dim_in] * gnn_node_convs_3_weight[dim_out][dim_in];
            }
        }
    }

    ////////////// Message Passing
    message_passing(e_3, linear_out, edge_list, num_of_nodes, num_of_edges);
    memset(conv_out, 0, MAX_NODE * EMB_DIM * sizeof(float));
    //return self.propagate(edge_index, x=x, edge_attr = edge_embedding, norm=norm) + F.relu(x + self.root_emb.weight) * 1./deg.view(-1,1)
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim = 0; dim < EMB_DIM; dim++) {
            if((linear_out[nd][dim] + gnn_node_convs_3_root_emb_weight[dim]) < 0)
                conv_out[nd][dim] = message[nd][dim];
            else
            conv_out[nd][dim] = message[nd][dim] +  (linear_out[nd][dim] + gnn_node_convs_3_root_emb_weight[dim])/(deg[nd]+1);
        }
    }   
    ////////////// Batchnorm + Relu of Conv 3
    Conv_BatchNorm_Relu(conv_out, h_4, 
                    gnn_node_batch_norms_3_weight, gnn_node_batch_norms_3_bias,
                    gnn_node_batch_norms_3_running_mean, gnn_node_batch_norms_3_running_var, 
                    num_of_nodes);


}




void CONV_4(int* node_feature, int* edge_list, int* edge_attr, int num_of_nodes, int num_of_edges)
{
    //printf("\n---- Computing CONV 4 ----\n");
    ////////////// Embedding: compute edge embedding
    memset(e_4, 0, MAX_EDGE * EMB_DIM * sizeof(float));
    for(int e = 0; e < num_of_edges; e++) {
        for(int ef = 0; ef < EDGE_ATTR; ef++) {
            int e_f = edge_attr[e * EDGE_ATTR + ef];
            for(int dim = 0; dim < EMB_DIM; dim++) {
                float emb_value = 0;
                switch (ef) {
                case 0:
                    emb_value = gnn_node_convs_4_bond_encoder_bond_embedding_list_0_weight[e_f][dim];
                    break;
                case 1:
                    emb_value = gnn_node_convs_4_bond_encoder_bond_embedding_list_1_weight[e_f][dim];
                    break;
                case 2:
                    emb_value = gnn_node_convs_4_bond_encoder_bond_embedding_list_2_weight[e_f][dim];
                    break;
                }
                e_4[e][dim] += emb_value;
            }   
        }
    }

    //linear,        x = self.linear(x)
    memset(linear_out, 0, MAX_NODE * EMB_DIM * sizeof(float));
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_out = 0; dim_out < MLP_0_OUT; dim_out++) {
            linear_out[nd][dim_out] = gnn_node_convs_4_bias[dim_out];
            for(int dim_in = 0; dim_in < MLP_0_IN; dim_in++) {
                linear_out[nd][dim_out] += h_4[nd][dim_in] * gnn_node_convs_4_weight[dim_out][dim_in];
            }
        }
    }

    ////////////// Message Passing
    message_passing(e_4, linear_out, edge_list, num_of_nodes, num_of_edges);
        memset(conv_out, 0, MAX_NODE * EMB_DIM * sizeof(float));

    //return self.propagate(edge_index, x=x, edge_attr = edge_embedding, norm=norm) + F.relu(x + self.root_emb.weight) * 1./deg.view(-1,1)
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim = 0; dim < EMB_DIM; dim++) {
            if((linear_out[nd][dim] + gnn_node_convs_4_root_emb_weight[dim]) < 0)
                conv_out[nd][dim] = message[nd][dim];
            else
            conv_out[nd][dim] = message[nd][dim] +  (linear_out[nd][dim] + gnn_node_convs_4_root_emb_weight[dim])/(deg[nd]+1);
        }
    }   
    ////////////// Batchnorm + Relu of Conv 4
    Conv_BatchNorm_Relu(conv_out, h_5, 
                    gnn_node_batch_norms_4_weight, gnn_node_batch_norms_4_bias,
                    gnn_node_batch_norms_4_running_mean, gnn_node_batch_norms_4_running_var, 
                    num_of_nodes, true);


}



void GCN_compute_one_graph(int* node_feature, int* edge_list, int* edge_attr, int* graph_attr)
{
    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];


    printf("Computing GCN ...\n");

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
    memset(deg, 0, MAX_NODE * sizeof(int));
    for (int e = 0; e < num_of_edges; e++)
    {
        int u = edge_list[e*2];
        deg[u]++;
    }

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
