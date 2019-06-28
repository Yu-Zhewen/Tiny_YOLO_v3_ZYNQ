set moduleName window_macc
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
	{ p_read9 int 16 regular  }
	{ p_read110 int 16 regular  }
	{ p_read211 int 16 regular  }
	{ p_read312 int 16 regular  }
	{ p_read413 int 16 regular  }
	{ p_read514 int 16 regular  }
	{ p_read615 int 16 regular  }
	{ p_read716 int 16 regular  }
	{ p_read817 int 16 regular  }
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
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read110", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read211", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read312", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read413", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read514", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read615", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read716", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read817", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 16} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ window_0_0_val_V_r sc_in sc_lv 16 signal 0 } 
	{ window_0_1_val_V_r sc_in sc_lv 16 signal 1 } 
	{ window_0_2_val_V_r sc_in sc_lv 16 signal 2 } 
	{ window_1_0_val_V_r sc_in sc_lv 16 signal 3 } 
	{ window_1_1_val_V_r sc_in sc_lv 16 signal 4 } 
	{ window_1_2_val_V_r sc_in sc_lv 16 signal 5 } 
	{ window_2_0_val_V_r sc_in sc_lv 16 signal 6 } 
	{ window_2_1_val_V_r sc_in sc_lv 16 signal 7 } 
	{ window_2_2_val_V_r sc_in sc_lv 16 signal 8 } 
	{ p_read9 sc_in sc_lv 16 signal 9 } 
	{ p_read110 sc_in sc_lv 16 signal 10 } 
	{ p_read211 sc_in sc_lv 16 signal 11 } 
	{ p_read312 sc_in sc_lv 16 signal 12 } 
	{ p_read413 sc_in sc_lv 16 signal 13 } 
	{ p_read514 sc_in sc_lv 16 signal 14 } 
	{ p_read615 sc_in sc_lv 16 signal 15 } 
	{ p_read716 sc_in sc_lv 16 signal 16 } 
	{ p_read817 sc_in sc_lv 16 signal 17 } 
	{ ap_return sc_out sc_lv 16 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "window_0_0_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_0_val_V_r", "role": "default" }} , 
 	{ "name": "window_0_1_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_1_val_V_r", "role": "default" }} , 
 	{ "name": "window_0_2_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_2_val_V_r", "role": "default" }} , 
 	{ "name": "window_1_0_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_1_0_val_V_r", "role": "default" }} , 
 	{ "name": "window_1_1_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_1_1_val_V_r", "role": "default" }} , 
 	{ "name": "window_1_2_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_1_2_val_V_r", "role": "default" }} , 
 	{ "name": "window_2_0_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_0_val_V_r", "role": "default" }} , 
 	{ "name": "window_2_1_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_1_val_V_r", "role": "default" }} , 
 	{ "name": "window_2_2_val_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_2_val_V_r", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read110", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read110", "role": "default" }} , 
 	{ "name": "p_read211", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read211", "role": "default" }} , 
 	{ "name": "p_read312", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read312", "role": "default" }} , 
 	{ "name": "p_read413", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read413", "role": "default" }} , 
 	{ "name": "p_read514", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read514", "role": "default" }} , 
 	{ "name": "p_read615", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read615", "role": "default" }} , 
 	{ "name": "p_read716", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read716", "role": "default" }} , 
 	{ "name": "p_read817", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read817", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
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
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read110", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read211", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read312", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read413", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read514", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read615", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read716", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read817", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_16s_16s_32_1_0_U15", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_16s_16s_32_1_0_U16", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_16s_16s_32_1_0_U17", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_16s_16s_32_1_0_U18", "Parent" : "0"}]}


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
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read110 {Type I LastRead 0 FirstWrite -1}
		p_read211 {Type I LastRead 0 FirstWrite -1}
		p_read312 {Type I LastRead 0 FirstWrite -1}
		p_read413 {Type I LastRead 0 FirstWrite -1}
		p_read514 {Type I LastRead 0 FirstWrite -1}
		p_read615 {Type I LastRead 0 FirstWrite -1}
		p_read716 {Type I LastRead 0 FirstWrite -1}
		p_read817 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
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
	p_read9 { ap_none {  { p_read9 in_data 0 16 } } }
	p_read110 { ap_none {  { p_read110 in_data 0 16 } } }
	p_read211 { ap_none {  { p_read211 in_data 0 16 } } }
	p_read312 { ap_none {  { p_read312 in_data 0 16 } } }
	p_read413 { ap_none {  { p_read413 in_data 0 16 } } }
	p_read514 { ap_none {  { p_read514 in_data 0 16 } } }
	p_read615 { ap_none {  { p_read615 in_data 0 16 } } }
	p_read716 { ap_none {  { p_read716 in_data 0 16 } } }
	p_read817 { ap_none {  { p_read817 in_data 0 16 } } }
}
