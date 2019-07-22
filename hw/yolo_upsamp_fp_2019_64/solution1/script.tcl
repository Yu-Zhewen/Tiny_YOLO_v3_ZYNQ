############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project yolo_upsamp_fp_2019_64
set_top yolo_upsamp_top
add_files yolo_upsamp_fp_2019_64/src/yolo_fp.h
add_files yolo_upsamp_fp_2019_64/src/yolo_stream.h
add_files yolo_upsamp_fp_2019_64/src/yolo_upsamp.cpp
add_files yolo_upsamp_fp_2019_64/src/yolo_upsamp.h
add_files -tb yolo_upsamp_fp_2019_64/tb/layer_input.dat
add_files -tb yolo_upsamp_fp_2019_64/tb/layer_output_sdk.dat
add_files -tb yolo_upsamp_fp_2019_64/src/yolo_upsamp_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
config_sdx -optimization_level none -target none
config_export -vivado_optimization_level 2
set_clock_uncertainty 20%
#source "./yolo_upsamp_fp_2019_64/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
