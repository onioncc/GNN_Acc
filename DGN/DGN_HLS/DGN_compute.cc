#include "dcl.h"
#include "math.h"
#include "hls_math.h"
#include "hls_stream.h"
#include <stdio.h>
#include <array>

using std::array;

//#define _PRINT_

WT_TYPE layers_posttrans_fully_connected_0_linear_weight[4][100][2][100];
WT_TYPE layers_posttrans_fully_connected_0_linear_bias[4][100];
WT_TYPE MLP_layer_FC_layers_0_weight[50][100];
WT_TYPE MLP_layer_FC_layers_0_bias[50];
WT_TYPE MLP_layer_FC_layers_1_weight[25][50];
WT_TYPE MLP_layer_FC_layers_1_bias[25];
WT_TYPE MLP_layer_FC_layers_2_weight[1][25];
WT_TYPE MLP_layer_FC_layers_2_bias[1];

int degree_table[MAX_NODE];
int neighbor_table[MAX_EDGE];
WT_TYPE node_eigen[MAX_NODE];

// BRAM for intermediate storage
FM_TYPE h_node_ping[MAX_NODE][EMB_DIM];
FM_TYPE h_node_pong[MAX_NODE][EMB_DIM];

FM_TYPE h_graph[EMB_DIM];

void load_weights(
    WT_TYPE layers_posttrans_fully_connected_0_linear_weight_in[4][100][200],
    WT_TYPE layers_posttrans_fully_connected_0_linear_bias_in[4][100],
    WT_TYPE MLP_layer_FC_layers_0_weight_in[50][100],
    WT_TYPE MLP_layer_FC_layers_0_bias_in[50],
    WT_TYPE MLP_layer_FC_layers_1_weight_in[25][50],
    WT_TYPE MLP_layer_FC_layers_1_bias_in[25],
    WT_TYPE MLP_layer_FC_layers_2_weight_in[1][25],
    WT_TYPE MLP_layer_FC_layers_2_bias_in[1]
)
{
#pragma HLS INLINE off
    memcpy(layers_posttrans_fully_connected_0_linear_weight, layers_posttrans_fully_connected_0_linear_weight_in, sizeof(WT_TYPE) * 4 * 100 * 2 * 100);
    memcpy(layers_posttrans_fully_connected_0_linear_bias, layers_posttrans_fully_connected_0_linear_bias_in, sizeof(WT_TYPE) * 4 * 100);
    memcpy(MLP_layer_FC_layers_0_weight, MLP_layer_FC_layers_0_weight_in, sizeof(WT_TYPE) * 50 * 100);
    memcpy(MLP_layer_FC_layers_0_bias, MLP_layer_FC_layers_0_bias_in, sizeof(WT_TYPE) * 50);
    memcpy(MLP_layer_FC_layers_1_weight, MLP_layer_FC_layers_1_weight_in, sizeof(WT_TYPE) * 25 * 50);
    memcpy(MLP_layer_FC_layers_1_bias, MLP_layer_FC_layers_1_bias_in, sizeof(WT_TYPE) * 25);
    memcpy(MLP_layer_FC_layers_2_weight, MLP_layer_FC_layers_2_weight_in, sizeof(WT_TYPE) * 1 * 25);
    memcpy(MLP_layer_FC_layers_2_bias, MLP_layer_FC_layers_2_bias_in, sizeof(WT_TYPE) * 1);
}

void load_graph(WT_TYPE *node_eigen_in, int degree_table_in[][2], int neighbor_table_in[], int num_of_nodes, int num_of_edges)
{
#pragma HLS INLINE off
    for (int i = 0; i < num_of_nodes; i++)
    {
        node_eigen[i] = node_eigen_in[(i * 4) + 1];
    }
    for (int i = 0; i < num_of_nodes; i++)
    {
        degree_table[i] = degree_table_in[i][0];
    }
    for (int i = 0; i < num_of_edges; i++)
    {
        neighbor_table[i] = neighbor_table_in[i];
    }
}

void fetch_degree(
    hls::stream<int> &degree,
    int degree_table[],
    int num_of_nodes
)
{
#pragma HLS INLINE off
    for (int nd = 0; nd < num_of_nodes; nd++)
    {
        degree << degree_table[nd];
    }
}

