#include <stdlib.h>
#include <stdio.h>
#include "dcl.h"


float node_emb_atom_embedding_list_0_weight[119][80];
float node_emb_atom_embedding_list_1_weight[4][80];
float node_emb_atom_embedding_list_2_weight[12][80];
float node_emb_atom_embedding_list_3_weight[12][80];
float node_emb_atom_embedding_list_4_weight[10][80];
float node_emb_atom_embedding_list_5_weight[6][80];
float node_emb_atom_embedding_list_6_weight[6][80];
float node_emb_atom_embedding_list_7_weight[2][80];
float node_emb_atom_embedding_list_8_weight[2][80];
float convs_0_post_nn_0_weight[80][960];
float convs_0_post_nn_0_bias[80];
float convs_1_post_nn_0_weight[80][960];
float convs_1_post_nn_0_bias[80];
float convs_2_post_nn_0_weight[80][960];
float convs_2_post_nn_0_bias[80];
float convs_3_post_nn_0_weight[80][960];
float convs_3_post_nn_0_bias[80];
float mlp_0_weight[40][80];
float mlp_0_bias[40];
float mlp_2_weight[20][40];
float mlp_2_bias[20];
float mlp_4_weight[1][20];
float mlp_4_bias[1];

WT_TYPE node_emb_atom_embedding_list_0_weight_fixed_in[119][80];
WT_TYPE node_emb_atom_embedding_list_1_weight_fixed_in[4][80];
WT_TYPE node_emb_atom_embedding_list_2_weight_fixed_in[12][80];
WT_TYPE node_emb_atom_embedding_list_3_weight_fixed_in[12][80];
WT_TYPE node_emb_atom_embedding_list_4_weight_fixed_in[10][80];
WT_TYPE node_emb_atom_embedding_list_5_weight_fixed_in[6][80];
WT_TYPE node_emb_atom_embedding_list_6_weight_fixed_in[6][80];
WT_TYPE node_emb_atom_embedding_list_7_weight_fixed_in[2][80];
WT_TYPE node_emb_atom_embedding_list_8_weight_fixed_in[2][80];
WT_TYPE convs_0_post_nn_0_weight_fixed_in[80][960];
WT_TYPE convs_0_post_nn_0_bias_fixed_in[80];
WT_TYPE convs_1_post_nn_0_weight_fixed_in[80][960];
WT_TYPE convs_1_post_nn_0_bias_fixed_in[80];
WT_TYPE convs_2_post_nn_0_weight_fixed_in[80][960];
WT_TYPE convs_2_post_nn_0_bias_fixed_in[80];
WT_TYPE convs_3_post_nn_0_weight_fixed_in[80][960];
WT_TYPE convs_3_post_nn_0_bias_fixed_in[80];
WT_TYPE mlp_0_weight_fixed_in[40][80];
WT_TYPE mlp_0_bias_fixed_in[40];
WT_TYPE mlp_2_weight_fixed_in[20][40];
WT_TYPE mlp_2_bias_fixed_in[20];
WT_TYPE mlp_4_weight_fixed_in[1][20];
WT_TYPE mlp_4_bias_fixed_in[1];

WT_TYPE convs_ALL_post_nn_0_weight_fixed_in[4][80][960];
WT_TYPE convs_ALL_post_nn_0_bias_fixed_in[4][80];

template<int M>
void cast_1d(float in[M], WT_TYPE out[M]){
	for(int i=0; i<M; i++){
		out[i] = (WT_TYPE)in[i];
	}
}

template<int M, int N>
void cast_2d(float in[M][N], WT_TYPE out[M][N]){
	for(int i=0; i<M; i++){
		for(int j=0; j<N; j++){
			out[i][j] = (WT_TYPE)in[i][j];
		}
	}
}

template <int M, int N, typename T>
void copy_2d(T from[M][N], T to[M][N]) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            to[i][j] = from[i][j];
        }
    }
}

template <int M, typename T>
void copy_1d(T from[M], T to[M]) {
    for (int i = 0; i < M; i++) {
        to[i] = from[i];
    }
}

