############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project yolo_acc_fp_2019_64
set_top yolo_acc_top
add_files yolo_acc_fp_2019_64/src/layer_parameter.h
add_files yolo_acc_fp_2019_64/src/yolo_acc.cpp
add_files yolo_acc_fp_2019_64/src/yolo_acc.h
add_files yolo_acc_fp_2019_64/src/yolo_fp.h
add_files yolo_acc_fp_2019_64/src/yolo_stream.h
add_files -tb yolo_acc_fp_2019_64/tb/yolo_acc_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./yolo_acc_fp_2019_64/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
