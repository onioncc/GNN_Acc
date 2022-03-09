#include "dcl.h"
#include "math.h"
#include "hls_math.h"
#include <stdio.h>
#include <array>

using std::array;

template <typename T>
static constexpr T ceildiv(T dividend, T divisor)
{
    return (dividend + divisor - 1) / divisor;
}

template <typename T>
static constexpr T roundup(T dividend, T divisor)
{
    return ceildiv(dividend, divisor) * divisor;
}

template <typename T>
static constexpr T ap_fixed_epsilon()
{
    return T(1.0 / (1 << (T::width - T::iwidth)));
}

//#define _PRINT_

WT_TYPE embedding_h_atom_embedding_list_weights[9][119][100];
WT_TYPE layers_posttrans_fully_connected_0_linear_weight[4][100][2][100];
WT_TYPE layers_posttrans_fully_connected_0_linear_bias[4][100];
WT_TYPE MLP_layer_FC_layers_0_weight[50][100];
WT_TYPE MLP_layer_FC_layers_0_bias[50];
WT_TYPE MLP_layer_FC_layers_1_weight[25][50];
WT_TYPE MLP_layer_FC_layers_1_bias[25];
WT_TYPE MLP_layer_FC_layers_2_weight[1][25];
WT_TYPE MLP_layer_FC_layers_2_bias[1];

int degree_table[MAX_NODE];
int degree_tables[EDGE_PARALLEL][MAX_NODE][2];
int neighbor_table[MAX_EDGE];
int neighbor_tables[EDGE_PARALLEL][MAX_EDGE];
WT_TYPE eig_w[EDGE_PARALLEL][MAX_EDGE];
WT_TYPE eig_abssums[MAX_NODE];
WT_TYPE eigw_sums[MAX_NODE];
int num_of_edges_per_pe[EDGE_PARALLEL];

// BRAM for intermediate storage
FM_TYPE messages_ping[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][2][EMB_DIM];
FM_TYPE messages_pong[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][2][EMB_DIM];

FM_TYPE h_node[MAX_NODE][EMB_DIM];

template<typename T, int DIM_1>
void load_array_1d(T dst[DIM_1], hls::stream<qdma_axis<T::width, 0, 0, 0>>& src)
{
#pragma HLS INLINE
    for (int i = 0; i < DIM_1; i++)
    {
        qdma_axis<T::width, 0, 0, 0> pkt;
        src >> pkt;
        dst[i].range() = pkt.data.range();
    }
}

template<typename T, int DIM_1, int DIM_2>
void load_array_2d(T dst[DIM_1][DIM_2], hls::stream<qdma_axis<T::width, 0, 0, 0>>& src)
{
#pragma HLS INLINE
    for (int i = 0; i < DIM_1; i++)
    {
        for (int j = 0; j < DIM_2; j++)
        {
            qdma_axis<T::width, 0, 0, 0> pkt;
            src >> pkt;
            dst[i][j].range() = pkt.data.range();
        }
    }
}

template<typename T, int DIM_1, int DIM_2, int DIM_3>
void load_array_3d(T dst[DIM_1][DIM_2][DIM_3], hls::stream<qdma_axis<T::width, 0, 0, 0>>& src)
{
#pragma HLS INLINE
    for (int i = 0; i < DIM_1; i++)
    {
        for (int j = 0; j < DIM_2; j++)
        {
            for (int k = 0; k < DIM_3; k++)
            {
                qdma_axis<T::width, 0, 0, 0> pkt;
                src >> pkt;
                dst[i][j][k].range() = pkt.data.range();
            }
        }
    }
}

template<typename T, int DIM_1, int DIM_2, int DIM_3, int DIM_4>
void load_array_4d(T dst[DIM_1][DIM_2][DIM_3][DIM_4], hls::stream<qdma_axis<T::width, 0, 0, 0>>& src)
{
#pragma HLS INLINE
    for (int i = 0; i < DIM_1; i++)
    {
        for (int j = 0; j < DIM_2; j++)
        {
            for (int k = 0; k < DIM_3; k++)
            {
                for (int l = 0; l < DIM_4; l++)
                {
                    qdma_axis<T::width, 0, 0, 0> pkt;
                    src >> pkt;
                    dst[i][j][k][l].range() = pkt.data.range();
                }
            }
        }
    }
}

void load_weights(hls::stream<qdma_axis<WT_TYPE::width, 0, 0, 0>>& weights)
{
#pragma HLS INLINE off
    load_array_3d<WT_TYPE, 9, 119, 100>(embedding_h_atom_embedding_list_weights, weights);
    load_array_4d<WT_TYPE, 4, 100, 2, 100>(layers_posttrans_fully_connected_0_linear_weight, weights);
    load_array_2d<WT_TYPE, 4, 100>(layers_posttrans_fully_connected_0_linear_bias, weights);
    load_array_2d<WT_TYPE, 50, 100>(MLP_layer_FC_layers_0_weight, weights);
    load_array_1d<WT_TYPE, 50>(MLP_layer_FC_layers_0_bias, weights);
    load_array_2d<WT_TYPE, 25, 50>(MLP_layer_FC_layers_1_weight, weights);
    load_array_1d<WT_TYPE, 25>(MLP_layer_FC_layers_1_bias, weights);
    load_array_2d<WT_TYPE, 1, 25>(MLP_layer_FC_layers_2_weight, weights);
    load_array_1d<WT_TYPE, 1>(MLP_layer_FC_layers_2_bias, weights);
}

