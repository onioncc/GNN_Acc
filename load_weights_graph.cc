#include <stdlib.h>
#include <stdio.h>
#include "dcl.h"


void load_weights()
{
	printf("Loading weights for GIN ...\n");

    FILE* f;
    f = fopen("gin_ep1.weights.data.bin", "r");
	
	fseek(f, 1151106*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 1800, f);

	fseek(f, 234902*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_3_weight, sizeof(float), 180000, f);

	fseek(f, 1335907*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_1_running_var, sizeof(float), 600, f);

	fseek(f, 1891513*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_3_weight, sizeof(float), 300, f);

	fseek(f, 782104*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_3_bias, sizeof(float), 300, f);

	fseek(f, 232501*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_1_weight, sizeof(float), 600, f);

	fseek(f, 1893614*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_4_running_var, sizeof(float), 300, f);

	fseek(f, 1891212*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_2_running_var, sizeof(float), 300, f);

	fseek(f, 36900*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_2_weight, sizeof(float), 3600, f);

	fseek(f, 419102*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_eps, sizeof(float), 1, f);

	fseek(f, 416702*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 1800, f);

	fseek(f, 233701*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_1_running_mean, sizeof(float), 600, f);

	fseek(f, 48900*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_6_weight, sizeof(float), 1800, f);

	fseek(f, 969306*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_3_weight, sizeof(float), 180000, f);

	fseek(f, 1889411*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_1_bias, sizeof(float), 300, f);

	fseek(f, 1893014*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_4_bias, sizeof(float), 300, f);

	fseek(f, 0*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_0_weight, sizeof(float), 35700, f);

	fseek(f, 966905*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_1_weight, sizeof(float), 600, f);

	fseek(f, 1149306*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_3_bias, sizeof(float), 300, f);

	fseek(f, 1703710*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_3_weight, sizeof(float), 180000, f);

	fseek(f, 1887310*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 600, f);

	fseek(f, 1516808*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 1500, f);

	fseek(f, 418502*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 600, f);

	fseek(f, 1700709*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_0_bias, sizeof(float), 600, f);

	fseek(f, 1516508*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_3_bias, sizeof(float), 300, f);

	fseek(f, 599703*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_1_weight, sizeof(float), 600, f);

	fseek(f, 1890312*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_2_weight, sizeof(float), 300, f);

	fseek(f, 1153507*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_0_weight, sizeof(float), 180000, f);

	fseek(f, 786305*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_0_weight, sizeof(float), 180000, f);

	fseek(f, 966305*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_0_bias, sizeof(float), 600, f);

	fseek(f, 968105*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_1_running_mean, sizeof(float), 600, f);

	fseek(f, 233101*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_1_bias, sizeof(float), 600, f);

	fseek(f, 51900*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_eps, sizeof(float), 1, f);

	fseek(f, 1890011*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_1_running_var, sizeof(float), 300, f);

	fseek(f, 51300*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_8_weight, sizeof(float), 600, f);

	fseek(f, 1149606*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 1500, f);

	fseek(f, 1703109*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_1_running_var, sizeof(float), 600, f);

	fseek(f, 1885510*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 1800, f);

	fseek(f, 1888510*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_0_running_mean, sizeof(float), 300, f);

	fseek(f, 1152906*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 600, f);

	fseek(f, 599103*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_0_bias, sizeof(float), 600, f);

	fseek(f, 44100*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_4_weight, sizeof(float), 3000, f);

	fseek(f, 1893915*sizeof(float), SEEK_SET);
	fread(graph_pred_linear_weight, sizeof(float), 300, f);

	fseek(f, 1889711*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_1_running_mean, sizeof(float), 300, f);

	fseek(f, 35700*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_1_weight, sizeof(float), 1200, f);

	fseek(f, 1701909*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_1_bias, sizeof(float), 600, f);

	fseek(f, 1891813*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_3_bias, sizeof(float), 300, f);

	fseek(f, 1890912*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_2_running_mean, sizeof(float), 300, f);

	fseek(f, 602104*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_3_weight, sizeof(float), 180000, f);

	fseek(f, 1889111*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_1_weight, sizeof(float), 300, f);

	fseek(f, 601503*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_1_running_var, sizeof(float), 600, f);

	fseek(f, 1518308*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 1800, f);

	fseek(f, 1888810*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_0_running_var, sizeof(float), 300, f);

	fseek(f, 786304*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_eps, sizeof(float), 1, f);

	fseek(f, 1888210*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_0_bias, sizeof(float), 300, f);

	fseek(f, 782404*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 1500, f);

	fseek(f, 1701309*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_1_weight, sizeof(float), 600, f);

	fseek(f, 600903*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_1_running_mean, sizeof(float), 600, f);

	fseek(f, 1520708*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_eps, sizeof(float), 1, f);

	fseek(f, 1893314*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_4_running_mean, sizeof(float), 300, f);

	fseek(f, 47100*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_5_weight, sizeof(float), 1800, f);

	fseek(f, 1333507*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_0_bias, sizeof(float), 600, f);

	fseek(f, 1336508*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_3_weight, sizeof(float), 180000, f);

	fseek(f, 1335307*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_1_running_mean, sizeof(float), 600, f);

	fseek(f, 1520108*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 600, f);

	fseek(f, 1153506*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_eps, sizeof(float), 1, f);

	fseek(f, 50700*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_7_weight, sizeof(float), 600, f);

	fseek(f, 231901*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_0_bias, sizeof(float), 600, f);

	fseek(f, 968705*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_1_running_var, sizeof(float), 600, f);

	fseek(f, 1894215*sizeof(float), SEEK_SET);
	fread(graph_pred_linear_bias, sizeof(float), 1, f);

	fseek(f, 419103*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_0_weight, sizeof(float), 180000, f);

	fseek(f, 414902*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_3_bias, sizeof(float), 300, f);

	fseek(f, 1702509*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_1_running_mean, sizeof(float), 600, f);

	fseek(f, 1892413*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_3_running_var, sizeof(float), 300, f);

	fseek(f, 1884010*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 1500, f);

	fseek(f, 600303*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_mlp_1_bias, sizeof(float), 600, f);

	fseek(f, 1883710*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_3_bias, sizeof(float), 300, f);

	fseek(f, 1890612*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_2_bias, sizeof(float), 300, f);

	fseek(f, 51901*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_0_weight, sizeof(float), 180000, f);

	fseek(f, 1892113*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_3_running_mean, sizeof(float), 300, f);

	fseek(f, 967505*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_mlp_1_bias, sizeof(float), 600, f);

	fseek(f, 785704*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 600, f);

	fseek(f, 1520709*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_mlp_0_weight, sizeof(float), 180000, f);

	fseek(f, 415202*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 1500, f);

	fseek(f, 1334107*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_1_weight, sizeof(float), 600, f);

	fseek(f, 234301*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_mlp_1_running_var, sizeof(float), 600, f);

	fseek(f, 783904*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 1800, f);

	fseek(f, 1892714*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_4_weight, sizeof(float), 300, f);

	fseek(f, 1887910*sizeof(float), SEEK_SET);
	fread(gnn_node_batch_norms_0_weight, sizeof(float), 300, f);

	fseek(f, 40500*sizeof(float), SEEK_SET);
	fread(gnn_node_atom_encoder_atom_embedding_list_3_weight, sizeof(float), 3600, f);

	fseek(f, 1334707*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_mlp_1_bias, sizeof(float), 600, f);

	fclose(f);

}



void fetch_one_graph(int* node_feature, int* edge_list, int* edge_attr, int num_of_nodes, int num_of_edges)
{
    printf("Loading graph ...\n");
        
    FILE* f;

    f = fopen("g1_node_feature.bin", "r");
	fread(node_feature, sizeof(int), num_of_nodes * ND_FEATURE, f);
    fclose(f);

    f = fopen("g1_edge_list.bin", "r");
    fread(edge_list, sizeof(int), 2 * num_of_edges, f);
    fclose(f);

    f = fopen("g1_edge_attr.bin", "r");
    fread(edge_attr, sizeof(int), EDGE_ATTR * num_of_edges, f);
    fclose(f);

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
