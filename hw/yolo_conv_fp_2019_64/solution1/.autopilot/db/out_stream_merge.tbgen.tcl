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
	{ out_stream_group_0_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_1_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_2_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_3_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_4_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_5_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_6_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_7_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_8_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_9_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_10_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_11_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_12_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_13_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_14_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_15_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_16_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_17_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_18_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_19_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_20_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_21_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_22_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_23_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_24_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_25_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_26_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_27_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_28_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_29_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_30_V_V int 16 regular {fifo 0 volatile }  }
	{ out_stream_group_31_V_V int 16 regular {fifo 0 volatile }  }
	{ outStream_V_data int 64 regular {axi_s 1 volatile  { outStream Data } }  }
	{ outStream_V_keep_V int 8 regular {axi_s 1 volatile  { outStream Keep } }  }
	{ outStream_V_strb_V int 8 regular {axi_s 1 volatile  { outStream Strb } }  }
	{ outStream_V_user_V int 2 regular {axi_s 1 volatile  { outStream User } }  }
	{ outStream_V_last_V int 1 regular {axi_s 1 volatile  { outStream Last } }  }
	{ outStream_V_id_V int 5 regular {axi_s 1 volatile  { outStream ID } }  }
	{ outStream_V_dest_V int 6 regular {axi_s 1 volatile  { outStream Dest } }  }
	{ input_ch_idx_V int 4 regular  }
	{ curr_input_keep_V int 8 regular  }
	{ curr_input_strb_V int 8 regular  }
	{ curr_input_user_V int 2 regular  }
	{ curr_input_id_V int 5 regular  }
	{ curr_input_dest_V int 6 regular  }
	{ last_V int 1 regular  }
	{ fold_output_ch_V int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_stream_group_0_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_1_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_2_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_3_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_4_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_5_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_6_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_7_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_8_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_9_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_10_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_11_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_12_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_13_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_14_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_15_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_16_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_17_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_18_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_19_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_20_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_21_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_22_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_23_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_24_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_25_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_26_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_27_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_28_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_29_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_30_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_group_31_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "outStream_V_data", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outStream_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outStream_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_ch_idx_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_keep_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_strb_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_user_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_id_V", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "curr_input_dest_V", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "last_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "fold_output_ch_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 153
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_stream_group_16_V_V_dout sc_in sc_lv 16 signal 16 } 
	{ out_stream_group_16_V_V_empty_n sc_in sc_logic 1 signal 16 } 
	{ out_stream_group_16_V_V_read sc_out sc_logic 1 signal 16 } 
	{ out_stream_group_17_V_V_dout sc_in sc_lv 16 signal 17 } 
	{ out_stream_group_17_V_V_empty_n sc_in sc_logic 1 signal 17 } 
	{ out_stream_group_17_V_V_read sc_out sc_logic 1 signal 17 } 
	{ out_stream_group_18_V_V_dout sc_in sc_lv 16 signal 18 } 
	{ out_stream_group_18_V_V_empty_n sc_in sc_logic 1 signal 18 } 
	{ out_stream_group_18_V_V_read sc_out sc_logic 1 signal 18 } 
	{ out_stream_group_20_V_V_dout sc_in sc_lv 16 signal 20 } 
	{ out_stream_group_20_V_V_empty_n sc_in sc_logic 1 signal 20 } 
	{ out_stream_group_20_V_V_read sc_out sc_logic 1 signal 20 } 
	{ out_stream_group_21_V_V_dout sc_in sc_lv 16 signal 21 } 
	{ out_stream_group_21_V_V_empty_n sc_in sc_logic 1 signal 21 } 
	{ out_stream_group_21_V_V_read sc_out sc_logic 1 signal 21 } 
	{ out_stream_group_22_V_V_dout sc_in sc_lv 16 signal 22 } 
	{ out_stream_group_22_V_V_empty_n sc_in sc_logic 1 signal 22 } 
	{ out_stream_group_22_V_V_read sc_out sc_logic 1 signal 22 } 
	{ out_stream_group_23_V_V_dout sc_in sc_lv 16 signal 23 } 
	{ out_stream_group_23_V_V_empty_n sc_in sc_logic 1 signal 23 } 
	{ out_stream_group_23_V_V_read sc_out sc_logic 1 signal 23 } 
	{ outStream_TREADY sc_in sc_logic 1 outacc 32 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ out_stream_group_0_V_V_dout sc_in sc_lv 16 signal 0 } 
	{ out_stream_group_0_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ out_stream_group_0_V_V_read sc_out sc_logic 1 signal 0 } 
	{ out_stream_group_1_V_V_dout sc_in sc_lv 16 signal 1 } 
	{ out_stream_group_1_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ out_stream_group_1_V_V_read sc_out sc_logic 1 signal 1 } 
	{ out_stream_group_2_V_V_dout sc_in sc_lv 16 signal 2 } 
	{ out_stream_group_2_V_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ out_stream_group_2_V_V_read sc_out sc_logic 1 signal 2 } 
	{ out_stream_group_3_V_V_dout sc_in sc_lv 16 signal 3 } 
	{ out_stream_group_3_V_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ out_stream_group_3_V_V_read sc_out sc_logic 1 signal 3 } 
	{ out_stream_group_4_V_V_dout sc_in sc_lv 16 signal 4 } 
	{ out_stream_group_4_V_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ out_stream_group_4_V_V_read sc_out sc_logic 1 signal 4 } 
	{ out_stream_group_5_V_V_dout sc_in sc_lv 16 signal 5 } 
	{ out_stream_group_5_V_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ out_stream_group_5_V_V_read sc_out sc_logic 1 signal 5 } 
	{ out_stream_group_6_V_V_dout sc_in sc_lv 16 signal 6 } 
	{ out_stream_group_6_V_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ out_stream_group_6_V_V_read sc_out sc_logic 1 signal 6 } 
	{ out_stream_group_7_V_V_dout sc_in sc_lv 16 signal 7 } 
	{ out_stream_group_7_V_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ out_stream_group_7_V_V_read sc_out sc_logic 1 signal 7 } 
	{ out_stream_group_8_V_V_dout sc_in sc_lv 16 signal 8 } 
	{ out_stream_group_8_V_V_empty_n sc_in sc_logic 1 signal 8 } 
	{ out_stream_group_8_V_V_read sc_out sc_logic 1 signal 8 } 
	{ out_stream_group_9_V_V_dout sc_in sc_lv 16 signal 9 } 
	{ out_stream_group_9_V_V_empty_n sc_in sc_logic 1 signal 9 } 
	{ out_stream_group_9_V_V_read sc_out sc_logic 1 signal 9 } 
	{ out_stream_group_10_V_V_dout sc_in sc_lv 16 signal 10 } 
	{ out_stream_group_10_V_V_empty_n sc_in sc_logic 1 signal 10 } 
	{ out_stream_group_10_V_V_read sc_out sc_logic 1 signal 10 } 
	{ out_stream_group_11_V_V_dout sc_in sc_lv 16 signal 11 } 
	{ out_stream_group_11_V_V_empty_n sc_in sc_logic 1 signal 11 } 
	{ out_stream_group_11_V_V_read sc_out sc_logic 1 signal 11 } 
	{ out_stream_group_12_V_V_dout sc_in sc_lv 16 signal 12 } 
	{ out_stream_group_12_V_V_empty_n sc_in sc_logic 1 signal 12 } 
	{ out_stream_group_12_V_V_read sc_out sc_logic 1 signal 12 } 
	{ out_stream_group_13_V_V_dout sc_in sc_lv 16 signal 13 } 
	{ out_stream_group_13_V_V_empty_n sc_in sc_logic 1 signal 13 } 
	{ out_stream_group_13_V_V_read sc_out sc_logic 1 signal 13 } 
	{ out_stream_group_14_V_V_dout sc_in sc_lv 16 signal 14 } 
	{ out_stream_group_14_V_V_empty_n sc_in sc_logic 1 signal 14 } 
	{ out_stream_group_14_V_V_read sc_out sc_logic 1 signal 14 } 
	{ out_stream_group_15_V_V_dout sc_in sc_lv 16 signal 15 } 
	{ out_stream_group_15_V_V_empty_n sc_in sc_logic 1 signal 15 } 
	{ out_stream_group_15_V_V_read sc_out sc_logic 1 signal 15 } 
	{ out_stream_group_19_V_V_dout sc_in sc_lv 16 signal 19 } 
	{ out_stream_group_19_V_V_empty_n sc_in sc_logic 1 signal 19 } 
	{ out_stream_group_19_V_V_read sc_out sc_logic 1 signal 19 } 
	{ out_stream_group_24_V_V_dout sc_in sc_lv 16 signal 24 } 
	{ out_stream_group_24_V_V_empty_n sc_in sc_logic 1 signal 24 } 
	{ out_stream_group_24_V_V_read sc_out sc_logic 1 signal 24 } 
	{ out_stream_group_25_V_V_dout sc_in sc_lv 16 signal 25 } 
	{ out_stream_group_25_V_V_empty_n sc_in sc_logic 1 signal 25 } 
	{ out_stream_group_25_V_V_read sc_out sc_logic 1 signal 25 } 
	{ out_stream_group_26_V_V_dout sc_in sc_lv 16 signal 26 } 
	{ out_stream_group_26_V_V_empty_n sc_in sc_logic 1 signal 26 } 
	{ out_stream_group_26_V_V_read sc_out sc_logic 1 signal 26 } 
	{ out_stream_group_27_V_V_dout sc_in sc_lv 16 signal 27 } 
	{ out_stream_group_27_V_V_empty_n sc_in sc_logic 1 signal 27 } 
	{ out_stream_group_27_V_V_read sc_out sc_logic 1 signal 27 } 
	{ out_stream_group_28_V_V_dout sc_in sc_lv 16 signal 28 } 
	{ out_stream_group_28_V_V_empty_n sc_in sc_logic 1 signal 28 } 
	{ out_stream_group_28_V_V_read sc_out sc_logic 1 signal 28 } 
	{ out_stream_group_29_V_V_dout sc_in sc_lv 16 signal 29 } 
	{ out_stream_group_29_V_V_empty_n sc_in sc_logic 1 signal 29 } 
	{ out_stream_group_29_V_V_read sc_out sc_logic 1 signal 29 } 
	{ out_stream_group_30_V_V_dout sc_in sc_lv 16 signal 30 } 
	{ out_stream_group_30_V_V_empty_n sc_in sc_logic 1 signal 30 } 
	{ out_stream_group_30_V_V_read sc_out sc_logic 1 signal 30 } 
	{ out_stream_group_31_V_V_dout sc_in sc_lv 16 signal 31 } 
	{ out_stream_group_31_V_V_empty_n sc_in sc_logic 1 signal 31 } 
	{ out_stream_group_31_V_V_read sc_out sc_logic 1 signal 31 } 
	{ outStream_TDATA sc_out sc_lv 64 signal 32 } 
	{ outStream_TVALID sc_out sc_logic 1 outvld 38 } 
	{ outStream_TKEEP sc_out sc_lv 8 signal 33 } 
	{ outStream_TSTRB sc_out sc_lv 8 signal 34 } 
	{ outStream_TUSER sc_out sc_lv 2 signal 35 } 
	{ outStream_TLAST sc_out sc_lv 1 signal 36 } 
	{ outStream_TID sc_out sc_lv 5 signal 37 } 
	{ outStream_TDEST sc_out sc_lv 6 signal 38 } 
	{ input_ch_idx_V sc_in sc_lv 4 signal 39 } 
	{ curr_input_keep_V sc_in sc_lv 8 signal 40 } 
	{ curr_input_strb_V sc_in sc_lv 8 signal 41 } 
	{ curr_input_user_V sc_in sc_lv 2 signal 42 } 
	{ curr_input_id_V sc_in sc_lv 5 signal 43 } 
	{ curr_input_dest_V sc_in sc_lv 6 signal 44 } 
	{ last_V sc_in sc_lv 1 signal 45 } 
	{ fold_output_ch_V sc_in sc_lv 4 signal 46 } 
	{ out_stream_group_0_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_1_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_2_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_3_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_4_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_5_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_6_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_7_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_8_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_9_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_10_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_11_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_12_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_13_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_14_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_15_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_16_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_17_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_18_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_19_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_20_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_21_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_22_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_23_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_24_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_25_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_26_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_27_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_28_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_29_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_30_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ out_stream_group_31_V_V_blk_n sc_out sc_logic 1 signal -1 } 
	{ outStream_TDATA_blk_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_stream_group_16_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_16_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_16_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_16_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_16_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_16_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_17_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_17_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_17_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_17_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_17_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_17_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_18_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_18_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_18_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_18_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_18_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_18_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_20_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_20_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_20_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_20_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_20_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_20_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_21_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_21_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_21_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_21_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_21_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_21_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_22_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_22_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_22_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_22_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_22_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_22_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_23_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_23_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_23_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_23_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_23_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_23_V_V", "role": "read" }} , 
 	{ "name": "outStream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outStream_V_data", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "out_stream_group_0_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_0_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_0_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_0_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_0_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_0_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_1_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_1_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_1_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_1_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_1_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_1_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_2_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_2_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_2_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_2_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_2_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_2_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_3_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_3_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_3_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_3_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_3_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_3_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_4_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_4_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_4_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_4_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_4_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_4_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_5_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_5_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_5_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_5_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_5_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_5_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_6_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_6_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_6_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_6_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_6_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_6_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_7_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_7_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_7_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_7_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_7_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_7_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_8_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_8_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_8_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_8_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_8_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_8_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_9_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_9_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_9_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_9_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_9_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_9_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_10_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_10_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_10_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_10_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_10_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_10_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_11_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_11_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_11_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_11_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_11_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_11_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_12_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_12_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_12_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_12_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_12_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_12_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_13_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_13_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_13_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_13_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_13_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_13_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_14_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_14_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_14_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_14_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_14_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_14_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_15_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_15_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_15_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_15_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_15_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_15_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_19_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_19_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_19_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_19_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_19_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_19_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_24_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_24_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_24_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_24_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_24_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_24_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_25_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_25_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_25_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_25_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_25_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_25_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_26_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_26_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_26_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_26_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_26_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_26_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_27_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_27_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_27_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_27_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_27_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_27_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_28_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_28_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_28_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_28_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_28_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_28_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_29_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_29_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_29_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_29_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_29_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_29_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_30_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_30_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_30_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_30_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_30_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_30_V_V", "role": "read" }} , 
 	{ "name": "out_stream_group_31_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_group_31_V_V", "role": "dout" }} , 
 	{ "name": "out_stream_group_31_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_31_V_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_group_31_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_31_V_V", "role": "read" }} , 
 	{ "name": "outStream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outStream_V_data", "role": "default" }} , 
 	{ "name": "outStream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outStream_V_keep_V", "role": "default" }} , 
 	{ "name": "outStream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outStream_V_strb_V", "role": "default" }} , 
 	{ "name": "outStream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "outStream_V_user_V", "role": "default" }} , 
 	{ "name": "outStream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_last_V", "role": "default" }} , 
 	{ "name": "outStream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outStream_V_id_V", "role": "default" }} , 
 	{ "name": "outStream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "outStream_V_dest_V", "role": "default" }} , 
 	{ "name": "input_ch_idx_V", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_ch_idx_V", "role": "default" }} , 
 	{ "name": "curr_input_keep_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "curr_input_keep_V", "role": "default" }} , 
 	{ "name": "curr_input_strb_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "curr_input_strb_V", "role": "default" }} , 
 	{ "name": "curr_input_user_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "curr_input_user_V", "role": "default" }} , 
 	{ "name": "curr_input_id_V", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "curr_input_id_V", "role": "default" }} , 
 	{ "name": "curr_input_dest_V", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "curr_input_dest_V", "role": "default" }} , 
 	{ "name": "last_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "last_V", "role": "default" }} , 
 	{ "name": "fold_output_ch_V", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fold_output_ch_V", "role": "default" }} , 
 	{ "name": "out_stream_group_0_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_0_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_1_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_1_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_2_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_2_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_3_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_3_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_4_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_4_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_5_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_5_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_6_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_6_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_7_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_7_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_8_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_8_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_9_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_9_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_10_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_10_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_11_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_11_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_12_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_12_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_13_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_13_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_14_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_14_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_15_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_15_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_16_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_16_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_17_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_17_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_18_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_18_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_19_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_19_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_20_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_20_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_21_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_21_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_22_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_22_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_23_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_23_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_24_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_24_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_25_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_25_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_26_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_26_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_27_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_27_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_28_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_28_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_29_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_29_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_30_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_30_V_V_blk_n", "role": "default" }} , 
 	{ "name": "out_stream_group_31_V_V_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_group_31_V_V_blk_n", "role": "default" }} , 
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
			{"Name" : "out_stream_group_0_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_0_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_1_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_1_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_2_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_2_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_3_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_3_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_4_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_4_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_5_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_5_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_6_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_6_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_7_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_7_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_8_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_8_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_9_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_9_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_10_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_10_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_11_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_11_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_12_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_12_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_13_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_13_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_14_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_14_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_15_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_15_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_16_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_16_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_17_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_17_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_18_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_18_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_19_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_19_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_20_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_20_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_21_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_21_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_22_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_22_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_23_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_23_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_24_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_24_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_25_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_25_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_26_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_26_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_27_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_27_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_28_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_28_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_29_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_29_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_30_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_30_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_31_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_31_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "outStream_V_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_TDATA_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "outStream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "input_ch_idx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_keep_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_strb_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_user_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_id_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_dest_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "fold_output_ch_V", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	out_stream_merge {
		out_stream_group_0_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_1_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_2_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_3_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_4_V_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_5_V_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_6_V_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_7_V_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_8_V_V {Type I LastRead 3 FirstWrite -1}
		out_stream_group_9_V_V {Type I LastRead 3 FirstWrite -1}
		out_stream_group_10_V_V {Type I LastRead 3 FirstWrite -1}
		out_stream_group_11_V_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_12_V_V {Type I LastRead 4 FirstWrite -1}
		out_stream_group_13_V_V {Type I LastRead 4 FirstWrite -1}
		out_stream_group_14_V_V {Type I LastRead 4 FirstWrite -1}
		out_stream_group_15_V_V {Type I LastRead 4 FirstWrite -1}
		out_stream_group_16_V_V {Type I LastRead 5 FirstWrite -1}
		out_stream_group_17_V_V {Type I LastRead 5 FirstWrite -1}
		out_stream_group_18_V_V {Type I LastRead 5 FirstWrite -1}
		out_stream_group_19_V_V {Type I LastRead 4 FirstWrite -1}
		out_stream_group_20_V_V {Type I LastRead 5 FirstWrite -1}
		out_stream_group_21_V_V {Type I LastRead 5 FirstWrite -1}
		out_stream_group_22_V_V {Type I LastRead 5 FirstWrite -1}
		out_stream_group_23_V_V {Type I LastRead 5 FirstWrite -1}
		out_stream_group_24_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_25_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_26_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_27_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_28_V_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_29_V_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_30_V_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_31_V_V {Type I LastRead 2 FirstWrite -1}
		outStream_V_data {Type O LastRead -1 FirstWrite 1}
		outStream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_user_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_last_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_id_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_dest_V {Type O LastRead -1 FirstWrite 1}
		input_ch_idx_V {Type I LastRead 0 FirstWrite -1}
		curr_input_keep_V {Type I LastRead 1 FirstWrite -1}
		curr_input_strb_V {Type I LastRead 1 FirstWrite -1}
		curr_input_user_V {Type I LastRead 1 FirstWrite -1}
		curr_input_id_V {Type I LastRead 1 FirstWrite -1}
		curr_input_dest_V {Type I LastRead 1 FirstWrite -1}
		last_V {Type I LastRead 1 FirstWrite -1}
		fold_output_ch_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	out_stream_group_0_V_V { ap_fifo {  { out_stream_group_0_V_V_dout fifo_data 0 16 }  { out_stream_group_0_V_V_empty_n fifo_status 0 1 }  { out_stream_group_0_V_V_read fifo_update 1 1 } } }
	out_stream_group_1_V_V { ap_fifo {  { out_stream_group_1_V_V_dout fifo_data 0 16 }  { out_stream_group_1_V_V_empty_n fifo_status 0 1 }  { out_stream_group_1_V_V_read fifo_update 1 1 } } }
	out_stream_group_2_V_V { ap_fifo {  { out_stream_group_2_V_V_dout fifo_data 0 16 }  { out_stream_group_2_V_V_empty_n fifo_status 0 1 }  { out_stream_group_2_V_V_read fifo_update 1 1 } } }
	out_stream_group_3_V_V { ap_fifo {  { out_stream_group_3_V_V_dout fifo_data 0 16 }  { out_stream_group_3_V_V_empty_n fifo_status 0 1 }  { out_stream_group_3_V_V_read fifo_update 1 1 } } }
	out_stream_group_4_V_V { ap_fifo {  { out_stream_group_4_V_V_dout fifo_data 0 16 }  { out_stream_group_4_V_V_empty_n fifo_status 0 1 }  { out_stream_group_4_V_V_read fifo_update 1 1 } } }
	out_stream_group_5_V_V { ap_fifo {  { out_stream_group_5_V_V_dout fifo_data 0 16 }  { out_stream_group_5_V_V_empty_n fifo_status 0 1 }  { out_stream_group_5_V_V_read fifo_update 1 1 } } }
	out_stream_group_6_V_V { ap_fifo {  { out_stream_group_6_V_V_dout fifo_data 0 16 }  { out_stream_group_6_V_V_empty_n fifo_status 0 1 }  { out_stream_group_6_V_V_read fifo_update 1 1 } } }
	out_stream_group_7_V_V { ap_fifo {  { out_stream_group_7_V_V_dout fifo_data 0 16 }  { out_stream_group_7_V_V_empty_n fifo_status 0 1 }  { out_stream_group_7_V_V_read fifo_update 1 1 } } }
	out_stream_group_8_V_V { ap_fifo {  { out_stream_group_8_V_V_dout fifo_data 0 16 }  { out_stream_group_8_V_V_empty_n fifo_status 0 1 }  { out_stream_group_8_V_V_read fifo_update 1 1 } } }
	out_stream_group_9_V_V { ap_fifo {  { out_stream_group_9_V_V_dout fifo_data 0 16 }  { out_stream_group_9_V_V_empty_n fifo_status 0 1 }  { out_stream_group_9_V_V_read fifo_update 1 1 } } }
	out_stream_group_10_V_V { ap_fifo {  { out_stream_group_10_V_V_dout fifo_data 0 16 }  { out_stream_group_10_V_V_empty_n fifo_status 0 1 }  { out_stream_group_10_V_V_read fifo_update 1 1 } } }
	out_stream_group_11_V_V { ap_fifo {  { out_stream_group_11_V_V_dout fifo_data 0 16 }  { out_stream_group_11_V_V_empty_n fifo_status 0 1 }  { out_stream_group_11_V_V_read fifo_update 1 1 } } }
	out_stream_group_12_V_V { ap_fifo {  { out_stream_group_12_V_V_dout fifo_data 0 16 }  { out_stream_group_12_V_V_empty_n fifo_status 0 1 }  { out_stream_group_12_V_V_read fifo_update 1 1 } } }
	out_stream_group_13_V_V { ap_fifo {  { out_stream_group_13_V_V_dout fifo_data 0 16 }  { out_stream_group_13_V_V_empty_n fifo_status 0 1 }  { out_stream_group_13_V_V_read fifo_update 1 1 } } }
	out_stream_group_14_V_V { ap_fifo {  { out_stream_group_14_V_V_dout fifo_data 0 16 }  { out_stream_group_14_V_V_empty_n fifo_status 0 1 }  { out_stream_group_14_V_V_read fifo_update 1 1 } } }
	out_stream_group_15_V_V { ap_fifo {  { out_stream_group_15_V_V_dout fifo_data 0 16 }  { out_stream_group_15_V_V_empty_n fifo_status 0 1 }  { out_stream_group_15_V_V_read fifo_update 1 1 } } }
	out_stream_group_16_V_V { ap_fifo {  { out_stream_group_16_V_V_dout fifo_data 0 16 }  { out_stream_group_16_V_V_empty_n fifo_status 0 1 }  { out_stream_group_16_V_V_read fifo_update 1 1 } } }
	out_stream_group_17_V_V { ap_fifo {  { out_stream_group_17_V_V_dout fifo_data 0 16 }  { out_stream_group_17_V_V_empty_n fifo_status 0 1 }  { out_stream_group_17_V_V_read fifo_update 1 1 } } }
	out_stream_group_18_V_V { ap_fifo {  { out_stream_group_18_V_V_dout fifo_data 0 16 }  { out_stream_group_18_V_V_empty_n fifo_status 0 1 }  { out_stream_group_18_V_V_read fifo_update 1 1 } } }
	out_stream_group_19_V_V { ap_fifo {  { out_stream_group_19_V_V_dout fifo_data 0 16 }  { out_stream_group_19_V_V_empty_n fifo_status 0 1 }  { out_stream_group_19_V_V_read fifo_update 1 1 } } }
	out_stream_group_20_V_V { ap_fifo {  { out_stream_group_20_V_V_dout fifo_data 0 16 }  { out_stream_group_20_V_V_empty_n fifo_status 0 1 }  { out_stream_group_20_V_V_read fifo_update 1 1 } } }
	out_stream_group_21_V_V { ap_fifo {  { out_stream_group_21_V_V_dout fifo_data 0 16 }  { out_stream_group_21_V_V_empty_n fifo_status 0 1 }  { out_stream_group_21_V_V_read fifo_update 1 1 } } }
	out_stream_group_22_V_V { ap_fifo {  { out_stream_group_22_V_V_dout fifo_data 0 16 }  { out_stream_group_22_V_V_empty_n fifo_status 0 1 }  { out_stream_group_22_V_V_read fifo_update 1 1 } } }
	out_stream_group_23_V_V { ap_fifo {  { out_stream_group_23_V_V_dout fifo_data 0 16 }  { out_stream_group_23_V_V_empty_n fifo_status 0 1 }  { out_stream_group_23_V_V_read fifo_update 1 1 } } }
	out_stream_group_24_V_V { ap_fifo {  { out_stream_group_24_V_V_dout fifo_data 0 16 }  { out_stream_group_24_V_V_empty_n fifo_status 0 1 }  { out_stream_group_24_V_V_read fifo_update 1 1 } } }
	out_stream_group_25_V_V { ap_fifo {  { out_stream_group_25_V_V_dout fifo_data 0 16 }  { out_stream_group_25_V_V_empty_n fifo_status 0 1 }  { out_stream_group_25_V_V_read fifo_update 1 1 } } }
	out_stream_group_26_V_V { ap_fifo {  { out_stream_group_26_V_V_dout fifo_data 0 16 }  { out_stream_group_26_V_V_empty_n fifo_status 0 1 }  { out_stream_group_26_V_V_read fifo_update 1 1 } } }
	out_stream_group_27_V_V { ap_fifo {  { out_stream_group_27_V_V_dout fifo_data 0 16 }  { out_stream_group_27_V_V_empty_n fifo_status 0 1 }  { out_stream_group_27_V_V_read fifo_update 1 1 } } }
	out_stream_group_28_V_V { ap_fifo {  { out_stream_group_28_V_V_dout fifo_data 0 16 }  { out_stream_group_28_V_V_empty_n fifo_status 0 1 }  { out_stream_group_28_V_V_read fifo_update 1 1 } } }
	out_stream_group_29_V_V { ap_fifo {  { out_stream_group_29_V_V_dout fifo_data 0 16 }  { out_stream_group_29_V_V_empty_n fifo_status 0 1 }  { out_stream_group_29_V_V_read fifo_update 1 1 } } }
	out_stream_group_30_V_V { ap_fifo {  { out_stream_group_30_V_V_dout fifo_data 0 16 }  { out_stream_group_30_V_V_empty_n fifo_status 0 1 }  { out_stream_group_30_V_V_read fifo_update 1 1 } } }
	out_stream_group_31_V_V { ap_fifo {  { out_stream_group_31_V_V_dout fifo_data 0 16 }  { out_stream_group_31_V_V_empty_n fifo_status 0 1 }  { out_stream_group_31_V_V_read fifo_update 1 1 } } }
	outStream_V_data { axis {  { outStream_TREADY out_acc 0 1 }  { outStream_TDATA out_data 1 64 } } }
	outStream_V_keep_V { axis {  { outStream_TKEEP out_data 1 8 } } }
	outStream_V_strb_V { axis {  { outStream_TSTRB out_data 1 8 } } }
	outStream_V_user_V { axis {  { outStream_TUSER out_data 1 2 } } }
	outStream_V_last_V { axis {  { outStream_TLAST out_data 1 1 } } }
	outStream_V_id_V { axis {  { outStream_TID out_data 1 5 } } }
	outStream_V_dest_V { axis {  { outStream_TVALID out_vld 1 1 }  { outStream_TDEST out_data 1 6 } } }
	input_ch_idx_V { ap_none {  { input_ch_idx_V in_data 0 4 } } }
	curr_input_keep_V { ap_none {  { curr_input_keep_V in_data 0 8 } } }
	curr_input_strb_V { ap_none {  { curr_input_strb_V in_data 0 8 } } }
	curr_input_user_V { ap_none {  { curr_input_user_V in_data 0 2 } } }
	curr_input_id_V { ap_none {  { curr_input_id_V in_data 0 5 } } }
	curr_input_dest_V { ap_none {  { curr_input_dest_V in_data 0 6 } } }
	last_V { ap_none {  { last_V in_data 0 1 } } }
	fold_output_ch_V { ap_none {  { fold_output_ch_V in_data 0 4 } } }
}
