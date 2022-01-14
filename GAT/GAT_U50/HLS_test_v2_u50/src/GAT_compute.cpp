#include "dcl.hpp"
//#define _PRINT_

int edge_list[MAX_EDGE * 2];

FM_TYPE h_graph[MAX_NODE];

int connectivity_mask[MAX_NODE][MAX_NODE];
int connectivity_mask_final[MAX_NODE][MAX_NODE];
FM_TYPE nodes_features_proj[MAX_NODE][HEAD_NUM * FEATURE_OUT];
FM_TYPE scores_source[HEAD_NUM][MAX_NODE][1];
FM_TYPE scores_target[HEAD_NUM][1][MAX_NODE];
FM_TYPE all_scores[HEAD_NUM][MAX_NODE][MAX_NODE];
FM_TYPE all_attention_coefficients[HEAD_NUM][MAX_NODE][MAX_NODE];
FM_TYPE attention_coefficients_sum[HEAD_NUM][MAX_NODE];
FM_TYPE out_nodes_features[MAX_NODE][HEAD_NUM * FEATURE_OUT];
FM_TYPE out_nodes_features_prep[MAX_NODE][HEAD_NUM * FEATURE_OUT];
FM_TYPE out_nodes_features_skip_concat_bias[MAX_NODE][HEAD_NUM * FEATURE_OUT];

WT_TYPE pred_linear_weight[NUM_TASK][FEATURE_OUT];
WT_TYPE pred_linear_bias[NUM_TASK];
WT_TYPE scoring_fn_target[LAYER_NUM][HEAD_NUM][FEATURE_OUT];
WT_TYPE scoring_fn_source[LAYER_NUM][HEAD_NUM][FEATURE_OUT];
WT_TYPE linear_proj_weight[LAYER_NUM][HEAD_NUM * FEATURE_OUT][HEAD_NUM * FEATURE_OUT];
WT_TYPE skip_proj_weight[LAYER_NUM][HEAD_NUM * FEATURE_OUT][HEAD_NUM * FEATURE_OUT];

void compute_nodes_features_proj(int num_of_nodes, int num_of_edges, int num_in_features, int num_out_features, int num_of_heads, int layer) {

#pragma HLS inline off
#pragma HLS array_partition variable=out_nodes_features_skip_concat_bias dim=2 complete
#pragma HLS array_partition variable=linear_proj_weight dim=3 complete
#pragma HLS array_partition variable=nodes_features_proj dim=2 complete

    // nodes_features_proj = self.linear_proj(in_nodes_features).view(-1, self.num_of_heads, self.num_out_features)
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_out = 0; dim_out < num_of_heads * num_out_features; dim_out++) {
            FM_TYPE sum = 0;
            for(int dim_in = 0; dim_in < num_of_heads * num_out_features; dim_in++) {
                sum += out_nodes_features_skip_concat_bias[nd][dim_in] * linear_proj_weight[layer][dim_out][dim_in];
            }
            nodes_features_proj[nd][dim_out] = sum;
        }
    }
}

void compute_scores_source(int num_of_nodes, int num_of_edges, int num_in_features, int num_out_features, int num_of_heads, int layer) {

#pragma HLS inline off
#pragma HLS array_partition variable=scoring_fn_source dim=3 complete
//#pragma HLS array_partition variable=scores_source dim=2 complete

    // scores_source = torch.sum((nodes_features_proj * self.scoring_fn_source), dim=-1, keepdim=True).transpose(0, 1)
    // shape = (N, NH, FOUT) * (1, NH, FOUT) -> (N, NH, 1) OR (NH, N, 1) -> scores_source
    for(int nh = 0; nh < num_of_heads; nh++) {
        for(int n = 0; n < num_of_nodes; n++) {
            FM_TYPE sum = 0;
            for(int fout = 0; fout < FEATURE_OUT; fout++) {
                sum += nodes_features_proj[n][nh * num_out_features + fout] * scoring_fn_source[layer][nh][fout];      
            }
            scores_source[nh][n][0] = sum;
        }
    }
}

