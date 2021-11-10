#include "dcl.h"
//#define _PRINT_

float h_graph[MAX_NODE];
float task[NUM_TASK];

int connectivity_mask[MAX_NODE][MAX_NODE];
float nodes_features_proj[MAX_NODE][MAX_NODE][MAX_NODE];
float scores_source[MAX_NODE][MAX_NODE][1];
float scores_target[MAX_NODE][1][MAX_NODE];
float all_scores[MAX_NODE][MAX_NODE][MAX_NODE];
float all_attention_coefficients[MAX_NODE][MAX_NODE][MAX_NODE];
float attention_coefficients_sum[MAX_NODE][MAX_NODE];
float out_nodes_features[MAX_NODE][MAX_NODE][MAX_NODE];
float out_nodes_features_skip_concat_bias[MAX_NODE][MAX_NODE];

void CONV(int* in_nodes_feature, int num_of_nodes, int num_of_edges, int num_in_features, int num_out_features, int num_of_heads, int layer)
{
    //printf("\n---- Computing CONV 0 ----\n");

    // nodes_features_proj = self.linear_proj(in_nodes_features).view(-1, self.num_of_heads, self.num_out_features)
    memset(nodes_features_proj, 0, MAX_NODE * MAX_NODE * MAX_NODE * sizeof(float));
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_out = 0; dim_out < num_of_heads * num_out_features; dim_out++) {
            for(int dim_in = 0; dim_in < num_in_features; dim_in++) {
                switch(layer) {
                    case 0:
                        nodes_features_proj[nd][dim_out / num_out_features][dim_out % num_out_features] += out_nodes_features_skip_concat_bias[nd][dim_in] * gat_net_0_linear_proj_weight[dim_out][dim_in];
                        break;
                    case 1:
                        nodes_features_proj[nd][dim_out / num_out_features][dim_out % num_out_features] += out_nodes_features_skip_concat_bias[nd][dim_in] * gat_net_1_linear_proj_weight[dim_out][dim_in];
                        break;
                    case 2:
                        nodes_features_proj[nd][dim_out / num_out_features][dim_out % num_out_features] += out_nodes_features_skip_concat_bias[nd][dim_in] * gat_net_2_linear_proj_weight[dim_out][dim_in];
                        break;
                    case 3:
                        nodes_features_proj[nd][dim_out / num_out_features][dim_out % num_out_features] += out_nodes_features_skip_concat_bias[nd][dim_in] * gat_net_3_linear_proj_weight[dim_out][dim_in];
                        break;
                    case 4:
                        nodes_features_proj[nd][dim_out / num_out_features][dim_out % num_out_features] += out_nodes_features_skip_concat_bias[nd][dim_in] * gat_net_4_linear_proj_weight[dim_out][dim_in];
                        break;
                }
            }
        }
    }

    // scores_source = torch.sum((nodes_features_proj * self.scoring_fn_source), dim=-1, keepdim=True).transpose(0, 1)
    // shape = (N, NH, FOUT) * (1, NH, FOUT) -> (N, NH, 1) OR (NH, N, 1) -> scores_source
    memset(scores_source, 0, MAX_NODE * MAX_NODE * MAX_NODE * sizeof(float));
    for(int nh = 0; nh < num_of_heads; nh++) {
        for(int n = 0; n < num_of_nodes; n++) {
            for(int fout = 0; fout < num_out_features; fout++) {
                switch(layer) {
                    case 0:
                        scores_source[nh][n][0] += nodes_features_proj[n][nh][fout] * gat_net_0_scoring_fn_source[0][nh][fout];
                        break;
                    case 1:
                        scores_source[nh][n][0] += nodes_features_proj[n][nh][fout] * gat_net_1_scoring_fn_source[0][nh][fout];                        
                        break;
                    case 2:
                        scores_source[nh][n][0] += nodes_features_proj[n][nh][fout] * gat_net_2_scoring_fn_source[0][nh][fout];                        
                        break;
                    case 3:
                        scores_source[nh][n][0] += nodes_features_proj[n][nh][fout] * gat_net_3_scoring_fn_source[0][nh][fout];                        
                        break;
                    case 4:
                        scores_source[nh][n][0] += nodes_features_proj[n][nh][fout] * gat_net_4_scoring_fn_source[0][nh][fout];
                        break;
                }
            }
        }
    }
    
    // scores_target = torch.sum((nodes_features_proj * self.scoring_fn_target), dim=-1, keepdim=True).permute(1, 2, 0)
    // shape = (N, NH, FOUT) * (1, NH, FOUT) -> (N, NH, 1) OR (NH, 1, N) -> scores_target
    memset(scores_target, 0, MAX_NODE * MAX_NODE * MAX_NODE * sizeof(float));
    for(int nh = 0; nh < num_of_heads; nh++) {
        for(int n = 0; n < num_of_nodes; n++) {
            for(int fout = 0; fout < num_out_features; fout++) {
                switch(layer) {
                    case 0:
                        scores_target[nh][0][n] += nodes_features_proj[n][nh][fout] * gat_net_0_scoring_fn_target[0][nh][fout];
                        break;
                    case 1:
                        scores_target[nh][0][n] += nodes_features_proj[n][nh][fout] * gat_net_1_scoring_fn_target[0][nh][fout];
                        break;
                    case 2:
                        scores_target[nh][0][n] += nodes_features_proj[n][nh][fout] * gat_net_2_scoring_fn_target[0][nh][fout];
                        break;
                    case 3:
                        scores_target[nh][0][n] += nodes_features_proj[n][nh][fout] * gat_net_3_scoring_fn_target[0][nh][fout];
                        break;
                    case 4:
                        scores_target[nh][0][n] += nodes_features_proj[n][nh][fout] * gat_net_4_scoring_fn_target[0][nh][fout];
                        break;
                }
            }
        }
    }

    // all_scores = self.leakyReLU(scores_source + scores_target)
    for (int nh = 0; nh < num_of_heads; nh++) {
        for (int n1 = 0; n1 < num_of_nodes; n1++) {
            for (int n2 = 0; n2 < num_of_nodes; n2++) {
                float temp = scores_source[nh][n1][0] + scores_target[nh][0][n2];
                float max = (0 < temp) ? temp : 0;
                float min = (0 > temp) ? temp : 0;
                all_scores[nh][n1][n2] = max + 0.2 * min;
            }
        }
    }

    // all_attention_coefficients = self.softmax(all_scores + connectivity_mask)
    memset(attention_coefficients_sum, 0, MAX_NODE * MAX_NODE * sizeof(float));
    for (int nh = 0; nh < num_of_heads; nh++) {
        for (int n1 = 0; n1 < num_of_nodes; n1++) {
            for (int n2 = 0; n2 < num_of_nodes; n2++) {
                if (connectivity_mask[n1][n2] == INT_MIN)
                    all_scores[nh][n1][n2] = 0.0f;
                else
                    attention_coefficients_sum[nh][n1] += exp(all_scores[nh][n1][n2]);
            }
        }
    }

    // softmax
    for (int nh = 0; nh < num_of_heads; nh++) {
        for (int n1 = 0; n1 < num_of_nodes; n1++) {
            for (int n2 = 0; n2 < num_of_nodes; n2++) {
                if (all_scores[nh][n1][n2] != 0.0f)
                    all_attention_coefficients[nh][n1][n2] = exp(all_scores[nh][n1][n2]) / attention_coefficients_sum[nh][n1];
                else
                    all_attention_coefficients[nh][n1][n2] = 0.0f;
            }
        }
    }

    // batch matrix multiply, shape = (NH, N, N) * (NH, N, FOUT) -> (NH, N, FOUT)
    // shape = (N, NH, FOUT)
    //
    // out_nodes_features = torch.bmm(all_attention_coefficients, nodes_features_proj.transpose(0, 1))
    // out_nodes_features = out_nodes_features.permute(1, 0, 2)
    memset(out_nodes_features, 0, MAX_NODE * MAX_NODE * MAX_NODE * sizeof(float));
    for (int nh = 0; nh < num_of_heads; nh++) {
        for (int n1 = 0; n1 < num_of_nodes; n1++) {  
            for (int fout = 0; fout < num_out_features; fout++) {
                // out_nodes_features[nh][n1][fout] = 0.0f;
                for (int n2 = 0; n2 < num_of_nodes; n2++) {
                    out_nodes_features[n1][nh][fout] += all_attention_coefficients[nh][n1][n2] * nodes_features_proj[n2][nh][fout];
                }
            }
        }
    }
    
    // out_nodes_features = self.skip_concat_bias(all_attention_coefficients, in_nodes_features, out_nodes_features)
    // if out_nodes_features.shape[-1] == in_nodes_features.shape[-1]:  # if FIN == FOUT
    //     # unsqueeze does this: (N, FIN) -> (N, 1, FIN), out features are (N, NH, FOUT) so 1 gets broadcast to NH
    //     # thus we're basically copying input vectors NH times and adding to processed vectors
    //     out_nodes_features += in_nodes_features.unsqueeze(1)
    // else:
    //     # FIN != FOUT so we need to project input feature vectors into dimension that can be added to output
    //     # feature vectors. skip_proj adds lots of additional capacity which may cause overfitting.
    //     out_nodes_features += self.skip_proj(in_nodes_features).view(-1, self.num_of_heads, self.num_out_features)
    if (num_in_features == num_out_features) {

        // out_nodes_features += in_nodes_features.unsqueeze(1)
        for (int n1 = 0; n1 < num_of_nodes; n1++) { 
            for (int nh = 0; nh < num_of_heads; nh++) {
                for (int fout = 0; fout < num_out_features; fout++) {
                    out_nodes_features[n1][nh][fout] += out_nodes_features_skip_concat_bias[n1][fout];
                }
            }
        }
    } else {
        // out_nodes_features += self.skip_proj(in_nodes_features).view(-1, self.num_of_heads, self.num_out_features)
        for(int nd = 0; nd < num_of_nodes; nd++) {
            for(int dim_out = 0; dim_out < num_of_heads * num_out_features; dim_out++) {
                for(int dim_in = 0; dim_in < num_in_features; dim_in++) {
                    switch(layer) {
                        case 0:
                            out_nodes_features[nd][dim_out / num_out_features][dim_out % num_out_features] += out_nodes_features_skip_concat_bias[nd][dim_in] * gat_net_0_skip_proj_weight[dim_out][dim_in];
                            break;
                        case 1:
                            out_nodes_features[nd][dim_out / num_out_features][dim_out % num_out_features] += out_nodes_features_skip_concat_bias[nd][dim_in] * gat_net_1_skip_proj_weight[dim_out][dim_in];
                            break;
                        case 2:
                            out_nodes_features[nd][dim_out / num_out_features][dim_out % num_out_features] += out_nodes_features_skip_concat_bias[nd][dim_in] * gat_net_2_skip_proj_weight[dim_out][dim_in];
                            break;
                        case 3:
                            out_nodes_features[nd][dim_out / num_out_features][dim_out % num_out_features] += out_nodes_features_skip_concat_bias[nd][dim_in] * gat_net_3_skip_proj_weight[dim_out][dim_in];
                            break;
                        case 4:
                            out_nodes_features[nd][dim_out / num_out_features][dim_out % num_out_features] += out_nodes_features_skip_concat_bias[nd][dim_in] * gat_net_4_skip_proj_weight[dim_out][dim_in];
                            break;
                    }
                }
            }
        }
    }
    if (layer == 4) {
        // not concat -> out_nodes_features = out_nodes_features.mean(dim=self.head_dim)
        memset(out_nodes_features_skip_concat_bias, 0, MAX_NODE * MAX_NODE * sizeof(float));
        for(int nd = 0; nd < num_of_nodes; nd++) {
            for(int fout = 0; fout < num_out_features; fout++) {
                float temp = 0.0f;
                for (int nh = 0; nh < num_of_heads; nh++) {
                    temp += out_nodes_features[nd][nh][fout];
                }
                out_nodes_features_skip_concat_bias[nd][fout] = temp / num_of_heads;
            }
        }
    } else {
        // concat -> out_nodes_features = out_nodes_features.view(-1, self.num_of_heads * self.num_out_features)
        memset(out_nodes_features_skip_concat_bias, 0, MAX_NODE * MAX_NODE * sizeof(float));
        for(int nd = 0; nd < num_of_nodes; nd++) {
            for(int dim_out = 0; dim_out < num_of_heads * num_out_features; dim_out++) {
                out_nodes_features_skip_concat_bias[nd][dim_out] = out_nodes_features[nd][dim_out / num_out_features][dim_out % num_out_features];
            }
        }

        // self.activation(out_nodes_features)
        for(int nd = 0; nd < num_of_nodes; nd++) {
            for(int dim_out = 0; dim_out < num_of_heads * num_out_features; dim_out++) {
                if (out_nodes_features_skip_concat_bias[nd][dim_out] <= 0) {
                    out_nodes_features_skip_concat_bias[nd][dim_out] = exp(out_nodes_features_skip_concat_bias[nd][dim_out]) - 1.0f;
                }
            }
        }
    }
    
}


