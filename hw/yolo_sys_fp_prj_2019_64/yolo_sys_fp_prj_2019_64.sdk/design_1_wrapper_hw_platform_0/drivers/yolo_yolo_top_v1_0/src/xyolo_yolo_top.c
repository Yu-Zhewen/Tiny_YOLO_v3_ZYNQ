// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xyolo_yolo_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XYolo_yolo_top_CfgInitialize(XYolo_yolo_top *InstancePtr, XYolo_yolo_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XYolo_yolo_top_Start(XYolo_yolo_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_yolo_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XYolo_yolo_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XYolo_yolo_top_IsDone(XYolo_yolo_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_yolo_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XYolo_yolo_top_IsIdle(XYolo_yolo_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_yolo_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XYolo_yolo_top_IsReady(XYolo_yolo_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_yolo_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XYolo_yolo_top_EnableAutoRestart(XYolo_yolo_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_yolo_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XYolo_yolo_top_DisableAutoRestart(XYolo_yolo_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_yolo_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XYolo_yolo_top_Set_activate_en_V(XYolo_yolo_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_yolo_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_ACTIVATE_EN_V_DATA, Data);
}

u32 XYolo_yolo_top_Get_activate_en_V(XYolo_yolo_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_yolo_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_ACTIVATE_EN_V_DATA);
    return Data;
}

void XYolo_yolo_top_Set_input_h_V(XYolo_yolo_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_yolo_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_INPUT_H_V_DATA, Data);
}

u32 XYolo_yolo_top_Get_input_h_V(XYolo_yolo_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_yolo_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_INPUT_H_V_DATA);
    return Data;
}

void XYolo_yolo_top_Set_input_w_V(XYolo_yolo_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_yolo_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_INPUT_W_V_DATA, Data);
}

u32 XYolo_yolo_top_Get_input_w_V(XYolo_yolo_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_yolo_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_INPUT_W_V_DATA);
    return Data;
}

void XYolo_yolo_top_InterruptGlobalEnable(XYolo_yolo_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_yolo_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_GIE, 1);
}

void XYolo_yolo_top_InterruptGlobalDisable(XYolo_yolo_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_yolo_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_GIE, 0);
}

void XYolo_yolo_top_InterruptEnable(XYolo_yolo_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XYolo_yolo_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_IER);
    XYolo_yolo_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XYolo_yolo_top_InterruptDisable(XYolo_yolo_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XYolo_yolo_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_IER);
    XYolo_yolo_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XYolo_yolo_top_InterruptClear(XYolo_yolo_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_yolo_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XYolo_yolo_top_InterruptGetEnabled(XYolo_yolo_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XYolo_yolo_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_IER);
}

u32 XYolo_yolo_top_InterruptGetStatus(XYolo_yolo_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XYolo_yolo_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_YOLO_TOP_CTRL_BUS_ADDR_ISR);
}

