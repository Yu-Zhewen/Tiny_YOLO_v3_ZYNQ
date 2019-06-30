// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xyolo_conv_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XYolo_conv_top_CfgInitialize(XYolo_conv_top *InstancePtr, XYolo_conv_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XYolo_conv_top_Start(XYolo_conv_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_conv_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_AP_CTRL) & 0x80;
    XYolo_conv_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XYolo_conv_top_IsDone(XYolo_conv_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_conv_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XYolo_conv_top_IsIdle(XYolo_conv_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_conv_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XYolo_conv_top_IsReady(XYolo_conv_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_conv_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XYolo_conv_top_EnableAutoRestart(XYolo_conv_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_conv_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XYolo_conv_top_DisableAutoRestart(XYolo_conv_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_conv_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_AP_CTRL, 0);
}

void XYolo_conv_top_InterruptGlobalEnable(XYolo_conv_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_conv_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_GIE, 1);
}

void XYolo_conv_top_InterruptGlobalDisable(XYolo_conv_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_conv_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_GIE, 0);
}

void XYolo_conv_top_InterruptEnable(XYolo_conv_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XYolo_conv_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_IER);
    XYolo_conv_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_IER, Register | Mask);
}

void XYolo_conv_top_InterruptDisable(XYolo_conv_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XYolo_conv_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_IER);
    XYolo_conv_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_IER, Register & (~Mask));
}

void XYolo_conv_top_InterruptClear(XYolo_conv_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_conv_top_WriteReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_ISR, Mask);
}

u32 XYolo_conv_top_InterruptGetEnabled(XYolo_conv_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XYolo_conv_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_IER);
}

u32 XYolo_conv_top_InterruptGetStatus(XYolo_conv_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XYolo_conv_top_ReadReg(InstancePtr->Axilites_BaseAddress, XYOLO_CONV_TOP_AXILITES_ADDR_ISR);
}

