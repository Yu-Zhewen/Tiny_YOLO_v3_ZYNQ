set moduleName yolo_acc_top
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
set C_modelName {yolo_acc_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ inStream_a_V_data int 64 regular {axi_s 0 volatile  { inStream_a Data } }  }
	{ inStream_a_V_keep_V int 8 regular {axi_s 0 volatile  { inStream_a Keep } }  }
	{ inStream_a_V_strb_V int 8 regular {axi_s 0 volatile  { inStream_a Strb } }  }
	{ inStream_a_V_user_V int 2 regular {axi_s 0 volatile  { inStream_a User } }  }
	{ inStream_a_V_last_V int 1 regular {axi_s 0 volatile  { inStream_a Last } }  }
	{ inStream_a_V_id_V int 5 regular {axi_s 0 volatile  { inStream_a ID } }  }
	{ inStream_a_V_dest_V int 6 regular {axi_s 0 volatile  { inStream_a Dest } }  }
	{ inStream_b_V_data int 64 regular {axi_s 0 volatile  { inStream_b Data } }  }
	{ inStream_b_V_keep_V int 8 regular {axi_s 0 volatile  { inStream_b Keep } }  }
	{ inStream_b_V_strb_V int 8 regular {axi_s 0 volatile  { inStream_b Strb } }  }
	{ inStream_b_V_user_V int 2 regular {axi_s 0 volatile  { inStream_b User } }  }
	{ inStream_b_V_last_V int 1 regular {axi_s 0 volatile  { inStream_b Last } }  }
	{ inStream_b_V_id_V int 5 regular {axi_s 0 volatile  { inStream_b ID } }  }
	{ inStream_b_V_dest_V int 6 regular {axi_s 0 volatile  { inStream_b Dest } }  }
	{ outStream_V_data int 64 regular {axi_s 1 volatile  { outStream Data } }  }
	{ outStream_V_keep_V int 8 regular {axi_s 1 volatile  { outStream Keep } }  }
	{ outStream_V_strb_V int 8 regular {axi_s 1 volatile  { outStream Strb } }  }
	{ outStream_V_user_V int 2 regular {axi_s 1 volatile  { outStream User } }  }
	{ outStream_V_last_V int 1 regular {axi_s 1 volatile  { outStream Last } }  }
	{ outStream_V_id_V int 5 regular {axi_s 1 volatile  { outStream ID } }  }
	{ outStream_V_dest_V int 6 regular {axi_s 1 volatile  { outStream Dest } }  }
	{ input_h_V int 6 regular {axi_slave 0}  }
	{ input_w_V int 6 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inStream_a_V_data", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "inStream_a.V.data.sub_data_0.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":16,"up":31,"cElement": [{"cName": "inStream_a.V.data.sub_data_1.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":47,"cElement": [{"cName": "inStream_a.V.data.sub_data_2.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":48,"up":63,"cElement": [{"cName": "inStream_a.V.data.sub_data_3.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_a_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inStream_a.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_a_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inStream_a.V.strb.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_a_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "inStream_a.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_a_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "inStream_a.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_a_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "inStream_a.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_a_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "inStream_a.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_b_V_data", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "inStream_b.V.data.sub_data_0.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":16,"up":31,"cElement": [{"cName": "inStream_b.V.data.sub_data_1.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":47,"cElement": [{"cName": "inStream_b.V.data.sub_data_2.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":48,"up":63,"cElement": [{"cName": "inStream_b.V.data.sub_data_3.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_b_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inStream_b.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_b_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inStream_b.V.strb.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_b_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "inStream_b.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_b_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "inStream_b.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_b_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "inStream_b.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_b_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "inStream_b.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_data", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "outStream.V.data.sub_data_0.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":16,"up":31,"cElement": [{"cName": "outStream.V.data.sub_data_1.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":47,"cElement": [{"cName": "outStream.V.data.sub_data_2.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":48,"up":63,"cElement": [{"cName": "outStream.V.data.sub_data_3.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outStream.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outStream.V.strb.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "outStream.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outStream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "outStream.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "outStream.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_h_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "input_h.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "input_w_V", "interface" : "axi_slave", "bundle":"CTRL_BUS","type":"ap_none","bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "input_w.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ inStream_a_TDATA sc_in sc_lv 64 signal 0 } 
	{ inStream_a_TVALID sc_in sc_logic 1 invld 6 } 
	{ inStream_a_TREADY sc_out sc_logic 1 inacc 6 } 
	{ inStream_a_TKEEP sc_in sc_lv 8 signal 1 } 
	{ inStream_a_TSTRB sc_in sc_lv 8 signal 2 } 
	{ inStream_a_TUSER sc_in sc_lv 2 signal 3 } 
	{ inStream_a_TLAST sc_in sc_lv 1 signal 4 } 
	{ inStream_a_TID sc_in sc_lv 5 signal 5 } 
	{ inStream_a_TDEST sc_in sc_lv 6 signal 6 } 
	{ inStream_b_TDATA sc_in sc_lv 64 signal 7 } 
	{ inStream_b_TVALID sc_in sc_logic 1 invld 13 } 
	{ inStream_b_TREADY sc_out sc_logic 1 inacc 13 } 
	{ inStream_b_TKEEP sc_in sc_lv 8 signal 8 } 
	{ inStream_b_TSTRB sc_in sc_lv 8 signal 9 } 
	{ inStream_b_TUSER sc_in sc_lv 2 signal 10 } 
	{ inStream_b_TLAST sc_in sc_lv 1 signal 11 } 
	{ inStream_b_TID sc_in sc_lv 5 signal 12 } 
	{ inStream_b_TDEST sc_in sc_lv 6 signal 13 } 
	{ outStream_TDATA sc_out sc_lv 64 signal 14 } 
	{ outStream_TVALID sc_out sc_logic 1 outvld 20 } 
	{ outStream_TREADY sc_in sc_logic 1 outacc 14 } 
	{ outStream_TKEEP sc_out sc_lv 8 signal 15 } 
	{ outStream_TSTRB sc_out sc_lv 8 signal 16 } 
	{ outStream_TUSER sc_out sc_lv 2 signal 17 } 
	{ outStream_TLAST sc_out sc_lv 1 signal 18 } 
	{ outStream_TID sc_out sc_lv 5 signal 19 } 
	{ outStream_TDEST sc_out sc_lv 6 signal 20 } 
	{ s_axi_CTRL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BUS_ARADDR sc_in sc_lv 5 signal -1 } 
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
	{ "name": "s_axi_CTRL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWADDR" },"address":[{"name":"yolo_acc_top","role":"start","value":"0","valid_bit":"0"},{"name":"yolo_acc_top","role":"continue","value":"0","valid_bit":"4"},{"name":"yolo_acc_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_h_V","role":"data","value":"16"},{"name":"input_w_V","role":"data","value":"24"}] },
	{ "name": "s_axi_CTRL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL_BUS", "role": "ARADDR" },"address":[{"name":"yolo_acc_top","role":"start","value":"0","valid_bit":"0"},{"name":"yolo_acc_top","role":"done","value":"0","valid_bit":"1"},{"name":"yolo_acc_top","role":"idle","value":"0","valid_bit":"2"},{"name":"yolo_acc_top","role":"ready","value":"0","valid_bit":"3"},{"name":"yolo_acc_top","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "inStream_a_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inStream_a_V_data", "role": "default" }} , 
 	{ "name": "inStream_a_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "inStream_a_V_dest_V", "role": "default" }} , 
 	{ "name": "inStream_a_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "inStream_a_V_dest_V", "role": "default" }} , 
 	{ "name": "inStream_a_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream_a_V_keep_V", "role": "default" }} , 
 	{ "name": "inStream_a_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream_a_V_strb_V", "role": "default" }} , 
 	{ "name": "inStream_a_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inStream_a_V_user_V", "role": "default" }} , 
 	{ "name": "inStream_a_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_a_V_last_V", "role": "default" }} , 
 	{ "name": "inStream_a_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "inStream_a_V_id_V", "role": "default" }} , 
 	{ "name": "inStream_a_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "inStream_a_V_dest_V", "role": "default" }} , 
 	{ "name": "inStream_b_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inStream_b_V_data", "role": "default" }} , 
 	{ "name": "inStream_b_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "inStream_b_V_dest_V", "role": "default" }} , 
 	{ "name": "inStream_b_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "inStream_b_V_dest_V", "role": "default" }} , 
 	{ "name": "inStream_b_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream_b_V_keep_V", "role": "default" }} , 
 	{ "name": "inStream_b_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream_b_V_strb_V", "role": "default" }} , 
 	{ "name": "inStream_b_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inStream_b_V_user_V", "role": "default" }} , 
 	{ "name": "inStream_b_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_b_V_last_V", "role": "default" }} , 
 	{ "name": "inStream_b_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "inStream_b_V_id_V", "role": "default" }} , 
 	{ "name": "inStream_b_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "inStream_b_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outStream_V_data", "role": "default" }} , 
 	{ "name": "outStream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outStream_V_data", "role": "default" }} , 
 	{ "name": "outStream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outStream_V_keep_V", "role": "default" }} , 
 	{ "name": "outStream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outStream_V_strb_V", "role": "default" }} , 
 	{ "name": "outStream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "outStream_V_user_V", "role": "default" }} , 
 	{ "name": "outStream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_last_V", "role": "default" }} , 
 	{ "name": "outStream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outStream_V_id_V", "role": "default" }} , 
 	{ "name": "outStream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "outStream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "yolo_acc_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "71570",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "inStream_a_V_data", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_a_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inStream_a_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_a_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_a_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_a_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_a_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_a_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_b_V_data", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_b_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inStream_b_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_b_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_b_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_b_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_b_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_b_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "outStream_V_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "input_h_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_acc_top_CTRL_BUS_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	yolo_acc_top {
		inStream_a_V_data {Type I LastRead 4 FirstWrite -1}
		inStream_a_V_keep_V {Type I LastRead 4 FirstWrite -1}
		inStream_a_V_strb_V {Type I LastRead 4 FirstWrite -1}
		inStream_a_V_user_V {Type I LastRead 4 FirstWrite -1}
		inStream_a_V_last_V {Type I LastRead 4 FirstWrite -1}
		inStream_a_V_id_V {Type I LastRead 4 FirstWrite -1}
		inStream_a_V_dest_V {Type I LastRead 4 FirstWrite -1}
		inStream_b_V_data {Type I LastRead 4 FirstWrite -1}
		inStream_b_V_keep_V {Type I LastRead 4 FirstWrite -1}
		inStream_b_V_strb_V {Type I LastRead 4 FirstWrite -1}
		inStream_b_V_user_V {Type I LastRead 4 FirstWrite -1}
		inStream_b_V_last_V {Type I LastRead 4 FirstWrite -1}
		inStream_b_V_id_V {Type I LastRead 4 FirstWrite -1}
		inStream_b_V_dest_V {Type I LastRead 4 FirstWrite -1}
		outStream_V_data {Type O LastRead -1 FirstWrite 4}
		outStream_V_keep_V {Type O LastRead -1 FirstWrite 4}
		outStream_V_strb_V {Type O LastRead -1 FirstWrite 4}
		outStream_V_user_V {Type O LastRead -1 FirstWrite 4}
		outStream_V_last_V {Type O LastRead -1 FirstWrite 4}
		outStream_V_id_V {Type O LastRead -1 FirstWrite 4}
		outStream_V_dest_V {Type O LastRead -1 FirstWrite 4}
		input_h_V {Type I LastRead 0 FirstWrite -1}
		input_w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "71570"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "71571"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inStream_a_V_data { axis {  { inStream_a_TDATA in_data 0 64 } } }
	inStream_a_V_keep_V { axis {  { inStream_a_TKEEP in_data 0 8 } } }
	inStream_a_V_strb_V { axis {  { inStream_a_TSTRB in_data 0 8 } } }
	inStream_a_V_user_V { axis {  { inStream_a_TUSER in_data 0 2 } } }
	inStream_a_V_last_V { axis {  { inStream_a_TLAST in_data 0 1 } } }
	inStream_a_V_id_V { axis {  { inStream_a_TID in_data 0 5 } } }
	inStream_a_V_dest_V { axis {  { inStream_a_TVALID in_vld 0 1 }  { inStream_a_TREADY in_acc 1 1 }  { inStream_a_TDEST in_data 0 6 } } }
	inStream_b_V_data { axis {  { inStream_b_TDATA in_data 0 64 } } }
	inStream_b_V_keep_V { axis {  { inStream_b_TKEEP in_data 0 8 } } }
	inStream_b_V_strb_V { axis {  { inStream_b_TSTRB in_data 0 8 } } }
	inStream_b_V_user_V { axis {  { inStream_b_TUSER in_data 0 2 } } }
	inStream_b_V_last_V { axis {  { inStream_b_TLAST in_data 0 1 } } }
	inStream_b_V_id_V { axis {  { inStream_b_TID in_data 0 5 } } }
	inStream_b_V_dest_V { axis {  { inStream_b_TVALID in_vld 0 1 }  { inStream_b_TREADY in_acc 1 1 }  { inStream_b_TDEST in_data 0 6 } } }
	outStream_V_data { axis {  { outStream_TDATA out_data 1 64 }  { outStream_TREADY out_acc 0 1 } } }
	outStream_V_keep_V { axis {  { outStream_TKEEP out_data 1 8 } } }
	outStream_V_strb_V { axis {  { outStream_TSTRB out_data 1 8 } } }
	outStream_V_user_V { axis {  { outStream_TUSER out_data 1 2 } } }
	outStream_V_last_V { axis {  { outStream_TLAST out_data 1 1 } } }
	outStream_V_id_V { axis {  { outStream_TID out_data 1 5 } } }
	outStream_V_dest_V { axis {  { outStream_TVALID out_vld 1 1 }  { outStream_TDEST out_data 1 6 } } }
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