void GAT_compute_one_graph(int* node_feature, int* edge_list, int* graph_attr, int* num_heads_per_layer, int* num_features_per_layer)
{
    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];


    printf("Computing GAT ...\n");

    ////////////// Compute connectivity_mask (adjacency matrix)
    memset(connectivity_mask, 0, MAX_NODE * MAX_NODE * sizeof(int));
    for (int i = 0; i < num_of_edges; i++) {
        connectivity_mask[edge_list[i * 2]][edge_list[i * 2 + 1]]++;
    }

    for (int i = 0; i < num_of_nodes; i++) {
        connectivity_mask[i][i]++;
    }

    for (int i = 0; i < num_of_nodes; i++) {
        for (int j = 0; j < num_of_nodes; j++) {
            if (connectivity_mask[i][j] == 0) {
                connectivity_mask[i][j] = INT_MIN;
            } else if (connectivity_mask[i][j] > 0) {
                connectivity_mask[i][j] = 0;
            }
        } 
    }

    ////////////// Move node_feature //////////////////////
    memset(out_nodes_features_skip_concat_bias, 0, MAX_NODE * MAX_NODE * sizeof(float));
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_in = 0; dim_in < num_features_per_layer[0] * num_heads_per_layer[0]; dim_in++) {
            out_nodes_features_skip_concat_bias[nd][dim_in] = node_feature[nd * num_features_per_layer[0] * num_heads_per_layer[0] + dim_in];
        }
    }
    

