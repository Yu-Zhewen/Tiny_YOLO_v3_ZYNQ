// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XYOLO_YOLO_TOP_H
#define XYOLO_YOLO_TOP_H

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
#include "xyolo_yolo_top_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
} XYolo_yolo_top_Config;
#endif

typedef struct {
    u32 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XYolo_yolo_top;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XYolo_yolo_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XYolo_yolo_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XYolo_yolo_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XYolo_yolo_top_ReadReg(BaseAddress, RegOffset) \
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
int XYolo_yolo_top_Initialize(XYolo_yolo_top *InstancePtr, u16 DeviceId);
XYolo_yolo_top_Config* XYolo_yolo_top_LookupConfig(u16 DeviceId);
int XYolo_yolo_top_CfgInitialize(XYolo_yolo_top *InstancePtr, XYolo_yolo_top_Config *ConfigPtr);
#else
int XYolo_yolo_top_Initialize(XYolo_yolo_top *InstancePtr, const char* InstanceName);
int XYolo_yolo_top_Release(XYolo_yolo_top *InstancePtr);
#endif

void XYolo_yolo_top_Start(XYolo_yolo_top *InstancePtr);
u32 XYolo_yolo_top_IsDone(XYolo_yolo_top *InstancePtr);
u32 XYolo_yolo_top_IsIdle(XYolo_yolo_top *InstancePtr);
u32 XYolo_yolo_top_IsReady(XYolo_yolo_top *InstancePtr);
void XYolo_yolo_top_EnableAutoRestart(XYolo_yolo_top *InstancePtr);
void XYolo_yolo_top_DisableAutoRestart(XYolo_yolo_top *InstancePtr);

void XYolo_yolo_top_Set_activate_en_V(XYolo_yolo_top *InstancePtr, u32 Data);
u32 XYolo_yolo_top_Get_activate_en_V(XYolo_yolo_top *InstancePtr);
void XYolo_yolo_top_Set_input_h_V(XYolo_yolo_top *InstancePtr, u32 Data);
u32 XYolo_yolo_top_Get_input_h_V(XYolo_yolo_top *InstancePtr);
void XYolo_yolo_top_Set_input_w_V(XYolo_yolo_top *InstancePtr, u32 Data);
u32 XYolo_yolo_top_Get_input_w_V(XYolo_yolo_top *InstancePtr);

void XYolo_yolo_top_InterruptGlobalEnable(XYolo_yolo_top *InstancePtr);
void XYolo_yolo_top_InterruptGlobalDisable(XYolo_yolo_top *InstancePtr);
void XYolo_yolo_top_InterruptEnable(XYolo_yolo_top *InstancePtr, u32 Mask);
void XYolo_yolo_top_InterruptDisable(XYolo_yolo_top *InstancePtr, u32 Mask);
void XYolo_yolo_top_InterruptClear(XYolo_yolo_top *InstancePtr, u32 Mask);
u32 XYolo_yolo_top_InterruptGetEnabled(XYolo_yolo_top *InstancePtr);
u32 XYolo_yolo_top_InterruptGetStatus(XYolo_yolo_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
