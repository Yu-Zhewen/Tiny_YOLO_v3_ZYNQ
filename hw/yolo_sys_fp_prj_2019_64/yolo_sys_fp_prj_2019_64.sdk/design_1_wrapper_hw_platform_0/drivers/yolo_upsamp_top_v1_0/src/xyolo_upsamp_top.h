// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XYOLO_UPSAMP_TOP_H
#define XYOLO_UPSAMP_TOP_H

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
#include "xyolo_upsamp_top_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
} XYolo_upsamp_top_Config;
#endif

typedef struct {
    u32 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XYolo_upsamp_top;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XYolo_upsamp_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XYolo_upsamp_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XYolo_upsamp_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XYolo_upsamp_top_ReadReg(BaseAddress, RegOffset) \
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
int XYolo_upsamp_top_Initialize(XYolo_upsamp_top *InstancePtr, u16 DeviceId);
XYolo_upsamp_top_Config* XYolo_upsamp_top_LookupConfig(u16 DeviceId);
int XYolo_upsamp_top_CfgInitialize(XYolo_upsamp_top *InstancePtr, XYolo_upsamp_top_Config *ConfigPtr);
#else
int XYolo_upsamp_top_Initialize(XYolo_upsamp_top *InstancePtr, const char* InstanceName);
int XYolo_upsamp_top_Release(XYolo_upsamp_top *InstancePtr);
#endif

void XYolo_upsamp_top_Start(XYolo_upsamp_top *InstancePtr);
u32 XYolo_upsamp_top_IsDone(XYolo_upsamp_top *InstancePtr);
u32 XYolo_upsamp_top_IsIdle(XYolo_upsamp_top *InstancePtr);
u32 XYolo_upsamp_top_IsReady(XYolo_upsamp_top *InstancePtr);
void XYolo_upsamp_top_EnableAutoRestart(XYolo_upsamp_top *InstancePtr);
void XYolo_upsamp_top_DisableAutoRestart(XYolo_upsamp_top *InstancePtr);


void XYolo_upsamp_top_InterruptGlobalEnable(XYolo_upsamp_top *InstancePtr);
void XYolo_upsamp_top_InterruptGlobalDisable(XYolo_upsamp_top *InstancePtr);
void XYolo_upsamp_top_InterruptEnable(XYolo_upsamp_top *InstancePtr, u32 Mask);
void XYolo_upsamp_top_InterruptDisable(XYolo_upsamp_top *InstancePtr, u32 Mask);
void XYolo_upsamp_top_InterruptClear(XYolo_upsamp_top *InstancePtr, u32 Mask);
u32 XYolo_upsamp_top_InterruptGetEnabled(XYolo_upsamp_top *InstancePtr);
u32 XYolo_upsamp_top_InterruptGetStatus(XYolo_upsamp_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
