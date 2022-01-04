// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XGAT_COMPUTE_ONE_GRAPH_H
#define XGAT_COMPUTE_ONE_GRAPH_H

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
#include "xgat_compute_one_graph_hw.h"

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
} XGat_compute_one_graph_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XGat_compute_one_graph;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XGat_compute_one_graph_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XGat_compute_one_graph_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XGat_compute_one_graph_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XGat_compute_one_graph_ReadReg(BaseAddress, RegOffset) \
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
int XGat_compute_one_graph_Initialize(XGat_compute_one_graph *InstancePtr, u16 DeviceId);
XGat_compute_one_graph_Config* XGat_compute_one_graph_LookupConfig(u16 DeviceId);
int XGat_compute_one_graph_CfgInitialize(XGat_compute_one_graph *InstancePtr, XGat_compute_one_graph_Config *ConfigPtr);
#else
int XGat_compute_one_graph_Initialize(XGat_compute_one_graph *InstancePtr, const char* InstanceName);
int XGat_compute_one_graph_Release(XGat_compute_one_graph *InstancePtr);
#endif

void XGat_compute_one_graph_Start(XGat_compute_one_graph *InstancePtr);
u32 XGat_compute_one_graph_IsDone(XGat_compute_one_graph *InstancePtr);
u32 XGat_compute_one_graph_IsIdle(XGat_compute_one_graph *InstancePtr);
u32 XGat_compute_one_graph_IsReady(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_EnableAutoRestart(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_DisableAutoRestart(XGat_compute_one_graph *InstancePtr);

void XGat_compute_one_graph_Set_node_feature_in(XGat_compute_one_graph *InstancePtr, u64 Data);
u64 XGat_compute_one_graph_Get_node_feature_in(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_Set_edge_list_in(XGat_compute_one_graph *InstancePtr, u64 Data);
u64 XGat_compute_one_graph_Get_edge_list_in(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_Set_graph_attr(XGat_compute_one_graph *InstancePtr, u64 Data);
u64 XGat_compute_one_graph_Get_graph_attr(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_Set_num_heads_per_layer_in(XGat_compute_one_graph *InstancePtr, u64 Data);
u64 XGat_compute_one_graph_Get_num_heads_per_layer_in(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_Set_num_features_per_layer_in(XGat_compute_one_graph *InstancePtr, u64 Data);
u64 XGat_compute_one_graph_Get_num_features_per_layer_in(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_Set_task_tb(XGat_compute_one_graph *InstancePtr, u64 Data);
u64 XGat_compute_one_graph_Get_task_tb(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_Set_graph_pred_linear_weight_fixed(XGat_compute_one_graph *InstancePtr, u64 Data);
u64 XGat_compute_one_graph_Get_graph_pred_linear_weight_fixed(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_Set_graph_pred_linear_bias_fixed(XGat_compute_one_graph *InstancePtr, u64 Data);
u64 XGat_compute_one_graph_Get_graph_pred_linear_bias_fixed(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_Set_gat_net_scoring_fn_target_fixed(XGat_compute_one_graph *InstancePtr, u64 Data);
u64 XGat_compute_one_graph_Get_gat_net_scoring_fn_target_fixed(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_Set_gat_net_scoring_fn_source_fixed(XGat_compute_one_graph *InstancePtr, u64 Data);
u64 XGat_compute_one_graph_Get_gat_net_scoring_fn_source_fixed(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_Set_gat_net_linear_proj_weight_fixed(XGat_compute_one_graph *InstancePtr, u64 Data);
u64 XGat_compute_one_graph_Get_gat_net_linear_proj_weight_fixed(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_Set_gat_net_skip_proj_weight_fixed(XGat_compute_one_graph *InstancePtr, u64 Data);
u64 XGat_compute_one_graph_Get_gat_net_skip_proj_weight_fixed(XGat_compute_one_graph *InstancePtr);

void XGat_compute_one_graph_InterruptGlobalEnable(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_InterruptGlobalDisable(XGat_compute_one_graph *InstancePtr);
void XGat_compute_one_graph_InterruptEnable(XGat_compute_one_graph *InstancePtr, u32 Mask);
void XGat_compute_one_graph_InterruptDisable(XGat_compute_one_graph *InstancePtr, u32 Mask);
void XGat_compute_one_graph_InterruptClear(XGat_compute_one_graph *InstancePtr, u32 Mask);
u32 XGat_compute_one_graph_InterruptGetEnabled(XGat_compute_one_graph *InstancePtr);
u32 XGat_compute_one_graph_InterruptGetStatus(XGat_compute_one_graph *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
