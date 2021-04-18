#include <stdlib.h>
#include <stdio.h>
#include "dcl.h"


void load_weights()
{
	printf("Loading weights for GIN ...\n");

    FILE* f;
    f = fopen("gin_ep1_noBN_dim100.weights.all.bin", "r");
		

	fseek(f, 0*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_0_weight, sizeof(float), 11900, f);

	fseek(f, 11900*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_1_weight, sizeof(float), 400, f);

	fseek(f, 12300*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_2_weight, sizeof(float), 1200, f);

	fseek(f, 13500*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_3_weight, sizeof(float), 1200, f);

	fseek(f, 14700*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_4_weight, sizeof(float), 1000, f);

	fseek(f, 15700*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_5_weight, sizeof(float), 600, f);

	fseek(f, 16300*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_6_weight, sizeof(float), 600, f);

	fseek(f, 16900*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_7_weight, sizeof(float), 200, f);

	fseek(f, 17100*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_8_weight, sizeof(float), 200, f);

	fseek(f, 17300*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_eps, sizeof(float), 1, f);

	fseek(f, 17301*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_0_weight, sizeof(float), 20000, f);

	fseek(f, 37301*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_0_bias, sizeof(float), 200, f);

	fseek(f, 37501*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_2_weight, sizeof(float), 20000, f);

	fseek(f, 57501*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_2_bias, sizeof(float), 100, f);

	fseek(f, 57601*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	fseek(f, 58101*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	fseek(f, 58701*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);

	fseek(f, 58901*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_eps, sizeof(float), 1, f);

	fseek(f, 58902*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_0_weight, sizeof(float), 20000, f);

	fseek(f, 78902*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_0_bias, sizeof(float), 200, f);

	fseek(f, 79102*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_2_weight, sizeof(float), 20000, f);

	fseek(f, 99102*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_2_bias, sizeof(float), 100, f);

	fseek(f, 99202*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	fseek(f, 99702*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	fseek(f, 100302*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);

	fseek(f, 100502*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_eps, sizeof(float), 1, f);

	fseek(f, 100503*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_0_weight, sizeof(float), 20000, f);

	fseek(f, 120503*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_0_bias, sizeof(float), 200, f);

	fseek(f, 120703*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_2_weight, sizeof(float), 20000, f);

	fseek(f, 140703*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_2_bias, sizeof(float), 100, f);

	fseek(f, 140803*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	fseek(f, 141303*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	fseek(f, 141903*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);

	fseek(f, 142103*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_eps, sizeof(float), 1, f);

	fseek(f, 142104*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_0_weight, sizeof(float), 20000, f);

	fseek(f, 162104*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_0_bias, sizeof(float), 200, f);

	fseek(f, 162304*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_2_weight, sizeof(float), 20000, f);

	fseek(f, 182304*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_2_bias, sizeof(float), 100, f);

	fseek(f, 182404*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	fseek(f, 182904*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	fseek(f, 183504*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);

	fseek(f, 183704*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_eps, sizeof(float), 1, f);

	fseek(f, 183705*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_0_weight, sizeof(float), 20000, f);

	fseek(f, 203705*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_0_bias, sizeof(float), 200, f);

	fseek(f, 203905*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_2_weight, sizeof(float), 20000, f);

	fseek(f, 223905*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_2_bias, sizeof(float), 100, f);

	fseek(f, 224005*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	fseek(f, 224505*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	fseek(f, 225105*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);

	fseek(f, 225305*sizeof(float), SEEK_SET);
	fread(graph_pred_linear_weight, sizeof(float), 100, f);

	fseek(f, 225405*sizeof(float), SEEK_SET);
	fread(graph_pred_linear_bias, sizeof(float), 1, f);




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
