// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern void AESL_WRAP_yolo_conv_top (
hls::stream<struct ap_axi_fp<64, 2, 5, 6 > > (&inStream),
hls::stream<struct ap_axi_fp<64, 2, 5, 6 > > (&outStream),
ap_uint<6> output_ch,
ap_uint<6> input_ch,
ap_uint<4> fold_output_ch,
ap_uint<4> fold_input_ch,
ap_uint<9> input_h,
ap_uint<9> input_w,
ap_uint<9> real_input_h,
ap_uint<1> leaky,
ap_uint<3> fold_win_area);
