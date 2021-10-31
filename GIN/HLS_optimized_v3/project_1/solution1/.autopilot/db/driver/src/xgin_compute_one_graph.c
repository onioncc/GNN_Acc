// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xgin_compute_one_graph.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XGin_compute_one_graph_CfgInitialize(XGin_compute_one_graph *InstancePtr, XGin_compute_one_graph_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XGin_compute_one_graph_Start(XGin_compute_one_graph *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL) & 0x80;
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XGin_compute_one_graph_IsDone(XGin_compute_one_graph *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XGin_compute_one_graph_IsIdle(XGin_compute_one_graph *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XGin_compute_one_graph_IsReady(XGin_compute_one_graph *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XGin_compute_one_graph_EnableAutoRestart(XGin_compute_one_graph *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XGin_compute_one_graph_DisableAutoRestart(XGin_compute_one_graph *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_AP_CTRL, 0);
}

void XGin_compute_one_graph_Set_node_feature_in(XGin_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_NODE_FEATURE_IN_DATA, (u32)(Data));
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_NODE_FEATURE_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XGin_compute_one_graph_Get_node_feature_in(XGin_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_NODE_FEATURE_IN_DATA);
    Data += (u64)XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_NODE_FEATURE_IN_DATA + 4) << 32;
    return Data;
}

void XGin_compute_one_graph_Set_edge_list_in(XGin_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EDGE_LIST_IN_DATA, (u32)(Data));
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EDGE_LIST_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XGin_compute_one_graph_Get_edge_list_in(XGin_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EDGE_LIST_IN_DATA);
    Data += (u64)XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EDGE_LIST_IN_DATA + 4) << 32;
    return Data;
}

void XGin_compute_one_graph_Set_edge_attr_in(XGin_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EDGE_ATTR_IN_DATA, (u32)(Data));
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EDGE_ATTR_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XGin_compute_one_graph_Get_edge_attr_in(XGin_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EDGE_ATTR_IN_DATA);
    Data += (u64)XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EDGE_ATTR_IN_DATA + 4) << 32;
    return Data;
}

void XGin_compute_one_graph_Set_graph_attr(XGin_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_ATTR_DATA, (u32)(Data));
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_ATTR_DATA + 4, (u32)(Data >> 32));
}

u64 XGin_compute_one_graph_Get_graph_attr(XGin_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_ATTR_DATA);
    Data += (u64)XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_ATTR_DATA + 4) << 32;
    return Data;
}

void XGin_compute_one_graph_Set_task_r(XGin_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_TASK_R_DATA, (u32)(Data));
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_TASK_R_DATA + 4, (u32)(Data >> 32));
}

u64 XGin_compute_one_graph_Get_task_r(XGin_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_TASK_R_DATA);
    Data += (u64)XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_TASK_R_DATA + 4) << 32;
    return Data;
}

void XGin_compute_one_graph_Set_gnn_node_mlp_1_weights_fixed(XGin_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA, (u32)(Data));
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGin_compute_one_graph_Get_gnn_node_mlp_1_weights_fixed(XGin_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA);
    Data += (u64)XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA + 4) << 32;
    return Data;
}

void XGin_compute_one_graph_Set_gnn_node_mlp_1_bias_fixed(XGin_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA, (u32)(Data));
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGin_compute_one_graph_Get_gnn_node_mlp_1_bias_fixed(XGin_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA);
    Data += (u64)XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA + 4) << 32;
    return Data;
}

void XGin_compute_one_graph_Set_gnn_node_mlp_2_weights_fixed(XGin_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA, (u32)(Data));
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGin_compute_one_graph_Get_gnn_node_mlp_2_weights_fixed(XGin_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA);
    Data += (u64)XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA + 4) << 32;
    return Data;
}

void XGin_compute_one_graph_Set_gnn_node_mlp_2_bias_fixed(XGin_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA, (u32)(Data));
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGin_compute_one_graph_Get_gnn_node_mlp_2_bias_fixed(XGin_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA);
    Data += (u64)XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA + 4) << 32;
    return Data;
}

void XGin_compute_one_graph_Set_gnn_node_embedding_fixed(XGin_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_EMBEDDING_FIXED_DATA, (u32)(Data));
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_EMBEDDING_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGin_compute_one_graph_Get_gnn_node_embedding_fixed(XGin_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_EMBEDDING_FIXED_DATA);
    Data += (u64)XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_NODE_EMBEDDING_FIXED_DATA + 4) << 32;
    return Data;
}

void XGin_compute_one_graph_Set_gnn_edge_embedding_fixed(XGin_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA, (u32)(Data));
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGin_compute_one_graph_Get_gnn_edge_embedding_fixed(XGin_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA);
    Data += (u64)XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA + 4) << 32;
    return Data;
}

void XGin_compute_one_graph_Set_graph_pred_linear_weight_fixed(XGin_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA, (u32)(Data));
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGin_compute_one_graph_Get_graph_pred_linear_weight_fixed(XGin_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA);
    Data += (u64)XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA + 4) << 32;
    return Data;
}

void XGin_compute_one_graph_Set_graph_pred_linear_bias_fixed(XGin_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA, (u32)(Data));
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGin_compute_one_graph_Get_graph_pred_linear_bias_fixed(XGin_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA);
    Data += (u64)XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA + 4) << 32;
    return Data;
}

void XGin_compute_one_graph_Set_eps_fixed(XGin_compute_one_graph *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EPS_FIXED_DATA, (u32)(Data));
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EPS_FIXED_DATA + 4, (u32)(Data >> 32));
}

u64 XGin_compute_one_graph_Get_eps_fixed(XGin_compute_one_graph *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EPS_FIXED_DATA);
    Data += (u64)XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_EPS_FIXED_DATA + 4) << 32;
    return Data;
}

void XGin_compute_one_graph_InterruptGlobalEnable(XGin_compute_one_graph *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GIE, 1);
}

void XGin_compute_one_graph_InterruptGlobalDisable(XGin_compute_one_graph *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_GIE, 0);
}

void XGin_compute_one_graph_InterruptEnable(XGin_compute_one_graph *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_IER);
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_IER, Register | Mask);
}

void XGin_compute_one_graph_InterruptDisable(XGin_compute_one_graph *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_IER);
    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_IER, Register & (~Mask));
}

void XGin_compute_one_graph_InterruptClear(XGin_compute_one_graph *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGin_compute_one_graph_WriteReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_ISR, Mask);
}

u32 XGin_compute_one_graph_InterruptGetEnabled(XGin_compute_one_graph *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_IER);
}

u32 XGin_compute_one_graph_InterruptGetStatus(XGin_compute_one_graph *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGin_compute_one_graph_ReadReg(InstancePtr->Control_BaseAddress, XGIN_COMPUTE_ONE_GRAPH_CONTROL_ADDR_ISR);
}

