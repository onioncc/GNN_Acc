#include <stdlib.h>
#include <stdio.h>
#include "dcl.h"


void load_weights()
{
	printf("Loading weights for GAT ...\n");

    FILE* f;
    f = fopen("gat_ep1_layer2.weights.all.bin", "r");
		
	fseek(f, 0*sizeof(float), SEEK_SET);
	fread(graph_pred_linear_weight, sizeof(float), 16, f);

	fseek(f, 16*sizeof(float), SEEK_SET);
	fread(graph_pred_linear_bias, sizeof(float), 1, f);

	fseek(f, 17*sizeof(float), SEEK_SET);
	fread(gat_net_0_scoring_fn_target, sizeof(float), 64, f);

	fseek(f, 81*sizeof(float), SEEK_SET);
	fread(gat_net_0_scoring_fn_source, sizeof(float), 64, f);

	fseek(f, 145*sizeof(float), SEEK_SET);
	fread(gat_net_0_bias, sizeof(float), 64, f);

	fseek(f, 209*sizeof(float), SEEK_SET);
	fread(gat_net_0_linear_proj_weight, sizeof(float), 576, f);

	fseek(f, 785*sizeof(float), SEEK_SET);
	fread(gat_net_0_skip_proj_weight, sizeof(float), 576, f);

	fseek(f, 1361*sizeof(float), SEEK_SET);
	fread(gat_net_1_scoring_fn_target, sizeof(float), 96, f);

	fseek(f, 1457*sizeof(float), SEEK_SET);
	fread(gat_net_1_scoring_fn_source, sizeof(float), 96, f);

	fseek(f, 1553*sizeof(float), SEEK_SET);
	fread(gat_net_1_bias, sizeof(float), 16, f);

	fseek(f, 1569*sizeof(float), SEEK_SET);
	fread(gat_net_1_linear_proj_weight, sizeof(float), 6144, f);

	fseek(f, 7713*sizeof(float), SEEK_SET);
	fread(gat_net_1_skip_proj_weight, sizeof(float), 6144, f);

	fclose(f);
}



void fetch_one_graph(char* graph_name, int* node_feature, int* edge_list, int num_of_nodes, int num_of_edges)
{
    printf("Loading graph ...\n");
        
    FILE* f;

	char f_node_feature[128];
	char f_edge_list[128];

	sprintf(f_node_feature, "%s_node_feature.bin", graph_name);
	sprintf(f_edge_list, "%s_edge_list.bin", graph_name);
	
	
    f = fopen(f_node_feature, "r");
	fread(node_feature, sizeof(int), num_of_nodes * ND_FEATURE, f);
    fclose(f);

    f = fopen(f_edge_list, "r");
    fread(edge_list, sizeof(int), 2 * num_of_edges, f);
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
