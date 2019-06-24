set moduleName write_output
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {write_output}
set C_modelType { void 0 }
set C_modelArgList {
	{ val_output_0_V int 16 regular  }
	{ val_output_1_V int 16 regular  }
	{ curr_input_keep_V int 4 regular  }
	{ curr_input_strb_V int 4 regular  }
	{ curr_input_user_V int 2 regular  }
	{ curr_input_id_V int 5 regular  }
	{ curr_input_dest_V int 6 regular  }
	{ out_stream_V_data int 32 regular {axi_s 1 volatile  { outStream Data } }  }
	{ out_stream_V_keep_V int 4 regular {axi_s 1 volatile  { outStream Keep } }  }
	{ out_stream_V_strb_V int 4 regular {axi_s 1 volatile  { outStream Strb } }  }
	{ out_stream_V_user_V int 2 regular {axi_s 1 volatile  { outStream User } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { outStream Last } }  }
	{ out_stream_V_id_V int 5 regular {axi_s 1 volatile  { outStream ID } }  }
	{ out_stream_V_dest_V int 6 regular {axi_s 1 volatile  { outStream Dest } }  }
	{ last_V int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "val_output_0_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "val_output_1_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_keep_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_strb_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_user_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_id_V", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_dest_V", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "last_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ val_output_0_V sc_in sc_lv 16 signal 0 } 
	{ val_output_1_V sc_in sc_lv 16 signal 1 } 
	{ curr_input_keep_V sc_in sc_lv 4 signal 2 } 
	{ curr_input_strb_V sc_in sc_lv 4 signal 3 } 
	{ curr_input_user_V sc_in sc_lv 2 signal 4 } 
	{ curr_input_id_V sc_in sc_lv 5 signal 5 } 
	{ curr_input_dest_V sc_in sc_lv 6 signal 6 } 
	{ outStream_TDATA sc_out sc_lv 32 signal 7 } 
	{ outStream_TVALID sc_out sc_logic 1 outvld 13 } 
	{ outStream_TREADY sc_in sc_logic 1 outacc 7 } 
	{ outStream_TKEEP sc_out sc_lv 4 signal 8 } 
	{ outStream_TSTRB sc_out sc_lv 4 signal 9 } 
	{ outStream_TUSER sc_out sc_lv 2 signal 10 } 
	{ outStream_TLAST sc_out sc_lv 1 signal 11 } 
	{ outStream_TID sc_out sc_lv 5 signal 12 } 
	{ outStream_TDEST sc_out sc_lv 6 signal 13 } 
	{ last_V sc_in sc_lv 1 signal 14 } 
	{ outStream_TDATA_blk_n sc_out sc_logic 1 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "val_output_0_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "val_output_0_V", "role": "default" }} , 
 	{ "name": "val_output_1_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "val_output_1_V", "role": "default" }} , 
 	{ "name": "curr_input_keep_V", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "curr_input_keep_V", "role": "default" }} , 
 	{ "name": "curr_input_strb_V", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "curr_input_strb_V", "role": "default" }} , 
 	{ "name": "curr_input_user_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "curr_input_user_V", "role": "default" }} , 
 	{ "name": "curr_input_id_V", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "curr_input_id_V", "role": "default" }} , 
 	{ "name": "curr_input_dest_V", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "curr_input_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V_data", "role": "default" }} , 
 	{ "name": "outStream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_data", "role": "default" }} , 
 	{ "name": "outStream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "outStream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "outStream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_stream_V_user_V", "role": "default" }} , 
 	{ "name": "outStream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "outStream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_V_id_V", "role": "default" }} , 
 	{ "name": "outStream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "last_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "last_V", "role": "default" }} , 
 	{ "name": "outStream_TDATA_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_TDATA_blk_n", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "write_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "val_output_0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_output_1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_keep_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_strb_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_user_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_id_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_dest_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_stream_V_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_TDATA_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "last_V", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	write_output {
		val_output_0_V {Type I LastRead 0 FirstWrite -1}
		val_output_1_V {Type I LastRead 0 FirstWrite -1}
		curr_input_keep_V {Type I LastRead 0 FirstWrite -1}
		curr_input_strb_V {Type I LastRead 0 FirstWrite -1}
		curr_input_user_V {Type I LastRead 0 FirstWrite -1}
		curr_input_id_V {Type I LastRead 0 FirstWrite -1}
		curr_input_dest_V {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data {Type O LastRead -1 FirstWrite 0}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 0}
		last_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	val_output_0_V { ap_none {  { val_output_0_V in_data 0 16 } } }
	val_output_1_V { ap_none {  { val_output_1_V in_data 0 16 } } }
	curr_input_keep_V { ap_none {  { curr_input_keep_V in_data 0 4 } } }
	curr_input_strb_V { ap_none {  { curr_input_strb_V in_data 0 4 } } }
	curr_input_user_V { ap_none {  { curr_input_user_V in_data 0 2 } } }
	curr_input_id_V { ap_none {  { curr_input_id_V in_data 0 5 } } }
	curr_input_dest_V { ap_none {  { curr_input_dest_V in_data 0 6 } } }
	out_stream_V_data { axis {  { outStream_TDATA out_data 1 32 }  { outStream_TREADY out_acc 0 1 } } }
	out_stream_V_keep_V { axis {  { outStream_TKEEP out_data 1 4 } } }
	out_stream_V_strb_V { axis {  { outStream_TSTRB out_data 1 4 } } }
	out_stream_V_user_V { axis {  { outStream_TUSER out_data 1 2 } } }
	out_stream_V_last_V { axis {  { outStream_TLAST out_data 1 1 } } }
	out_stream_V_id_V { axis {  { outStream_TID out_data 1 5 } } }
	out_stream_V_dest_V { axis {  { outStream_TVALID out_vld 1 1 }  { outStream_TDEST out_data 1 6 } } }
	last_V { ap_none {  { last_V in_data 0 1 } } }
}
