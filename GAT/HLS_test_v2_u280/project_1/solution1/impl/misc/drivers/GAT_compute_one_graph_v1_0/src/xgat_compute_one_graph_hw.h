// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of node_feature_in
//        bit 31~0 - node_feature_in[31:0] (Read/Write)
// 0x14 : Data signal of node_feature_in
//        bit 31~0 - node_feature_in[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of edge_list_in
//        bit 31~0 - edge_list_in[31:0] (Read/Write)
// 0x20 : Data signal of edge_list_in
//        bit 31~0 - edge_list_in[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of graph_attr
//        bit 31~0 - graph_attr[31:0] (Read/Write)
// 0x2c : Data signal of graph_attr
//        bit 31~0 - graph_attr[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of task_tb
//        bit 31~0 - task_tb[31:0] (Read/Write)
// 0x38 : Data signal of task_tb
//        bit 31~0 - task_tb[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of graph_pred_linear_weight_fixed
//        bit 31~0 - graph_pred_linear_weight_fixed[31:0] (Read/Write)
// 0x44 : Data signal of graph_pred_linear_weight_fixed
//        bit 31~0 - graph_pred_linear_weight_fixed[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of graph_pred_linear_bias_fixed
//        bit 31~0 - graph_pred_linear_bias_fixed[31:0] (Read/Write)
// 0x50 : Data signal of graph_pred_linear_bias_fixed
//        bit 31~0 - graph_pred_linear_bias_fixed[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of gat_net_scoring_fn_target_fixed
//        bit 31~0 - gat_net_scoring_fn_target_fixed[31:0] (Read/Write)
// 0x5c : Data signal of gat_net_scoring_fn_target_fixed
//        bit 31~0 - gat_net_scoring_fn_target_fixed[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of gat_net_scoring_fn_source_fixed
//        bit 31~0 - gat_net_scoring_fn_source_fixed[31:0] (Read/Write)
// 0x68 : Data signal of gat_net_scoring_fn_source_fixed
//        bit 31~0 - gat_net_scoring_fn_source_fixed[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of gat_net_linear_proj_weight_fixed
//        bit 31~0 - gat_net_linear_proj_weight_fixed[31:0] (Read/Write)
// 0x74 : Data signal of gat_net_linear_proj_weight_fixed
//        bit 31~0 - gat_net_linear_proj_weight_fixed[63:32] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of gat_net_skip_proj_weight_fixed
//        bit 31~0 - gat_net_skip_proj_weight_fixed[31:0] (Read/Write)
// 0x80 : Data signal of gat_net_skip_proj_weight_fixed
//        bit 31~0 - gat_net_skip_proj_weight_fixed[63:32] (Read/Write)
// 0x84 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL                               0x00
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GIE                                   0x04
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_IER                                   0x08
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_ISR                                   0x0c
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_NODE_FEATURE_IN_DATA                  0x10
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_BITS_NODE_FEATURE_IN_DATA                  64
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EDGE_LIST_IN_DATA                     0x1c
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_BITS_EDGE_LIST_IN_DATA                     64
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_ATTR_DATA                       0x28
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_BITS_GRAPH_ATTR_DATA                       64
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_TASK_TB_DATA                          0x34
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_BITS_TASK_TB_DATA                          64
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA   0x40
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_BITS_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA   64
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA     0x4c
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_BITS_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA     64
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SCORING_FN_TARGET_FIXED_DATA  0x58
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_BITS_GAT_NET_SCORING_FN_TARGET_FIXED_DATA  64
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SCORING_FN_SOURCE_FIXED_DATA  0x64
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_BITS_GAT_NET_SCORING_FN_SOURCE_FIXED_DATA  64
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_LINEAR_PROJ_WEIGHT_FIXED_DATA 0x70
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_BITS_GAT_NET_LINEAR_PROJ_WEIGHT_FIXED_DATA 64
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SKIP_PROJ_WEIGHT_FIXED_DATA   0x7c
#define XGAT_COMPUTE_ONE_GRAPH_CONTROL_BITS_GAT_NET_SKIP_PROJ_WEIGHT_FIXED_DATA   64

