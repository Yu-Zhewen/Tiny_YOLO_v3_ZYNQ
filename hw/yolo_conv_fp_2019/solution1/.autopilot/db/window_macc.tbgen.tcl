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
set C_modelType { int 16 }
set C_modelArgList {
	{ window_0_0_val_V_r int 16 regular  }
	{ window_0_1_val_V_r int 16 regular  }
	{ window_0_2_val_V_r int 16 regular  }
	{ window_1_0_val_V_r int 16 regular  }
	{ window_1_1_val_V_r int 16 regular  }
	{ window_1_2_val_V_r int 16 regular  }
	{ window_2_0_val_V_r int 16 regular  }
	{ window_2_1_val_V_r int 16 regular  }
	{ window_2_2_val_V_r int 16 regular  }
	{ weight_V_offset int 9 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "window_0_0_val_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_1_val_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_2_val_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_0_val_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_1_val_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_2_val_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_0_val_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_1_val_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_2_val_V_r", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_V_offset", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 16} ]}
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
	{ window_0_0_val_V_r sc_in sc_lv 16 signal 0 } 
	{ window_0_1_val_V_r sc_in sc_lv 16 signal 1 } 
	{ window_0_2_val_V_r sc_in sc_lv 16 signal 2 } 
	{ window_1_0_val_V_r sc_in sc_lv 16 signal 3 } 
	{ window_1_1_val_V_r sc_in sc_lv 16 signal 4 } 
	{ window_1_2_val_V_r sc_in sc_lv 16 signal 5 } 
	{ window_2_0_val_V_r sc_in sc_lv 16 signal 6 } 
	{ window_2_1_val_V_r sc_in sc_lv 16 signal 7 } 
	{ window_2_2_val_V_r sc_in sc_lv 16 signal 8 } 
	{ weight_V_offset sc_in sc_lv 9 signal 9 } 
	{ ap_return sc_out sc_lv 16 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "window_0_0_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_0_val_V_r", "role": "default" }} , 
 	{ "name": "window_0_1_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_1_val_V_r", "role": "default" }} , 
 	{ "name": "window_0_2_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_2_val_V_r", "role": "default" }} , 
 	{ "name": "window_1_0_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_1_0_val_V_r", "role": "default" }} , 
 	{ "name": "window_1_1_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_1_1_val_V_r", "role": "default" }} , 
 	{ "name": "window_1_2_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_1_2_val_V_r", "role": "default" }} , 
 	{ "name": "window_2_0_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_0_val_V_r", "role": "default" }} , 
 	{ "name": "window_2_1_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_1_val_V_r", "role": "default" }} , 
 	{ "name": "window_2_2_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_2_val_V_r", "role": "default" }} , 
 	{ "name": "weight_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_V_offset", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_weight_fp", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_weight_fp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_14s_16s_30_1_1_U10", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_14s_16s_30_1_1_U11", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_14s_16s_30_1_1_U12", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_14s_16s_30_1_1_U13", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_14s_16s_30_1_1_U14", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_14s_16s_30_1_1_U15", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_14s_16s_30_1_1_U16", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_14s_16s_30_1_1_U17", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_14s_16s_30_1_1_U18", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	window_macc {
		window_0_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		weight_V_offset {Type I LastRead 0 FirstWrite -1}
		kernel_weight_fp {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	window_0_0_val_V_r { ap_none {  { window_0_0_val_V_r in_data 0 16 } } }
	window_0_1_val_V_r { ap_none {  { window_0_1_val_V_r in_data 0 16 } } }
	window_0_2_val_V_r { ap_none {  { window_0_2_val_V_r in_data 0 16 } } }
	window_1_0_val_V_r { ap_none {  { window_1_0_val_V_r in_data 0 16 } } }
	window_1_1_val_V_r { ap_none {  { window_1_1_val_V_r in_data 0 16 } } }
	window_1_2_val_V_r { ap_none {  { window_1_2_val_V_r in_data 0 16 } } }
	window_2_0_val_V_r { ap_none {  { window_2_0_val_V_r in_data 0 16 } } }
	window_2_1_val_V_r { ap_none {  { window_2_1_val_V_r in_data 0 16 } } }
	window_2_2_val_V_r { ap_none {  { window_2_2_val_V_r in_data 0 16 } } }
	weight_V_offset { ap_none {  { weight_V_offset in_data 0 9 } } }
}
