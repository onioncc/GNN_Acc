#include <stdlib.h>
#include <stdio.h>
#include "dcl.h"


void load_weights()
{
	printf("Loading weights for GIN ...\n");

    FILE* f;
    f = fopen("gin_ep1_noBN_dim100.weights.all.bin", "r");
		

	fseek(f, 0*sizeof(float), SEEK_SET);
	fread(node_emb_atom_embedding_list_0_weight, sizeof(float), 9520, f);


	fseek(f, 9520*sizeof(float), SEEK_SET);
	fread(node_emb_atom_embedding_list_1_weight, sizeof(float),320 , f);

    fseek(f, 9840*sizeof(float), SEEK_SET);
	fread(node_emb_atom_embedding_list_2_weight, sizeof(float), 960, f);

	fseek(f,10800*sizeof(float), SEEK_SET);
	fread(node_emb_atom_embedding_list_3_weight, sizeof(float), 960, f);

    fseek(f, 11760*sizeof(float), SEEK_SET);
	fread(node_emb_atom_embedding_list_4_weight, sizeof(float), 800, f);

    fseek(f, 12560*sizeof(float), SEEK_SET);
	fread(node_emb_atom_embedding_list_5_weight, sizeof(float),480 , f);

    fseek(f, 13040*sizeof(float), SEEK_SET);
	fread(node_emb_atom_embedding_list_6_weight, sizeof(float),480 , f);

    fseek(f, 13520*sizeof(float), SEEK_SET);
	fread(node_emb_atom_embedding_list_7_weight, sizeof(float),160 , f);

    fseek(f, 13680*sizeof(float), SEEK_SET);
	fread(node_emb_atom_embedding_list_8_weight, sizeof(float),160 , f);

    fseek(f, 13840*sizeof(float), SEEK_SET);
	fread(convs_0_post_nn_0_weight, sizeof(float), 76800, f);

    fseek(f, 90640*sizeof(float), SEEK_SET);
	fread(convs_0_post_nn_0_bias, sizeof(float),80 , f);

    fseek(f, 90720*sizeof(float), SEEK_SET);
	fread(convs_1_post_nn_0_weight, sizeof(float),76800 , f);

    fseek(f, 167520*sizeof(float), SEEK_SET);
	fread(convs_1_post_nn_0_bias, sizeof(float), 80, f);

    fseek(f, 167600*sizeof(float), SEEK_SET);
	fread(convs_2_post_nn_0_weight, sizeof(float), 76800, f);

    fseek(f, 244400*sizeof(float), SEEK_SET);
	fread(convs_2_post_nn_0_bias, sizeof(float), 80, f);

    
    fseek(f, 244480*sizeof(float), SEEK_SET);
	fread(convs_3_post_nn_0_weight, sizeof(float), 76800, f);


    fseek(f, 321280*sizeof(float), SEEK_SET);
	fread(convs_3_post_nn_0_bias, sizeof(float), 80, f);


    fseek(f, 321360*sizeof(float), SEEK_SET);
	fread(mlp_0_weight, sizeof(float), 320, f);

    fseek(f, 321680*sizeof(float), SEEK_SET);
	fread(mlp_0_bias, sizeof(float), 40, f);

    fseek(f, 321720*sizeof(float), SEEK_SET);
	fread(mlp_2_weight, sizeof(float), 800, f);

    
    fseek(f, 322520*sizeof(float), SEEK_SET);
	fread(mlp_2_bias, sizeof(float), 20, f);

    
    fseek(f, 322540*sizeof(float), SEEK_SET);
	fread(mlp_4_weight, sizeof(float), 20, f);

    
    fseek(f, 322560*sizeof(float), SEEK_SET);
	fread(mlp_4_bias, sizeof(float), 1, f);

	fclose(f);

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
