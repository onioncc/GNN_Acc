#include <stdio.h>
#include <stdlib.h>
#include "dcl.h"

extern WT_TYPE embedding_h_atom_embedding_list_weights_in[9][119][100];
extern WT_TYPE layers_posttrans_fully_connected_0_linear_weight_in[4][100][200];
extern WT_TYPE layers_posttrans_fully_connected_0_linear_bias_in[4][100];
extern WT_TYPE MLP_layer_FC_layers_0_weight_in[50][100];
extern WT_TYPE MLP_layer_FC_layers_0_bias_in[50];
extern WT_TYPE MLP_layer_FC_layers_1_weight_in[25][50];
extern WT_TYPE MLP_layer_FC_layers_1_bias_in[25];
extern WT_TYPE MLP_layer_FC_layers_2_weight_in[1][25];
extern WT_TYPE MLP_layer_FC_layers_2_bias_in[1];

// global weights
FM_TYPE result;

template<typename T, int DIM_1>
void dump_array_1d(hls::stream<qdma_axis<T::width, 0, 0, 0>>& dst, T src[DIM_1], int size_1)
{
#pragma HLS INLINE
    for (int i = 0; i < size_1; i++)
    {
        qdma_axis<T::width, 0, 0, 0> pkt;
        pkt.data.range() = src[i].range();
        dst << pkt;
    }
}

template<typename T, int DIM_1, int DIM_2>
void dump_array_2d(hls::stream<qdma_axis<T::width, 0, 0, 0>>& dst, T src[DIM_1][DIM_2], int size_1, int size_2)
{
#pragma HLS INLINE
    for (int i = 0; i < size_1; i++)
    {
        for (int j = 0; j < size_2; j++)
        {
            qdma_axis<T::width, 0, 0, 0> pkt;
            pkt.data.range() = src[i][j].range();
            dst << pkt;
        }
    }
}

template<typename T, int DIM_1, int DIM_2, int DIM_3>
void dump_array_3d(hls::stream<qdma_axis<T::width, 0, 0, 0>>& dst, T src[DIM_1][DIM_2][DIM_3], int size_1, int size_2, int size_3)
{
#pragma HLS INLINE
    for (int i = 0; i < size_1; i++)
    {
        for (int j = 0; j < size_2; j++)
        {
            for (int k = 0; k < size_3; k++)
            {
                qdma_axis<T::width, 0, 0, 0> pkt;
                pkt.data.range() = src[i][j][k].range();
                dst << pkt;
            }
        }
    }
}

template<int DIM_1>
void dump_array_1d_int(hls::stream<qdma_axis<32, 0, 0, 0>>& dst, int src[DIM_1], int size_1)
{
#pragma HLS INLINE
    for (int i = 0; i < size_1; i++)
    {
        qdma_axis<32, 0, 0, 0> pkt;
        ap_int<32> data = src[i];
        pkt.data.range() = data.range();
        dst << pkt;
    }
}

template<int DIM_1, int DIM_2>
void dump_array_2d_int(hls::stream<qdma_axis<32, 0, 0, 0>>& dst, int src[DIM_1][DIM_2], int size_1, int size_2)
{
#pragma HLS INLINE
    for (int i = 0; i < size_1; i++)
    {
        for (int j = 0; j < size_2; j++)
        {
            qdma_axis<32, 0, 0, 0> pkt;
            ap_int<32> data = src[i][j];
            pkt.data.range() = data.range();
            dst << pkt;
        }
    }
}

template<int DIM_1, int DIM_2, int DIM_3>
void dump_array_3d_int(hls::stream<qdma_axis<32, 0, 0, 0>>& dst, int src[DIM_1][DIM_2][DIM_3], int size_1, int size_2, int size_3)
{
#pragma HLS INLINE
    for (int i = 0; i < size_1; i++)
    {
        for (int j = 0; j < size_2; j++)
        {
            for (int k = 0; k < size_3; k++)
            {
                qdma_axis<32, 0, 0, 0> pkt;
                ap_int<32> data = src[i][j][k];
                pkt.data.range() = data.range();
                dst << pkt;
            }
        }
    }
}

