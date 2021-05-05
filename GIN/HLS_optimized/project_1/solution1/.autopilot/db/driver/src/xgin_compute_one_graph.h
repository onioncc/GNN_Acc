// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XGIN_COMPUTE_ONE_GRAPH_H
#define XGIN_COMPUTE_ONE_GRAPH_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xgin_compute_one_graph_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XGin_compute_one_graph_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XGin_compute_one_graph;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XGin_compute_one_graph_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XGin_compute_one_graph_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XGin_compute_one_graph_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XGin_compute_one_graph_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XGin_compute_one_graph_Initialize(XGin_compute_one_graph *InstancePtr, u16 DeviceId);
XGin_compute_one_graph_Config* XGin_compute_one_graph_LookupConfig(u16 DeviceId);
int XGin_compute_one_graph_CfgInitialize(XGin_compute_one_graph *InstancePtr, XGin_compute_one_graph_Config *ConfigPtr);
#else
int XGin_compute_one_graph_Initialize(XGin_compute_one_graph *InstancePtr, const char* InstanceName);
int XGin_compute_one_graph_Release(XGin_compute_one_graph *InstancePtr);
#endif

void XGin_compute_one_graph_Start(XGin_compute_one_graph *InstancePtr);
u32 XGin_compute_one_graph_IsDone(XGin_compute_one_graph *InstancePtr);
u32 XGin_compute_one_graph_IsIdle(XGin_compute_one_graph *InstancePtr);
u32 XGin_compute_one_graph_IsReady(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_EnableAutoRestart(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_DisableAutoRestart(XGin_compute_one_graph *InstancePtr);

void XGin_compute_one_graph_Set_node_feature_in(XGin_compute_one_graph *InstancePtr, u64 Data);
u64 XGin_compute_one_graph_Get_node_feature_in(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_Set_edge_list_in(XGin_compute_one_graph *InstancePtr, u64 Data);
u64 XGin_compute_one_graph_Get_edge_list_in(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_Set_edge_attr_in(XGin_compute_one_graph *InstancePtr, u64 Data);
u64 XGin_compute_one_graph_Get_edge_attr_in(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_Set_graph_attr(XGin_compute_one_graph *InstancePtr, u64 Data);
u64 XGin_compute_one_graph_Get_graph_attr(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_Set_task_r(XGin_compute_one_graph *InstancePtr, u64 Data);
u64 XGin_compute_one_graph_Get_task_r(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_Set_gnn_node_mlp_1_weights_fixed(XGin_compute_one_graph *InstancePtr, u64 Data);
u64 XGin_compute_one_graph_Get_gnn_node_mlp_1_weights_fixed(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_Set_gnn_node_mlp_1_bias_fixed(XGin_compute_one_graph *InstancePtr, u64 Data);
u64 XGin_compute_one_graph_Get_gnn_node_mlp_1_bias_fixed(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_Set_gnn_node_mlp_2_weights_fixed(XGin_compute_one_graph *InstancePtr, u64 Data);
u64 XGin_compute_one_graph_Get_gnn_node_mlp_2_weights_fixed(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_Set_gnn_node_mlp_2_bias_fixed(XGin_compute_one_graph *InstancePtr, u64 Data);
u64 XGin_compute_one_graph_Get_gnn_node_mlp_2_bias_fixed(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_Set_gnn_node_embedding_fixed(XGin_compute_one_graph *InstancePtr, u64 Data);
u64 XGin_compute_one_graph_Get_gnn_node_embedding_fixed(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_Set_gnn_edge_embedding_fixed(XGin_compute_one_graph *InstancePtr, u64 Data);
u64 XGin_compute_one_graph_Get_gnn_edge_embedding_fixed(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_Set_graph_pred_linear_weight_fixed(XGin_compute_one_graph *InstancePtr, u64 Data);
u64 XGin_compute_one_graph_Get_graph_pred_linear_weight_fixed(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_Set_graph_pred_linear_bias_fixed(XGin_compute_one_graph *InstancePtr, u64 Data);
u64 XGin_compute_one_graph_Get_graph_pred_linear_bias_fixed(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_Set_eps_fixed(XGin_compute_one_graph *InstancePtr, u64 Data);
u64 XGin_compute_one_graph_Get_eps_fixed(XGin_compute_one_graph *InstancePtr);

void XGin_compute_one_graph_InterruptGlobalEnable(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_InterruptGlobalDisable(XGin_compute_one_graph *InstancePtr);
void XGin_compute_one_graph_InterruptEnable(XGin_compute_one_graph *InstancePtr, u32 Mask);
void XGin_compute_one_graph_InterruptDisable(XGin_compute_one_graph *InstancePtr, u32 Mask);
void XGin_compute_one_graph_InterruptClear(XGin_compute_one_graph *InstancePtr, u32 Mask);
u32 XGin_compute_one_graph_InterruptGetEnabled(XGin_compute_one_graph *InstancePtr);
u32 XGin_compute_one_graph_InterruptGetStatus(XGin_compute_one_graph *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
