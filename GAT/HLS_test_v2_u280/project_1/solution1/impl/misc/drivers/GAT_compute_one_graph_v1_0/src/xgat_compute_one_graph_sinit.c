// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xgat_compute_one_graph.h"

extern XGat_compute_one_graph_Config XGat_compute_one_graph_ConfigTable[];

XGat_compute_one_graph_Config *XGat_compute_one_graph_LookupConfig(u16 DeviceId) {
	XGat_compute_one_graph_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGAT_COMPUTE_ONE_GRAPH_NUM_INSTANCES; Index++) {
		if (XGat_compute_one_graph_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGat_compute_one_graph_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGat_compute_one_graph_Initialize(XGat_compute_one_graph *InstancePtr, u16 DeviceId) {
	XGat_compute_one_graph_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGat_compute_one_graph_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGat_compute_one_graph_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

