// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XYOLO_ACC_TOP_H
#define XYOLO_ACC_TOP_H

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
#include "xyolo_acc_top_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
} XYolo_acc_top_Config;
#endif

typedef struct {
    u32 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XYolo_acc_top;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XYolo_acc_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XYolo_acc_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XYolo_acc_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XYolo_acc_top_ReadReg(BaseAddress, RegOffset) \
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
int XYolo_acc_top_Initialize(XYolo_acc_top *InstancePtr, u16 DeviceId);
XYolo_acc_top_Config* XYolo_acc_top_LookupConfig(u16 DeviceId);
int XYolo_acc_top_CfgInitialize(XYolo_acc_top *InstancePtr, XYolo_acc_top_Config *ConfigPtr);
#else
int XYolo_acc_top_Initialize(XYolo_acc_top *InstancePtr, const char* InstanceName);
int XYolo_acc_top_Release(XYolo_acc_top *InstancePtr);
#endif

void XYolo_acc_top_Start(XYolo_acc_top *InstancePtr);
u32 XYolo_acc_top_IsDone(XYolo_acc_top *InstancePtr);
u32 XYolo_acc_top_IsIdle(XYolo_acc_top *InstancePtr);
u32 XYolo_acc_top_IsReady(XYolo_acc_top *InstancePtr);
void XYolo_acc_top_EnableAutoRestart(XYolo_acc_top *InstancePtr);
void XYolo_acc_top_DisableAutoRestart(XYolo_acc_top *InstancePtr);

void XYolo_acc_top_Set_input_h_V(XYolo_acc_top *InstancePtr, u32 Data);
u32 XYolo_acc_top_Get_input_h_V(XYolo_acc_top *InstancePtr);
void XYolo_acc_top_Set_input_w_V(XYolo_acc_top *InstancePtr, u32 Data);
u32 XYolo_acc_top_Get_input_w_V(XYolo_acc_top *InstancePtr);
void XYolo_acc_top_Set_fold_input_ch_V(XYolo_acc_top *InstancePtr, u32 Data);
u32 XYolo_acc_top_Get_fold_input_ch_V(XYolo_acc_top *InstancePtr);
void XYolo_acc_top_Set_leaky_V(XYolo_acc_top *InstancePtr, u32 Data);
u32 XYolo_acc_top_Get_leaky_V(XYolo_acc_top *InstancePtr);
void XYolo_acc_top_Set_bias_en_V(XYolo_acc_top *InstancePtr, u32 Data);
u32 XYolo_acc_top_Get_bias_en_V(XYolo_acc_top *InstancePtr);

void XYolo_acc_top_InterruptGlobalEnable(XYolo_acc_top *InstancePtr);
void XYolo_acc_top_InterruptGlobalDisable(XYolo_acc_top *InstancePtr);
void XYolo_acc_top_InterruptEnable(XYolo_acc_top *InstancePtr, u32 Mask);
void XYolo_acc_top_InterruptDisable(XYolo_acc_top *InstancePtr, u32 Mask);
void XYolo_acc_top_InterruptClear(XYolo_acc_top *InstancePtr, u32 Mask);
u32 XYolo_acc_top_InterruptGetEnabled(XYolo_acc_top *InstancePtr);
u32 XYolo_acc_top_InterruptGetStatus(XYolo_acc_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
