connect -url tcp:127.0.0.1:3121
source /home/xavier/MSc_Project/hls/yolo_conv_hls_2019/yolo_sys_fp_prj_2019_64/yolo_sys_fp_prj_2019_64.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248586321"} -index 0
loadhw -hw /home/xavier/MSc_Project/hls/yolo_conv_hls_2019/yolo_sys_fp_prj_2019_64/yolo_sys_fp_prj_2019_64.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248586321"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248586321"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248586321"} -index 0
dow /home/xavier/MSc_Project/hls/yolo_conv_hls_2019/yolo_sys_fp_prj_2019_64/yolo_sys_fp_prj_2019_64.sdk/yolo_sys_ps/Debug/yolo_sys_ps.elf
configparams force-mem-access 0
bpadd -addr &main
