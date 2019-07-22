// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xyolo_upsamp_top.h"

extern XYolo_upsamp_top_Config XYolo_upsamp_top_ConfigTable[];

XYolo_upsamp_top_Config *XYolo_upsamp_top_LookupConfig(u16 DeviceId) {
	XYolo_upsamp_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XYOLO_UPSAMP_TOP_NUM_INSTANCES; Index++) {
		if (XYolo_upsamp_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XYolo_upsamp_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XYolo_upsamp_top_Initialize(XYolo_upsamp_top *InstancePtr, u16 DeviceId) {
	XYolo_upsamp_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XYolo_upsamp_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XYolo_upsamp_top_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

