create_project prj -part xc7z020-clg484-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/xavier/MSc_Project/hls/yolo_conv_hls_2019/yolo_max_pool_2019/solution1/syn/verilog/yolo_max_pool_top_ap_fcmp_0_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips yolo_max_pool_top_ap_fcmp_0_no_dsp_32]]
}