template<int DIM_1>
void dump_array_1d_bool(hls::stream<qdma_axis<1, 0, 0, 0>>& dst, bool src[DIM_1], int size_1)
{
#pragma HLS INLINE
    for (int i = 0; i < size_1; i++)
    {
        qdma_axis<1, 0, 0, 0> pkt;
        ap_uint<1> data = src[i];
        pkt.data.range() = data.range();
        dst << pkt;
    }
}

template<int DIM_1, int DIM_2>
void dump_array_2d_bool(hls::stream<qdma_axis<1, 0, 0, 0>>& dst, bool src[DIM_1][DIM_2], int size_1, int size_2)
{
#pragma HLS INLINE
    for (int i = 0; i < size_1; i++)
    {
        for (int j = 0; j < size_2; j++)
        {
            qdma_axis<1, 0, 0, 0> pkt;
            ap_uint<1> data = src[i][j];
            pkt.data.range() = data.range();
            dst << pkt;
        }
    }
}

template<int DIM_1, int DIM_2, int DIM_3>
void dump_array_3d_bool(hls::stream<qdma_axis<1, 0, 0, 0>>& dst, bool src[DIM_1][DIM_2][DIM_3], int size_1, int size_2, int size_3)
{
#pragma HLS INLINE
    for (int i = 0; i < size_1; i++)
    {
        for (int j = 0; j < size_2; j++)
        {
            for (int k = 0; k < size_3; k++)
            {
                qdma_axis<1, 0, 0, 0> pkt;
                ap_uint<1> data = src[i][j][k];
                pkt.data.range() = data.range();
                dst << pkt;
            }
        }
    }
}

