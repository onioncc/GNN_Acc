#include "dcl.h"
#include "math.h"
#include "hls_math.h"
#include "hls_stream.h"
#include <stdio.h>

WT_TYPE embedding_FC_weight[EMB_DIM][ND_FEATURE];
WT_TYPE embedding_FC_bias[EMB_DIM];
WT_TYPE layers_posttrans_fully_connected_0_linear_weight[4][100][2][100];
WT_TYPE layers_posttrans_fully_connected_0_linear_bias[4][100];
WT_TYPE MLP_layer_FC_layers_0_weight[50][100];
WT_TYPE MLP_layer_FC_layers_0_bias[50];
WT_TYPE MLP_layer_FC_layers_1_weight[25][50];
WT_TYPE MLP_layer_FC_layers_1_bias[25];
WT_TYPE MLP_layer_FC_layers_2_weight[1][25];
WT_TYPE MLP_layer_FC_layers_2_bias[1];

FM_TYPE h_graph[EMB_DIM];

template<typename T, int N>
void load_array_1d(T to[N], T from[N]) {
#pragma HLS INLINE off
    for (int i = 0; i < N; i++) {
        to[i] = from[i];
    }
}

template<typename T, int R, int C>
void load_array_2d(T to[R][C], T from[R][C]) {
#pragma HLS INLINE off
    for (int i = 0; i < R; i++) {
        for (int j = 0; j < C; j++) {
            to[i][j] = from[i][j];
        }
    }
}

template<typename T, int L, int R, int C>
void load_array_3d(T to[L][R][C], T from[L][R][C]) {
#pragma HLS INLINE off
    for (int i = 0; i < L; i++) {
        for (int j = 0; j < R; j++) {
            for (int k = 0; k < C; k++) {
                to[i][j][k] = from[i][j][k];
            }
        }
    }
}

template<typename T, int L, int R, int C, int D>
void load_array_4d(T to[L][R][C][D], T from[L][R][C][D]) {
#pragma HLS INLINE off
    for (int i = 0; i < L; i++) {
        for (int j = 0; j < R; j++) {
            for (int k = 0; k < C; k++) {
                for (int l = 0; l < D; l++) {
                    to[i][j][k][l] = from[i][j][k][l];
                }
            }
        }
    }
}

void load_weights(
    WT_TYPE embedding_FC_weight_in[EMB_DIM][ND_FEATURE],
    WT_TYPE embedding_FC_bias_in[EMB_DIM],
    WT_TYPE layers_posttrans_fully_connected_0_linear_weight_in[4][100][2][100],
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
    memcpy(embedding_FC_weight, embedding_FC_weight_in, EMB_DIM * ND_FEATURE * sizeof(WT_TYPE));
    memcpy(embedding_FC_bias, embedding_FC_bias_in, EMB_DIM * sizeof(WT_TYPE));
    memcpy(layers_posttrans_fully_connected_0_linear_weight, layers_posttrans_fully_connected_0_linear_weight_in, 4 * 100 * 2 * 100 * sizeof(WT_TYPE));
    memcpy(layers_posttrans_fully_connected_0_linear_bias, layers_posttrans_fully_connected_0_linear_bias_in, 4 * 100 * sizeof(WT_TYPE));
    memcpy(MLP_layer_FC_layers_0_weight, MLP_layer_FC_layers_0_weight_in, 50 * 100 * sizeof(WT_TYPE));
    memcpy(MLP_layer_FC_layers_0_bias, MLP_layer_FC_layers_0_bias_in, 50 * sizeof(WT_TYPE));
    memcpy(MLP_layer_FC_layers_1_weight, MLP_layer_FC_layers_1_weight_in, 25 * 50 * sizeof(WT_TYPE));
    memcpy(MLP_layer_FC_layers_1_bias, MLP_layer_FC_layers_1_bias_in, 25 * sizeof(WT_TYPE));
    memcpy(MLP_layer_FC_layers_2_weight, MLP_layer_FC_layers_2_weight_in, 1 * 25 * sizeof(WT_TYPE));
    memcpy(MLP_layer_FC_layers_2_bias, MLP_layer_FC_layers_2_bias_in, 1 * sizeof(WT_TYPE));
}

