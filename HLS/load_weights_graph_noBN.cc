#include <stdlib.h>
#include <stdio.h>
#include "dcl.h"


void load_weights()
{
	printf("Loading weights for GIN ...\n");

    FILE* f;
    f = fopen("gin_ep1_noBN.weights.data.bin", "r");
	

	fseek(f, 1506904*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_2_bias, sizeof(float), 300, f);

	fseek(f, 1142403*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 1500, f);

	fseek(f, 961503*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_0_bias, sizeof(float), 600, f);

	fseek(f, 597302*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_2_weight, sizeof(float), 180000, f);

	fseek(f, 35700*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_1_weight, sizeof(float), 1200, f);

	fseek(f, 416702*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_0_weight, sizeof(float), 180000, f);

	fseek(f, 1872005*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 1500, f);

	fseek(f, 1871705*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_2_bias, sizeof(float), 300, f);

	fseek(f, 780902*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 600, f);

	fseek(f, 232501*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_2_weight, sizeof(float), 180000, f);

	fseek(f, 962103*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_2_weight, sizeof(float), 180000, f);

	fseek(f, 51300*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_8_weight, sizeof(float), 600, f);

	fseek(f, 1145703*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 600, f);

	fseek(f, 777302*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_2_bias, sizeof(float), 300, f);

	fseek(f, 40500*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_3_weight, sizeof(float), 3600, f);

	fseek(f, 416701*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_eps, sizeof(float), 1, f);

	fseek(f, 1146303*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_eps, sizeof(float), 1, f);

	fseek(f, 1142103*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_2_bias, sizeof(float), 300, f);

	fseek(f, 596702*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_0_bias, sizeof(float), 600, f);

	fseek(f, 781503*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_0_weight, sizeof(float), 180000, f);

	fseek(f, 1691105*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_0_bias, sizeof(float), 600, f);

	fseek(f, 1691705*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_2_weight, sizeof(float), 180000, f);

	fseek(f, 1873505*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 1800, f);

	fseek(f, 44100*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_4_weight, sizeof(float), 3000, f);

	fseek(f, 1510504*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 600, f);

	fseek(f, 1875905*sizeof(float), SEEK_SET);
	fread(graph_pred_linear_weight, sizeof(float), 300, f);

	fseek(f, 1146304*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_0_weight, sizeof(float), 180000, f);

	fseek(f, 414301*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 1800, f);

	fseek(f, 412801*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 1500, f);

	fseek(f, 36900*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_2_weight, sizeof(float), 3600, f);

	fseek(f, 50700*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_7_weight, sizeof(float), 600, f);

	fseek(f, 1508704*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 1800, f);

	fseek(f, 47100*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_5_weight, sizeof(float), 1800, f);

	fseek(f, 1326904*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_2_weight, sizeof(float), 180000, f);

	fseek(f, 1511104*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_eps, sizeof(float), 1, f);

	fseek(f, 1875305*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 600, f);

	fseek(f, 1507204*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 1500, f);

	fseek(f, 1143903*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 1800, f);

	fseek(f, 412501*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_2_bias, sizeof(float), 300, f);

	fseek(f, 51901*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_0_weight, sizeof(float), 180000, f);

	fseek(f, 0*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_0_weight, sizeof(float), 35700, f);

	fseek(f, 777602*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 1500, f);

	fseek(f, 1326304*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_0_bias, sizeof(float), 600, f);

	fseek(f, 779102*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 1800, f);

	fseek(f, 48900*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_6_weight, sizeof(float), 1800, f);

	fseek(f, 416101*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 600, f);

	fseek(f, 231901*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_0_bias, sizeof(float), 600, f);

	fseek(f, 51900*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_eps, sizeof(float), 1, f);

	fseek(f, 781502*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_eps, sizeof(float), 1, f);

	fseek(f, 1511105*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_0_weight, sizeof(float), 180000, f);

	fseek(f, 1876205*sizeof(float), SEEK_SET);
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