void compute_scores_target(int num_of_nodes, int num_of_edges, int num_in_features, int num_out_features, int num_of_heads, int layer) {

#pragma HLS inline off
#pragma HLS array_partition variable=scoring_fn_target dim=3 complete
    // scores_target = torch.sum((nodes_features_proj * self.scoring_fn_target), dim=-1, keepdim=True).permute(1, 2, 0)
    // shape = (N, NH, FOUT) * (1, NH, FOUT) -> (N, NH, 1) OR (NH, 1, N) -> scores_target
    for(int nh = 0; nh < num_of_heads; nh++) {
        for(int n = 0; n < num_of_nodes; n++) {
            FM_TYPE sum = 0;
            for(int fout = 0; fout < FEATURE_OUT; fout++) {
                sum += nodes_features_proj[n][nh * num_out_features + fout] * scoring_fn_target[layer][nh][fout];
            }
            scores_target[nh][0][n] = sum;
        }
    }
}

void compute_all_scores(int num_of_nodes, int num_of_edges, int num_in_features, int num_out_features, int num_of_heads, int layer) {

#pragma HLS inline off
    // all_scores = self.leakyReLU(scores_source + scores_target)

    for (int nh = 0; nh < num_of_heads; nh++) {
        for (int n1 = 0; n1 < num_of_nodes; n1++) {
            for (int n2 = 0; n2 < num_of_nodes; n2++) {
#pragma HLS PIPELINE
                FM_TYPE temp = scores_source[nh][n1][0] + scores_target[nh][0][n2];
                FM_TYPE max = ((FM_TYPE)0 < (FM_TYPE)temp) ? temp : (FM_TYPE)0;
                FM_TYPE min = ((FM_TYPE)0 > (FM_TYPE)temp) ? temp : (FM_TYPE)0;
                all_scores[nh][n1][n2] = max + (FM_TYPE)0.2 * min;
            }
        }
    }
}

void compute_attention_coefficients_sum(int num_of_nodes, int num_of_edges, int num_in_features, int num_out_features, int num_of_heads, int layer) {

#pragma HLS inline off
    // all_attention_coefficients = self.softmax(all_scores + connectivity_mask)
    for (int nh = 0; nh < num_of_heads; nh++) {
        for (int n1 = 0; n1 < num_of_nodes; n1++) {
            FM_TYPE sum = 0;
            for (int n2 = 0; n2 < num_of_nodes; n2++) {
#pragma HLS PIPELINE
                if (connectivity_mask_final[n1][n2] == INT_MIN) {
                    all_scores[nh][n1][n2] = 0;
                } else {
                    sum += hls::exp(all_scores[nh][n1][n2]);
                }
            }
            attention_coefficients_sum[nh][n1] = sum;
        }
    }
}

void compute_all_attention_coefficients(int num_of_nodes, int num_of_edges, int num_in_features, int num_out_features, int num_of_heads, int layer) {

#pragma HLS inline off
//#pragma HLS array_partition variable=all_attention_coefficients dim=3 complete
    // softmax

    for (int nh = 0; nh < num_of_heads; nh++) {
        for (int n1 = 0; n1 < num_of_nodes; n1++) {
            for (int n2 = 0; n2 < num_of_nodes; n2++) {
#pragma HLS PIPELINE
                if (all_scores[nh][n1][n2] != (FM_TYPE)0)
                    all_attention_coefficients[nh][n1][n2] = hls::exp(all_scores[nh][n1][n2]) / attention_coefficients_sum[nh][n1];
                else
                    all_attention_coefficients[nh][n1][n2] = 0;
            }
        }
    }
}

void compute_out_nodes_features(int num_of_nodes, int num_of_edges, int num_in_features, int num_out_features, int num_of_heads, int layer) {

#pragma HLS inline off
    // batch matrix multiply, shape = (NH, N, N) * (NH, N, FOUT) -> (NH, N, FOUT)
    // shape = (N, NH, FOUT)
    //
    // out_nodes_features = torch.bmm(all_attention_coefficients, nodes_features_proj.transpose(0, 1))
    // out_nodes_features = out_nodes_features.permute(1, 0, 2)
    for (int nh = 0; nh < num_of_heads; nh++) {
        for (int n1 = 0; n1 < num_of_nodes; n1++) {  
            for (int fout = 0; fout < num_out_features; fout++) {
#pragma HLS PIPELINE
                FM_TYPE sum = 0;
                for (int n2 = 0; n2 < num_of_nodes; n2++) {
                    sum += all_attention_coefficients[nh][n1][n2] * nodes_features_proj[n2][nh * num_out_features + fout];
                }
                out_nodes_features_prep[n1][nh * num_out_features + fout] = sum;
            }
        }
    }
}

