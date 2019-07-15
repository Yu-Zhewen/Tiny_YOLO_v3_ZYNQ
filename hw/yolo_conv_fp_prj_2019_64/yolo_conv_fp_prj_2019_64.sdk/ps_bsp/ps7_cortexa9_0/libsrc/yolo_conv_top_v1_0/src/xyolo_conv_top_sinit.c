// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xyolo_conv_top.h"

extern XYolo_conv_top_Config XYolo_conv_top_ConfigTable[];

XYolo_conv_top_Config *XYolo_conv_top_LookupConfig(u16 DeviceId) {
	XYolo_conv_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XYOLO_CONV_TOP_NUM_INSTANCES; Index++) {
		if (XYolo_conv_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XYolo_conv_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XYolo_conv_top_Initialize(XYolo_conv_top *InstancePtr, u16 DeviceId) {
	XYolo_conv_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XYolo_conv_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XYolo_conv_top_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