int main()
{
    printf("\n******* This is the golden C file for DGN model *******\n");

    hls::stream<qdma_axis<WT_TYPE::width, 0, 0, 0>> weights("weights");
    load_weights();
    dump_array_3d<WT_TYPE, 9, 119, 100>(weights, embedding_h_atom_embedding_list_weights_in, 9, 119, 100);
    dump_array_3d<WT_TYPE, 4, 100, 200>(weights, layers_posttrans_fully_connected_0_linear_weight_in, 4, 100, 200);
    dump_array_2d<WT_TYPE, 4, 100>(weights, layers_posttrans_fully_connected_0_linear_bias_in, 4, 100);
    dump_array_2d<WT_TYPE, 50, 100>(weights, MLP_layer_FC_layers_0_weight_in, 50, 100);
    dump_array_1d<WT_TYPE, 50>(weights, MLP_layer_FC_layers_0_bias_in, 50);
    dump_array_2d<WT_TYPE, 25, 50>(weights, MLP_layer_FC_layers_1_weight_in, 25, 50);
    dump_array_1d<WT_TYPE, 25>(weights, MLP_layer_FC_layers_1_bias_in, 25);
    dump_array_2d<WT_TYPE, 1, 25>(weights, MLP_layer_FC_layers_2_weight_in, 1, 25);
    dump_array_1d<WT_TYPE, 1>(weights, MLP_layer_FC_layers_2_bias_in, 1);

    float all_results[4113];
    FILE* c_output = fopen("Golden_C_output.txt", "w+");
    for(int g = 1; g <= 4113; g++ ) {
        char graph_name[128];
        char info_file[128];
        int num_of_nodes;
        int num_of_edges;


        sprintf(info_file, "../../graphs/graph_info/g%d_info.txt", g);
        sprintf(graph_name, "../../graphs/graph_bin/g%d", g);


        FILE* f_info = fopen(info_file, "r");
        fscanf (f_info, "%d\n%d", &num_of_nodes, &num_of_edges);
        fclose(f_info);
        

        printf("********** Computing Graph %s *************\n", graph_name);
        printf("# of nodes: %d, # of edges: %d\n", num_of_nodes, num_of_edges);

        int* node_feature = (int*)malloc(ND_FEATURE * num_of_nodes * sizeof(int));
        WT_TYPE* node_eigen = (WT_TYPE*)malloc(4 * num_of_nodes * sizeof(WT_TYPE));
        int* edge_list = (int*)malloc(2 * num_of_edges * sizeof(int));
        int* edge_attr = (int*)malloc(EDGE_ATTR * num_of_edges * sizeof(int));
        bool is_first = g == 1;

        fetch_one_graph(g, graph_name, node_feature, node_eigen, edge_list, edge_attr, num_of_nodes, num_of_edges);

        hls::stream<qdma_axis<32, 0, 0, 0>> node_feature_stream("node_feature");
        dump_array_1d_int<ND_FEATURE * MAX_NODE>(node_feature_stream, node_feature, ND_FEATURE * num_of_nodes);
        hls::stream<qdma_axis<4 * WT_TYPE::width, 0, 0, 0>> node_eigen_stream("node_eigen");
        for (int i = 0; i < num_of_nodes; i++)
        {
            qdma_axis<4 * WT_TYPE::width, 0, 0, 0> pkt;
            pkt.data.range(WT_TYPE::width * 1 - 1, WT_TYPE::width * 0) = node_eigen[(i * 4) + 0].range();
            pkt.data.range(WT_TYPE::width * 2 - 1, WT_TYPE::width * 1) = node_eigen[(i * 4) + 1].range();
            pkt.data.range(WT_TYPE::width * 3 - 1, WT_TYPE::width * 2) = node_eigen[(i * 4) + 2].range();
            pkt.data.range(WT_TYPE::width * 4 - 1, WT_TYPE::width * 3) = node_eigen[(i * 4) + 3].range();
            node_eigen_stream << pkt;
        }
        hls::stream<qdma_axis<64, 0, 0, 0>> edge_list_stream("edge_list");
        for (int i = 0; i < num_of_edges; i++)
        {
            qdma_axis<64, 0, 0, 0> pkt;
            ap_int<32> u = edge_list[(i * 2) + 0];
            pkt.data.range(31, 0) = u.range();
            ap_int<32> v = edge_list[(i * 2) + 1];
            pkt.data.range(63, 32) = v.range();
            edge_list_stream << pkt;
        }
        hls::stream<qdma_axis<32, 0, 0, 0>> num_of_nodes_stream("num_of_nodes");
        dump_array_1d_int<1>(num_of_nodes_stream, &num_of_nodes, 1);
        hls::stream<qdma_axis<32, 0, 0, 0>> num_of_edges_stream("num_of_edges");
        dump_array_1d_int<1>(num_of_edges_stream, &num_of_edges, 1);
        hls::stream<qdma_axis<1, 0, 0, 0>> is_first_stream("is_first");
        dump_array_1d_bool<1>(is_first_stream, &is_first, 1);

        printf("Computing DGN ...\n");
        hls::stream<qdma_axis<FM_TYPE::width, 0, 0, 0>> output_stream("output");
        DGN_compute_one_graph(
            output_stream,
            node_feature_stream,
            node_eigen_stream,
            edge_list_stream,
            num_of_nodes_stream,
            num_of_edges_stream,
            is_first_stream,
            weights
        );
        qdma_axis<FM_TYPE::width, 0, 0, 0> output_pkt;
        output_stream >> output_pkt;
        result.range() = output_pkt.data.range();
        printf("%.8f\n", float(result));
        all_results[g - 1] = float(result);
        free(node_feature);
        free(edge_list);
        free(edge_attr);
    }

    for(int g = 1; g <= 4113; g++) {
        fprintf(c_output, "g%d: %.8f\n", g, all_results[g-1]);
    }
    fclose(c_output);

    
    
    return 0;
}
