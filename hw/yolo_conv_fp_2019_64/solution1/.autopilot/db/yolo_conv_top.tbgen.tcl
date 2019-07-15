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
	{ kernel_dim_V int 3 regular {axi_slave 0}  }
	{ input_h_V int 9 regular {axi_slave 0}  }
	{ input_w_V int 9 regular {axi_slave 0}  }
	{ real_input_h_V int 9 regular {axi_slave 0}  }
	{ leaky_V int 1 regular {axi_slave 0}  }
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
 	{ "Name" : "kernel_dim_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "kernel_dim.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "input_h_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 9, "direction" : "READONLY", "bitSlice":[{"low":0,"up":8,"cElement": [{"cName": "input_h.V","cData": "uint9","bit_use": { "low": 0,"up": 8},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "input_w_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 9, "direction" : "READONLY", "bitSlice":[{"low":0,"up":8,"cElement": [{"cName": "input_w.V","cData": "uint9","bit_use": { "low": 0,"up": 8},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "real_input_h_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 9, "direction" : "READONLY", "bitSlice":[{"low":0,"up":8,"cElement": [{"cName": "real_input_h.V","cData": "uint9","bit_use": { "low": 0,"up": 8},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "leaky_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "leaky.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "fold_win_area_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "fold_win_area.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":88}, "offset_end" : {"in":95}} ]}
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
	{ "name": "s_axi_CTRL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWADDR" },"address":[{"name":"yolo_conv_top","role":"start","value":"0","valid_bit":"0"},{"name":"yolo_conv_top","role":"continue","value":"0","valid_bit":"4"},{"name":"yolo_conv_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"output_ch_V","role":"data","value":"16"},{"name":"input_ch_V","role":"data","value":"24"},{"name":"fold_output_ch_V","role":"data","value":"32"},{"name":"fold_input_ch_V","role":"data","value":"40"},{"name":"kernel_dim_V","role":"data","value":"48"},{"name":"input_h_V","role":"data","value":"56"},{"name":"input_w_V","role":"data","value":"64"},{"name":"real_input_h_V","role":"data","value":"72"},{"name":"leaky_V","role":"data","value":"80"},{"name":"fold_win_area_V","role":"data","value":"88"}] },
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "64", "74", "84", "94", "104", "114", "124", "134", "136", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174"],
		"CDFG" : "yolo_conv_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2802505", "EstimateLatencyMax" : "2802505",
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
					{"ID" : "138", "SubInstance" : "grp_out_stream_merge_fu_12002", "Port" : "outStream_V_data"}]},
			{"Name" : "outStream_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_out_stream_merge_fu_12002", "Port" : "outStream_V_keep_V"}]},
			{"Name" : "outStream_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_out_stream_merge_fu_12002", "Port" : "outStream_V_strb_V"}]},
			{"Name" : "outStream_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_out_stream_merge_fu_12002", "Port" : "outStream_V_user_V"}]},
			{"Name" : "outStream_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_out_stream_merge_fu_12002", "Port" : "outStream_V_last_V"}]},
			{"Name" : "outStream_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_out_stream_merge_fu_12002", "Port" : "outStream_V_id_V"}]},
			{"Name" : "outStream_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_out_stream_merge_fu_12002", "Port" : "outStream_V_dest_V"}]},
			{"Name" : "output_ch_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_ch_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "fold_output_ch_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "fold_input_ch_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_dim_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_h_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_w_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "real_input_h_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "leaky_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "fold_win_area_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_out_stream_merge_fu_12002", "SubBlockPort" : ["out_stream_group_0_V_V_blk_n", "out_stream_group_1_V_V_blk_n", "out_stream_group_2_V_V_blk_n", "out_stream_group_3_V_V_blk_n", "out_stream_group_4_V_V_blk_n", "out_stream_group_5_V_V_blk_n", "out_stream_group_6_V_V_blk_n", "out_stream_group_7_V_V_blk_n", "out_stream_group_8_V_V_blk_n", "out_stream_group_9_V_V_blk_n", "out_stream_group_10_V_V_blk_n", "out_stream_group_11_V_V_blk_n", "out_stream_group_12_V_V_blk_n", "out_stream_group_13_V_V_blk_n", "out_stream_group_14_V_V_blk_n", "out_stream_group_15_V_V_blk_n", "out_stream_group_16_V_V_blk_n", "out_stream_group_17_V_V_blk_n", "out_stream_group_18_V_V_blk_n", "out_stream_group_19_V_V_blk_n", "out_stream_group_20_V_V_blk_n", "out_stream_group_21_V_V_blk_n", "out_stream_group_22_V_V_blk_n", "out_stream_group_23_V_V_blk_n", "out_stream_group_24_V_V_blk_n", "out_stream_group_25_V_V_blk_n", "out_stream_group_26_V_V_blk_n", "out_stream_group_27_V_V_blk_n", "out_stream_group_28_V_V_blk_n", "out_stream_group_29_V_V_blk_n", "out_stream_group_30_V_V_blk_n", "out_stream_group_31_V_V_blk_n", "outStream_TDATA_blk_n"]}]},
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
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_bias_fp_0_V_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_bias_fp_1_V_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_bias_fp_2_V_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_bias_fp_3_V_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11768", "Parent" : "0", "Child" : ["55", "56", "57", "58", "59", "60", "61", "62", "63"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
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
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11768.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11768.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "54"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11768.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "54"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11768.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "54"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11768.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "54"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11768.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "54"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11768.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "54"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11768.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "54"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11768.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "54"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11790", "Parent" : "0", "Child" : ["65", "66", "67", "68", "69", "70", "71", "72", "73"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
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
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11790.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11790.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "64"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11790.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "64"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11790.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "64"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11790.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "64"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11790.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "64"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11790.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "64"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11790.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "64"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11790.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "64"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11812", "Parent" : "0", "Child" : ["75", "76", "77", "78", "79", "80", "81", "82", "83"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
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
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11812.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11812.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "74"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11812.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "74"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11812.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "74"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11812.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "74"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11812.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "74"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11812.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "74"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11812.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "74"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11812.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "74"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11834", "Parent" : "0", "Child" : ["85", "86", "87", "88", "89", "90", "91", "92", "93"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
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
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11834.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "84"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11834.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "84"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11834.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "84"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11834.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "84"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11834.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "84"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11834.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "84"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11834.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "84"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11834.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "84"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11834.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "84"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11856", "Parent" : "0", "Child" : ["95", "96", "97", "98", "99", "100", "101", "102", "103"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
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
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11856.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "94"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11856.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "94"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11856.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "94"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11856.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "94"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11856.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "94"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11856.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "94"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11856.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "94"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11856.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "94"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11856.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "94"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11878", "Parent" : "0", "Child" : ["105", "106", "107", "108", "109", "110", "111", "112", "113"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
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
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11878.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "104"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11878.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "104"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11878.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "104"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11878.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "104"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11878.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "104"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11878.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "104"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11878.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "104"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11878.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "104"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11878.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "104"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11900", "Parent" : "0", "Child" : ["115", "116", "117", "118", "119", "120", "121", "122", "123"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
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
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11900.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "114"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11900.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "114"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11900.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "114"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11900.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "114"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11900.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "114"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11900.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "114"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11900.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "114"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11900.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "114"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11900.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "114"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11922", "Parent" : "0", "Child" : ["125", "126", "127", "128", "129", "130", "131", "132", "133"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
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
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11922.yolo_conv_top_mul_mul_16s_16s_32_1_0_U6", "Parent" : "124"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11922.yolo_conv_top_mul_mul_16s_16s_32_1_0_U7", "Parent" : "124"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11922.yolo_conv_top_mul_mul_16s_16s_32_1_0_U8", "Parent" : "124"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11922.yolo_conv_top_mul_mul_16s_16s_32_1_0_U9", "Parent" : "124"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11922.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "124"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11922.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "124"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11922.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "124"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11922.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "124"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_11922.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "124"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_post_process_fu_11944", "Parent" : "0", "Child" : ["135"],
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
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_post_process_fu_11944.yolo_conv_top_mul_mul_6ns_16s_22_1_0_U34", "Parent" : "134"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_post_process_fu_11958", "Parent" : "0", "Child" : ["137"],
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
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_post_process_fu_11958.yolo_conv_top_mul_mul_6ns_16s_22_1_0_U34", "Parent" : "136"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_out_stream_merge_fu_12002", "Parent" : "0",
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
			{"Name" : "fold_output_ch_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_slide_window_fu_12060", "Parent" : "0",
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
			{"Name" : "conv_count_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buff_val_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "line_buff_val_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mac_muladd_3ns_3ns_3ns_6_1_1_U92", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_am_addmul_9ns_1ns_13ns_22_1_1_U93", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mac_muladd_4ns_10ns_9ns_13_1_1_U94", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_0_s_fifo_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_1_s_fifo_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_2_s_fifo_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_3_s_fifo_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_4_s_fifo_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_5_s_fifo_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_6_s_fifo_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_7_s_fifo_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_8_s_fifo_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_9_s_fifo_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_10_fifo_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_11_fifo_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_12_fifo_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_13_fifo_U", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_14_fifo_U", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_15_fifo_U", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_16_fifo_U", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_17_fifo_U", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_18_fifo_U", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_19_fifo_U", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_20_fifo_U", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_21_fifo_U", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_22_fifo_U", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_23_fifo_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_24_fifo_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_25_fifo_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_26_fifo_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_27_fifo_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_28_fifo_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_29_fifo_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_30_fifo_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_31_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	yolo_conv_top {
		inStream_V_data {Type I LastRead 16 FirstWrite -1}
		inStream_V_keep_V {Type I LastRead 16 FirstWrite -1}
		inStream_V_strb_V {Type I LastRead 16 FirstWrite -1}
		inStream_V_user_V {Type I LastRead 16 FirstWrite -1}
		inStream_V_last_V {Type I LastRead 16 FirstWrite -1}
		inStream_V_id_V {Type I LastRead 16 FirstWrite -1}
		inStream_V_dest_V {Type I LastRead 16 FirstWrite -1}
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
		kernel_dim_V {Type I LastRead 0 FirstWrite -1}
		input_h_V {Type I LastRead 0 FirstWrite -1}
		input_w_V {Type I LastRead 0 FirstWrite -1}
		real_input_h_V {Type I LastRead 0 FirstWrite -1}
		leaky_V {Type I LastRead 0 FirstWrite -1}
		fold_win_area_V {Type I LastRead 0 FirstWrite -1}}
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
	post_process {
		sub0_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub1_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub2_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub3_val_output_V {Type I LastRead 0 FirstWrite -1}
		acc_flag {Type I LastRead 0 FirstWrite -1}
		leaky_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}
		input_ch_idx_V {Type I LastRead 0 FirstWrite -1}
		val_output_V {Type I LastRead 0 FirstWrite -1}}
	post_process {
		sub0_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub1_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub2_val_output_V {Type I LastRead 0 FirstWrite -1}
		sub3_val_output_V {Type I LastRead 0 FirstWrite -1}
		acc_flag {Type I LastRead 0 FirstWrite -1}
		leaky_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}
		input_ch_idx_V {Type I LastRead 0 FirstWrite -1}
		val_output_V {Type I LastRead 0 FirstWrite -1}}
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
		fold_output_ch_V {Type I LastRead 0 FirstWrite -1}}
	slide_window {
		conv_count_V {Type I LastRead 1 FirstWrite -1}
		line_buff_val_0_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_1_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_2_V {Type I LastRead 3 FirstWrite -1}
		line_buff_val_V_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2802505", "Max" : "2802505"}
	, {"Name" : "Interval", "Min" : "2802506", "Max" : "2802506"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
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