void load_graph(
    hls::stream<qdma_axis<2 * 32, 0, 0, 0>>& edge_list_stream,
    hls::stream<qdma_axis<4 * WT_TYPE::width, 0, 0, 0>>& node_eigen_stream,
    int num_of_nodes,
    int num_of_edges
)
{
#pragma HLS INLINE off

    int neighbor_table_offsets[MAX_NODE];
    int neighbor_tables_offsets[EDGE_PARALLEL][MAX_NODE];
    edge_t edge_cache[MAX_EDGE];
    ap_uint<4 * WT_TYPE::width> node_eigen_cache[MAX_NODE];

#pragma HLS ARRAY_PARTITION variable=degree_tables complete dim=1
#pragma HLS ARRAY_PARTITION variable=degree_tables complete dim=3
#pragma HLS ARRAY_PARTITION variable=neighbor_tables complete dim=1
#pragma HLS ARRAY_PARTITION variable=neighbor_tables_offsets complete dim=1
#pragma HLS ARRAY_PARTITION variable=eig_w complete dim=1
#pragma HLS ARRAY_PARTITION variable=num_of_edges_per_pe complete dim=1

    for (int i = 0; i < num_of_nodes; i++)
    {
#pragma HLS LOOP_TRIPCOUNT min=19 max=19 avg=19
        degree_table[i] = 0;
        eig_abssums[i] = 0;
        eigw_sums[i] = 0;

        for (int j = 0; j < EDGE_PARALLEL; j++)
        {
#pragma HLS UNROLL
            degree_tables[j][i][0] = 0;
        }
    }

    for (int i = 0; i < num_of_nodes; i++)
    {
#pragma HLS LOOP_TRIPCOUNT min=19 max=19 avg=19
        qdma_axis<4 * WT_TYPE::width, 0, 0, 0> node_eigen_pkt;
        node_eigen_stream >> node_eigen_pkt;
        node_eigen_cache[i] = node_eigen_pkt.data;
    }

    for (int i = 0; i < num_of_edges; i++)
    {
#pragma HLS LOOP_TRIPCOUNT min=40 max=40 avg=40
        // TODO: can we make this II=1?
#pragma HLS PIPELINE II=2
        qdma_axis<2 * 32, 0, 0, 0> edge_pkt;
        edge_list_stream >> edge_pkt;
        ap_uint<64> edge_data = edge_pkt.data;
        int u = edge_data(31, 0);
        int v = edge_data(63, 32);
        int pe_id = v % EDGE_PARALLEL;
        degree_table[u]++;
        degree_tables[pe_id][u][0]++;
        edge_cache[i] = {u, v};
    }

    int acc = 0;
    for (int i = 0; i < EDGE_PARALLEL; i++)
    {
#pragma HLS UNROLL
        num_of_edges_per_pe[i] = 0;
    }

    for (int i = 0; i < num_of_nodes; i++)
    {
#pragma HLS LOOP_TRIPCOUNT min=19 max=19 avg=19
        int degree = degree_table[i];
        neighbor_table_offsets[i] = acc;
        acc += degree;

        for (int j = 0; j < EDGE_PARALLEL; j++)
        {
#pragma HLS UNROLL
            int degree_j = degree_tables[j][i][0];
            neighbor_tables_offsets[j][i] = num_of_edges_per_pe[j];
            degree_tables[j][i][1] = num_of_edges_per_pe[j];
            num_of_edges_per_pe[j] += degree_j;
        }
    }

    for (int i = 0; i < num_of_edges; i++)
    {
#pragma HLS LOOP_TRIPCOUNT min=40 max=40 avg=40
        // TODO: can we make this II=1?
#pragma HLS PIPELINE II=2
        edge_t edge = edge_cache[i];
        int u = edge.u;
        int v = edge.v;
        int pe_id = v % EDGE_PARALLEL;
        int e = neighbor_table_offsets[u];
        int e_pe = neighbor_tables_offsets[pe_id][u];
        neighbor_table[e] = v;
        neighbor_table_offsets[u] = e + 1;
        neighbor_tables[pe_id][e_pe] = v / EDGE_PARALLEL;
        neighbor_tables_offsets[pe_id][u] = e_pe + 1;

        WT_TYPE u_eigen;
        u_eigen.range() = node_eigen_cache[u](2 * WT_TYPE::width - 1, 1 * WT_TYPE::width);
        WT_TYPE v_eigen;
        v_eigen.range() = node_eigen_cache[v](2 * WT_TYPE::width - 1, 1 * WT_TYPE::width);
        WT_TYPE diff_eigen = u_eigen - v_eigen;
        eig_w[pe_id][e_pe] = diff_eigen;
        eig_abssums[v] += hls::abs(diff_eigen);
        eigw_sums[v] += diff_eigen;
    }
}