#ifdef _PRINT_
    printf("\nAdjacency matrix:\n");
    for (int i = 0; i < num_of_nodes; i++) {
        for (int j = 0; j < num_of_nodes; j++) {
            printf("%d ", adj_matrix[i][j]);
        }
        printf("\n");
    }
#endif

    ////////////// CONV 0 //////////////////////////////////
    CONV(node_feature, num_of_nodes, num_of_edges, num_features_per_layer[0] * num_heads_per_layer[0], num_features_per_layer[1], num_heads_per_layer[1], 0);
    ////////////// CONV 1 //////////////////////////////////
    CONV(node_feature, num_of_nodes, num_of_edges, num_features_per_layer[1] * num_heads_per_layer[1], num_features_per_layer[2], num_heads_per_layer[2], 1);
    ////////////// CONV 2 //////////////////////////////////
    CONV(node_feature, num_of_nodes, num_of_edges, num_features_per_layer[2] * num_heads_per_layer[2], num_features_per_layer[3], num_heads_per_layer[3], 2);
    ////////////// CONV 3 //////////////////////////////////
    CONV(node_feature, num_of_nodes, num_of_edges, num_features_per_layer[3] * num_heads_per_layer[3], num_features_per_layer[4], num_heads_per_layer[4], 3);
    ////////////// CONV 4 //////////////////////////////////
    CONV(node_feature, num_of_nodes, num_of_edges, num_features_per_layer[4] * num_heads_per_layer[4], num_features_per_layer[5], num_heads_per_layer[5], 4);
    
    ////////////// Global mean pooling //////////////////////
    // node representation is out_nodes_features_skip_concat_bias
    memset(h_graph, 0, num_features_per_layer[2] * sizeof(float));
    for(int dim = 0; dim < num_features_per_layer[2]; dim++) {
        for(int nd = 0; nd < num_of_nodes; nd++) {
            h_graph[dim] += out_nodes_features_skip_concat_bias[nd][dim];
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
        for(int dim = 0; dim < num_features_per_layer[2]; dim++) {
            task[tsk] += h_graph[dim] * graph_pred_linear_weight[tsk][dim];
        }
    }

//#ifdef _PRINT_
    printf("Final graph prediction:\n");
    for(int tsk = 0; tsk < NUM_TASK; tsk++) {
        printf("%.8f\n", task[tsk]);
    }
    printf("\nGIN computation done.\n");
//#endif

}
