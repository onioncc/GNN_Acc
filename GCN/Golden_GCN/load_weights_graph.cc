#include <stdlib.h>
#include <stdio.h>
#include "dcl.h"

// global weights
extern float gnn_node_atom_encoder_atom_embedding_list_0_weight[119][100];
extern float gnn_node_atom_encoder_atom_embedding_list_1_weight[4][100];
extern float gnn_node_atom_encoder_atom_embedding_list_2_weight[12][100];
extern float gnn_node_atom_encoder_atom_embedding_list_3_weight[12][100];
extern float gnn_node_atom_encoder_atom_embedding_list_4_weight[10][100];
extern float gnn_node_atom_encoder_atom_embedding_list_5_weight[6][100];
extern float gnn_node_atom_encoder_atom_embedding_list_6_weight[6][100];
extern float gnn_node_atom_encoder_atom_embedding_list_7_weight[2][100];
extern float gnn_node_atom_encoder_atom_embedding_list_8_weight[2][100];
extern float gnn_node_convs_0_weight[100][100];
extern float gnn_node_convs_0_bias[100];
extern float gnn_node_convs_0_bond_encoder_bond_embedding_list_0_weight[5][100];
extern float gnn_node_convs_0_bond_encoder_bond_embedding_list_1_weight[6][100];
extern float gnn_node_convs_0_bond_encoder_bond_embedding_list_2_weight[2][100];
extern float gnn_node_convs_1_weight[100][100];
extern float gnn_node_convs_1_bias[100];
extern float gnn_node_convs_1_bond_encoder_bond_embedding_list_0_weight[5][100];
extern float gnn_node_convs_1_bond_encoder_bond_embedding_list_1_weight[6][100];
extern float gnn_node_convs_1_bond_encoder_bond_embedding_list_2_weight[2][100];
extern float gnn_node_convs_2_weight[100][100];
extern float gnn_node_convs_2_bias[100];
extern float gnn_node_convs_2_bond_encoder_bond_embedding_list_0_weight[5][100];
extern float gnn_node_convs_2_bond_encoder_bond_embedding_list_1_weight[6][100];
extern float gnn_node_convs_2_bond_encoder_bond_embedding_list_2_weight[2][100];
extern float gnn_node_convs_3_weight[100][100];
extern float gnn_node_convs_3_bias[100];
extern float gnn_node_convs_3_bond_encoder_bond_embedding_list_0_weight[5][100];
extern float gnn_node_convs_3_bond_encoder_bond_embedding_list_1_weight[6][100];
extern float gnn_node_convs_3_bond_encoder_bond_embedding_list_2_weight[2][100];
extern float gnn_node_convs_4_weight[100][100];
extern float gnn_node_convs_4_bias[100];
extern float gnn_node_convs_4_bond_encoder_bond_embedding_list_0_weight[5][100];
extern float gnn_node_convs_4_bond_encoder_bond_embedding_list_1_weight[6][100];
extern float gnn_node_convs_4_bond_encoder_bond_embedding_list_2_weight[2][100];
extern float gnn_node_convs_4_root_emb_weight[100];
extern float gnn_node_convs_3_root_emb_weight[100];
extern float gnn_node_convs_2_root_emb_weight[100];
extern float gnn_node_convs_1_root_emb_weight[100];
extern float gnn_node_convs_0_root_emb_weight[100];

extern float gnn_node_batch_norms_0_weight[100];
extern float gnn_node_batch_norms_0_bias[100];
extern float gnn_node_batch_norms_0_running_mean[100];
extern float gnn_node_batch_norms_0_running_var[100];
extern float gnn_node_batch_norms_0_track[1];

extern float gnn_node_batch_norms_1_weight[100];
extern float gnn_node_batch_norms_1_bias[100];
extern float gnn_node_batch_norms_1_running_mean[100];
extern float gnn_node_batch_norms_1_running_var[100];
extern float gnn_node_batch_norms_1_track[1];

extern float gnn_node_batch_norms_2_weight[100];
extern float gnn_node_batch_norms_2_bias[100];
extern float gnn_node_batch_norms_2_running_mean[100];
extern float gnn_node_batch_norms_2_running_var[100];
extern float gnn_node_batch_norms_2_track[1];

extern float gnn_node_batch_norms_3_weight[100];
extern float gnn_node_batch_norms_3_bias[100];
extern float gnn_node_batch_norms_3_running_mean[100];
extern float gnn_node_batch_norms_3_running_var[100];
extern float gnn_node_batch_norms_3_track[1];

extern float gnn_node_batch_norms_4_weight[100];
extern float gnn_node_batch_norms_4_bias[100];
extern float gnn_node_batch_norms_4_running_mean[100];
extern float gnn_node_batch_norms_4_running_var[100];
extern float gnn_node_batch_norms_4_track[1];


extern float graph_pred_linear_weight[1][100];
extern float graph_pred_linear_bias[1];


void load_weights()
{
	printf("Loading weights for GCN ...\n");

    FILE* f;
    f = fopen("gcn_ep1_dim100.weights.all.bin", "rb");
		
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
	fread(gnn_node_convs_0_weight, sizeof(float), 10000, f);

	fseek(f, 27300*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_bias, sizeof(float), 100, f);

	fseek(f, 27400*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_root_emb_weight, sizeof(float), 100, f);

	fseek(f, 27500*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	fseek(f, 28000*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	fseek(f, 28600*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_0_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);

	fseek(f, 28800*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_weight, sizeof(float), 10000, f);

	fseek(f, 38800*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_bias, sizeof(float), 100, f);

	fseek(f, 38900*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_root_emb_weight, sizeof(float), 100, f);

	fseek(f, 39000*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	fseek(f, 39500*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	fseek(f, 40100*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_1_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);

	fseek(f, 40300*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_weight, sizeof(float), 10000, f);

	fseek(f, 50300*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_bias, sizeof(float), 100, f);

	fseek(f, 50400*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_root_emb_weight, sizeof(float), 100, f);

	fseek(f, 50500*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	fseek(f, 51000*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	fseek(f, 51600*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_2_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);

	fseek(f, 51800*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_weight, sizeof(float), 10000, f);

	fseek(f, 61800*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_bias, sizeof(float), 100, f);

	fseek(f, 61900*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_root_emb_weight, sizeof(float), 100, f);

	fseek(f, 62000*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	fseek(f, 62500*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	fseek(f, 63100*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_3_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);

	fseek(f, 63300*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_weight, sizeof(float), 10000, f);

	fseek(f, 73300*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_bias, sizeof(float), 100, f);

	fseek(f, 73400*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_root_emb_weight, sizeof(float), 100, f);

	fseek(f, 73500*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_0_weight, sizeof(float), 500, f);

	fseek(f, 74000*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_1_weight, sizeof(float), 600, f);

	fseek(f, 74600*sizeof(float), SEEK_SET);
	fread(gnn_node_convs_4_bond_encoder_bond_embedding_list_2_weight, sizeof(float), 200, f);
	
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