void prepare_out_nodes_features(int num_of_nodes, int num_of_edges, int num_in_features, int num_out_features, int num_of_heads, int layer) {

#pragma HLS inline off
#pragma HLS array_partition variable=skip_proj_weight dim=3 complete
#pragma HLS array_partition variable=out_nodes_features dim=2 complete
#pragma HLS array_partition variable=out_nodes_features_prep dim=2 complete
    // out_nodes_features = self.skip_concat_bias(all_attention_coefficients, in_nodes_features, out_nodes_features)
    // else:
    //     # FIN != FOUT so we need to project input feature vectors into dimension that can be added to output
    //     # feature vectors. skip_proj adds lots of additional capacity which may cause overfitting.
    //     out_nodes_features += self.skip_proj(in_nodes_features).view(-1, self.num_of_heads, self.num_out_features)
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_out = 0; dim_out < num_of_heads * num_out_features; dim_out++) {
        	FM_TYPE sum = out_nodes_features_prep[nd][dim_out];
            for(int dim_in = 0; dim_in < num_of_heads * num_out_features; dim_in++) {
                sum += out_nodes_features_skip_concat_bias[nd][dim_in] * skip_proj_weight[layer][dim_out][dim_in];
            }
            out_nodes_features[nd][dim_out] = sum;
        }
    }
}

void compute_not_concat(int num_of_nodes, int num_of_edges, int num_in_features, int num_out_features, int num_of_heads, int layer) {

#pragma HLS inline off
    // not concat -> out_nodes_features = out_nodes_features.mean(dim=self.head_dim)
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int fout = 0; fout < num_out_features; fout++) {
            FM_TYPE sum = 0;
            for (int nh = 0; nh < HEAD_NUM; nh++) {
                sum += out_nodes_features[nd][nh * num_out_features + fout];
            }
            out_nodes_features_skip_concat_bias[nd][fout] = sum / (FM_TYPE)num_of_heads;
        }
    }
}

void compute_activation(int num_of_nodes, int num_of_edges, int num_in_features, int num_out_features, int num_of_heads, int layer) {

#pragma HLS inline off
    // self.activation(out_nodes_features)
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_out = 0; dim_out < num_of_heads * num_out_features; dim_out++) {
#pragma HLS unroll factor=4
            if (out_nodes_features[nd][dim_out] <= 0) {
            	FM_TYPE sum = hls::exp(out_nodes_features[nd][dim_out]) - (FM_TYPE)1;
                out_nodes_features_skip_concat_bias[nd][dim_out] = sum;
            } else {
                out_nodes_features_skip_concat_bias[nd][dim_out] = out_nodes_features[nd][dim_out];
            }
        }
    }
}

void CONV(int num_of_nodes, int num_of_edges, int num_in_features, int num_out_features, int num_of_heads, int layer)
{
#pragma HLS inline off
    compute_nodes_features_proj(num_of_nodes, num_of_edges, num_in_features, num_out_features, num_of_heads, layer);
    compute_scores_source(num_of_nodes, num_of_edges, num_in_features, num_out_features, num_of_heads, layer);
    compute_scores_target(num_of_nodes, num_of_edges, num_in_features, num_out_features, num_of_heads, layer);
    compute_all_scores(num_of_nodes, num_of_edges, num_in_features, num_out_features, num_of_heads, layer);
    compute_attention_coefficients_sum(num_of_nodes, num_of_edges, num_in_features, num_out_features, num_of_heads, layer);
    compute_all_attention_coefficients(num_of_nodes, num_of_edges, num_in_features, num_out_features, num_of_heads, layer);
    compute_out_nodes_features(num_of_nodes, num_of_edges, num_in_features, num_out_features, num_of_heads, layer);
    prepare_out_nodes_features(num_of_nodes, num_of_edges, num_in_features, num_out_features, num_of_heads, layer);
    
    if (layer == 4) {
        compute_not_concat(num_of_nodes, num_of_edges, num_in_features, num_out_features, num_of_heads, layer);
    } else {
        compute_activation(num_of_nodes, num_of_edges, num_in_features, num_out_features, num_of_heads, layer);
    }
}

