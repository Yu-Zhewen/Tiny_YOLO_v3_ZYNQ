set moduleName post_process
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 1
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {post_process}
set C_modelType { int 16 }
set C_modelArgList {
	{ sub0_val_output_V int 16 regular  }
	{ sub1_val_output_V int 16 regular  }
	{ sub2_val_output_V int 16 regular  }
	{ sub3_val_output_V int 16 regular  }
	{ acc_flag uint 1 regular  }
	{ leaky_V int 1 regular  }
	{ bias_V int 16 regular  }
	{ input_ch_idx_V int 4 regular  }
	{ val_output_V int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sub0_val_output_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sub1_val_output_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sub2_val_output_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sub3_val_output_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "acc_flag", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "leaky_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bias_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_ch_idx_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "val_output_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 16} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ sub0_val_output_V sc_in sc_lv 16 signal 0 } 
	{ sub1_val_output_V sc_in sc_lv 16 signal 1 } 
	{ sub2_val_output_V sc_in sc_lv 16 signal 2 } 
	{ sub3_val_output_V sc_in sc_lv 16 signal 3 } 
	{ acc_flag sc_in sc_logic 1 signal 4 } 
	{ leaky_V sc_in sc_lv 1 signal 5 } 
	{ bias_V sc_in sc_lv 16 signal 6 } 
	{ input_ch_idx_V sc_in sc_lv 4 signal 7 } 
	{ val_output_V sc_in sc_lv 16 signal 8 } 
	{ ap_return sc_out sc_lv 16 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "sub0_val_output_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sub0_val_output_V", "role": "default" }} , 
 	{ "name": "sub1_val_output_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sub1_val_output_V", "role": "default" }} , 
 	{ "name": "sub2_val_output_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sub2_val_output_V", "role": "default" }} , 
 	{ "name": "sub3_val_output_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sub3_val_output_V", "role": "default" }} , 
 	{ "name": "acc_flag", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acc_flag", "role": "default" }} , 
 	{ "name": "leaky_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "leaky_V", "role": "default" }} , 
 	{ "name": "bias_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_V", "role": "default" }} , 
 	{ "name": "input_ch_idx_V", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_ch_idx_V", "role": "default" }} , 
 	{ "name": "val_output_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "val_output_V", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "post_process",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sub0_val_output_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub1_val_output_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub2_val_output_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub3_val_output_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_flag", "Type" : "None", "Direction" : "I"},
			{"Name" : "leaky_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_ch_idx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_output_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_0_U34", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	post_process {
		sub0_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub1_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub2_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub3_val_output_V {Type I LastRead 0 FirstWrite -1}
		acc_flag {Type I LastRead 0 FirstWrite -1}
		leaky_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}
		input_ch_idx_V {Type I LastRead 0 FirstWrite -1}
		val_output_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sub0_val_output_V { ap_none {  { sub0_val_output_V in_data 0 16 } } }
	sub1_val_output_V { ap_none {  { sub1_val_output_V in_data 0 16 } } }
	sub2_val_output_V { ap_none {  { sub2_val_output_V in_data 0 16 } } }
	sub3_val_output_V { ap_none {  { sub3_val_output_V in_data 0 16 } } }
	acc_flag { ap_none {  { acc_flag in_data 0 1 } } }
	leaky_V { ap_none {  { leaky_V in_data 0 1 } } }
	bias_V { ap_none {  { bias_V in_data 0 16 } } }
	input_ch_idx_V { ap_none {  { input_ch_idx_V in_data 0 4 } } }
	val_output_V { ap_none {  { val_output_V in_data 0 16 } } }
}
