############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project yolo_conv_fp_2019_64_rec
set_top yolo_conv_top
add_files yolo_conv_fp_2019_64_rec/src/yolo_stream.h
add_files yolo_conv_fp_2019_64_rec/src/yolo_fp.h
add_files yolo_conv_fp_2019_64_rec/src/yolo_conv.h
add_files yolo_conv_fp_2019_64_rec/src/yolo_conv.cpp
add_files yolo_conv_fp_2019_64_rec/src/weight_file.h
add_files yolo_conv_fp_2019_64_rec/src/layer_parameter.h
add_files -tb yolo_conv_fp_2019_64_rec/tb/yolo_conv_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb yolo_conv_fp_2019_64_rec/tb/layer_output_sdk.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb yolo_conv_fp_2019_64_rec/tb/layer_input.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_sdx -target none
config_export -format ip_catalog -rtl verilog -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
set_clock_uncertainty 20%
#source "./yolo_conv_fp_2019_64_rec/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
