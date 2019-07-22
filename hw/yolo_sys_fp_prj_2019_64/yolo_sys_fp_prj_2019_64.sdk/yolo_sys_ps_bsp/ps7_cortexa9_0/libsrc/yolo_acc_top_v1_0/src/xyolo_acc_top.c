// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xyolo_acc_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XYolo_acc_top_CfgInitialize(XYolo_acc_top *InstancePtr, XYolo_acc_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XYolo_acc_top_Start(XYolo_acc_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_acc_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XYolo_acc_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XYolo_acc_top_IsDone(XYolo_acc_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_acc_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XYolo_acc_top_IsIdle(XYolo_acc_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_acc_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XYolo_acc_top_IsReady(XYolo_acc_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_acc_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XYolo_acc_top_EnableAutoRestart(XYolo_acc_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_acc_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XYolo_acc_top_DisableAutoRestart(XYolo_acc_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_acc_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XYolo_acc_top_Set_input_h_V(XYolo_acc_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_acc_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_INPUT_H_V_DATA, Data);
}

u32 XYolo_acc_top_Get_input_h_V(XYolo_acc_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_acc_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_INPUT_H_V_DATA);
    return Data;
}

void XYolo_acc_top_Set_input_w_V(XYolo_acc_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_acc_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_INPUT_W_V_DATA, Data);
}

u32 XYolo_acc_top_Get_input_w_V(XYolo_acc_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_acc_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_INPUT_W_V_DATA);
    return Data;
}

void XYolo_acc_top_Set_fold_input_ch_V(XYolo_acc_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_acc_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_FOLD_INPUT_CH_V_DATA, Data);
}

u32 XYolo_acc_top_Get_fold_input_ch_V(XYolo_acc_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_acc_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_FOLD_INPUT_CH_V_DATA);
    return Data;
}

void XYolo_acc_top_Set_leaky_V(XYolo_acc_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_acc_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_LEAKY_V_DATA, Data);
}

u32 XYolo_acc_top_Get_leaky_V(XYolo_acc_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_acc_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_LEAKY_V_DATA);
    return Data;
}

void XYolo_acc_top_Set_bias_en_V(XYolo_acc_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_acc_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_BIAS_EN_V_DATA, Data);
}

u32 XYolo_acc_top_Get_bias_en_V(XYolo_acc_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XYolo_acc_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_BIAS_EN_V_DATA);
    return Data;
}

void XYolo_acc_top_InterruptGlobalEnable(XYolo_acc_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_acc_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_GIE, 1);
}

void XYolo_acc_top_InterruptGlobalDisable(XYolo_acc_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_acc_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_GIE, 0);
}

void XYolo_acc_top_InterruptEnable(XYolo_acc_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XYolo_acc_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_IER);
    XYolo_acc_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XYolo_acc_top_InterruptDisable(XYolo_acc_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XYolo_acc_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_IER);
    XYolo_acc_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XYolo_acc_top_InterruptClear(XYolo_acc_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XYolo_acc_top_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XYolo_acc_top_InterruptGetEnabled(XYolo_acc_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XYolo_acc_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_IER);
}

u32 XYolo_acc_top_InterruptGetStatus(XYolo_acc_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XYolo_acc_top_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XYOLO_ACC_TOP_CTRL_BUS_ADDR_ISR);
}

