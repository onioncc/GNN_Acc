#include <stdlib.h>
#include <stdio.h>
#include "dcl.h"


extern float node_embedding_table[ND_FEATURE_TOTAL][EMB_DIM];
extern float edge_embedding_table[EG_FEATURE_TOTAL][EMB_DIM];

extern int nd_feature_table[ND_FEATURE];
extern int ed_feature_table[EDGE_ATTR];
float node_embedding_float[ND_FEATURE_TOTAL * EMB_DIM];
float edge_embedding_float[LAYER_NUM][EG_FEATURE_PER_LAYER * EMB_DIM];

void load_weights()
{
	printf("Loading weights for GCN ...\n");

    FILE* f;
    f = fopen("gcn_ep1_dim100.weights.all.bin", "rb");


	fseek(f, 0*sizeof(float), SEEK_SET);
	fread(node_embedding_float, sizeof(float), ND_FEATURE_TOTAL * EMB_DIM, f);

	fseek(f, 17300*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_weight, sizeof(float), 10000, f);

	fseek(f, 27300*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_bias, sizeof(float), 100, f);

	fseek(f, 27400*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_root_emb_weight, sizeof(float), 100, f);

	fseek(f, 27500*sizeof(float), SEEK_SET);
	fread(edge_embedding_float[0], sizeof(float), EG_FEATURE_PER_LAYER * EMB_DIM, f);

	// fseek(f, 27500*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	// fseek(f, 28000*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	// fseek(f, 28600*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);

	fseek(f, 28800*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_weight, sizeof(float), 10000, f);

	fseek(f, 38800*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_bias, sizeof(float), 100, f);

	fseek(f, 38900*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_root_emb_weight, sizeof(float), 100, f);

	fseek(f, 39000*sizeof(float), SEEK_SET);
	fread(edge_embedding_float[1], sizeof(float), EG_FEATURE_PER_LAYER * EMB_DIM, f);

	// fseek(f, 39000*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	// fseek(f, 39500*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	// fseek(f, 40100*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);

	fseek(f, 40300*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_weight, sizeof(float), 10000, f);

	fseek(f, 50300*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_bias, sizeof(float), 100, f);

	fseek(f, 50400*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_root_emb_weight, sizeof(float), 100, f);

	fseek(f, 50500*sizeof(float), SEEK_SET);
	fread(edge_embedding_float[2], sizeof(float), EG_FEATURE_PER_LAYER * EMB_DIM, f);

	// fseek(f, 50500*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	// fseek(f, 51000*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	// fseek(f, 51600*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);

	fseek(f, 51800*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_weight, sizeof(float), 10000, f);

	fseek(f, 61800*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_bias, sizeof(float), 100, f);

	fseek(f, 61900*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_root_emb_weight, sizeof(float), 100, f);

	fseek(f, 62000*sizeof(float), SEEK_SET);
	fread(edge_embedding_float[3], sizeof(float), EG_FEATURE_PER_LAYER * EMB_DIM, f);

	// fseek(f, 62000*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	// fseek(f, 62500*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	// fseek(f, 63100*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);

	fseek(f, 63300*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_weight, sizeof(float), 10000, f);

	fseek(f, 73300*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_bias, sizeof(float), 100, f);

	fseek(f, 73400*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_root_emb_weight, sizeof(float), 100, f);

	fseek(f, 73500*sizeof(float), SEEK_SET);
	fread(edge_embedding_float[4], sizeof(float), EG_FEATURE_PER_LAYER * EMB_DIM, f);

	// fseek(f, 73500*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	// fseek(f, 74000*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	// fseek(f, 74600*sizeof(float), SEEK_SET);
	// fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);
	
	fseek(f, 74800*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_0_weight, sizeof(float), 100, f);

	fseek(f, 74900*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_0_bias, sizeof(float), 100, f);

	fseek(f, 75000*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_0_running_mean, sizeof(float), 100, f);

	fseek(f, 75100*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_0_running_var, sizeof(float), 100, f);

	fseek(f, 75200*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_0_track, sizeof(float), 1, f);

	fseek(f, 75201*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_1_weight, sizeof(float), 100, f);

	fseek(f, 75301*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_1_bias, sizeof(float), 100, f);

	fseek(f, 75401*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_1_running_mean, sizeof(float), 100, f);

	fseek(f, 75501*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_1_running_var, sizeof(float), 100, f);

	
	fseek(f, 75601*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_1_track, sizeof(float), 1, f);
		
	fseek(f, 75602*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_2_weight, sizeof(float), 100, f);

	fseek(f, 75702*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_2_bias, sizeof(float), 100, f);

	fseek(f, 75802*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_2_running_mean, sizeof(float), 100, f);

	fseek(f, 75902*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_2_running_var, sizeof(float), 100, f);

	
	fseek(f, 76002*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_2_track, sizeof(float), 1, f);

	fseek(f, 76003*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_3_weight, sizeof(float), 100, f);

	fseek(f, 76103*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_3_bias, sizeof(float), 100, f);

	fseek(f, 76203*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_3_running_mean, sizeof(float), 100, f);

	fseek(f, 76303*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_3_running_var, sizeof(float), 100, f);
	
	fseek(f, 76403*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_3_track, sizeof(float), 1, f);

	fseek(f, 76404*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_4_weight, sizeof(float), 100, f);

	fseek(f, 76504*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_4_bias, sizeof(float), 100, f);

	fseek(f, 76604*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_4_running_mean, sizeof(float), 100, f);

	fseek(f, 76704*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_4_running_var, sizeof(float), 100, f);
	
	fseek(f, 76804*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_4_track, sizeof(float), 1, f);

	fseek(f, 76805*sizeof(float), SEEK_SET);
	fread(graph_pred_linear_weight, sizeof(float), 100, f);

	fseek(f, 76905*sizeof(float), SEEK_SET);
	fread(graph_pred_linear_bias, sizeof(float), 1, f);

	fclose(f);

	// /// convert to fixed point
	// for(int l = 0; l < LAYER_NUM; l++) {
	// 	eps_fixed[l] = (WT_TYPE)eps[l];
	// 	for(int dim_out = 0; dim_out < MLP_1_OUT; dim_out++) {
	// 		gnn_node_mlp_1_bias_fixed[l * MLP_1_OUT + dim_out] = (WT_TYPE)gnn_node_mlp_1_bias[l][dim_out];
	// 		for(int dim_in = 0; dim_in < MLP_1_IN; dim_in++) {
	// 			gnn_node_mlp_1_weights_fixed[l * MLP_1_OUT * MLP_1_IN + dim_out * MLP_1_IN + dim_in] = (WT_TYPE)gnn_node_mlp_1_weights[l][dim_out][dim_in];
	// 		}
	// 	}
	// 	for(int dim_out = 0; dim_out < MLP_2_OUT; dim_out++) {
	// 		gnn_node_mlp_2_bias_fixed[l * MLP_2_OUT + dim_out] = (WT_TYPE)gnn_node_mlp_2_bias[l][dim_out];
	// 		for(int dim_in = 0; dim_in < MLP_2_IN; dim_in++) {
	// 			gnn_node_mlp_2_weights_fixed[l * MLP_2_OUT * MLP_2_IN + dim_out * MLP_2_IN + dim_in] = (WT_TYPE)gnn_node_mlp_2_weights[l][dim_out][dim_in];
	// 		}
	// 	}
	// }
	
	
	// for(int i = 0; i < ND_FEATURE_TOTAL; i++) {
	// 	for(int dim = 0; dim < EMB_DIM; dim++) {
	// 		gnn_node_embedding_table_fixed[i * EMB_DIM + dim] = (WT_TYPE)gnn_node_embedding_table[i][dim];
	// 	}
	// }

	// for(int i = 0; i < EG_FEATURE_TOTAL; i++) {
	// 	for(int dim = 0; dim < EMB_DIM; dim++) {
	// 		gnn_edge_embedding_table_fixed[i * EMB_DIM + dim] = (WT_TYPE)gnn_edge_embedding_table[i][dim];
	// 	}
	// }

	// for(int t = 0; t < NUM_TASK; t++) {
	// 	graph_pred_linear_bias_fixed[t] = (WT_TYPE)graph_pred_linear_bias[t];
	// 	eps_fixed[t] = (WT_TYPE)eps[t];
	// 	for(int dim_in = 0; dim_in < MLP_2_OUT; dim_in++ ) {
	// 		graph_pred_linear_weight_fixed[t * MLP_2_OUT + dim_in] = (WT_TYPE)graph_pred_linear_weight[t][dim_in];
	// 	}
	// }


	int idx = 0;
	for(int i = 0; i < ND_FEATURE; i++) {
		int nd_f = nd_feature_table[i];
		for(int j = 0; j < nd_f; j++) {
			for(int dim = 0; dim < EMB_DIM; dim++) {
				node_embedding_table[idx + j][dim] = node_embedding_float[(idx + j) * EMB_DIM + dim];
			}
		}
		idx += nd_f;
	}

	idx = 0;
	for(int l = 0; l < LAYER_NUM; l++) {
		int	idx2 = 0;
		for(int i = 0; i < EDGE_ATTR; i++) {
			int ed_f = ed_feature_table[i];
			for(int j = 0; j < ed_f; j++) {
				for(int dim = 0; dim < EMB_DIM; dim++) {
					edge_embedding_table[idx + j][dim] = edge_embedding_float[l][(idx2 + j) * EMB_DIM + dim];
				}
			}
			idx += ed_f;
			idx2 += ed_f;
		}
	}

}



void fetch_one_graph(char* graph_name, int* node_feature, int* edge_list, int* edge_attr, int num_of_nodes, int num_of_edges)
{
    printf("Loading graph ...\n");
        
    FILE* f;

	char f_node_feature[128];
	char f_edge_list[128];
	char f_edge_attr[128];

	sprintf(f_node_feature, "%s_node_feature.bin", graph_name);
	sprintf(f_edge_list, "%s_edge_list.bin", graph_name);
	sprintf(f_edge_attr, "%s_edge_attr.bin", graph_name);
	
	
    f = fopen(f_node_feature, "rb");
	fread(node_feature, sizeof(int), num_of_nodes * ND_FEATURE, f);
    fclose(f);

    f = fopen(f_edge_list, "rb");
    fread(edge_list, sizeof(int), 2 * num_of_edges, f);
    fclose(f);

    f = fopen(f_edge_attr, "rb");
    fread(edge_attr, sizeof(int), EDGE_ATTR * num_of_edges, f);
    fclose(f);


}