void fetch_degree(
    hls::stream<int> &degree,
    int degree_table[][2],
    int num_of_nodes
)
{
#pragma HLS INLINE off
    for (int nd = 0; nd < num_of_nodes; nd++)
    {
        degree << degree_table[nd][0];
    }
}

void gather(
    hls::stream<int>& degree,
    hls::stream<XFER_TYPE>& message_1,
    hls::stream<XFER_TYPE>& message_2,
    hls::stream<XFER_TYPE>& h_node_v,
    FM_TYPE h_node[][EMB_DIM],
    WT_TYPE node_eigen[],
    int neighbor_table[],
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
    WT_TYPE v_eigen = node_eigen[(v * 4) + 1];
    WT_TYPE eigw_sum = 0;
    WT_TYPE eig_abssum = 0;

    FM_TYPE node_acc_1[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=node_acc_1 complete dim=1
    FM_TYPE node_acc_2[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=node_acc_2 complete dim=1

    for (int _ = 0; _ < num_of_nodes + num_of_edges; _++)
    {
        for (int i = 0; i < XFER_PER_EMB; i++)
        {
            bool is_start_of_row = (e == start_idx);
            bool is_end_of_row = (e == end_idx);
            bool is_last_i = (i == XFER_PER_EMB - 1);
            bool is_last_v = (v == num_of_nodes - 1);
            int node_to_fetch = (is_end_of_row) ? v : neighbor_table[e];
            int node_eigen_to_fetch = (is_end_of_row) ? (v + 1) : node_to_fetch;
            WT_TYPE node_eigen_el = node_eigen[(node_eigen_to_fetch * 4) + 1];
            WT_TYPE eig_w = node_eigen_el - v_eigen;

            XFER_TYPE h_node_xfer = ((XFER_TYPE*)(h_node[node_to_fetch]))[i];
            FM_TYPE message_1_els[XFER_TYPE::width / FM_TYPE::width];
            FM_TYPE message_2_els[XFER_TYPE::width / FM_TYPE::width];

            for (int j = 0; j < FM_PER_XFER; j++)
            {
#pragma HLS UNROLL
                int dim = (i * FM_PER_XFER) + j;
                if (dim < EMB_DIM)
                {
                    FM_TYPE h_node_el = RANGEIDXAP(h_node_xfer, j, FM_TYPE);
                    if (is_end_of_row)
                    {
                        message_1_els[j] = node_acc_1[dim] / degree_v;
                        message_2_els[j] = hls::abs(FM_TYPE((node_acc_2[dim] - eigw_sum * h_node_el) / eig_abssum));
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

            if (is_end_of_row)
            {
                XFER_TYPE message_1_xfer;
                for (int j = 0; j < FM_PER_XFER; j++)
                {
#pragma HLS UNROLL
                    RANGEIDXAP(message_1_xfer, j, FM_TYPE) = message_1_els[j];
                }
                message_1 << message_1_xfer;

                XFER_TYPE message_2_xfer;
                for (int j = 0; j < FM_PER_XFER; j++)
                {
#pragma HLS UNROLL
                    RANGEIDXAP(message_2_xfer, j, FM_TYPE) = message_2_els[j];
                }
                message_2 << message_2_xfer;

                h_node_v << h_node_xfer;
            }

            if (is_last_i && !is_last_v)
            {
                if (is_end_of_row)
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
        }
    }
}

template<int COMPUTED_DIMS_PER_MUL_CYCLE = DIMS_PER_MUL_CYCLE(EMB_DIM)>
void apply(
    hls::stream<XFER_TYPE>& message_1,
    hls::stream<XFER_TYPE>& message_2,
    hls::stream<XFER_TYPE>& h_node_v,
    hls::stream<XFER_TYPE>& output,
    int i,
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_RESHAPE variable=layers_posttrans_fully_connected_0_linear_weight complete dim=2
#pragma HLS ARRAY_RESHAPE variable=layers_posttrans_fully_connected_0_linear_weight complete dim=3
// #pragma HLS ARRAY_RESHAPE variable=layers_posttrans_fully_connected_0_linear_weight cyclic dim=4 factor=DIMS_PER_MUL_CYCLE(EMB_DIM)
#pragma HLS ARRAY_RESHAPE variable=layers_posttrans_fully_connected_0_linear_weight cyclic dim=4 factor=COMPUTED_DIMS_PER_MUL_CYCLE
#pragma HLS ARRAY_RESHAPE variable=layers_posttrans_fully_connected_0_linear_bias complete dim=2

    XFER_TYPE activation_1_xfer[XFER_PER_EMB];
#pragma HLS ARRAY_PARTITION variable=activation_1_xfer complete dim=1
    XFER_TYPE activation_2_xfer[XFER_PER_EMB];
#pragma HLS ARRAY_PARTITION variable=activation_2_xfer complete dim=1

    FM_TYPE accs[L_OUT];
#pragma HLS ARRAY_PARTITION variable=accs complete dim=1

    for (int v = 0; v < num_of_nodes; v++)
    {
        for (int j = 0; j < MUL_CYCLES_PER_NODE(EMB_DIM) + XFER_PER_EMB - 1; j++)
        {
            if (j < XFER_PER_EMB)
            {
                int dim_in_batch = j;
                message_1 >> activation_1_xfer[dim_in_batch];
                message_2 >> activation_2_xfer[dim_in_batch];
            }

            if (j < MUL_CYCLES_PER_NODE(EMB_DIM))
            {
                int dim_in_batch = j;
                int dim_in_base = dim_in_batch * DIMS_PER_MUL_CYCLE(EMB_DIM);
                for (int k = 0; k < DIMS_PER_MUL_CYCLE(EMB_DIM); k++)
                {
#pragma HLS UNROLL
                    int dim_in = dim_in_base + k;
                    int xfer_batch = dim_in / FM_PER_XFER;
                    int xfer_dim = dim_in % FM_PER_XFER;
                    if (dim_in < EMB_DIM)
                    {
                        FM_TYPE activation_1 = RANGEIDXAP(activation_1_xfer[xfer_batch], xfer_dim, FM_TYPE);
                        FM_TYPE activation_2 = RANGEIDXAP(activation_2_xfer[xfer_batch], xfer_dim, FM_TYPE);
                        for (int dim_out = 0; dim_out < L_OUT; dim_out++)
                        {
#pragma HLS UNROLL
                            FM_TYPE acc = (dim_in == 0)
                                ? FM_TYPE(layers_posttrans_fully_connected_0_linear_bias[i][dim_out])
                                : accs[dim_out];
                            acc += (
                                activation_1 * layers_posttrans_fully_connected_0_linear_weight[i][dim_out][0][dim_in]
                                + activation_2 * layers_posttrans_fully_connected_0_linear_weight[i][dim_out][1][dim_in]
                            );
                            accs[dim_out] = acc;
                        }
                    }
                }
            }

            if (j >= MUL_CYCLES_PER_NODE(EMB_DIM) - 1)
            {
                XFER_TYPE h_node_v_xfer;
                h_node_v >> h_node_v_xfer;
                XFER_TYPE output_xfer;

                int dim_out_batch = j - (MUL_CYCLES_PER_NODE(EMB_DIM) - 1);
                int dim_out_base = dim_out_batch * FM_PER_XFER;
                for (int k = 0; k < FM_PER_XFER; k++)
                {
#pragma HLS UNROLL
                    int dim_out = dim_out_base + k;
                    if (dim_out < EMB_DIM)
                    {
                        FM_TYPE acc = accs[dim_out];
                        FM_TYPE relu_acc = (acc > 0.0) ? acc : FM_TYPE(0.0);
                        FM_TYPE h_node_v_el = RANGEIDXAP(h_node_v_xfer, k, FM_TYPE);
                        FM_TYPE output_el = h_node_v_el + relu_acc;
                        RANGEIDXAP(output_xfer, k, FM_TYPE) = output_el;
                    }
                }

                output << output_xfer;
            }
        }
    }
}

void writeback(
    hls::stream<XFER_TYPE>& output,
    FM_TYPE next_h_node[][EMB_DIM],
    int num_of_nodes
)
{
#pragma HLS INLINE off

    for (int v = 0; v < num_of_nodes; v++)
    {
        for (int i = 0; i < XFER_PER_EMB; i++)
        {
            output >> ((XFER_TYPE*)(next_h_node[v]))[i];
        }
    }
}

template <
    int DIM_IN,
    int DIM_OUT,
    int COMPUTED_MAX_MUL_CYCLES_PER_NODE = MAX_MUL_CYCLES_PER_NODE
>
void compute_MLP_layer(
    hls::stream<XFER_TYPE>& input,
    hls::stream<XFER_TYPE>& output,
    WT_TYPE weights[DIM_OUT][DIM_IN],
    WT_TYPE bias[DIM_OUT],
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_RESHAPE variable=bias complete dim=1
#pragma HLS ARRAY_RESHAPE variable=weights complete dim=1
// #pragma HLS ARRAY_RESHAPE variable=weights cyclic dim=2 factor=DIMS_PER_MUL_CYCLE(DIM_IN)
#pragma HLS ARRAY_RESHAPE variable=weights cyclic dim=2 factor=((DIM_IN + COMPUTED_MAX_MUL_CYCLES_PER_NODE - 1) / COMPUTED_MAX_MUL_CYCLES_PER_NODE)

    constexpr int XFER_IN = CEILDIV(DIM_IN * FM_TYPE::width, XFER_TYPE::width);
    constexpr int XFER_OUT = CEILDIV(DIM_OUT * FM_TYPE::width, XFER_TYPE::width);

    XFER_TYPE activation_xfer[XFER_IN];
#pragma HLS ARRAY_PARTITION variable=activation_xfer complete dim=1

    FM_TYPE accs[DIM_OUT];
#pragma HLS ARRAY_PARTITION variable=accs complete dim=1

    for (int v = 0; v < num_of_nodes; v++)
    {
        for (int j = 0; j < MUL_CYCLES_PER_NODE(DIM_IN) + XFER_OUT - 1; j++)
        {
            if (j < XFER_IN)
            {
                int dim_in_batch = j;
                input >> activation_xfer[dim_in_batch];
            }

            if (j < MUL_CYCLES_PER_NODE(DIM_IN))
            {
                int dim_in_batch = j;
                int dim_in_base = dim_in_batch * DIMS_PER_MUL_CYCLE(DIM_IN);
                for (int k = 0; k < DIMS_PER_MUL_CYCLE(DIM_IN); k++)
                {
#pragma HLS UNROLL
                    int dim_in = dim_in_base + k;
                    int xfer_batch = dim_in / FM_PER_XFER;
                    int xfer_dim = dim_in % FM_PER_XFER;
                    if (dim_in < DIM_IN)
                    {
                        FM_TYPE activation = RANGEIDXAP(activation_xfer[xfer_batch], xfer_dim, FM_TYPE);
                        for (int dim_out = 0; dim_out < DIM_OUT; dim_out++)
                        {
#pragma HLS UNROLL
                            FM_TYPE acc = (dim_in == 0) ? FM_TYPE(bias[dim_out]) : accs[dim_out];
                            acc += activation * weights[dim_out][dim_in];
                            accs[dim_out] = acc;
                        }
                    }
                }
            }

            if (j >= MUL_CYCLES_PER_NODE(DIM_IN) - 1)
            {
                XFER_TYPE output_xfer;
                int dim_out_batch = j - (MUL_CYCLES_PER_NODE(DIM_IN) - 1);
                int dim_out_base = dim_out_batch * FM_PER_XFER;
                for (int k = 0; k < FM_PER_XFER; k++)
                {
#pragma HLS UNROLL
                    int dim_out = dim_out_base + k;
                    if (dim_out < DIM_OUT)
                    {
                        FM_TYPE acc = accs[dim_out];
                        FM_TYPE relu_acc = (acc > 0.0) ? acc : FM_TYPE(0.0);
                        RANGEIDXAP(output_xfer, k, FM_TYPE) = relu_acc;
                    }
                }
                output << output_xfer;
            }
        }
    }
}

template <
    int DIM_IN,
    int COMPUTED_MAX_MUL_CYCLES_PER_NODE = MAX_MUL_CYCLES_PER_NODE
>
void compute_last_MLP_layer(
    hls::stream<XFER_TYPE>& input,
    float* output,
    WT_TYPE weights[1][DIM_IN],
    WT_TYPE bias[1],
    int num_of_nodes
)
{
#pragma HLS INLINE off
// #pragma HLS ARRAY_RESHAPE variable=weights cyclic dim=2 factor=DIMS_PER_MUL_CYCLE(DIM_IN)
#pragma HLS ARRAY_RESHAPE variable=weights cyclic dim=2 factor=((DIM_IN + COMPUTED_MAX_MUL_CYCLES_PER_NODE - 1) / COMPUTED_MAX_MUL_CYCLES_PER_NODE)

    constexpr int XFER_IN = CEILDIV(DIM_IN * FM_TYPE::width, XFER_TYPE::width);
    XFER_TYPE activation_xfer[XFER_IN];
    FM_TYPE acc;

    for (int v = 0; v < num_of_nodes; v++)
    {
        for (int j = 0; j < MUL_CYCLES_PER_NODE(DIM_IN); j++)
        {
            if (j < XFER_IN)
            {
                int dim_in_batch = j;
                input >> activation_xfer[dim_in_batch];
            }

            if (j < MUL_CYCLES_PER_NODE(DIM_IN))
            {
                int dim_in_batch = j;
                int dim_in_base = dim_in_batch * DIMS_PER_MUL_CYCLE(DIM_IN);
                for (int k = 0; k < DIMS_PER_MUL_CYCLE(DIM_IN); k++)
                {
#pragma HLS UNROLL
                    int dim_in = dim_in_base + k;
                    int xfer_batch = dim_in / FM_PER_XFER;
                    int xfer_dim = dim_in % FM_PER_XFER;
                    if (dim_in < DIM_IN)
                    {
                        FM_TYPE activation = RANGEIDXAP(activation_xfer[xfer_batch], xfer_dim, FM_TYPE);
                        FM_TYPE prev = (dim_in == 0) ? FM_TYPE(bias[0]) : acc;
                        acc = prev + activation * weights[0][dim_in];
                    }
                }
            }

            if (j == MUL_CYCLES_PER_NODE(DIM_IN) - 1)
            {
                output[v] = acc.to_float();
            }
        }
    }
}

void node_MLP(
    hls::stream<XFER_TYPE>& in,
    float* out,
    WT_TYPE MLP_layer_FC_layers_0_weight[50][100],
    WT_TYPE MLP_layer_FC_layers_0_bias[50],
    WT_TYPE MLP_layer_FC_layers_1_weight[25][50],
    WT_TYPE MLP_layer_FC_layers_1_bias[25],
    WT_TYPE MLP_layer_FC_layers_2_weight[1][25],
    WT_TYPE MLP_layer_FC_layers_2_bias[1],
    int num_of_nodes
)
{
#pragma HLS INLINE off
#pragma HLS DATAFLOW

    hls::stream<XFER_TYPE> mlp_layer_1_in;
#pragma HLS STREAM variable=mlp_layer_1_in depth=10
    hls::stream<XFER_TYPE> mlp_layer_2_in;
#pragma HLS STREAM variable=mlp_layer_2_in depth=10

    compute_MLP_layer<L_OUT, 50>(in, mlp_layer_1_in, MLP_layer_FC_layers_0_weight, MLP_layer_FC_layers_0_bias, num_of_nodes);
    compute_MLP_layer<50, 25>(mlp_layer_1_in, mlp_layer_2_in, MLP_layer_FC_layers_1_weight, MLP_layer_FC_layers_1_bias, num_of_nodes);
    compute_last_MLP_layer<25>(mlp_layer_2_in, out, MLP_layer_FC_layers_2_weight, MLP_layer_FC_layers_2_bias, num_of_nodes);
}

void finalize_CONV_layer(
    hls::stream<XFER_TYPE>& in,
    bool is_last,
    FM_TYPE next_h_node[][EMB_DIM],
    float* out,
    int num_of_nodes
)
{
#pragma HLS INLINE off

    if (!is_last)
    {
        writeback(in, next_h_node, num_of_nodes);
    }
    else
    {
        node_MLP(
            in,
            out,
            MLP_layer_FC_layers_0_weight,
            MLP_layer_FC_layers_0_bias,
            MLP_layer_FC_layers_1_weight,
            MLP_layer_FC_layers_1_bias,
            MLP_layer_FC_layers_2_weight,
            MLP_layer_FC_layers_2_bias,
            num_of_nodes
        );
    }
}

void compute_CONV_layer(
    int i,
    bool is_last,
    FM_TYPE h_node[][EMB_DIM],
    FM_TYPE next_h_node[][EMB_DIM],
    float* out,
    WT_TYPE node_eigen[],
    int degree_table[][2],
    int neighbor_table[],
    int num_of_nodes,
    int num_of_edges
)
{
#pragma HLS INLINE off
#pragma HLS DATAFLOW

    hls::stream<int> degree;
#pragma HLS STREAM variable=degree depth=20
    hls::stream<XFER_TYPE> message_1;
#pragma HLS STREAM variable=message_1 depth=20
    hls::stream<XFER_TYPE> message_2;
#pragma HLS STREAM variable=message_2 depth=20
    hls::stream<XFER_TYPE> h_node_v;
#pragma HLS STREAM variable=h_node_v depth=20
    hls::stream<XFER_TYPE> apply_out;
#pragma HLS STREAM variable=apply_out depth=20

    fetch_degree(degree, degree_table, num_of_nodes);
    gather(degree, message_1, message_2, h_node_v, h_node, node_eigen, neighbor_table, num_of_nodes, num_of_edges);
    apply(message_1, message_2, h_node_v, apply_out, i, num_of_nodes);
    finalize_CONV_layer(apply_out, is_last, next_h_node, out, num_of_nodes);
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

template<int COMPUTED_INT_PER_INEMB_XFER = INT_PER_INEMB_XFER>
void load_input_node_embeddings(
    int* node_feature,
    int num_of_nodes,
    FM_TYPE h_node[][EMB_DIM]
)
{
#pragma HLS INLINE off
#pragma HLS ARRAY_RESHAPE variable=embedding_FC_weight complete dim=1
#pragma HLS ARRAY_RESHAPE variable=embedding_FC_weight cyclic dim=2 factor=COMPUTED_INT_PER_INEMB_XFER
#pragma HLS ARRAY_RESHAPE variable=embedding_FC_bias complete dim=1

    FM_TYPE accs[EMB_DIM];
#pragma HLS ARRAY_PARTITION variable=accs complete dim=1

    for (int v = 0; v < num_of_nodes; v++)
    {
        for (int j = 0; j < INEMB_XFER_PER_ND_FEATURE + XFER_PER_EMB - 1; j++)
        {
#pragma HLS PIPELINE II=1

            if (j < INEMB_XFER_PER_ND_FEATURE)
            {
                int dim_in_batch = j;
                INEMB_XFER_TYPE activation_xfer = ((INEMB_XFER_TYPE*)(node_feature + v * ND_FEATURE))[dim_in_batch];

                int dim_in_base = dim_in_batch * INT_PER_INEMB_XFER;
                for (int k = 0; k < INT_PER_INEMB_XFER; k++)
                {
#pragma HLS UNROLL
                    int dim_in = dim_in_base + k;
                    if (dim_in < ND_FEATURE)
                    {
                        FM_TYPE activation = RANGEIDXAP(activation_xfer, k, FM_TYPE);
                        for (int dim_out = 0; dim_out < EMB_DIM; dim_out++)
                        {
#pragma HLS UNROLL
                            FM_TYPE acc = (dim_in == 0)
                                ? FM_TYPE(embedding_FC_bias[dim_out])
                                : accs[dim_out];
                            acc += activation * embedding_FC_weight[dim_out][dim_in];
                            accs[dim_out] = acc;
                        }
                    }
                }
            }

            XFER_TYPE output_xfer = 0;
            int dim_out_batch = 0;
            if (j >= INEMB_XFER_PER_ND_FEATURE - 1)
            {
                dim_out_batch = j - (INEMB_XFER_PER_ND_FEATURE - 1);
                int dim_out_base = dim_out_batch * FM_PER_XFER;
                for (int k = 0; k < FM_PER_XFER; k++)
                {
#pragma HLS UNROLL
                    int dim_out = dim_out_base + k;
                    if (dim_out < EMB_DIM)
                    {
                        RANGEIDXAP(output_xfer, k, FM_TYPE) = accs[dim_out];
                    }
                }
            }
            ((XFER_TYPE*)(h_node[v]))[dim_out_batch] = output_xfer;
        }
    }
}

extern "C" {
void DGN_compute_one_graph(
    float* out,
    int* node_feature_in,
    WT_TYPE* node_eigen_in,
    int degree_table[][2],
    int neighbor_table[],
    int* graph_attr,
    WT_TYPE embedding_FC_weight_in[EMB_DIM][ND_FEATURE],
    WT_TYPE embedding_FC_bias_in[EMB_DIM],
    WT_TYPE layers_posttrans_fully_connected_0_linear_weight_in[4][100][2][100],
    WT_TYPE layers_posttrans_fully_connected_0_linear_bias_in[4][100],
    WT_TYPE MLP_layer_FC_layers_0_weight_in[50][100],
    WT_TYPE MLP_layer_FC_layers_0_bias_in[50],
    WT_TYPE MLP_layer_FC_layers_1_weight_in[25][50],
    WT_TYPE MLP_layer_FC_layers_1_bias_in[25],
    WT_TYPE MLP_layer_FC_layers_2_weight_in[1][25],
    WT_TYPE MLP_layer_FC_layers_2_bias_in[1],

    // DRAM for intermediate storage
    FM_TYPE h_node_ping[][EMB_DIM],
    FM_TYPE h_node_pong[][EMB_DIM]
)
{
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS INTERFACE m_axi depth=100000 port=out offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=node_feature_in offset=slave bundle=node_feature
#pragma HLS INTERFACE m_axi depth=100000 port=node_eigen_in offset=slave bundle=node_eigen
#pragma HLS INTERFACE m_axi depth=100000 port=degree_table offset=slave bundle=degree_table
#pragma HLS INTERFACE m_axi depth=100000 port=neighbor_table offset=slave bundle=neighbor_table
#pragma HLS INTERFACE m_axi depth=100000 port=graph_attr offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=embedding_FC_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=embedding_FC_bias_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=layers_posttrans_fully_connected_0_linear_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=layers_posttrans_fully_connected_0_linear_bias_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=MLP_layer_FC_layers_0_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=MLP_layer_FC_layers_0_bias_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=MLP_layer_FC_layers_1_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=MLP_layer_FC_layers_1_bias_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=MLP_layer_FC_layers_2_weight_in offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=MLP_layer_FC_layers_2_bias_in offset=slave bundle=mem

#pragma HLS INTERFACE m_axi depth=100000 port=h_node_ping offset=slave bundle=mem
#pragma HLS INTERFACE m_axi depth=100000 port=h_node_pong offset=slave bundle=mem

#pragma HLS bind_storage variable=h_graph type=RAM_2P impl=bram
#pragma HLS bind_storage variable=embedding_FC_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=layers_posttrans_fully_connected_0_linear_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_0_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_1_weight type=RAM_2P impl=bram
#pragma HLS bind_storage variable=MLP_layer_FC_layers_2_weight type=RAM_2P impl=bram

    int num_of_nodes = graph_attr[0];
    int num_of_edges = graph_attr[1];
    int is_first = graph_attr[2];

#ifdef __SYNTHESIS__
#ifdef __SYNTHESIS_DEBUG__
    // For Cora
    num_of_nodes = 2708;
    num_of_edges = 10556;
    is_first = 1;
#endif
#endif

    if (is_first)
    {
        load_weights(
            embedding_FC_weight_in,
            embedding_FC_bias_in,
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

    load_input_node_embeddings(node_feature_in, num_of_nodes, h_node_ping);

    for (int i = 0; i < 4; i++)
    {
        bool is_last = (i == 3);
        if (i % 2 == 0)
            compute_CONV_layer(i, is_last, h_node_ping, h_node_pong, out, node_eigen_in, degree_table, neighbor_table, num_of_nodes, num_of_edges);
        else
            compute_CONV_layer(i, is_last, h_node_pong, h_node_ping, out, node_eigen_in, degree_table, neighbor_table, num_of_nodes, num_of_edges);
    }
}
}
