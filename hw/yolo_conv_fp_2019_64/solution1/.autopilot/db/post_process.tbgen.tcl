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
	{ input_ch_idx int 4 regular  }
	{ val_output_V int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sub0_val_output_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sub1_val_output_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sub2_val_output_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sub3_val_output_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_ch_idx", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "val_output_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 16} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ sub0_val_output_V sc_in sc_lv 16 signal 0 } 
	{ sub1_val_output_V sc_in sc_lv 16 signal 1 } 
	{ sub2_val_output_V sc_in sc_lv 16 signal 2 } 
	{ sub3_val_output_V sc_in sc_lv 16 signal 3 } 
	{ input_ch_idx sc_in sc_lv 4 signal 4 } 
	{ val_output_V sc_in sc_lv 16 signal 5 } 
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
 	{ "name": "input_ch_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_ch_idx", "role": "default" }} , 
 	{ "name": "val_output_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "val_output_V", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "post_process",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
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
			{"Name" : "input_ch_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_output_V", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	post_process {
		sub0_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub1_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub2_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub3_val_output_V {Type I LastRead 0 FirstWrite -1}
		input_ch_idx {Type I LastRead 0 FirstWrite -1}
		val_output_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sub0_val_output_V { ap_none {  { sub0_val_output_V in_data 0 16 } } }
	sub1_val_output_V { ap_none {  { sub1_val_output_V in_data 0 16 } } }
	sub2_val_output_V { ap_none {  { sub2_val_output_V in_data 0 16 } } }
	sub3_val_output_V { ap_none {  { sub3_val_output_V in_data 0 16 } } }
	input_ch_idx { ap_none {  { input_ch_idx in_data 0 4 } } }
	val_output_V { ap_none {  { val_output_V in_data 0 16 } } }
}