void load_weights()
{
	printf("Loading weights for PNA ...\n");

    FILE* f;
    f = fopen("pna_ep1_noBN_dim80.weights.all.bin", "rb");
	//error begin from node 0 dim 22
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
	fread(mlp_0_weight, sizeof(float), 3200, f);

    fseek(f, 324560*sizeof(float), SEEK_SET);
	fread(mlp_0_bias, sizeof(float), 40, f);

    fseek(f, 324600*sizeof(float), SEEK_SET);
	fread(mlp_2_weight, sizeof(float), 800, f);

    
    fseek(f, 325400*sizeof(float), SEEK_SET);
	fread(mlp_2_bias, sizeof(float), 20, f);

    
    fseek(f, 325420*sizeof(float), SEEK_SET);
	fread(mlp_4_weight, sizeof(float), 20, f);

    
    fseek(f, 325440*sizeof(float), SEEK_SET);
	fread(mlp_4_bias, sizeof(float), 1, f);

	fclose(f);

	cast_2d<119,80>(node_emb_atom_embedding_list_0_weight, node_emb_atom_embedding_list_0_weight_fixed_in);
	cast_2d<4,80>(node_emb_atom_embedding_list_1_weight, node_emb_atom_embedding_list_1_weight_fixed_in);
	cast_2d<12,80>(node_emb_atom_embedding_list_2_weight, node_emb_atom_embedding_list_2_weight_fixed_in);
	cast_2d<12,80>(node_emb_atom_embedding_list_3_weight, node_emb_atom_embedding_list_3_weight_fixed_in);
	cast_2d<10,80>(node_emb_atom_embedding_list_4_weight, node_emb_atom_embedding_list_4_weight_fixed_in);
	cast_2d<6,80>(node_emb_atom_embedding_list_5_weight, node_emb_atom_embedding_list_5_weight_fixed_in);
	cast_2d<6,80>(node_emb_atom_embedding_list_6_weight, node_emb_atom_embedding_list_6_weight_fixed_in);
	cast_2d<2,80>(node_emb_atom_embedding_list_7_weight, node_emb_atom_embedding_list_7_weight_fixed_in);
	cast_2d<2,80>(node_emb_atom_embedding_list_8_weight, node_emb_atom_embedding_list_8_weight_fixed_in);
	

	cast_2d<80,960>(convs_0_post_nn_0_weight, convs_0_post_nn_0_weight_fixed_in);
	cast_1d<80>(convs_0_post_nn_0_bias, convs_0_post_nn_0_bias_fixed_in);

	cast_2d<80,960>(convs_1_post_nn_0_weight, convs_1_post_nn_0_weight_fixed_in);
	cast_1d<80>(convs_1_post_nn_0_bias, convs_1_post_nn_0_bias_fixed_in);

	cast_2d<80,960>(convs_2_post_nn_0_weight, convs_2_post_nn_0_weight_fixed_in);
	cast_1d<80>(convs_2_post_nn_0_bias, convs_2_post_nn_0_bias_fixed_in);

	cast_2d<80,960>(convs_3_post_nn_0_weight, convs_3_post_nn_0_weight_fixed_in);
	cast_1d<80>(convs_3_post_nn_0_bias, convs_3_post_nn_0_bias_fixed_in);

    copy_2d<80, 960, WT_TYPE>(convs_0_post_nn_0_weight_fixed_in, convs_ALL_post_nn_0_weight_fixed_in[0]);
    copy_2d<80, 960, WT_TYPE>(convs_1_post_nn_0_weight_fixed_in, convs_ALL_post_nn_0_weight_fixed_in[1]);
    copy_2d<80, 960, WT_TYPE>(convs_2_post_nn_0_weight_fixed_in, convs_ALL_post_nn_0_weight_fixed_in[2]);
    copy_2d<80, 960, WT_TYPE>(convs_3_post_nn_0_weight_fixed_in, convs_ALL_post_nn_0_weight_fixed_in[3]);

    copy_1d<80, WT_TYPE>(convs_0_post_nn_0_bias_fixed_in, convs_ALL_post_nn_0_bias_fixed_in[0]);
    copy_1d<80, WT_TYPE>(convs_1_post_nn_0_bias_fixed_in, convs_ALL_post_nn_0_bias_fixed_in[1]);
    copy_1d<80, WT_TYPE>(convs_2_post_nn_0_bias_fixed_in, convs_ALL_post_nn_0_bias_fixed_in[2]);
    copy_1d<80, WT_TYPE>(convs_3_post_nn_0_bias_fixed_in, convs_ALL_post_nn_0_bias_fixed_in[3]);

    cast_2d<40,80>(mlp_0_weight, mlp_0_weight_fixed_in);
	cast_1d<40>(mlp_0_bias, mlp_0_bias_fixed_in);

	cast_2d<20,40>(mlp_2_weight, mlp_2_weight_fixed_in);
	cast_1d<20>(mlp_2_bias, mlp_2_bias_fixed_in);

	cast_2d<1,20>(mlp_4_weight, mlp_4_weight_fixed_in);
	cast_1d<1>(mlp_4_bias, mlp_4_bias_fixed_in);


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