void global_mean_pooling(int num_of_nodes, int num_features)
{
#pragma HLS inline off
	
    for(int dim = 0; dim < num_features; dim++) {
        FM_TYPE sum = 0;
        for(int nd = 0; nd < num_of_nodes; nd++) {
            sum += out_nodes_features_skip_concat_bias[nd][dim];
        }
        h_graph[dim] = sum / (FM_TYPE)num_of_nodes;
    }
}


void global_graph_prediction(FM_TYPE* task)
{
#pragma HLS inline off
    for(int tsk = 0; tsk < NUM_TASK; tsk++) {
        task[tsk] = pred_linear_bias[tsk];
        for(int dim = 0; dim < num_features_per_layer[5]; dim++) {
            task[tsk] += h_graph[dim] * pred_linear_weight[tsk][dim];
        }
    }
}

void load_weights_first_layer(int layer, FM_TYPE* gat_net_scoring_fn_target_fixed, FM_TYPE* gat_net_scoring_fn_source_fixed,
                                       FM_TYPE* gat_net_linear_proj_weight_fixed, FM_TYPE* gat_net_skip_proj_weight_fixed)
{
#pragma HLS inline off
    for (int i = 0; i < HEAD_NUM; i++) {
        for (int j = 0; j < FEATURE_OUT; j++) {
            scoring_fn_target[layer][i][j] = gat_net_scoring_fn_target_fixed[layer * HEAD_NUM * FEATURE_OUT + i * FEATURE_OUT + j];
        }
    }

    for (int i = 0; i < HEAD_NUM; i++) {
		for (int j = 0; j < FEATURE_OUT; j++) {
			scoring_fn_source[layer][i][j] = gat_net_scoring_fn_source_fixed[layer * HEAD_NUM * FEATURE_OUT + i * FEATURE_OUT + j];
		}
	}

    for (int i = 0; i < HEAD_NUM * FEATURE_OUT; i++) {
        for (int j = 0; j < HEAD_NUM * FEATURE_OUT; j++) {
            if (j < FEATURE_IN) {
                linear_proj_weight[layer][i][j] = gat_net_linear_proj_weight_fixed[layer * HEAD_NUM * FEATURE_OUT * FEATURE_IN + i * FEATURE_IN + j];
            } else {
                linear_proj_weight[layer][i][j] = 0;
            }
        }
    }

    for (int i = 0; i < HEAD_NUM * FEATURE_OUT; i++) {
        for (int j = 0; j < HEAD_NUM * FEATURE_OUT; j++) {
            if (j < FEATURE_IN) {
                skip_proj_weight[layer][i][j] = gat_net_skip_proj_weight_fixed[layer * HEAD_NUM * FEATURE_OUT * FEATURE_IN + i * FEATURE_IN + j];
            } else {
                skip_proj_weight[layer][i][j] = 0;
            }
        }
    }

}

void load_weights_one_layer(int layer, FM_TYPE* gat_net_scoring_fn_target_fixed, FM_TYPE* gat_net_scoring_fn_source_fixed,
                                       FM_TYPE* gat_net_linear_proj_weight_fixed, FM_TYPE* gat_net_skip_proj_weight_fixed)
{
#pragma HLS inline off
    for (int i = 0; i < HEAD_NUM; i++) {
        for (int j = 0; j < FEATURE_OUT; j++) {
            scoring_fn_target[layer][i][j] = gat_net_scoring_fn_target_fixed[layer * HEAD_NUM * FEATURE_OUT + i * FEATURE_OUT + j];
        }
    }

    for (int i = 0; i < HEAD_NUM; i++) {
		for (int j = 0; j < FEATURE_OUT; j++) {
			scoring_fn_source[layer][i][j] = gat_net_scoring_fn_source_fixed[layer * HEAD_NUM * FEATURE_OUT + i * FEATURE_OUT + j];
		}
	}

    for (int i = 0; i < HEAD_NUM * FEATURE_OUT; i++) {
        for (int j = 0; j < HEAD_NUM * FEATURE_OUT; j++) {
            linear_proj_weight[layer][i][j] = gat_net_linear_proj_weight_fixed[layer * HEAD_NUM * FEATURE_OUT * HEAD_NUM * FEATURE_OUT + i * HEAD_NUM * FEATURE_OUT + j];
        }
    }

    for (int i = 0; i < HEAD_NUM * FEATURE_OUT; i++) {
		for (int j = 0; j < HEAD_NUM * FEATURE_OUT; j++) {
			skip_proj_weight[layer][i][j] = gat_net_skip_proj_weight_fixed[layer * HEAD_NUM * FEATURE_OUT * HEAD_NUM * FEATURE_OUT + i * HEAD_NUM * FEATURE_OUT + j];
		}
	}

}

