// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtop.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTop_CfgInitialize(XTop *InstancePtr, XTop_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTop_Set_weights(XTop *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_WEIGHTS_DATA, (u32)(Data));
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XTop_Get_weights(XTop *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_WEIGHTS_DATA);
    Data += (u64)XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XTop_Set_data_in(XTop *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_DATA_IN_DATA, (u32)(Data));
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_DATA_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XTop_Get_data_in(XTop *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_DATA_IN_DATA);
    Data += (u64)XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_DATA_IN_DATA + 4) << 32;
    return Data;
}

void XTop_Set_data_out(XTop *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_DATA_OUT_DATA, (u32)(Data));
    XTop_WriteReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_DATA_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XTop_Get_data_out(XTop *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_DATA_OUT_DATA);
    Data += (u64)XTop_ReadReg(InstancePtr->Control_BaseAddress, XTOP_CONTROL_ADDR_DATA_OUT_DATA + 4) << 32;
    return Data;
}

