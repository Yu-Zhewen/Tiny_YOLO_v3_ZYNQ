// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xyolo_max_pool_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XYolo_max_pool_top_CfgInitialize(XYolo_max_pool_top *InstancePtr, XYolo_max_pool_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XYolo_max_pool_top_Start(XYolo_max_pool_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_max_pool_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_AP_CTRL) & 0x80;
    XYolo_max_pool_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XYolo_max_pool_top_IsDone(XYolo_max_pool_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_max_pool_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XYolo_max_pool_top_IsIdle(XYolo_max_pool_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_max_pool_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XYolo_max_pool_top_IsReady(XYolo_max_pool_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_max_pool_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XYolo_max_pool_top_EnableAutoRestart(XYolo_max_pool_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_max_pool_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XYolo_max_pool_top_DisableAutoRestart(XYolo_max_pool_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_max_pool_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_AP_CTRL, 0);
}

void XYolo_max_pool_top_InterruptGlobalEnable(XYolo_max_pool_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_max_pool_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_GIE, 1);
}

void XYolo_max_pool_top_InterruptGlobalDisable(XYolo_max_pool_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_max_pool_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_GIE, 0);
}

void XYolo_max_pool_top_InterruptEnable(XYolo_max_pool_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XYolo_max_pool_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_IER);
    XYolo_max_pool_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_IER, Register | Mask);
}

void XYolo_max_pool_top_InterruptDisable(XYolo_max_pool_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XYolo_max_pool_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_IER);
    XYolo_max_pool_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_IER, Register & (~Mask));
}

void XYolo_max_pool_top_InterruptClear(XYolo_max_pool_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_max_pool_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_ISR, Mask);
}

u32 XYolo_max_pool_top_InterruptGetEnabled(XYolo_max_pool_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XYolo_max_pool_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_IER);
}

u32 XYolo_max_pool_top_InterruptGetStatus(XYolo_max_pool_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XYolo_max_pool_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_MAX_POOL_TOP_AXILITES_ADDR_ISR);
}

