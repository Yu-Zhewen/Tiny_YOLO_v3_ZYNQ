############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project yolo_conv_2019
set_top yolo_conv_top
add_files yolo_conv_2019/src/yolo_stream.h
add_files yolo_conv_2019/src/yolo_conv.h
add_files yolo_conv_2019/src/yolo_conv.cpp
add_files yolo_conv_2019/src/weight_file.h
add_files yolo_conv_2019/src/layer_parameter.h
add_files -tb yolo_conv_2019/tb/yolo_conv_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb yolo_conv_2019/tb/layer_output_sdk.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb yolo_conv_2019/tb/layer_input.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./yolo_conv_2019/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
