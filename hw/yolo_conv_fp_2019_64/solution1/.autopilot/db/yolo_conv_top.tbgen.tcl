set moduleName yolo_conv_top
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {yolo_conv_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ inStream_V_data int 64 regular {axi_s 0 volatile  { inStream Data } }  }
	{ inStream_V_keep_V int 8 regular {axi_s 0 volatile  { inStream Keep } }  }
	{ inStream_V_strb_V int 8 regular {axi_s 0 volatile  { inStream Strb } }  }
	{ inStream_V_user_V int 2 regular {axi_s 0 volatile  { inStream User } }  }
	{ inStream_V_last_V int 1 regular {axi_s 0 volatile  { inStream Last } }  }
	{ inStream_V_id_V int 5 regular {axi_s 0 volatile  { inStream ID } }  }
	{ inStream_V_dest_V int 6 regular {axi_s 0 volatile  { inStream Dest } }  }
	{ outStream_V_data int 64 regular {axi_s 1 volatile  { outStream Data } }  }
	{ outStream_V_keep_V int 8 regular {axi_s 1 volatile  { outStream Keep } }  }
	{ outStream_V_strb_V int 8 regular {axi_s 1 volatile  { outStream Strb } }  }
	{ outStream_V_user_V int 2 regular {axi_s 1 volatile  { outStream User } }  }
	{ outStream_V_last_V int 1 regular {axi_s 1 volatile  { outStream Last } }  }
	{ outStream_V_id_V int 5 regular {axi_s 1 volatile  { outStream ID } }  }
	{ outStream_V_dest_V int 6 regular {axi_s 1 volatile  { outStream Dest } }  }
	{ output_ch_V int 6 regular {axi_slave 0}  }
	{ input_ch_V int 6 regular {axi_slave 0}  }
	{ fold_output_ch_V int 4 regular {axi_slave 0}  }
	{ fold_input_ch_V int 4 regular {axi_slave 0}  }
	{ input_h_V int 9 regular {axi_slave 0}  }
	{ input_w_V int 9 regular {axi_slave 0}  }
	{ real_input_h_V int 9 regular {axi_slave 0}  }
	{ fold_win_area_V int 3 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inStream_V_data", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "inStream.V.data.sub_data_0.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":16,"up":31,"cElement": [{"cName": "inStream.V.data.sub_data_1.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":47,"cElement": [{"cName": "inStream.V.data.sub_data_2.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":48,"up":63,"cElement": [{"cName": "inStream.V.data.sub_data_3.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inStream.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inStream.V.strb.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "inStream.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "inStream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "inStream.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "inStream.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_data", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "outStream.V.data.sub_data_0.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":16,"up":31,"cElement": [{"cName": "outStream.V.data.sub_data_1.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":47,"cElement": [{"cName": "outStream.V.data.sub_data_2.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":48,"up":63,"cElement": [{"cName": "outStream.V.data.sub_data_3.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outStream.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outStream.V.strb.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "outStream.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outStream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "outStream.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "outStream.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_ch_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "output_ch.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "input_ch_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "input_ch.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "fold_output_ch_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "fold_output_ch.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "fold_input_ch_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "fold_input_ch.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "input_h_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 9, "direction" : "READONLY", "bitSlice":[{"low":0,"up":8,"cElement": [{"cName": "input_h.V","cData": "uint9","bit_use": { "low": 0,"up": 8},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "input_w_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 9, "direction" : "READONLY", "bitSlice":[{"low":0,"up":8,"cElement": [{"cName": "input_w.V","cData": "uint9","bit_use": { "low": 0,"up": 8},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "real_input_h_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 9, "direction" : "READONLY", "bitSlice":[{"low":0,"up":8,"cElement": [{"cName": "real_input_h.V","cData": "uint9","bit_use": { "low": 0,"up": 8},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "fold_win_area_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "fold_win_area.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":72}, "offset_end" : {"in":79}} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ inStream_TDATA sc_in sc_lv 64 signal 0 } 
	{ inStream_TVALID sc_in sc_logic 1 invld 6 } 
	{ inStream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ inStream_TKEEP sc_in sc_lv 8 signal 1 } 
	{ inStream_TSTRB sc_in sc_lv 8 signal 2 } 
	{ inStream_TUSER sc_in sc_lv 2 signal 3 } 
	{ inStream_TLAST sc_in sc_lv 1 signal 4 } 
	{ inStream_TID sc_in sc_lv 5 signal 5 } 
	{ inStream_TDEST sc_in sc_lv 6 signal 6 } 
	{ outStream_TDATA sc_out sc_lv 64 signal 7 } 
	{ outStream_TVALID sc_out sc_logic 1 outvld 13 } 
	{ outStream_TREADY sc_in sc_logic 1 outacc 13 } 
	{ outStream_TKEEP sc_out sc_lv 8 signal 8 } 
	{ outStream_TSTRB sc_out sc_lv 8 signal 9 } 
	{ outStream_TUSER sc_out sc_lv 2 signal 10 } 
	{ outStream_TLAST sc_out sc_lv 1 signal 11 } 
	{ outStream_TID sc_out sc_lv 5 signal 12 } 
	{ outStream_TDEST sc_out sc_lv 6 signal 13 } 
	{ s_axi_CTRL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CTRL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CTRL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWADDR" },"address":[{"name":"yolo_conv_top","role":"start","value":"0","valid_bit":"0"},{"name":"yolo_conv_top","role":"continue","value":"0","valid_bit":"4"},{"name":"yolo_conv_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"output_ch_V","role":"data","value":"16"},{"name":"input_ch_V","role":"data","value":"24"},{"name":"fold_output_ch_V","role":"data","value":"32"},{"name":"fold_input_ch_V","role":"data","value":"40"},{"name":"input_h_V","role":"data","value":"48"},{"name":"input_w_V","role":"data","value":"56"},{"name":"real_input_h_V","role":"data","value":"64"},{"name":"fold_win_area_V","role":"data","value":"72"}] },
	{ "name": "s_axi_CTRL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARADDR" },"address":[{"name":"yolo_conv_top","role":"start","value":"0","valid_bit":"0"},{"name":"yolo_conv_top","role":"done","value":"0","valid_bit":"1"},{"name":"yolo_conv_top","role":"idle","value":"0","valid_bit":"2"},{"name":"yolo_conv_top","role":"ready","value":"0","valid_bit":"3"},{"name":"yolo_conv_top","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "inStream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inStream_V_data", "role": "default" }} , 
 	{ "name": "inStream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "inStream_V_dest_V", "role": "default" }} , 
 	{ "name": "inStream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "inStream_V_dest_V", "role": "default" }} , 
 	{ "name": "inStream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream_V_keep_V", "role": "default" }} , 
 	{ "name": "inStream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream_V_strb_V", "role": "default" }} , 
 	{ "name": "inStream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inStream_V_user_V", "role": "default" }} , 
 	{ "name": "inStream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_last_V", "role": "default" }} , 
 	{ "name": "inStream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "inStream_V_id_V", "role": "default" }} , 
 	{ "name": "inStream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "inStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outStream_V_data", "role": "default" }} , 
 	{ "name": "outStream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outStream_V_keep_V", "role": "default" }} , 
 	{ "name": "outStream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outStream_V_strb_V", "role": "default" }} , 
 	{ "name": "outStream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "outStream_V_user_V", "role": "default" }} , 
 	{ "name": "outStream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_last_V", "role": "default" }} , 
 	{ "name": "outStream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outStream_V_id_V", "role": "default" }} , 
 	{ "name": "outStream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "outStream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "97", "107", "117", "127", "137", "147", "157", "167", "177", "187", "197", "207", "217", "227", "237", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288"],
		"CDFG" : "yolo_conv_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1401342", "EstimateLatencyMax" : "1401342",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "inStream_V_data", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inStream_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "outStream_V_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_out_stream_merge_fu_11954", "Port" : "outStream_V_data"}]},
			{"Name" : "outStream_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_out_stream_merge_fu_11954", "Port" : "outStream_V_keep_V"}]},
			{"Name" : "outStream_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_out_stream_merge_fu_11954", "Port" : "outStream_V_strb_V"}]},
			{"Name" : "outStream_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_out_stream_merge_fu_11954", "Port" : "outStream_V_user_V"}]},
			{"Name" : "outStream_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_out_stream_merge_fu_11954", "Port" : "outStream_V_last_V"}]},
			{"Name" : "outStream_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_out_stream_merge_fu_11954", "Port" : "outStream_V_id_V"}]},
			{"Name" : "outStream_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_out_stream_merge_fu_11954", "Port" : "outStream_V_dest_V"}]},
			{"Name" : "output_ch_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_ch_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "fold_output_ch_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "fold_input_ch_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_h_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_w_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "real_input_h_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "fold_win_area_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_out_stream_merge_fu_11954", "SubBlockPort" : ["out_stream_group_0_V_V_blk_n", "out_stream_group_1_V_V_blk_n", "out_stream_group_2_V_V_blk_n", "out_stream_group_3_V_V_blk_n", "out_stream_group_4_V_V_blk_n", "out_stream_group_5_V_V_blk_n", "out_stream_group_6_V_V_blk_n", "out_stream_group_7_V_V_blk_n", "out_stream_group_8_V_V_blk_n", "out_stream_group_9_V_V_blk_n", "out_stream_group_10_V_V_blk_n", "out_stream_group_11_V_V_blk_n", "out_stream_group_12_V_V_blk_n", "out_stream_group_13_V_V_blk_n", "out_stream_group_14_V_V_blk_n", "out_stream_group_15_V_V_blk_n", "out_stream_group_16_V_V_blk_n", "out_stream_group_17_V_V_blk_n", "out_stream_group_18_V_V_blk_n", "out_stream_group_19_V_V_blk_n", "out_stream_group_20_V_V_blk_n", "out_stream_group_21_V_V_blk_n", "out_stream_group_22_V_V_blk_n", "out_stream_group_23_V_V_blk_n", "out_stream_group_24_V_V_blk_n", "out_stream_group_25_V_V_blk_n", "out_stream_group_26_V_V_blk_n", "out_stream_group_27_V_V_blk_n", "out_stream_group_28_V_V_blk_n", "out_stream_group_29_V_V_blk_n", "out_stream_group_30_V_V_blk_n", "out_stream_group_31_V_V_blk_n", "outStream_TDATA_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_CTRL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_0_va_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_0_va_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_0_va_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_1_va_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_1_va_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_1_va_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_2_va_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_2_va_1_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_2_va_2_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_3_va_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_3_va_1_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_3_va_2_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_0_d_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_0_d_1_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_0_d_2_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_0_d_3_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_0_d_4_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_0_d_5_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_0_d_6_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_0_d_7_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_0_d_8_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_1_d_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_1_d_1_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_1_d_2_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_1_d_3_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_1_d_4_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_1_d_5_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_1_d_6_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_1_d_7_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_1_d_8_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_2_d_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_2_d_1_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_2_d_2_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_2_d_3_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_2_d_4_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_2_d_5_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_2_d_6_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_2_d_7_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_2_d_8_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_3_d_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_3_d_1_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_3_d_2_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_3_d_3_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_3_d_4_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_3_d_5_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_3_d_6_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_3_d_7_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_3_d_8_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_4_d_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_4_d_1_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_4_d_2_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_4_d_3_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_4_d_4_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_4_d_5_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_4_d_6_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_4_d_7_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_4_d_8_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_5_d_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_5_d_1_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_5_d_2_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_5_d_3_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_5_d_4_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_5_d_5_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_5_d_6_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_5_d_7_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_5_d_8_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_6_d_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_6_d_1_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_6_d_2_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_6_d_3_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_6_d_4_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_6_d_5_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_6_d_6_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_6_d_7_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_6_d_8_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_7_d_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_7_d_1_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_7_d_2_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_7_d_3_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_7_d_4_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_7_d_5_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_7_d_6_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_7_d_7_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_group_7_d_8_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_out_stream_merge_fu_11954", "Parent" : "0",
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
			{"Name" : "input_ch_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_keep_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_strb_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_user_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_id_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_dest_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "fold_output_ch", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12012", "Parent" : "0", "Child" : ["88", "89", "90", "91", "92", "93", "94", "95", "96"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12012.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "87"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12012.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "87"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12012.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "87"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12012.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "87"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12012.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "87"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12012.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "87"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12012.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "87"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12012.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "87"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12012.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "87"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12034", "Parent" : "0", "Child" : ["98", "99", "100", "101", "102", "103", "104", "105", "106"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12034.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "97"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12034.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "97"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12034.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "97"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12034.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "97"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12034.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "97"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12034.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "97"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12034.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "97"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12034.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "97"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12034.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "97"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12056", "Parent" : "0", "Child" : ["108", "109", "110", "111", "112", "113", "114", "115", "116"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12056.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "107"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12056.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "107"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12056.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "107"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12056.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "107"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12056.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "107"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12056.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "107"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12056.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "107"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12056.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "107"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12056.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "107"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12078", "Parent" : "0", "Child" : ["118", "119", "120", "121", "122", "123", "124", "125", "126"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12078.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "117"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12078.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "117"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12078.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "117"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12078.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "117"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12078.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "117"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12078.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "117"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12078.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "117"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12078.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "117"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12078.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "117"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12100", "Parent" : "0", "Child" : ["128", "129", "130", "131", "132", "133", "134", "135", "136"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12100.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "127"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12100.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "127"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12100.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "127"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12100.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "127"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12100.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "127"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12100.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "127"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12100.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "127"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12100.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "127"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12100.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "127"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12122", "Parent" : "0", "Child" : ["138", "139", "140", "141", "142", "143", "144", "145", "146"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12122.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "137"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12122.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "137"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12122.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "137"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12122.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "137"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12122.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "137"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12122.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "137"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12122.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "137"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12122.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "137"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12122.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "137"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12144", "Parent" : "0", "Child" : ["148", "149", "150", "151", "152", "153", "154", "155", "156"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12144.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "147"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12144.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "147"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12144.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "147"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12144.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "147"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12144.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "147"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12144.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "147"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12144.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "147"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12144.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "147"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12144.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "147"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12166", "Parent" : "0", "Child" : ["158", "159", "160", "161", "162", "163", "164", "165", "166"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12166.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "157"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12166.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "157"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12166.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "157"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12166.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "157"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12166.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "157"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12166.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "157"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12166.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "157"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12166.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "157"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12166.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "157"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12188", "Parent" : "0", "Child" : ["168", "169", "170", "171", "172", "173", "174", "175", "176"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12188.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "167"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12188.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "167"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12188.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "167"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12188.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "167"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12188.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "167"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12188.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "167"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12188.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "167"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12188.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "167"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12188.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "167"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12210", "Parent" : "0", "Child" : ["178", "179", "180", "181", "182", "183", "184", "185", "186"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12210.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "177"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12210.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "177"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12210.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "177"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12210.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "177"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12210.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "177"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12210.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "177"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12210.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "177"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12210.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "177"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12210.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "177"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12232", "Parent" : "0", "Child" : ["188", "189", "190", "191", "192", "193", "194", "195", "196"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12232.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "187"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12232.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "187"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12232.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "187"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12232.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "187"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12232.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "187"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12232.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "187"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12232.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "187"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12232.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "187"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12232.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "187"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12254", "Parent" : "0", "Child" : ["198", "199", "200", "201", "202", "203", "204", "205", "206"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12254.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "197"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12254.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "197"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12254.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "197"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12254.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "197"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12254.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "197"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12254.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "197"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12254.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "197"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12254.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "197"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12254.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "197"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12276", "Parent" : "0", "Child" : ["208", "209", "210", "211", "212", "213", "214", "215", "216"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12276.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "207"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12276.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "207"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12276.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "207"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12276.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "207"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12276.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "207"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12276.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "207"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12276.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "207"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12276.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "207"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12276.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "207"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12298", "Parent" : "0", "Child" : ["218", "219", "220", "221", "222", "223", "224", "225", "226"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12298.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "217"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12298.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "217"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12298.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "217"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12298.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "217"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12298.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "217"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12298.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "217"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12298.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "217"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12298.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "217"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12298.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "217"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12320", "Parent" : "0", "Child" : ["228", "229", "230", "231", "232", "233", "234", "235", "236"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12320.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "227"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12320.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "227"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12320.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "227"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12320.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "227"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12320.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "227"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12320.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "227"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12320.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "227"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12320.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "227"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12320.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "227"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12342", "Parent" : "0", "Child" : ["238", "239", "240", "241", "242", "243", "244", "245", "246"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12342.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "237"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12342.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "237"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12342.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "237"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12342.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "237"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12342.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U10", "Parent" : "237"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12342.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U11", "Parent" : "237"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12342.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U12", "Parent" : "237"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12342.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U13", "Parent" : "237"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_12342.yolo_conv_top_mac_muladd_16s_16s_32s_32_1_0_U14", "Parent" : "237"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_slide_window_fu_12364", "Parent" : "0",
		"CDFG" : "slide_window",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "3",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buff_val_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_slide_window_fu_12373", "Parent" : "0",
		"CDFG" : "slide_window",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "3",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buff_val_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_slide_window_fu_12382", "Parent" : "0",
		"CDFG" : "slide_window",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "3",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buff_val_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_slide_window_fu_12391", "Parent" : "0",
		"CDFG" : "slide_window",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "3",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buff_val_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_post_process_fu_12400", "Parent" : "0",
		"CDFG" : "post_process",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
			{"Name" : "val_output_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_post_process_fu_12411", "Parent" : "0",
		"CDFG" : "post_process",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
			{"Name" : "val_output_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_post_process_fu_12422", "Parent" : "0",
		"CDFG" : "post_process",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
			{"Name" : "val_output_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_post_process_fu_12436", "Parent" : "0",
		"CDFG" : "post_process",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
			{"Name" : "val_output_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_am_addmul_9ns_1ns_13ns_22_1_1_U88", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mac_muladd_4ns_10ns_9ns_13_1_1_U89", "Parent" : "0"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_0_s_fifo_U", "Parent" : "0"},
	{"ID" : "258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_1_s_fifo_U", "Parent" : "0"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_2_s_fifo_U", "Parent" : "0"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_3_s_fifo_U", "Parent" : "0"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_4_s_fifo_U", "Parent" : "0"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_5_s_fifo_U", "Parent" : "0"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_6_s_fifo_U", "Parent" : "0"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_7_s_fifo_U", "Parent" : "0"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_8_s_fifo_U", "Parent" : "0"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_9_s_fifo_U", "Parent" : "0"},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_10_fifo_U", "Parent" : "0"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_11_fifo_U", "Parent" : "0"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_12_fifo_U", "Parent" : "0"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_13_fifo_U", "Parent" : "0"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_14_fifo_U", "Parent" : "0"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_15_fifo_U", "Parent" : "0"},
	{"ID" : "273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_16_fifo_U", "Parent" : "0"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_17_fifo_U", "Parent" : "0"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_18_fifo_U", "Parent" : "0"},
	{"ID" : "276", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_19_fifo_U", "Parent" : "0"},
	{"ID" : "277", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_20_fifo_U", "Parent" : "0"},
	{"ID" : "278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_21_fifo_U", "Parent" : "0"},
	{"ID" : "279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_22_fifo_U", "Parent" : "0"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_23_fifo_U", "Parent" : "0"},
	{"ID" : "281", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_24_fifo_U", "Parent" : "0"},
	{"ID" : "282", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_25_fifo_U", "Parent" : "0"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_26_fifo_U", "Parent" : "0"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_27_fifo_U", "Parent" : "0"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_28_fifo_U", "Parent" : "0"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_29_fifo_U", "Parent" : "0"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_30_fifo_U", "Parent" : "0"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_31_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	yolo_conv_top {
		inStream_V_data {Type I LastRead 11 FirstWrite -1}
		inStream_V_keep_V {Type I LastRead 11 FirstWrite -1}
		inStream_V_strb_V {Type I LastRead 11 FirstWrite -1}
		inStream_V_user_V {Type I LastRead 11 FirstWrite -1}
		inStream_V_last_V {Type I LastRead 11 FirstWrite -1}
		inStream_V_id_V {Type I LastRead 11 FirstWrite -1}
		inStream_V_dest_V {Type I LastRead 11 FirstWrite -1}
		outStream_V_data {Type O LastRead -1 FirstWrite 1}
		outStream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_user_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_last_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_id_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_dest_V {Type O LastRead -1 FirstWrite 1}
		output_ch_V {Type I LastRead 0 FirstWrite -1}
		input_ch_V {Type I LastRead 0 FirstWrite -1}
		fold_output_ch_V {Type I LastRead 0 FirstWrite -1}
		fold_input_ch_V {Type I LastRead 0 FirstWrite -1}
		input_h_V {Type I LastRead 0 FirstWrite -1}
		input_w_V {Type I LastRead 0 FirstWrite -1}
		real_input_h_V {Type I LastRead 0 FirstWrite -1}
		fold_win_area_V {Type I LastRead 0 FirstWrite -1}}
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
		input_ch_idx {Type I LastRead 0 FirstWrite -1}
		curr_input_keep_V {Type I LastRead 1 FirstWrite -1}
		curr_input_strb_V {Type I LastRead 1 FirstWrite -1}
		curr_input_user_V {Type I LastRead 1 FirstWrite -1}
		curr_input_id_V {Type I LastRead 1 FirstWrite -1}
		curr_input_dest_V {Type I LastRead 1 FirstWrite -1}
		last_V {Type I LastRead 1 FirstWrite -1}
		fold_output_ch {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}}
	slide_window {
		conv_count {Type I LastRead 0 FirstWrite -1}
		line_buff_val_0_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_1_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_2_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_V_offset {Type I LastRead 0 FirstWrite -1}}
	slide_window {
		conv_count {Type I LastRead 0 FirstWrite -1}
		line_buff_val_0_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_1_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_2_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_V_offset {Type I LastRead 0 FirstWrite -1}}
	slide_window {
		conv_count {Type I LastRead 0 FirstWrite -1}
		line_buff_val_0_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_1_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_2_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_V_offset {Type I LastRead 0 FirstWrite -1}}
	slide_window {
		conv_count {Type I LastRead 0 FirstWrite -1}
		line_buff_val_0_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_1_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_2_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_V_offset {Type I LastRead 0 FirstWrite -1}}
	post_process {
		sub0_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub1_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub2_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub3_val_output_V {Type I LastRead 0 FirstWrite -1}
		input_ch_idx {Type I LastRead 0 FirstWrite -1}
		val_output_V {Type I LastRead 0 FirstWrite -1}}
	post_process {
		sub0_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub1_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub2_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub3_val_output_V {Type I LastRead 0 FirstWrite -1}
		input_ch_idx {Type I LastRead 0 FirstWrite -1}
		val_output_V {Type I LastRead 0 FirstWrite -1}}
	post_process {
		sub0_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub1_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub2_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub3_val_output_V {Type I LastRead 0 FirstWrite -1}
		input_ch_idx {Type I LastRead 0 FirstWrite -1}
		val_output_V {Type I LastRead 0 FirstWrite -1}}
	post_process {
		sub0_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub1_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub2_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub3_val_output_V {Type I LastRead 0 FirstWrite -1}
		input_ch_idx {Type I LastRead 0 FirstWrite -1}
		val_output_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1401342", "Max" : "1401342"}
	, {"Name" : "Interval", "Min" : "1401343", "Max" : "1401343"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	inStream_V_data { axis {  { inStream_TDATA in_data 0 64 } } }
	inStream_V_keep_V { axis {  { inStream_TKEEP in_data 0 8 } } }
	inStream_V_strb_V { axis {  { inStream_TSTRB in_data 0 8 } } }
	inStream_V_user_V { axis {  { inStream_TUSER in_data 0 2 } } }
	inStream_V_last_V { axis {  { inStream_TLAST in_data 0 1 } } }
	inStream_V_id_V { axis {  { inStream_TID in_data 0 5 } } }
	inStream_V_dest_V { axis {  { inStream_TVALID in_vld 0 1 }  { inStream_TREADY in_acc 1 1 }  { inStream_TDEST in_data 0 6 } } }
	outStream_V_data { axis {  { outStream_TDATA out_data 1 64 } } }
	outStream_V_keep_V { axis {  { outStream_TKEEP out_data 1 8 } } }
	outStream_V_strb_V { axis {  { outStream_TSTRB out_data 1 8 } } }
	outStream_V_user_V { axis {  { outStream_TUSER out_data 1 2 } } }
	outStream_V_last_V { axis {  { outStream_TLAST out_data 1 1 } } }
	outStream_V_id_V { axis {  { outStream_TID out_data 1 5 } } }
	outStream_V_dest_V { axis {  { outStream_TVALID out_vld 1 1 }  { outStream_TREADY out_acc 0 1 }  { outStream_TDEST out_data 1 6 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
