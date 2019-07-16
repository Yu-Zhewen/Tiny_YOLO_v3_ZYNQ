############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project yolo_max_pool_fp_2019_64
set_top yolo_max_pool_top
add_files yolo_max_pool_fp_2019_64/src/layer_parameter.h
add_files yolo_max_pool_fp_2019_64/src/yolo_fp.h
add_files yolo_max_pool_fp_2019_64/src/yolo_max_pool.cpp
add_files yolo_max_pool_fp_2019_64/src/yolo_max_pool.h
add_files yolo_max_pool_fp_2019_64/src/yolo_stream.h
add_files -tb yolo_max_pool_fp_2019_64/tb/layer_input.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb yolo_max_pool_fp_2019_64/tb/layer_output_sdk.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb yolo_max_pool_fp_2019_64/tb/yolo_max_pool_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./yolo_max_pool_fp_2019_64/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