void message_passing_sub(
    int pe_id,
    hls::stream<mp_in_t>& embeddings_per_edge,
    FM_TYPE message[ceildiv(MAX_NODE, EDGE_PARALLEL)][2][EMB_DIM]
)
{
#pragma HLS INLINE off

    mp_in_t embedding;
#pragma HLS AGGREGATE variable=embedding
    int num_of_edges = num_of_edges_per_pe[pe_id];

    for (int e = 0; e < num_of_edges; e++)
    {
#pragma HLS PIPELINE II=ceildiv(EMB_DIM, SCATTER_PARALLEL)
#pragma HLS LOOP_TRIPCOUNT min=0 max=40 avg=(40 / EDGE_PARALLEL)
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += SCATTER_PARALLEL)
        {
            WT_TYPE eig_w_e = eig_w[pe_id][e];
            int v = neighbor_tables[pe_id][e];
            embeddings_per_edge >> embedding;

            for (int dim_offset = 0; dim_offset < SCATTER_PARALLEL; dim_offset++)
            {
#pragma HLS UNROLL
                int dim = dim_base + dim_offset;
                if (dim < EMB_DIM)
                {
                    message[v][0][dim] += embedding[dim_offset];
                    message[v][1][dim] += embedding[dim_offset] * eig_w_e;
                }
            }
        }
    }
}

