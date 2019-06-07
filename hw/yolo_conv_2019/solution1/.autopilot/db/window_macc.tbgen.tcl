set moduleName window_macc
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {window_macc}
set C_modelType { float 32 }
set C_modelArgList {
	{ window_0_0_val_rea float 32 regular  }
	{ window_0_1_val_rea float 32 regular  }
	{ window_0_2_val_rea float 32 regular  }
	{ window_1_0_val_rea float 32 regular  }
	{ window_1_1_val_rea float 32 regular  }
	{ window_1_2_val_rea float 32 regular  }
	{ window_2_0_val_rea float 32 regular  }
	{ window_2_1_val_rea float 32 regular  }
	{ window_2_2_val_rea float 32 regular  }
	{ weight_offset int 9 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "window_0_0_val_rea", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_1_val_rea", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_2_val_rea", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_0_val_rea", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_1_val_rea", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_2_val_rea", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_0_val_rea", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_1_val_rea", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_2_val_rea", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_offset", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ window_0_0_val_rea sc_in sc_lv 32 signal 0 } 
	{ window_0_1_val_rea sc_in sc_lv 32 signal 1 } 
	{ window_0_2_val_rea sc_in sc_lv 32 signal 2 } 
	{ window_1_0_val_rea sc_in sc_lv 32 signal 3 } 
	{ window_1_1_val_rea sc_in sc_lv 32 signal 4 } 
	{ window_1_2_val_rea sc_in sc_lv 32 signal 5 } 
	{ window_2_0_val_rea sc_in sc_lv 32 signal 6 } 
	{ window_2_1_val_rea sc_in sc_lv 32 signal 7 } 
	{ window_2_2_val_rea sc_in sc_lv 32 signal 8 } 
	{ weight_offset sc_in sc_lv 9 signal 9 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "window_0_0_val_rea", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "window_0_0_val_rea", "role": "default" }} , 
 	{ "name": "window_0_1_val_rea", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "window_0_1_val_rea", "role": "default" }} , 
 	{ "name": "window_0_2_val_rea", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "window_0_2_val_rea", "role": "default" }} , 
 	{ "name": "window_1_0_val_rea", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "window_1_0_val_rea", "role": "default" }} , 
 	{ "name": "window_1_1_val_rea", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "window_1_1_val_rea", "role": "default" }} , 
 	{ "name": "window_1_2_val_rea", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "window_1_2_val_rea", "role": "default" }} , 
 	{ "name": "window_2_0_val_rea", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "window_2_0_val_rea", "role": "default" }} , 
 	{ "name": "window_2_1_val_rea", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "window_2_1_val_rea", "role": "default" }} , 
 	{ "name": "window_2_2_val_rea", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "window_2_2_val_rea", "role": "default" }} , 
 	{ "name": "weight_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_offset", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "62", "EstimateLatencyMin" : "62", "EstimateLatencyMax" : "62",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_val_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_val_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_val_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_val_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_1_val_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_val_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_val_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_val_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_val_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_weight_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_weight_15", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fadd_32ns_32ns_32_5_full_dsp_1_U10", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fadd_32ns_32ns_32_5_full_dsp_1_U11", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fadd_32ns_32ns_32_5_full_dsp_1_U12", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fadd_32ns_32ns_32_5_full_dsp_1_U13", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fadd_32ns_32ns_32_5_full_dsp_1_U14", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fadd_32ns_32ns_32_5_full_dsp_1_U15", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fadd_32ns_32ns_32_5_full_dsp_1_U16", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fadd_32ns_32ns_32_5_full_dsp_1_U17", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fadd_32ns_32ns_32_5_full_dsp_1_U18", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fmul_32ns_32ns_32_4_max_dsp_1_U19", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fmul_32ns_32ns_32_4_max_dsp_1_U20", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fmul_32ns_32ns_32_4_max_dsp_1_U21", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fmul_32ns_32ns_32_4_max_dsp_1_U22", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fmul_32ns_32ns_32_4_max_dsp_1_U23", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fmul_32ns_32ns_32_4_max_dsp_1_U24", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fmul_32ns_32ns_32_4_max_dsp_1_U25", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fmul_32ns_32ns_32_4_max_dsp_1_U26", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_fmul_32ns_32ns_32_4_max_dsp_1_U27", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_urem_9ns_6ns_9_13_1_U28", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_urem_9ns_6ns_9_13_1_U29", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_urem_9ns_6ns_9_13_1_U30", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_urem_9ns_6ns_9_13_1_U31", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_urem_9ns_6ns_9_13_1_U32", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_urem_9ns_6ns_9_13_1_U33", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_urem_9ns_6ns_9_13_1_U34", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_urem_9ns_6ns_9_13_1_U35", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_urem_9ns_6ns_9_13_1_U36", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_9ns_11ns_20_1_1_U37", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_9ns_11ns_20_1_1_U38", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_9ns_11ns_20_1_1_U39", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_9ns_11ns_20_1_1_U40", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_9ns_11ns_20_1_1_U41", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_9ns_11ns_20_1_1_U42", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_9ns_11ns_20_1_1_U43", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_9ns_11ns_20_1_1_U44", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_9ns_11ns_20_1_1_U45", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	window_macc {
		window_0_0_val_rea {Type I LastRead 0 FirstWrite -1}
		window_0_1_val_rea {Type I LastRead 0 FirstWrite -1}
		window_0_2_val_rea {Type I LastRead 0 FirstWrite -1}
		window_1_0_val_rea {Type I LastRead 0 FirstWrite -1}
		window_1_1_val_rea {Type I LastRead 0 FirstWrite -1}
		window_1_2_val_rea {Type I LastRead 0 FirstWrite -1}
		window_2_0_val_rea {Type I LastRead 0 FirstWrite -1}
		window_2_1_val_rea {Type I LastRead 0 FirstWrite -1}
		window_2_2_val_rea {Type I LastRead 0 FirstWrite -1}
		weight_offset {Type I LastRead 0 FirstWrite -1}
		kernel_weight_0 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_1 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_2 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_3 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_4 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_5 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_6 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_7 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_8 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_9 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_10 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_11 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_12 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_13 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_14 {Type I LastRead -1 FirstWrite -1}
		kernel_weight_15 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "62", "Max" : "62"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	window_0_0_val_rea { ap_none {  { window_0_0_val_rea in_data 0 32 } } }
	window_0_1_val_rea { ap_none {  { window_0_1_val_rea in_data 0 32 } } }
	window_0_2_val_rea { ap_none {  { window_0_2_val_rea in_data 0 32 } } }
	window_1_0_val_rea { ap_none {  { window_1_0_val_rea in_data 0 32 } } }
	window_1_1_val_rea { ap_none {  { window_1_1_val_rea in_data 0 32 } } }
	window_1_2_val_rea { ap_none {  { window_1_2_val_rea in_data 0 32 } } }
	window_2_0_val_rea { ap_none {  { window_2_0_val_rea in_data 0 32 } } }
	window_2_1_val_rea { ap_none {  { window_2_1_val_rea in_data 0 32 } } }
	window_2_2_val_rea { ap_none {  { window_2_2_val_rea in_data 0 32 } } }
	weight_offset { ap_none {  { weight_offset in_data 0 9 } } }
}
