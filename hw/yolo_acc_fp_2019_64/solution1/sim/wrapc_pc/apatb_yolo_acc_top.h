// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern void AESL_WRAP_yolo_acc_top (
hls::stream<struct ap_axi_fp<64, 2, 5, 6 > > (&inStream_a),
hls::stream<struct ap_axi_fp<64, 2, 5, 6 > > (&inStream_b),
hls::stream<struct ap_axi_fp<64, 2, 5, 6 > > (&outStream),
ap_uint<6> input_h,
ap_uint<6> input_w);