void load_misc_weights(
    WT_TYPE graph_pred_linear_weight_fixed[NUM_TASK * FEATURE_OUT],
    WT_TYPE graph_pred_linear_bias_fixed[NUM_TASK]
    )
{
#pragma HLS inline off
    for(int i = 0; i < NUM_TASK; i++) {
		pred_linear_bias[i] = graph_pred_linear_bias_fixed[i];
		for(int j = 0; j < FEATURE_OUT; j++ ) {
			pred_linear_weight[i][j] = graph_pred_linear_weight_fixed[i * FEATURE_OUT + j];
		}
	}
}

void load_graph(int* node_feature_in, int* edge_list_in, int num_of_nodes, int num_of_edges)
{
#pragma HLS inline off
    ////////////// Move node_feature //////////////////////
    for(int nd = 0; nd < num_of_nodes; nd++) {
        for(int dim_in = 0; dim_in < ND_FEATURE; dim_in++) {
            out_nodes_features_skip_concat_bias[nd][dim_in] = node_feature_in[nd * ND_FEATURE + dim_in];
        }
    }

    for(int i = 0; i < num_of_edges * 2; i++) {
        edge_list[i] = edge_list_in[i];
    }
}

void compute_connectivity_mask(int *edge_list, int num_of_nodes, int num_of_edges)
{
#pragma HLS inline off
//#pragma HLS array_partition variable=connectivity_mask_final dim=2 complete
    ////////////// Compute connectivity_mask (adjacency matrix)
	memset(connectivity_mask, 0, num_of_nodes * num_of_nodes * sizeof(int));
	/*
    for (int i = 0; i < num_of_nodes; i++) {
#pragma HLS PIPELINE
        for (int j = 0; j < num_of_nodes; j++) {
            connectivity_mask[i][j] = 0;
        }
    }
    */

    for (int i = 0; i < num_of_edges; i++) {
#pragma HLS pipeline II=3
        connectivity_mask[edge_list[i * 2]][edge_list[i * 2 + 1]]++;
    }

    for (int i = 0; i < num_of_nodes; i++) {
        connectivity_mask[i][i]++;
    }

    for (int i = 0; i < num_of_nodes; i++) {
        for (int j = 0; j < num_of_nodes; j++) {
            if (connectivity_mask[i][j] == 0) {
                connectivity_mask_final[i][j] = INT_MIN;
            } else if (connectivity_mask[i][j] > 0) {
 			   connectivity_mask_final[i][j] = 0;
 		   }
        } 
    }

}