void gather(
    hls::stream<int>& degree,
    hls::stream<gathered_t>& gathered,
    FM_TYPE h_node[][EMB_DIM],
    int num_of_nodes,
    int num_of_edges
)
{
#pragma HLS INLINE off

    int e = 0;
    int v = 0;
    int start_idx = 0;
    int degree_v;
    degree >> degree_v;
    int end_idx = degree_v;
    WT_TYPE v_eigen = node_eigen[v];
    WT_TYPE eigw_sum = 0;
    WT_TYPE eig_abssum = 0;

#pragma HLS ARRAY_PARTITION variable=h_node cyclic dim=2 factor=(GATHER_PARALLEL / 2)
    FM_TYPE node_acc_1[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=node_acc_1 complete dim=1
    FM_TYPE node_acc_2[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=node_acc_2 complete dim=1

    for (int _ = 0; _ < num_of_nodes + num_of_edges; _++)
    {
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += GATHER_PARALLEL)
        {
            bool is_start_of_row = (e == start_idx);
            bool is_end_of_row = (e == end_idx);
            bool is_last_dim = (dim_base + GATHER_PARALLEL >= EMB_DIM);
            bool is_last_v = (v == num_of_nodes - 1);
            int node_to_fetch = (is_end_of_row) ? v : neighbor_table[e];
            int node_eigen_to_fetch = (is_end_of_row) ? (v + 1) : node_to_fetch;
            WT_TYPE node_eigen_el = node_eigen[node_eigen_to_fetch];
            WT_TYPE eig_w = node_eigen_el - v_eigen;

            gathered_t gathered_el;
            for (int dim_offset = 0; dim_offset < GATHER_PARALLEL; dim_offset++)
            {
#pragma HLS UNROLL
                int dim = dim_base + dim_offset;
                if (dim < EMB_DIM)
                {
                    FM_TYPE h_node_el = h_node[node_to_fetch][dim];
                    if (is_end_of_row)
                    {
                        gathered_el.message_1[dim_offset] = node_acc_1[dim] / degree_v;
                        gathered_el.message_2[dim_offset] = hls::abs(FM_TYPE((node_acc_2[dim] - eigw_sum * h_node_el) / eig_abssum));
                        gathered_el.h_node_v[dim_offset] = h_node_el;
                    }
                    else
                    {
                        {
                            FM_TYPE acc = (is_start_of_row) ? FM_TYPE(0) : node_acc_1[dim];
                            node_acc_1[dim] = acc + h_node_el;
                        }
                        {
                            FM_TYPE acc = (is_start_of_row) ? FM_TYPE(0) : node_acc_2[dim];
                            node_acc_2[dim] = acc + h_node_el * eig_w;
                        }
                    }
                }
            }

            if (is_last_dim)
            {
                if (is_end_of_row && !is_last_v)
                {
                    v++;
                    degree >> degree_v;
                    start_idx = e;
                    end_idx = start_idx + degree_v;
                    v_eigen = node_eigen_el;
                    eigw_sum = 0;
                    eig_abssum = 0;
                }
                else
                {
                    eigw_sum += eig_w;
                    eig_abssum += hls::abs(eig_w);
                    e++;
                }
            }

            if (is_end_of_row)
            {
                gathered << gathered_el;
            }
        }
    }
}

void apply_read_one_batch(
    hls::stream<gathered_t>& gathered,
    FM_TYPE activations_1[EMB_DIM],
    FM_TYPE activations_2[EMB_DIM],
    FM_TYPE h_node_v[EMB_DIM],
    int dim_base
)
{
#pragma HLS INLINE
    if (dim_base >= EMB_DIM)
    {
        return;
    }

    gathered_t gathered_el;
    gathered >> gathered_el;
    for (int dim_offset = 0; dim_offset < GATHER_PARALLEL; dim_offset++)
    {
#pragma HLS UNROLL
        int dim = dim_base + dim_offset;
        if (dim < EMB_DIM)
        {
            activations_1[dim] = gathered_el.message_1[dim_offset];
            activations_2[dim] = gathered_el.message_2[dim_offset];
            h_node_v[dim] = gathered_el.h_node_v[dim_offset];
        }
    }
}

void apply_accumulate_one_batch(
    FM_TYPE activations_1[EMB_DIM],
    FM_TYPE activations_2[EMB_DIM],
    FM_TYPE accs[L_OUT],
    int i,
    int dim_base
)
{
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=layers_posttrans_fully_connected_0_linear_weight complete dim=2
#pragma HLS ARRAY_PARTITION variable=layers_posttrans_fully_connected_0_linear_weight complete dim=3
#pragma HLS ARRAY_PARTITION variable=layers_posttrans_fully_connected_0_linear_weight block dim=4 factor=2
#pragma HLS ARRAY_PARTITION variable=layers_posttrans_fully_connected_0_linear_bias complete dim=2

    for (int dim_offset = 0; dim_offset < APPLY_PARALLEL; dim_offset++)
    {
#pragma HLS UNROLL
        int dim_in = dim_base + dim_offset;
        FM_TYPE activation_1 = activations_1[dim_in];
        FM_TYPE activation_2 = activations_2[dim_in];

        for (int dim_out = 0; dim_out < L_OUT; dim_out++)
        {
#pragma HLS UNROLL
            accs[dim_out] = (
                activation_1 * layers_posttrans_fully_connected_0_linear_weight[i][dim_out][0][dim_in]
                + activation_2 * layers_posttrans_fully_connected_0_linear_weight[i][dim_out][1][dim_in]
                + ((dim_in == 0)
                    ? FM_TYPE(layers_posttrans_fully_connected_0_linear_bias[i][dim_out])
                    : accs[dim_out])
            );
        }
    }
}

void apply_output_one_batch(
    FM_TYPE accs[L_OUT],
    FM_TYPE h_node_v[EMB_DIM],
    FM_TYPE next_h_node_v[EMB_DIM],
    int dim_base
)
{
#pragma HLS INLINE
    for (int dim_offset = 0; dim_offset < APPLY_PARALLEL; dim_offset++)
    {
#pragma HLS UNROLL
        int dim = dim_base + dim_offset;
        FM_TYPE acc = accs[dim];
        FM_TYPE relu_acc = (acc > 0.0) ? acc : FM_TYPE(0.0);
        next_h_node_v[dim] = h_node_v[dim] + relu_acc;
    }
}

void apply(
    hls::stream<gathered_t>& gathered,
    FM_TYPE next_h_node[][EMB_DIM],
    int i,
    int num_of_nodes
)
{
#pragma HLS INLINE off

    for (int v = 0; v <= num_of_nodes; v++)
    {
        FM_TYPE activations_1[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=activations_1 cyclic dim=1 factor=GATHER_PARALLEL
        FM_TYPE activations_2[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=activations_2 cyclic dim=1 factor=GATHER_PARALLEL
        FM_TYPE h_node_v_ping[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=h_node_v_ping cyclic dim=1 factor=GATHER_PARALLEL
        FM_TYPE h_node_v_pong[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=h_node_v_pong cyclic dim=1 factor=GATHER_PARALLEL
        FM_TYPE accs_ping[L_OUT];
#pragma HLS ARRAY_PARTITION variable=accs_ping complete dim=1
        FM_TYPE accs_pong[L_OUT];
#pragma HLS ARRAY_PARTITION variable=accs_pong complete dim=1

        for (int gather_base = 0, apply_base = 0; apply_base < EMB_DIM; gather_base += GATHER_PARALLEL, apply_base += APPLY_PARALLEL)
        {
#pragma HLS PIPELINE II=1
            if (v != num_of_nodes)
            {
                apply_read_one_batch(
                    gathered,
                    activations_1,
                    activations_2,
                    (v % 2 == 0) ? h_node_v_ping : h_node_v_pong,
                    gather_base
                );
                apply_accumulate_one_batch(
                    activations_1,
                    activations_2,
                    (v % 2 == 0) ? accs_ping : accs_pong,
                    i,
                    apply_base
                );
            }
            if (v != 0)
            {
                apply_output_one_batch(
                    (v % 2 == 0) ? accs_pong : accs_ping,
                    (v % 2 == 0) ? h_node_v_pong : h_node_v_ping,
                    next_h_node[v - 1],
                    apply_base
                );
            }
        }
    }
}

void compute_CONV_layer(
    int i,
    FM_TYPE h_node[][EMB_DIM],
    FM_TYPE next_h_node[][EMB_DIM],
    int degree_table[],
    int num_of_nodes,
    int num_of_edges
)
{
#pragma HLS INLINE off
#pragma HLS DATAFLOW

    hls::stream<int> degree("degree");
#pragma HLS STREAM variable=degree depth=200
    hls::stream<gathered_t> gathered("gathered");
#pragma HLS STREAM variable=gathered depth=100

    fetch_degree(degree, degree_table, num_of_nodes);
    gather(degree, gathered, h_node, num_of_nodes, num_of_edges);
    apply(gathered, next_h_node, i, num_of_nodes);
}

void global_mean_pooling(int num_of_nodes, FM_TYPE h_node[][EMB_DIM])
{
#pragma HLS INLINE off

    for (int i = 0; i < num_of_nodes; i++)
    {
        for (int j = 0; j < EMB_DIM; j++)
        {
            FM_TYPE temp = h_node[i][j];
            if (i == 0)
                h_graph[j] = temp;
            else if (i == num_of_nodes - 1)
                h_graph[j] = (h_graph[j] + temp) / num_of_nodes;
            else
                h_graph[j] += temp;
        }
    }
}

float MLP()
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=MLP_layer_FC_layers_1_weight type=complete dim=2

    FM_TYPE temp_0[50];
    FM_TYPE temp_1[25];
    FM_TYPE temp_2;

    MLP_loop_1:
    for (int dim_out = 0; dim_out < 50; dim_out++)
    {
        temp_0[dim_out] = MLP_layer_FC_layers_0_bias[dim_out];
        for (int dim_in = 0; dim_in < 100; dim_in++)
        {
            temp_0[dim_out] += h_graph[dim_in] * MLP_layer_FC_layers_0_weight[dim_out][dim_in];
        }
        if (temp_0[dim_out] < FM_TYPE(0.0)) temp_0[dim_out] = FM_TYPE(0.0);
    }

    MLP_loop_2:
    for (int dim_out = 0; dim_out < 25; dim_out++)
    {
        temp_1[dim_out] = MLP_layer_FC_layers_1_bias[dim_out];
        for (int dim_in = 0; dim_in < 50; dim_in++)
        {
            temp_1[dim_out] += temp_0[dim_in] * MLP_layer_FC_layers_1_weight[dim_out][dim_in];
        }
        if (temp_1[dim_out] < FM_TYPE(0.0)) temp_1[dim_out] = FM_TYPE(0.0);
    }

    temp_2 = MLP_layer_FC_layers_2_bias[0];
    MLP_loop_3:
    for (int dim_in = 0; dim_in < 25; dim_in++)
    {
        temp_2 += temp_1[dim_in] * MLP_layer_FC_layers_2_weight[0][dim_in];
    }
    return temp_2.to_float();
}

void load_input_node_embeddings(int* node_feature, WT_TYPE embedding_h_atom_embedding_list_weights[9][119][100], int num_of_nodes, FM_TYPE h_node[][EMB_DIM])
{
#pragma HLS INLINE off

    /*Embedding: compute input node embedding */
    for (int nd = 0, node_feature_base = 0; nd < num_of_nodes; nd++, node_feature_base += ND_FEATURE)
    {
// I wouldn't pipeline this loop, myself, but Vitis wanted to, so:
#pragma HLS PIPELINE II=111

        array<WT_TYPE, EMB_DIM> weights[ND_FEATURE];
        for (int nf = 0; nf < ND_FEATURE; nf++)
        {
#pragma HLS UNROLL
            int nd_f = node_feature[node_feature_base + nf];
            weights[nf] = *((array<WT_TYPE, EMB_DIM>*)embedding_h_atom_embedding_list_weights[nf][nd_f]);
        }

        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += LOAD_IN_EMB_PARALLEL)
        {
// Commented out since we are pipelining the outer loop:
// #pragma HLS PIPELINE II=1
            for (int dim_offset = 0; dim_offset < LOAD_IN_EMB_PARALLEL; dim_offset++)
            {
                int dim = dim_base + dim_offset;
                FM_TYPE h_node_nd_dim = 0;
                for (int nf = 0; nf < ND_FEATURE; nf++)
                {
                    h_node_nd_dim += weights[nf][dim];
                }
                h_node[nd][dim] = h_node_nd_dim;
            }
        }
    }
}

extern "C" {
void DGN_compute_one_graph(
    float* out,
    int* node_feature_in,
    WT_TYPE* node_eigen_in,
    int degree_table_in[][2],
    int neighbor_table_in[],
    int* graph_attr,
    WT_TYPE embedding_h_atom_embedding_list_weights_in[9][119][100],
    WT_TYPE layers_posttrans_fully_connected_0_linear_weight_in[4][100][200],
    WT_TYPE layers_posttrans_fully_connected_0_linear_bias_in[4][100],
    WT_TYPE MLP_layer_FC_layers_0_weight_in[50][100],
    WT_TYPE MLP_layer_FC_layers_0_bias_in[50],
    WT_TYPE MLP_layer_FC_layers_1_weight_in[25][50],
    WT_TYPE MLP_layer_FC_layers_1_bias_in[25],
    WT_TYPE MLP_layer_FC_layers_2_weight_in[1][25],
    WT_TYPE MLP_layer_FC_layers_2_bias_in[1]
)
{
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS INTERFACE m_axi depth=(1) port=out offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(9 * 500) port=node_feature_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(4 * 500) port=node_eigen_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(500) port=degree_table_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(500) port=neighbor_table_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(3) port=graph_attr offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(9 * 119 * 100) port=embedding_h_atom_embedding_list_weights_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(4 * 100 * 200) port=layers_posttrans_fully_connected_0_linear_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(4 * 100) port=layers_posttrans_fully_connected_0_linear_bias_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(50 * 100) port=MLP_layer_FC_layers_0_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(50) port=MLP_layer_FC_layers_0_bias_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(25 * 50) port=MLP_layer_FC_layers_1_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(25) port=MLP_layer_FC_layers_1_bias_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(1 * 25) port=MLP_layer_FC_layers_2_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=(1) port=MLP_layer_FC_layers_2_bias_in offset=slave bundle=mem

#pragma HLS bind_storage variable=h_graph type=RAM_2P impl=bram
#pragma HLS bind_storage variable=layers_posttrans_fully_connected_0_linear_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=layers_posttrans_fully_connected_0_linear_bias type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_0_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_0_bias type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_1_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_1_bias type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_2_weight type=RAM_2P impl=bram

    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];
    int is_first = graph_attr[2];

#ifdef __SYNTHESIS_DEBUG__
    num_of_nodes = 19;
    num_of_edges = 40;
    is_first = 1;
#endif

    if (is_first)
    {
        load_weights(
            layers_posttrans_fully_connected_0_linear_weight_in,
            layers_posttrans_fully_connected_0_linear_bias_in,
            MLP_layer_FC_layers_0_weight_in,
            MLP_layer_FC_layers_0_bias_in,
            MLP_layer_FC_layers_1_weight_in,
            MLP_layer_FC_layers_1_bias_in,
            MLP_layer_FC_layers_2_weight_in,
            MLP_layer_FC_layers_2_bias_in
        );
    }

    load_graph(node_eigen_in, degree_table_in, neighbor_table_in, num_of_nodes, num_of_edges);
    load_input_node_embeddings(node_feature_in, embedding_h_atom_embedding_list_weights_in, num_of_nodes, h_node_ping);

    for (int i = 0; i < 4; i++)
    {
        if (i % 2 == 0)
            compute_CONV_layer(i, h_node_ping, h_node_pong, degree_table, num_of_nodes, num_of_edges);
        else
            compute_CONV_layer(i, h_node_pong, h_node_ping, degree_table, num_of_nodes, num_of_edges);
    }

    global_mean_pooling(num_of_nodes, h_node_ping);
    *out = MLP();
}
}
