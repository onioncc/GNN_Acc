// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xgin_compute_one_graph.h"

extern XGin_compute_one_graph_Config XGin_compute_one_graph_ConfigTable[];

XGin_compute_one_graph_Config *XGin_compute_one_graph_LookupConfig(u16 DeviceId) {
	XGin_compute_one_graph_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGIN_COMPUTE_ONE_GRAPH_NUM_INSTANCES; Index++) {
		if (XGin_compute_one_graph_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGin_compute_one_graph_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGin_compute_one_graph_Initialize(XGin_compute_one_graph *InstancePtr, u16 DeviceId) {
	XGin_compute_one_graph_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGin_compute_one_graph_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGin_compute_one_graph_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

