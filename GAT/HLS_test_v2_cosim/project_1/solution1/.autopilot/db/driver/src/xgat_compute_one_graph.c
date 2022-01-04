// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xgat_compute_one_graph.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XGat_compute_one_graph_CfgInitialize(XGat_compute_one_graph *InstancePtr, XGat_compute_one_graph_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XGat_compute_one_graph_Start(XGat_compute_one_graph *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL) & 0x80;
    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XGat_compute_one_graph_IsDone(XGat_compute_one_graph *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XGat_compute_one_graph_IsIdle(XGat_compute_one_graph *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XGat_compute_one_graph_IsReady(XGat_compute_one_graph *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XGat_compute_one_graph_EnableAutoRestart(XGat_compute_one_graph *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XGat_compute_one_graph_DisableAutoRestart(XGat_compute_one_graph *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL, 0);
}

void XGat_compute_one_graph_Set_node_feature_in(XGat_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_NODE_FEATURE_IN_DATA, (u32)(Data));
    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_NODE_FEATURE_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XGat_compute_one_graph_Get_node_feature_in(XGat_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_NODE_FEATURE_IN_DATA);
    Data += (u64)XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_NODE_FEATURE_IN_DATA + 4) << 32;
    return Data;
}

void XGat_compute_one_graph_Set_edge_list_in(XGat_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EDGE_LIST_IN_DATA, (u32)(Data));
    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EDGE_LIST_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XGat_compute_one_graph_Get_edge_list_in(XGat_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EDGE_LIST_IN_DATA);
    Data += (u64)XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EDGE_LIST_IN_DATA + 4) << 32;
    return Data;
}

void XGat_compute_one_graph_Set_graph_attr(XGat_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_ATTR_DATA, (u32)(Data));
    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_ATTR_DATA + 4, (u32)(Data >> 32));
}

u64 XGat_compute_one_graph_Get_graph_attr(XGat_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_ATTR_DATA);
    Data += (u64)XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_ATTR_DATA + 4) << 32;
    return Data;
}

void XGat_compute_one_graph_Set_task_tb(XGat_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_TASK_TB_DATA, (u32)(Data));
    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_TASK_TB_DATA + 4, (u32)(Data >> 32));
}

u64 XGat_compute_one_graph_Get_task_tb(XGat_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_TASK_TB_DATA);
    Data += (u64)XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_TASK_TB_DATA + 4) << 32;
    return Data;
}

void XGat_compute_one_graph_Set_graph_pred_linear_weight_fixed(XGat_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA, (u32)(Data));
    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGat_compute_one_graph_Get_graph_pred_linear_weight_fixed(XGat_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA);
    Data += (u64)XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA + 4) << 32;
    return Data;
}

void XGat_compute_one_graph_Set_graph_pred_linear_bias_fixed(XGat_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA, (u32)(Data));
    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGat_compute_one_graph_Get_graph_pred_linear_bias_fixed(XGat_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA);
    Data += (u64)XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA + 4) << 32;
    return Data;
}

void XGat_compute_one_graph_Set_gat_net_scoring_fn_target_fixed(XGat_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SCORING_FN_TARGET_FIXED_DATA, (u32)(Data));
    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SCORING_FN_TARGET_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGat_compute_one_graph_Get_gat_net_scoring_fn_target_fixed(XGat_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SCORING_FN_TARGET_FIXED_DATA);
    Data += (u64)XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SCORING_FN_TARGET_FIXED_DATA + 4) << 32;
    return Data;
}

void XGat_compute_one_graph_Set_gat_net_scoring_fn_source_fixed(XGat_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SCORING_FN_SOURCE_FIXED_DATA, (u32)(Data));
    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SCORING_FN_SOURCE_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGat_compute_one_graph_Get_gat_net_scoring_fn_source_fixed(XGat_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SCORING_FN_SOURCE_FIXED_DATA);
    Data += (u64)XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SCORING_FN_SOURCE_FIXED_DATA + 4) << 32;
    return Data;
}

void XGat_compute_one_graph_Set_gat_net_linear_proj_weight_fixed(XGat_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_LINEAR_PROJ_WEIGHT_FIXED_DATA, (u32)(Data));
    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_LINEAR_PROJ_WEIGHT_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGat_compute_one_graph_Get_gat_net_linear_proj_weight_fixed(XGat_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_LINEAR_PROJ_WEIGHT_FIXED_DATA);
    Data += (u64)XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_LINEAR_PROJ_WEIGHT_FIXED_DATA + 4) << 32;
    return Data;
}

void XGat_compute_one_graph_Set_gat_net_skip_proj_weight_fixed(XGat_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SKIP_PROJ_WEIGHT_FIXED_DATA, (u32)(Data));
    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SKIP_PROJ_WEIGHT_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGat_compute_one_graph_Get_gat_net_skip_proj_weight_fixed(XGat_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SKIP_PROJ_WEIGHT_FIXED_DATA);
    Data += (u64)XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GAT_NET_SKIP_PROJ_WEIGHT_FIXED_DATA + 4) << 32;
    return Data;
}

void XGat_compute_one_graph_InterruptGlobalEnable(XGat_compute_one_graph *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GIE, 1);
}

void XGat_compute_one_graph_InterruptGlobalDisable(XGat_compute_one_graph *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GIE, 0);
}

void XGat_compute_one_graph_InterruptEnable(XGat_compute_one_graph *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_IER);
    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_IER, Register | Mask);
}

void XGat_compute_one_graph_InterruptDisable(XGat_compute_one_graph *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_IER);
    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_IER, Register & (~Mask));
}

void XGat_compute_one_graph_InterruptClear(XGat_compute_one_graph *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGat_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_ISR, Mask);
}

u32 XGat_compute_one_graph_InterruptGetEnabled(XGat_compute_one_graph *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_IER);
}

u32 XGat_compute_one_graph_InterruptGetStatus(XGat_compute_one_graph *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGat_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGAT_COMPUTE_ONE_GRAPH_CONTROL_ADDR_ISR);
}

