set moduleName out_stream_merge
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
set C_modelName {out_stream_merge}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_stream_group_0_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_1_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_2_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_3_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_4_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_5_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_6_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_7_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_8_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_9_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_10_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_11_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_12_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_13_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_14_V float 32 regular {fifo 0 volatile }  }
	{ out_stream_group_15_V float 32 regular {fifo 0 volatile }  }
	{ outStream_V_data float 32 regular {axi_s 1 volatile  { outStream Data } }  }
	{ outStream_V_keep_V int 4 regular {axi_s 1 volatile  { outStream Keep } }  }
	{ outStream_V_strb_V int 4 regular {axi_s 1 volatile  { outStream Strb } }  }
	{ outStream_V_user_V int 2 regular {axi_s 1 volatile  { outStream User } }  }
	{ outStream_V_last_V int 1 regular {axi_s 1 volatile  { outStream Last } }  }
	{ outStream_V_id_V int 5 regular {axi_s 1 volatile  { outStream ID } }  }
	{ outStream_V_dest_V int 6 regular {axi_s 1 volatile  { outStream Dest } }  }
	{ input_ch_idx int 2 regular  }
	{ curr_input_keep_V int 4 regular  }
	{ curr_input_strb_V int 4 regular  }
	{ curr_input_user_V int 2 regular  }
	{ curr_input_id_V int 5 regular  }
	{ curr_input_dest_V int 6 regular  }
	{ last_V int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_stream_group_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_1_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_2_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_3_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_4_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_5_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_6_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_7_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_8_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_9_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_10_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_11_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_12_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_13_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_14_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_15_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "outStream_V_data", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outStream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outStream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_ch_idx", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_keep_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_strb_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_user_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_id_V", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_dest_V", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "last_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 88
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_stream_group_11_V_dout sc_in sc_lv 32 signal 11 } 
	{ out_stream_group_11_V_empty_n sc_in sc_logic 1 signal 11 } 
	{ out_stream_group_11_V_read sc_out sc_logic 1 signal 11 } 
	{ out_stream_group_5_V_dout sc_in sc_lv 32 signal 5 } 
	{ out_stream_group_5_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ out_stream_group_5_V_read sc_out sc_logic 1 signal 5 } 
	{ outStream_TREADY sc_in sc_logic 1 outacc 16 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ out_stream_group_0_V_dout sc_in sc_lv 32 signal 0 } 
	{ out_stream_group_0_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ out_stream_group_0_V_read sc_out sc_logic 1 signal 0 } 
	{ out_stream_group_1_V_dout sc_in sc_lv 32 signal 1 } 
	{ out_stream_group_1_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ out_stream_group_1_V_read sc_out sc_logic 1 signal 1 } 
	{ out_stream_group_2_V_dout sc_in sc_lv 32 signal 2 } 
	{ out_stream_group_2_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ out_stream_group_2_V_read sc_out sc_logic 1 signal 2 } 
	{ out_stream_group_3_V_dout sc_in sc_lv 32 signal 3 } 
	{ out_stream_group_3_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ out_stream_group_3_V_read sc_out sc_logic 1 signal 3 } 
	{ out_stream_group_4_V_dout sc_in sc_lv 32 signal 4 } 
	{ out_stream_group_4_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ out_stream_group_4_V_read sc_out sc_logic 1 signal 4 } 
	{ out_stream_group_6_V_dout sc_in sc_lv 32 signal 6 } 
	{ out_stream_group_6_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ out_stream_group_6_V_read sc_out sc_logic 1 signal 6 } 
	{ out_stream_group_7_V_dout sc_in sc_lv 32 signal 7 } 
	{ out_stream_group_7_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ out_stream_group_7_V_read sc_out sc_logic 1 signal 7 } 
	{ out_stream_group_8_V_dout sc_in sc_lv 32 signal 8 } 
	{ out_stream_group_8_V_empty_n sc_in sc_logic 1 signal 8 } 
	{ out_stream_group_8_V_read sc_out sc_logic 1 signal 8 } 
	{ out_stream_group_9_V_dout sc_in sc_lv 32 signal 9 } 
	{ out_stream_group_9_V_empty_n sc_in sc_logic 1 signal 9 } 
	{ out_stream_group_9_V_read sc_out sc_logic 1 signal 9 } 
	{ out_stream_group_10_V_dout sc_in sc_lv 32 signal 10 } 
	{ out_stream_group_10_V_empty_n sc_in sc_logic 1 signal 10 } 
	{ out_stream_group_10_V_read sc_out sc_logic 1 signal 10 } 
	{ out_stream_group_12_V_dout sc_in sc_lv 32 signal 12 } 
	{ out_stream_group_12_V_empty_n sc_in sc_logic 1 signal 12 } 
	{ out_stream_group_12_V_read sc_out sc_logic 1 signal 12 } 
	{ out_stream_group_13_V_dout sc_in sc_lv 32 signal 13 } 
	{ out_stream_group_13_V_empty_n sc_in sc_logic 1 signal 13 } 
	{ out_stream_group_13_V_read sc_out sc_logic 1 signal 13 } 
	{ out_stream_group_14_V_dout sc_in sc_lv 32 signal 14 } 
	{ out_stream_group_14_V_empty_n sc_in sc_logic 1 signal 14 } 
	{ out_stream_group_14_V_read sc_out sc_logic 1 signal 14 } 
	{ out_stream_group_15_V_dout sc_in sc_lv 32 signal 15 } 
	{ out_stream_group_15_V_empty_n sc_in sc_logic 1 signal 15 } 
	{ out_stream_group_15_V_read sc_out sc_logic 1 signal 15 } 
	{ outStream_TDATA sc_out sc_lv 32 signal 16 } 
	{ outStream_TVALID sc_out sc_logic 1 outvld 22 } 
	{ outStream_TKEEP sc_out sc_lv 4 signal 17 } 
	{ outStream_TSTRB sc_out sc_lv 4 signal 18 } 
	{ outStream_TUSER sc_out sc_lv 2 signal 19 } 
	{ outStream_TLAST sc_out sc_lv 1 signal 20 } 
	{ outStream_TID sc_out sc_lv 5 signal 21 } 
	{ outStream_TDEST sc_out sc_lv 6 signal 22 } 
	{ input_ch_idx sc_in sc_lv 2 signal 23 } 
	{ curr_input_keep_V sc_in sc_lv 4 signal 24 } 
	{ curr_input_strb_V sc_in sc_lv 4 signal 25 } 
	{ curr_input_user_V sc_in sc_lv 2 signal 26 } 
	{ curr_input_id_V sc_in sc_lv 5 signal 27 } 
	{ curr_input_dest_V sc_in sc_lv 6 signal 28 } 
	{ last_V sc_in sc_lv 1 signal 29 } 
	{ out_stream_group_0_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_1_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_2_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_3_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_4_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_5_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_6_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_7_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_8_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_9_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_10_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_11_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_12_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_13_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_14_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_15_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ outStream_TDATA_blk_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_stream_group_11_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_11_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_11_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_11_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_11_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_11_V", "role": "read" }} , 
 	{ "name": "out_stream_group_5_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_5_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_5_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_5_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_5_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_5_V", "role": "read" }} , 
 	{ "name": "outStream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outStream_V_data", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "out_stream_group_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_0_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_0_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_0_V", "role": "read" }} , 
 	{ "name": "out_stream_group_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_1_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_1_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_1_V", "role": "read" }} , 
 	{ "name": "out_stream_group_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_2_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_2_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_2_V", "role": "read" }} , 
 	{ "name": "out_stream_group_3_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_3_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_3_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_3_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_3_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_3_V", "role": "read" }} , 
 	{ "name": "out_stream_group_4_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_4_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_4_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_4_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_4_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_4_V", "role": "read" }} , 
 	{ "name": "out_stream_group_6_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_6_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_6_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_6_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_6_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_6_V", "role": "read" }} , 
 	{ "name": "out_stream_group_7_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_7_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_7_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_7_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_7_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_7_V", "role": "read" }} , 
 	{ "name": "out_stream_group_8_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_8_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_8_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_8_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_8_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_8_V", "role": "read" }} , 
 	{ "name": "out_stream_group_9_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_9_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_9_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_9_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_9_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_9_V", "role": "read" }} , 
 	{ "name": "out_stream_group_10_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_10_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_10_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_10_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_10_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_10_V", "role": "read" }} , 
 	{ "name": "out_stream_group_12_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_12_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_12_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_12_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_12_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_12_V", "role": "read" }} , 
 	{ "name": "out_stream_group_13_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_13_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_13_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_13_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_13_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_13_V", "role": "read" }} , 
 	{ "name": "out_stream_group_14_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_14_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_14_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_14_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_14_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_14_V", "role": "read" }} , 
 	{ "name": "out_stream_group_15_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_group_15_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_15_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_15_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_15_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_15_V", "role": "read" }} , 
 	{ "name": "outStream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outStream_V_data", "role": "default" }} , 
 	{ "name": "outStream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outStream_V_keep_V", "role": "default" }} , 
 	{ "name": "outStream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outStream_V_strb_V", "role": "default" }} , 
 	{ "name": "outStream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "outStream_V_user_V", "role": "default" }} , 
 	{ "name": "outStream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_last_V", "role": "default" }} , 
 	{ "name": "outStream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outStream_V_id_V", "role": "default" }} , 
 	{ "name": "outStream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "outStream_V_dest_V", "role": "default" }} , 
 	{ "name": "input_ch_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_ch_idx", "role": "default" }} , 
 	{ "name": "curr_input_keep_V", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "curr_input_keep_V", "role": "default" }} , 
 	{ "name": "curr_input_strb_V", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "curr_input_strb_V", "role": "default" }} , 
 	{ "name": "curr_input_user_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "curr_input_user_V", "role": "default" }} , 
 	{ "name": "curr_input_id_V", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "curr_input_id_V", "role": "default" }} , 
 	{ "name": "curr_input_dest_V", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "curr_input_dest_V", "role": "default" }} , 
 	{ "name": "last_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "last_V", "role": "default" }} , 
 	{ "name": "out_stream_group_0_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_0_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_1_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_1_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_2_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_2_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_3_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_3_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_4_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_4_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_5_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_5_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_6_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_6_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_7_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_7_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_8_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_8_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_9_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_9_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_10_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_10_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_11_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_11_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_12_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_12_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_13_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_13_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_14_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_14_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_15_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_15_V_blk_n", "role": "default" }} , 
 	{ "name": "outStream_TDATA_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_TDATA_blk_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "out_stream_merge",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "6",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "out_stream_group_0_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_0_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_1_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_1_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_2_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_2_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_3_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_3_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_4_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_4_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_5_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_5_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_6_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_6_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_7_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_7_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_8_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_8_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_9_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_9_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_10_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_10_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_11_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_11_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_12_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_12_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_13_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_13_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_14_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_14_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_15_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_15_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "outStream_V_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_TDATA_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "outStream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "input_ch_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_keep_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_strb_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_user_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_id_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_dest_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_V", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	out_stream_merge {
		out_stream_group_0_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_1_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_2_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_3_V {Type I LastRead 4 FirstWrite -1}
		out_stream_group_4_V {Type I LastRead 4 FirstWrite -1}
		out_stream_group_5_V {Type I LastRead 5 FirstWrite -1}
		out_stream_group_6_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_7_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_8_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_9_V {Type I LastRead 4 FirstWrite -1}
		out_stream_group_10_V {Type I LastRead 4 FirstWrite -1}
		out_stream_group_11_V {Type I LastRead 5 FirstWrite -1}
		out_stream_group_12_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_13_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_14_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_15_V {Type I LastRead 4 FirstWrite -1}
		outStream_V_data {Type O LastRead -1 FirstWrite 1}
		outStream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_user_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_last_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_id_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_dest_V {Type O LastRead -1 FirstWrite 1}
		input_ch_idx {Type I LastRead 0 FirstWrite -1}
		curr_input_keep_V {Type I LastRead 1 FirstWrite -1}
		curr_input_strb_V {Type I LastRead 1 FirstWrite -1}
		curr_input_user_V {Type I LastRead 1 FirstWrite -1}
		curr_input_id_V {Type I LastRead 1 FirstWrite -1}
		curr_input_dest_V {Type I LastRead 1 FirstWrite -1}
		last_V {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	out_stream_group_0_V { ap_fifo {  { out_stream_group_0_V_dout fifo_data 0 32 }  { out_stream_group_0_V_empty_n fifo_status 0 1 }  { out_stream_group_0_V_read fifo_update 1 1 } } }
	out_stream_group_1_V { ap_fifo {  { out_stream_group_1_V_dout fifo_data 0 32 }  { out_stream_group_1_V_empty_n fifo_status 0 1 }  { out_stream_group_1_V_read fifo_update 1 1 } } }
	out_stream_group_2_V { ap_fifo {  { out_stream_group_2_V_dout fifo_data 0 32 }  { out_stream_group_2_V_empty_n fifo_status 0 1 }  { out_stream_group_2_V_read fifo_update 1 1 } } }
	out_stream_group_3_V { ap_fifo {  { out_stream_group_3_V_dout fifo_data 0 32 }  { out_stream_group_3_V_empty_n fifo_status 0 1 }  { out_stream_group_3_V_read fifo_update 1 1 } } }
	out_stream_group_4_V { ap_fifo {  { out_stream_group_4_V_dout fifo_data 0 32 }  { out_stream_group_4_V_empty_n fifo_status 0 1 }  { out_stream_group_4_V_read fifo_update 1 1 } } }
	out_stream_group_5_V { ap_fifo {  { out_stream_group_5_V_dout fifo_data 0 32 }  { out_stream_group_5_V_empty_n fifo_status 0 1 }  { out_stream_group_5_V_read fifo_update 1 1 } } }
	out_stream_group_6_V { ap_fifo {  { out_stream_group_6_V_dout fifo_data 0 32 }  { out_stream_group_6_V_empty_n fifo_status 0 1 }  { out_stream_group_6_V_read fifo_update 1 1 } } }
	out_stream_group_7_V { ap_fifo {  { out_stream_group_7_V_dout fifo_data 0 32 }  { out_stream_group_7_V_empty_n fifo_status 0 1 }  { out_stream_group_7_V_read fifo_update 1 1 } } }
	out_stream_group_8_V { ap_fifo {  { out_stream_group_8_V_dout fifo_data 0 32 }  { out_stream_group_8_V_empty_n fifo_status 0 1 }  { out_stream_group_8_V_read fifo_update 1 1 } } }
	out_stream_group_9_V { ap_fifo {  { out_stream_group_9_V_dout fifo_data 0 32 }  { out_stream_group_9_V_empty_n fifo_status 0 1 }  { out_stream_group_9_V_read fifo_update 1 1 } } }
	out_stream_group_10_V { ap_fifo {  { out_stream_group_10_V_dout fifo_data 0 32 }  { out_stream_group_10_V_empty_n fifo_status 0 1 }  { out_stream_group_10_V_read fifo_update 1 1 } } }
	out_stream_group_11_V { ap_fifo {  { out_stream_group_11_V_dout fifo_data 0 32 }  { out_stream_group_11_V_empty_n fifo_status 0 1 }  { out_stream_group_11_V_read fifo_update 1 1 } } }
	out_stream_group_12_V { ap_fifo {  { out_stream_group_12_V_dout fifo_data 0 32 }  { out_stream_group_12_V_empty_n fifo_status 0 1 }  { out_stream_group_12_V_read fifo_update 1 1 } } }
	out_stream_group_13_V { ap_fifo {  { out_stream_group_13_V_dout fifo_data 0 32 }  { out_stream_group_13_V_empty_n fifo_status 0 1 }  { out_stream_group_13_V_read fifo_update 1 1 } } }
	out_stream_group_14_V { ap_fifo {  { out_stream_group_14_V_dout fifo_data 0 32 }  { out_stream_group_14_V_empty_n fifo_status 0 1 }  { out_stream_group_14_V_read fifo_update 1 1 } } }
	out_stream_group_15_V { ap_fifo {  { out_stream_group_15_V_dout fifo_data 0 32 }  { out_stream_group_15_V_empty_n fifo_status 0 1 }  { out_stream_group_15_V_read fifo_update 1 1 } } }
	outStream_V_data { axis {  { outStream_TREADY out_acc 0 1 }  { outStream_TDATA out_data 1 32 } } }
	outStream_V_keep_V { axis {  { outStream_TKEEP out_data 1 4 } } }
	outStream_V_strb_V { axis {  { outStream_TSTRB out_data 1 4 } } }
	outStream_V_user_V { axis {  { outStream_TUSER out_data 1 2 } } }
	outStream_V_last_V { axis {  { outStream_TLAST out_data 1 1 } } }
	outStream_V_id_V { axis {  { outStream_TID out_data 1 5 } } }
	outStream_V_dest_V { axis {  { outStream_TVALID out_vld 1 1 }  { outStream_TDEST out_data 1 6 } } }
	input_ch_idx { ap_none {  { input_ch_idx in_data 0 2 } } }
	curr_input_keep_V { ap_none {  { curr_input_keep_V in_data 0 4 } } }
	curr_input_strb_V { ap_none {  { curr_input_strb_V in_data 0 4 } } }
	curr_input_user_V { ap_none {  { curr_input_user_V in_data 0 2 } } }
	curr_input_id_V { ap_none {  { curr_input_id_V in_data 0 5 } } }
	curr_input_dest_V { ap_none {  { curr_input_dest_V in_data 0 6 } } }
	last_V { ap_none {  { last_V in_data 0 1 } } }
}
