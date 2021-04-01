#include <stdlib.h>
#include <stdio.h>
#include "dcl.h"


void load_weights()
{
	printf("Loading weights for GIN ...\n");

    FILE* f;

    f = fopen("gin_ep1_mlp_1_weights.bin", "r");
	fread(gnn_node_mlp_1_weights, sizeof(float), LAYER_NUM * MLP_1_OUT * MLP_1_IN, f);
	fclose(f);

    f = fopen("gin_ep1_mlp_1_bias.bin", "r");
	fread(gnn_node_mlp_1_bias, sizeof(float), LAYER_NUM * MLP_1_OUT, f);
	fclose(f);

	f = fopen("gin_ep1_mlp_2_weights.bin", "r");
	fread(gnn_node_mlp_2_weights, sizeof(float), LAYER_NUM * MLP_2_OUT * MLP_2_IN, f);
	fclose(f);

	f = fopen("gin_ep1_mlp_2_bias.bin", "r");
	fread(gnn_node_mlp_2_bias, sizeof(float), LAYER_NUM * MLP_2_OUT, f);
	fclose(f);

	f = fopen("gin_ep1_eps.bin", "r");
	fread(eps, sizeof(float), LAYER_NUM, f);
	fclose(f);

    f = fopen("gin_ep1_nd_embed.bin", "r");
	fread(gnn_node_embedding_table, sizeof(float), ND_FEATURE_TOTAL * EMB_DIM, f);
	fclose(f);

	f = fopen("gin_ep1_ed_embed.bin", "r");
	fread(gnn_edge_embedding_table, sizeof(float), EG_FEATURE_TOTAL * EMB_DIM, f);
	fclose(f);

	f = fopen("gin_ep1_pred_weights.bin", "r");
	fread(graph_pred_linear_weight, sizeof(float), NUM_TASK * MLP_2_OUT, f);
	fclose(f);

	f = fopen("gin_ep1_pred_bias.bin", "r");
	fread(graph_pred_linear_bias, sizeof(float), NUM_TASK, f);
	fclose(f);


	/// convert to fixed point
	for(int l = 0; l < LAYER_NUM; l++) {
		eps_fixed[l] = (WT_TYPE)eps[l];
		for(int dim_out = 0; dim_out < MLP_1_OUT; dim_out++) {
			gnn_node_mlp_1_bias_fixed[l][dim_out] = (WT_TYPE)gnn_node_mlp_1_bias[l][dim_out];
			for(int dim_in = 0; dim_in < MLP_1_IN; dim_in++) {
				gnn_node_mlp_1_weights_fixed[l][dim_out][dim_in] = (WT_TYPE)gnn_node_mlp_1_weights[l][dim_out][dim_in];
			}
		}
		for(int dim_out = 0; dim_out < MLP_2_OUT; dim_out++) {
			gnn_node_mlp_2_bias_fixed[l][dim_out] = (WT_TYPE)gnn_node_mlp_2_bias[l][dim_out];
			for(int dim_in = 0; dim_in < MLP_2_IN; dim_in++) {
				gnn_node_mlp_2_weights_fixed[l][dim_out][dim_in] = (WT_TYPE)gnn_node_mlp_2_weights[l][dim_out][dim_in];
			}
		}
	}
	
	for(int dim = 0; dim < EMB_DIM; dim++) {
		for(int i = 0; i < ND_FEATURE_TOTAL; i++) {
			gnn_node_embedding_table_fixed[i][dim] = (WT_TYPE)gnn_node_embedding_table[i][dim];
		}
		for(int i = 0; i < EG_FEATURE_TOTAL; i++) {
			gnn_edge_embedding_table_fixed[i][dim] = (WT_TYPE)gnn_edge_embedding_table[i][dim];
		}
	}

	for(int t = 0; t < NUM_TASK; t++) {
		graph_pred_linear_bias_fixed[t] = (WT_TYPE)graph_pred_linear_bias[t];
		eps_fixed[t] = (WT_TYPE)eps[t];
		for(int dim_in = 0; dim_in < MLP_2_OUT; dim_in++ ) {
			graph_pred_linear_weight_fixed[t][dim_in] = (WT_TYPE)graph_pred_linear_weight[t][dim_in];
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
	
	
    f = fopen(f_node_feature, "r");
	fread(node_feature, sizeof(int), num_of_nodes * ND_FEATURE, f);
    fclose(f);

    f = fopen(f_edge_list, "r");
    fread(edge_list, sizeof(int), 2 * num_of_edges, f);
    fclose(f);

    f = fopen(f_edge_attr, "r");
    fread(edge_attr, sizeof(int), EDGE_ATTR * num_of_edges, f);
    fclose(f);

#ifdef _PRINT_
		printf("Node features:\n");
		for(int i = 0; i < num_of_nodes; i++) {
			for(int j = 0; j < ND_FEATURE; j++) {
				printf("%d ", node_feature[i * ND_FEATURE + j]);
			}
			printf("\n");
		}

		printf("Edges:\n");
		for(int i = 0; i < num_of_edges; i++) {
			printf("%d -> %d\n", edge_list[i*2], edge_list[i*2+1]);
		}

		printf("Edge attributes:\n");
		for(int i = 0; i < num_of_edges; i++) {
			for(int j = 0; j < EDGE_ATTR; j++) {
				printf("%d ", edge_attr[i * EDGE_ATTR + j]);
			}
			printf("\n");
		}
	}
#endif
}