extern "C" {
void GAT_compute_one_graph(
    int* node_feature_in, int* edge_list_in, int* graph_attr, FM_TYPE* task_tb,
    WT_TYPE graph_pred_linear_weight_fixed[NUM_TASK * FEATURE_OUT],
    WT_TYPE graph_pred_linear_bias_fixed[NUM_TASK],
    WT_TYPE gat_net_scoring_fn_target_fixed[LAYER_NUM * HEAD_NUM * FEATURE_OUT],
    WT_TYPE gat_net_scoring_fn_source_fixed[LAYER_NUM * HEAD_NUM * FEATURE_OUT],
    WT_TYPE gat_net_linear_proj_weight_fixed[LAYER_NUM * HEAD_NUM * FEATURE_OUT * HEAD_NUM * FEATURE_OUT],
    WT_TYPE gat_net_skip_proj_weight_fixed[LAYER_NUM * HEAD_NUM * FEATURE_OUT * HEAD_NUM * FEATURE_OUT]
    )
{
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS INTERFACE m_axi depth=100000 port=node_feature_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=edge_list_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=graph_attr offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=task_tb offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=graph_pred_linear_weight_fixed offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=graph_pred_linear_bias_fixed offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=gat_net_scoring_fn_target_fixed offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=gat_net_scoring_fn_source_fixed offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=gat_net_linear_proj_weight_fixed offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=gat_net_skip_proj_weight_fixed offset=slave bundle=mem

// bram - partition, uram - continuous
#pragma HLS bind_storage variable=edge_list type=RAM_2P impl=bram
#pragma HLS bind_storage variable=h_graph type=RAM_2P impl=bram
#pragma HLS bind_storage variable=connectivity_mask type=RAM_2P impl=bram
#pragma HLS bind_storage variable=connectivity_mask_final type=RAM_2P impl=bram
#pragma HLS bind_storage variable=nodes_features_proj type=RAM_2P impl=bram
#pragma HLS bind_storage variable=scores_source type=RAM_2P impl=bram
#pragma HLS bind_storage variable=scores_target type=RAM_2P impl=bram
#pragma HLS bind_storage variable=all_scores type=RAM_2P impl=bram
#pragma HLS bind_storage variable=all_attention_coefficients type=RAM_2P impl=bram
#pragma HLS bind_storage variable=attention_coefficients_sum type=RAM_2P impl=bram
#pragma HLS bind_storage variable=out_nodes_features type=RAM_2P impl=bram
#pragma HLS bind_storage variable=out_nodes_features_skip_concat_bias type=RAM_2P impl=bram


    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];
    int is_first = graph_attr[2];

    /*
	int num_of_nodes = 19; //19
	int num_of_edges = 40; //40
	int is_first = 1; 
	*/
    if (is_first) {
        ////////////// Load weights
        load_weights_first_layer(0, gat_net_scoring_fn_target_fixed, gat_net_scoring_fn_source_fixed, gat_net_linear_proj_weight_fixed, gat_net_skip_proj_weight_fixed);
		for(int layer = 1; layer < LAYER_NUM; layer++) {
			load_weights_one_layer(layer, gat_net_scoring_fn_target_fixed, gat_net_scoring_fn_source_fixed, gat_net_linear_proj_weight_fixed, gat_net_skip_proj_weight_fixed);
		}

		load_misc_weights(graph_pred_linear_weight_fixed, graph_pred_linear_bias_fixed);
    }

    ///////////// Load a new graph onto chip
    load_graph(node_feature_in, edge_list_in, num_of_nodes, num_of_edges);

    printf("Computing GAT ...\n");

    compute_connectivity_mask(edge_list, num_of_nodes, num_of_edges);
    
    ////////////// CONV 0 //////////////////////////////////
    CONV(num_of_nodes, num_of_edges, num_features_per_layer[0] * num_heads_per_layer[0], num_features_per_layer[1], num_heads_per_layer[1], 0);
    ////////////// CONV 1 //////////////////////////////////
    CONV(num_of_nodes, num_of_edges, num_features_per_layer[1] * num_heads_per_layer[1], num_features_per_layer[2], num_heads_per_layer[2], 1);
    ////////////// CONV 2 //////////////////////////////////
    CONV(num_of_nodes, num_of_edges, num_features_per_layer[2] * num_heads_per_layer[2], num_features_per_layer[3], num_heads_per_layer[3], 2);
    ////////////// CONV 3 //////////////////////////////////
    CONV(num_of_nodes, num_of_edges, num_features_per_layer[3] * num_heads_per_layer[3], num_features_per_layer[4], num_heads_per_layer[4], 3);
    ////////////// CONV 4 //////////////////////////////////
    CONV(num_of_nodes, num_of_edges, num_features_per_layer[4] * num_heads_per_layer[4], num_features_per_layer[5], num_heads_per_layer[5], 4);
    
    ////////////// Global mean pooling //////////////////////
    // node representation is out_nodes_features_skip_concat_bias
    global_mean_pooling(num_of_nodes, num_features_per_layer[2]);
    
    ////////////// Graph prediction linear ///////////////////
    global_graph_prediction(task_tb);

    printf("Final graph prediction:\n");
    for(int tsk = 0; tsk < NUM_TASK; tsk++) {
        printf("%.8f\n", task_tb[tsk].to_float());
    }
    printf("\nGIN computation done.\n");

}
}