void ne_to_mp_adapter(
    hls::stream<ne_out_t> ne_out[NODE_PARALLEL],
    hls::stream<mp_in_t> mp_in[EDGE_PARALLEL][NODE_PARALLEL],
    int num_of_nodes
)
{
#pragma HLS INLINE off

    ne_out_t ne_out_struct;
#pragma HLS AGGREGATE variable=ne_out_struct
    mp_in_t mp_in_struct[NODE_PARALLEL];
#pragma HLS AGGREGATE variable=mp_in_struct

    int num_iters = ceildiv(num_of_nodes, NODE_PARALLEL);
    for (int i = 0, nd_base = 0; i < num_iters; i++, nd_base += NODE_PARALLEL)
    {
#pragma HLS PIPELINE II=ceildiv(EMB_DIM, APPLY_PARALLEL)
#pragma HLS LOOP_TRIPCOUNT min=ceildiv(19, NODE_PARALLEL) max=ceildiv(19, NODE_PARALLEL) avg=ceildiv(19, NODE_PARALLEL)
        for (int ne_dim_base = 0; ne_dim_base < EMB_DIM; ne_dim_base += APPLY_PARALLEL)
        {
            for (int nd_offset = 0; nd_offset < NODE_PARALLEL; nd_offset++)
            {
#pragma HLS UNROLL
                int nd = nd_base + nd_offset;
                if (nd < num_of_nodes)
                {
                    ne_out[nd_offset] >> ne_out_struct;
                    for (int ne_dim_offset = 0; ne_dim_offset < APPLY_PARALLEL; ne_dim_offset++)
                    {
#pragma HLS UNROLL
                        int dim = ne_dim_base + ne_dim_offset;
                        if (dim < EMB_DIM)
                        {
                            int mp_dim_offset = dim % SCATTER_PARALLEL;
                            mp_in_struct[nd_offset][mp_dim_offset] = ne_out_struct[ne_dim_offset];
                            if (dim == EMB_DIM - 1 || mp_dim_offset == SCATTER_PARALLEL - 1)
                            {
                                for (int i = 0; i < EDGE_PARALLEL; i++)
                                {
#pragma HLS UNROLL
                                    mp_in[i][nd_offset] << mp_in_struct[nd_offset];
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

void filter_embeddings_from_stream(
    int pe_id,
    hls::stream<mp_in_t> unfiltered_embeddings_per_node[NODE_PARALLEL],
    hls::stream<int>& degrees,
    hls::stream<mp_in_t>& filtered_embeddings_per_node,
    int num_of_nodes
)
{
#pragma HLS INLINE off

    for (int nd = 0; nd < num_of_nodes; nd++)
    {
#pragma HLS PIPELINE II=ceildiv(EMB_DIM, SCATTER_PARALLEL)
#pragma HLS LOOP_TRIPCOUNT min=19 max=19 avg=19
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += SCATTER_PARALLEL)
        {
            int degree = degree_tables[pe_id][nd][0];
            if (dim_base == 0 && degree != 0)
            {
                degrees << degree;
            }

            mp_in_t embedding;
            unfiltered_embeddings_per_node[nd % NODE_PARALLEL] >> embedding;
            if (degree != 0)
            {
                filtered_embeddings_per_node << embedding;
            }
        }
    }
}

void duplicate_embeddings_from_stream(
    int pe_id,
    hls::stream<int>& degrees,
    hls::stream<mp_in_t>& embeddings_per_node,
    hls::stream<mp_in_t>& embeddings_per_edge
)
{
#pragma HLS INLINE off

    mp_in_t mp_ins[ceildiv(EMB_DIM, SCATTER_PARALLEL)];
    int e_start = 0;
    int e_end = 0;
    int num_of_edges = num_of_edges_per_pe[pe_id];

    for (int e = 0; e < num_of_edges; e++)
    {
#pragma HLS LOOP_TRIPCOUNT min=0 max=40 avg=(40 / EDGE_PARALLEL)
        for (int dim_base = 0, i = 0; dim_base < EMB_DIM; dim_base += SCATTER_PARALLEL, i++)
        {
            if (e >= e_end)
            {
                int degree;
                degrees >> degree;
                e_start = e;
                e_end = e + degree;
            }

            mp_in_t mp_in;
            if (e == e_start)
            {
                embeddings_per_node >> mp_in;
                mp_ins[i] = mp_in;
            }
            else
            {
                mp_in = mp_ins[i];
            }
            embeddings_per_edge << mp_in;
        }
    }
}

void message_passing_pe(
    int pe_id,
    hls::stream<mp_in_t> embeddings_per_node[NODE_PARALLEL],
    FM_TYPE message[ceildiv(MAX_NODE, EDGE_PARALLEL)][2][EMB_DIM],
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS DATAFLOW

    hls::stream<int> degrees("degrees");
#pragma HLS STREAM variable=degrees depth=20
    hls::stream<mp_in_t> filtered_embeddings_per_node("filtered_embeddings_per_node");
#pragma HLS STREAM variable=filtered_embeddings_per_node depth=(20 * ceildiv(EMB_DIM, SCATTER_PARALLEL))
    hls::stream<mp_in_t> embeddings_per_edge("embeddings_per_edge");
#pragma HLS STREAM variable=embeddings_per_edge depth=(20 * ceildiv(EMB_DIM, SCATTER_PARALLEL))

    filter_embeddings_from_stream(pe_id, embeddings_per_node, degrees, filtered_embeddings_per_node, num_of_nodes);
    duplicate_embeddings_from_stream(pe_id, degrees, filtered_embeddings_per_node, embeddings_per_edge);
    message_passing_sub(pe_id, embeddings_per_edge, message);
}

void apply_accumulate_one_batch(
    FM_TYPE message[2][EMB_DIM],
    FM_TYPE h_node_v[EMB_DIM],
    FM_TYPE accs[L_OUT],
    FM_TYPE h_node_buf[EMB_DIM],
    int degree,
    WT_TYPE eigw_sum,
    WT_TYPE eig_abssum,
    int layer_num,
    int dim_base
)
{
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=layers_posttrans_fully_connected_0_linear_weight complete dim=2
#pragma HLS ARRAY_PARTITION variable=layers_posttrans_fully_connected_0_linear_weight complete dim=3
#pragma HLS ARRAY_PARTITION variable=layers_posttrans_fully_connected_0_linear_weight cyclic factor=APPLY_PARALLEL dim=4
#pragma HLS ARRAY_PARTITION variable=layers_posttrans_fully_connected_0_linear_bias complete dim=2

    if (eig_abssum == 0.0)
    {
        eig_abssum = ap_fixed_epsilon<WT_TYPE>();
    }

    for (int dim_offset = 0; dim_offset < APPLY_PARALLEL; dim_offset++)
    {
#pragma HLS UNROLL
        int dim_in = dim_base + dim_offset;

        FM_TYPE message_1 = message[0][dim_in];
        FM_TYPE message_2 = message[1][dim_in];

        // clear message table in preparation for next round of message passing
        message[0][dim_in] = 0;
        message[1][dim_in] = 0;

        FM_TYPE h_node_el = h_node_v[dim_in];
        h_node_buf[dim_in] = h_node_el;

        FM_TYPE activation_1 = message_1 / degree;
        FM_TYPE activation_2 = hls::abs(FM_TYPE((message_2 - eigw_sum * h_node_el) / eig_abssum));

        for (int dim_out = 0; dim_out < L_OUT; dim_out++)
        {
#pragma HLS UNROLL
            FM_TYPE addend = (
                activation_1 * layers_posttrans_fully_connected_0_linear_weight[layer_num][dim_out][0][dim_in]
                + activation_2 * layers_posttrans_fully_connected_0_linear_weight[layer_num][dim_out][1][dim_in]
            );
            FM_TYPE bias = layers_posttrans_fully_connected_0_linear_bias[layer_num][dim_out];
            accs[dim_out] = addend + ((dim_in == 0) ? bias : accs[dim_out]);
        }
    }
}

void apply_output_one_batch(
    FM_TYPE h_node_v[EMB_DIM],
    FM_TYPE accs[L_OUT],
    FM_TYPE h_node_buf[EMB_DIM],
    hls::stream<ne_out_t>& embeddings,
    int dim_base
)
{
#pragma HLS INLINE
    ne_out_t output;
#pragma HLS AGGREGATE variable=output
    for (int dim_offset = 0; dim_offset < APPLY_PARALLEL; dim_offset++)
    {
#pragma HLS UNROLL
        int dim = dim_base + dim_offset;
        FM_TYPE acc = accs[dim];
        FM_TYPE relu_acc = (hls::signbit(acc)) ? FM_TYPE(0.0) : acc;
        FM_TYPE result = h_node_buf[dim] + relu_acc;
        h_node_v[dim] = result;
        output[dim_offset] = result;
    }
    embeddings << output;
}

void apply(
    hls::stream<ne_out_t> embeddings[NODE_PARALLEL],
    FM_TYPE message[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][2][EMB_DIM],
    int layer_num,
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=h_node cyclic factor=NODE_PARALLEL dim=1
#pragma HLS ARRAY_PARTITION variable=h_node cyclic factor=APPLY_PARALLEL dim=2

    FM_TYPE accs_ping[NODE_PARALLEL][L_OUT];
#pragma HLS ARRAY_PARTITION variable=accs_ping complete dim=1
#pragma HLS ARRAY_PARTITION variable=accs_ping complete dim=2
    FM_TYPE accs_pong[NODE_PARALLEL][L_OUT];
#pragma HLS ARRAY_PARTITION variable=accs_pong complete dim=1
#pragma HLS ARRAY_PARTITION variable=accs_pong complete dim=2
    FM_TYPE h_node_ping[NODE_PARALLEL][EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=h_node_ping complete dim=1
#pragma HLS ARRAY_PARTITION variable=h_node_ping cyclic factor=APPLY_PARALLEL dim=2
    FM_TYPE h_node_pong[NODE_PARALLEL][EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=h_node_pong complete dim=1
#pragma HLS ARRAY_PARTITION variable=h_node_pong cyclic factor=APPLY_PARALLEL dim=2

    int num_iters = ceildiv(num_of_nodes, NODE_PARALLEL) + 1;
    for (
        int i = 0, acc_v_base = 0, out_v_base = -NODE_PARALLEL;
        i < num_iters;
        i++, acc_v_base += NODE_PARALLEL, out_v_base += NODE_PARALLEL
    )
    {
#pragma HLS LOOP_TRIPCOUNT min=(ceildiv(19, NODE_PARALLEL) + 1) max=(ceildiv(19, NODE_PARALLEL) + 1) avg=(ceildiv(19, NODE_PARALLEL) + 1)
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += APPLY_PARALLEL)
        {
#pragma HLS PIPELINE II=1
#pragma HLS DEPENDENCE variable=message inter false

            if (i != 0)
            {
                for (int v_offset = 0; v_offset < NODE_PARALLEL; v_offset++)
                {
#pragma HLS UNROLL
                    int v = out_v_base + v_offset;
                    if (v < num_of_nodes)
                    {
                        apply_output_one_batch(
                            h_node[v],
                            (i % 2 == 0) ? accs_pong[v_offset] : accs_ping[v_offset],
                            (i % 2 == 0) ? h_node_pong[v_offset] : h_node_ping[v_offset],
                            embeddings[v_offset],
                            dim_base
                        );
                    }
                }
            }

            if (i != num_iters - 1)
            {
                for (int v_offset = 0; v_offset < NODE_PARALLEL; v_offset++)
                {
#pragma HLS UNROLL
                    int v = acc_v_base + v_offset;
                    if (v < num_of_nodes)
                    {
                        apply_accumulate_one_batch(
                            message[v % EDGE_PARALLEL][v / EDGE_PARALLEL],
                            h_node[v],
                            (i % 2 == 0) ? accs_ping[v_offset] : accs_pong[v_offset],
                            (i % 2 == 0) ? h_node_ping[v_offset] : h_node_pong[v_offset],
                            degree_table[v],
                            eigw_sums[v],
                            eig_abssums[v],
                            layer_num,
                            dim_base
                        );
                    }
                }
            }
        }
    }
}

void load_input_node_embeddings(
    hls::stream<ne_out_t> embeddings[NODE_PARALLEL],
    hls::stream<qdma_axis<32, 0, 0, 0>>& node_feature_stream,
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=embedding_h_atom_embedding_list_weights complete dim=1
#pragma HLS ARRAY_PARTITION variable=embedding_h_atom_embedding_list_weights cyclic factor=LOAD_IN_EMB_PARALLEL dim=3

    /*Embedding: compute input node embedding */
    for (int nd = 0; nd < num_of_nodes; nd++)
    {
// I wouldn't pipeline this loop, myself, but Vitis wanted to, so:
#pragma HLS PIPELINE II=50
#pragma HLS LOOP_TRIPCOUNT min=19 max=19 avg=19

        int nd_f[ND_FEATURE];
        for (int nf = 0; nf < ND_FEATURE; nf++)
        {
#pragma HLS UNROLL
            qdma_axis<32, 0, 0, 0> node_feature_pkt;
            node_feature_stream >> node_feature_pkt;
            nd_f[nf] = node_feature_pkt.data;
        }

        ne_out_t embedding;
        int embedding_offset = 0;
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
                    h_node_nd_dim += embedding_h_atom_embedding_list_weights[nf][nd_f[nf]][dim];
                }
                h_node[nd][dim] = h_node_nd_dim;

                embedding[embedding_offset] = h_node_nd_dim;
                if (embedding_offset == APPLY_PARALLEL - 1 || dim == EMB_DIM - 1)
                {
                    embeddings[nd % NODE_PARALLEL] << embedding;
                    embedding_offset = 0;
                }
                else
                {
                    embedding_offset++;
                }
            }
        }
    }
}

void node_embedding(
    hls::stream<ne_out_t> embeddings[NODE_PARALLEL],
    FM_TYPE message[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][2][EMB_DIM],
    hls::stream<qdma_axis<32, 0, 0, 0>>& node_feature_stream,
    int i,
    int num_of_nodes
)
{
#pragma HLS INLINE off

    if (i == 0)
    {
        load_input_node_embeddings(embeddings, node_feature_stream, num_of_nodes);
    }
    else
    {
        apply(embeddings, message, i - 1, num_of_nodes);
    }
}

void message_passing_all_pes(
    hls::stream<ne_out_t> ne_out[NODE_PARALLEL],
    FM_TYPE message[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][2][EMB_DIM],
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS DATAFLOW

    hls::stream<mp_in_t> mp_in[EDGE_PARALLEL][NODE_PARALLEL];
#pragma HLS STREAM variable=mp_in depth=40

    ne_to_mp_adapter(ne_out, mp_in, num_of_nodes);
    for (int pe_id = 0; pe_id < EDGE_PARALLEL; pe_id++)
    {
#pragma HLS UNROLL
        message_passing_pe(
            pe_id,
            mp_in[pe_id],
            message[pe_id],
            num_of_nodes
        );
    }
}

void global_mean_pooling(
    hls::stream<ne_out_t> embeddings[NODE_PARALLEL],
    FM_TYPE h_graph[EMB_DIM],
    int num_of_nodes
)
{
#pragma HLS INLINE off

    FM_TYPE sums[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=sums cyclic factor=APPLY_PARALLEL dim=1

    int num_iters = ceildiv(num_of_nodes, NODE_PARALLEL);
    for (int i = 0, nd_base = 0; i < num_iters; i++, nd_base += NODE_PARALLEL)
    {
#pragma HLS LOOP_TRIPCOUNT min=ceildiv(19, NODE_PARALLEL) max=ceildiv(19, NODE_PARALLEL) avg=ceildiv(19, NODE_PARALLEL)
        for (int dim_base = 0; dim_base < EMB_DIM; dim_base += APPLY_PARALLEL)
        {
#pragma HLS PIPELINE II=1

            ne_out_t embeddings_slice[NODE_PARALLEL];
#pragma HLS ARRAY_PARTITION variable=embeddings_slice complete dim=1

            for (int nd_offset = 0; nd_offset < NODE_PARALLEL; nd_offset++)
            {
#pragma HLS UNROLL
                int nd = nd_base + nd_offset;
                if (nd == num_of_nodes) break;
                embeddings[nd_offset] >> embeddings_slice[nd_offset];
            }

            for (int dim_offset = 0; dim_offset < APPLY_PARALLEL; dim_offset++)
            {
#pragma HLS UNROLL
                int dim = dim_base + dim_offset;
                FM_TYPE h_graph_el = 0;

                for (int nd_offset = 0; nd_offset < NODE_PARALLEL; nd_offset++)
                {
#pragma HLS UNROLL
                    int nd = nd_base + nd_offset;
                    if (nd == num_of_nodes) break;
                    h_graph_el += embeddings_slice[nd_offset][dim_offset];
                }

                if (nd_base != 0) h_graph_el += sums[dim];
                sums[dim] = h_graph_el;
                h_graph[dim] = h_graph_el / num_of_nodes;
            }
        }
    }
}

template<
    int DIM_IN,
    int DIM_OUT,
    int PARALLEL,
    bool RELU = true
>
void linear_relu(
    FM_TYPE input[DIM_IN],
    WT_TYPE weight[DIM_OUT][DIM_IN],
    WT_TYPE bias[DIM_OUT],
    FM_TYPE output[DIM_OUT]
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=input complete dim=1
#pragma HLS ARRAY_PARTITION variable=weight cyclic factor=PARALLEL dim=1
#pragma HLS ARRAY_PARTITION variable=weight complete dim=2
#pragma HLS ARRAY_PARTITION variable=bias cyclic factor=PARALLEL dim=1
#pragma HLS ARRAY_PARTITION variable=output cyclic factor=PARALLEL dim=1

    for (int dim_out_base = 0; dim_out_base < DIM_OUT; dim_out_base += PARALLEL)
    {
#pragma HLS PIPELINE II=1
        for (int dim_out_offset = 0; dim_out_offset < PARALLEL; dim_out_offset++)
        {
#pragma HLS UNROLL
            int dim_out = dim_out_base + dim_out_offset;
            FM_TYPE out_el = 0;

            if (dim_out < DIM_OUT)
            {
                out_el = bias[dim_out];
                for (int dim_in = 0; dim_in < DIM_IN; dim_in++)
                {
#pragma HLS UNROLL
                    out_el += input[dim_in] * weight[dim_out][dim_in];
                }
            }

            if (RELU && hls::signbit(out_el)) out_el = 0;
            output[dim_out] = out_el;
        }
    }
}

template<
    int DIM_IN,
    int DIM_OUT,
    int PARALLEL,
    bool RELU = true
>
void linear_relu_output_stationary(
    FM_TYPE input[DIM_IN],
    WT_TYPE weight[DIM_OUT][DIM_IN],
    WT_TYPE bias[DIM_OUT],
    hls::stream<array<FM_TYPE, PARALLEL>>& output
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=input complete dim=1
#pragma HLS ARRAY_PARTITION variable=weight cyclic factor=PARALLEL dim=1
#pragma HLS ARRAY_PARTITION variable=weight complete dim=2
#pragma HLS ARRAY_PARTITION variable=bias cyclic factor=PARALLEL dim=1

    for (int dim_out_base = 0; dim_out_base < DIM_OUT; dim_out_base += PARALLEL)
    {
#pragma HLS PIPELINE II=1
        array<FM_TYPE, PARALLEL> out_slice;
        for (int dim_out_offset = 0; dim_out_offset < PARALLEL; dim_out_offset++)
        {
#pragma HLS UNROLL
            int dim_out = dim_out_base + dim_out_offset;
            FM_TYPE out_el = 0;

            if (dim_out < DIM_OUT)
            {
                out_el = bias[dim_out];
                for (int dim_in = 0; dim_in < DIM_IN; dim_in++)
                {
#pragma HLS UNROLL
                    out_el += input[dim_in] * weight[dim_out][dim_in];
                }
            }

            if (RELU && hls::signbit(out_el)) out_el = 0;
            out_slice[dim_out_offset] = out_el;
        }
        output << out_slice;
    }
}

template<
    int DIM_IN,
    int DIM_OUT,
    int PARALLEL,
    bool RELU = true
>
void linear_relu_input_stationary(
    hls::stream<array<FM_TYPE, PARALLEL>>& input,
    WT_TYPE weight[DIM_OUT][DIM_IN],
    WT_TYPE bias[DIM_OUT],
    FM_TYPE output[DIM_OUT]
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=weight complete dim=1
#pragma HLS ARRAY_PARTITION variable=weight cyclic factor=PARALLEL dim=2
#pragma HLS ARRAY_PARTITION variable=bias complete dim=1
#pragma HLS ARRAY_PARTITION variable=output complete dim=1

    for (int dim_out = 0; dim_out < DIM_OUT; dim_out++)
    {
#pragma HLS UNROLL
        output[dim_out] = bias[dim_out];
    }

    for (int dim_in_base = 0; dim_in_base < DIM_IN; dim_in_base += PARALLEL)
    {
#pragma HLS PIPELINE II=1
        array<FM_TYPE, PARALLEL> in_slice;
        input >> in_slice;
        for (int dim_out = 0; dim_out < DIM_OUT; dim_out++)
        {
#pragma HLS UNROLL
            FM_TYPE addend = 0;
            for (int dim_in_offset = 0; dim_in_offset < PARALLEL; dim_in_offset++)
            {
#pragma HLS UNROLL
                int dim_in = dim_in_base + dim_in_offset;
                FM_TYPE in_el = in_slice[dim_in_offset];
                if (dim_in < DIM_IN)
                {
                    addend += in_el * weight[dim_out][dim_in];
                }
            }
            output[dim_out] += addend;
        }
    }

    for (int dim_out = 0; dim_out < DIM_OUT; dim_out++)
    {
#pragma HLS UNROLL
        if (RELU && hls::signbit(output[dim_out])) output[dim_out] = 0;
    }
}

void write_result(
    hls::stream<qdma_axis<FM_TYPE::width, 0, 0, 0>>& result_stream,
    FM_TYPE* result
)
{
    qdma_axis<FM_TYPE::width, 0, 0, 0> result_pkt;
    result_pkt.data.range() = result->range();
    result_stream << result_pkt;
}

void finalize(
    hls::stream<ne_out_t> embeddings[NODE_PARALLEL],
    WT_TYPE MLP_layer_FC_layers_0_weight[50][100],
    WT_TYPE MLP_layer_FC_layers_0_bias[50],
    WT_TYPE MLP_layer_FC_layers_1_weight[25][50],
    WT_TYPE MLP_layer_FC_layers_1_bias[25],
    WT_TYPE MLP_layer_FC_layers_2_weight[1][25],
    WT_TYPE MLP_layer_FC_layers_2_bias[1],
    hls::stream<qdma_axis<FM_TYPE::width, 0, 0, 0>>& result_stream,
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS DATAFLOW

    FM_TYPE h_graph[EMB_DIM];
    hls::stream<mlp_xfer_t> mlp_0_out("mlp_0_out");
#pragma HLS STREAM variable=mlp_0_out depth=50
    FM_TYPE mlp_1_out[25];
    FM_TYPE result[1];

    global_mean_pooling(embeddings, h_graph, num_of_nodes);
    linear_relu_output_stationary<100, 50, 2>(
        h_graph,
        MLP_layer_FC_layers_0_weight,
        MLP_layer_FC_layers_0_bias,
        mlp_0_out
    );
    linear_relu_input_stationary<50, 25, 2>(
        mlp_0_out,
        MLP_layer_FC_layers_1_weight,
        MLP_layer_FC_layers_1_bias,
        mlp_1_out
    );
    linear_relu<25, 1, 1, false>(
        mlp_1_out,
        MLP_layer_FC_layers_2_weight,
        MLP_layer_FC_layers_2_bias,
        result
    );
    write_result(result_stream, result);
}

void message_passing(
    hls::stream<ne_out_t> embeddings[NODE_PARALLEL],
    FM_TYPE message[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][2][EMB_DIM],
    hls::stream<qdma_axis<FM_TYPE::width, 0, 0, 0>>& result_stream,
    int layer_num,
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_PARTITION variable=message complete dim=1

    if (layer_num == NUM_LAYERS)
    {
        finalize(
            embeddings,
            MLP_layer_FC_layers_0_weight,
            MLP_layer_FC_layers_0_bias,
            MLP_layer_FC_layers_1_weight,
            MLP_layer_FC_layers_1_bias,
            MLP_layer_FC_layers_2_weight,
            MLP_layer_FC_layers_2_bias,
            result_stream,
            num_of_nodes
        );
    }
    else
    {
        message_passing_all_pes(embeddings, message, num_of_nodes);
    }
}

void compute_CONV_layer(
    int layer_num,
    FM_TYPE message[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][2][EMB_DIM],
    FM_TYPE next_message[EDGE_PARALLEL][ceildiv(MAX_NODE, EDGE_PARALLEL)][2][EMB_DIM],
    hls::stream<qdma_axis<32, 0, 0, 0>>& node_feature_stream,
    hls::stream<qdma_axis<FM_TYPE::width, 0, 0, 0>>& result_stream,
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS DATAFLOW

#pragma HLS ARRAY_PARTITION variable=message complete dim=3
#pragma HLS ARRAY_PARTITION variable=message cyclic factor=SCATTER_PARALLEL dim=4
#pragma HLS ARRAY_PARTITION variable=next_message complete dim=3
#pragma HLS ARRAY_PARTITION variable=next_message cyclic factor=SCATTER_PARALLEL dim=4

    hls::stream<ne_out_t> embeddings[NODE_PARALLEL];
#pragma HLS STREAM variable=embeddings depth=200

    node_embedding(embeddings, message, node_feature_stream, layer_num, num_of_nodes);
    message_passing(embeddings, next_message, result_stream, layer_num, num_of_nodes);
}

void compute_CONV_layers(
    hls::stream<qdma_axis<32, 0, 0, 0>>& node_feature_stream,
    hls::stream<qdma_axis<FM_TYPE::width, 0, 0, 0>>& output_stream,
    int num_of_nodes
)
{
#pragma HLS INLINE
    for (int i = 0; i <= NUM_LAYERS; i++)
    {
        if (i % 2 == 0)
            compute_CONV_layer(i, messages_ping, messages_pong, node_feature_stream, output_stream, num_of_nodes);
        else
            compute_CONV_layer(i, messages_pong, messages_ping, node_feature_stream, output_stream, num_of_nodes);
    }
}

void read_graph_metadata(
    int* num_of_nodes,
    int* num_of_edges,
    hls::stream<qdma_axis<32, 0, 0, 0>>& num_of_nodes_stream,
    hls::stream<qdma_axis<32, 0, 0, 0>>& num_of_edges_stream
)
{
#pragma HLS INLINE
        qdma_axis<32, 0, 0, 0> num_of_nodes_pkt;
        num_of_nodes_stream >> num_of_nodes_pkt;
        *num_of_nodes = num_of_nodes_pkt.data;

        qdma_axis<32, 0, 0, 0> num_of_edges_pkt;
        num_of_edges_stream >> num_of_edges_pkt;
        *num_of_edges = num_of_edges_pkt.data;
}

extern "C" {
void DGN_compute_one_graph(
    hls::stream<qdma_axis<FM_TYPE::width, 0, 0, 0>>& output_stream,
    hls::stream<qdma_axis<32, 0, 0, 0>>& node_feature_stream,
    hls::stream<qdma_axis<4 * WT_TYPE::width, 0, 0, 0>>& node_eigen_stream,
    hls::stream<qdma_axis<2 * 32, 0, 0, 0>>& edge_list_stream,
    hls::stream<qdma_axis<32, 0, 0, 0>>& num_of_nodes_stream,
    hls::stream<qdma_axis<32, 0, 0, 0>>& num_of_edges_stream,
    hls::stream<qdma_axis<WT_TYPE::width, 0, 0, 0>>& weights_stream
)
{
#pragma HLS INTERFACE ap_ctrl_none port=return

#pragma HLS INTERFACE axis port=output_stream depth=1
#pragma HLS INTERFACE axis port=node_feature_stream depth=(ND_FEATURE * MAX_NODE)
#pragma HLS INTERFACE axis port=node_eigen_stream depth=MAX_NODE
#pragma HLS INTERFACE axis port=edge_list_stream depth=MAX_EDGE
#pragma HLS INTERFACE axis port=num_of_nodes_stream depth=1
#pragma HLS INTERFACE axis port=num_of_edges_stream depth=1
#pragma HLS INTERFACE axis port=weights_stream depth=((9 * 119 * 100) + (4 * 100 * 200) + (4 * 100) + (50 * 100) + (50) + (25 * 50) + (25) + (1 * 25) + (1))

    load_weights(weights_stream);

    while (1)
    {
        int num_of_nodes;
        int num_of_edges;

        read_graph_metadata(&num_of_nodes, &num_of_edges, num_of_nodes_stream, num_of_edges_stream);
        load_graph(edge_list_stream, node_eigen_stream, num_of_nodes, num_of_edges);
        compute_CONV_layers(node_feature_stream, output_stream, num_of_nodes);
    }
}
}
