// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Jul 21 21:24:56 2019
// Host        : Lenovo-XiaoXin-CHAO7000 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_yolo_upsamp_top_0_0_sim_netlist.v
// Design      : design_1_yolo_upsamp_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_yolo_upsamp_top_0_0,yolo_upsamp_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "yolo_upsamp_top,Vivado 2019.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_CTRL_BUS_AWADDR,
    s_axi_CTRL_BUS_AWVALID,
    s_axi_CTRL_BUS_AWREADY,
    s_axi_CTRL_BUS_WDATA,
    s_axi_CTRL_BUS_WSTRB,
    s_axi_CTRL_BUS_WVALID,
    s_axi_CTRL_BUS_WREADY,
    s_axi_CTRL_BUS_BRESP,
    s_axi_CTRL_BUS_BVALID,
    s_axi_CTRL_BUS_BREADY,
    s_axi_CTRL_BUS_ARADDR,
    s_axi_CTRL_BUS_ARVALID,
    s_axi_CTRL_BUS_ARREADY,
    s_axi_CTRL_BUS_RDATA,
    s_axi_CTRL_BUS_RRESP,
    s_axi_CTRL_BUS_RVALID,
    s_axi_CTRL_BUS_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    inStream_TVALID,
    inStream_TREADY,
    inStream_TDATA,
    inStream_TDEST,
    inStream_TKEEP,
    inStream_TSTRB,
    inStream_TUSER,
    inStream_TLAST,
    inStream_TID,
    outStream_TVALID,
    outStream_TREADY,
    outStream_TDATA,
    outStream_TDEST,
    outStream_TKEEP,
    outStream_TSTRB,
    outStream_TUSER,
    outStream_TLAST,
    outStream_TID);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWADDR" *) input [3:0]s_axi_CTRL_BUS_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWVALID" *) input s_axi_CTRL_BUS_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWREADY" *) output s_axi_CTRL_BUS_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WDATA" *) input [31:0]s_axi_CTRL_BUS_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WSTRB" *) input [3:0]s_axi_CTRL_BUS_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WVALID" *) input s_axi_CTRL_BUS_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WREADY" *) output s_axi_CTRL_BUS_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BRESP" *) output [1:0]s_axi_CTRL_BUS_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BVALID" *) output s_axi_CTRL_BUS_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BREADY" *) input s_axi_CTRL_BUS_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARADDR" *) input [3:0]s_axi_CTRL_BUS_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARVALID" *) input s_axi_CTRL_BUS_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARREADY" *) output s_axi_CTRL_BUS_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RDATA" *) output [31:0]s_axi_CTRL_BUS_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RRESP" *) output [1:0]s_axi_CTRL_BUS_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RVALID" *) output s_axi_CTRL_BUS_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL_BUS, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 1e+08, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_CTRL_BUS_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL_BUS:inStream:outStream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TVALID" *) input inStream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TREADY" *) output inStream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TDATA" *) input [63:0]inStream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TDEST" *) input [5:0]inStream_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TKEEP" *) input [7:0]inStream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TSTRB" *) input [7:0]inStream_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TUSER" *) input [1:0]inStream_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TLAST" *) input [0:0]inStream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inStream, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input [4:0]inStream_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TVALID" *) output outStream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TREADY" *) input outStream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TDATA" *) output [63:0]outStream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TDEST" *) output [5:0]outStream_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TKEEP" *) output [7:0]outStream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TSTRB" *) output [7:0]outStream_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TUSER" *) output [1:0]outStream_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TLAST" *) output [0:0]outStream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outStream, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) output [4:0]outStream_TID;

  wire ap_clk;
  wire ap_rst_n;
  wire [63:0]inStream_TDATA;
  wire [5:0]inStream_TDEST;
  wire [4:0]inStream_TID;
  wire [7:0]inStream_TKEEP;
  wire [0:0]inStream_TLAST;
  wire inStream_TREADY;
  wire [7:0]inStream_TSTRB;
  wire [1:0]inStream_TUSER;
  wire inStream_TVALID;
  wire interrupt;
  wire [63:0]outStream_TDATA;
  wire [5:0]outStream_TDEST;
  wire [4:0]outStream_TID;
  wire [7:0]outStream_TKEEP;
  wire [0:0]outStream_TLAST;
  wire outStream_TREADY;
  wire [7:0]outStream_TSTRB;
  wire [1:0]outStream_TUSER;
  wire outStream_TVALID;
  wire [3:0]s_axi_CTRL_BUS_ARADDR;
  wire s_axi_CTRL_BUS_ARREADY;
  wire s_axi_CTRL_BUS_ARVALID;
  wire [3:0]s_axi_CTRL_BUS_AWADDR;
  wire s_axi_CTRL_BUS_AWREADY;
  wire s_axi_CTRL_BUS_AWVALID;
  wire s_axi_CTRL_BUS_BREADY;
  wire [1:0]s_axi_CTRL_BUS_BRESP;
  wire s_axi_CTRL_BUS_BVALID;
  wire [31:0]s_axi_CTRL_BUS_RDATA;
  wire s_axi_CTRL_BUS_RREADY;
  wire [1:0]s_axi_CTRL_BUS_RRESP;
  wire s_axi_CTRL_BUS_RVALID;
  wire [31:0]s_axi_CTRL_BUS_WDATA;
  wire s_axi_CTRL_BUS_WREADY;
  wire [3:0]s_axi_CTRL_BUS_WSTRB;
  wire s_axi_CTRL_BUS_WVALID;

  (* C_S_AXI_CTRL_BUS_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_CTRL_BUS_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_BUS_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* ap_ST_fsm_pp0_stage0 = "7'b0100000" *) 
  (* ap_ST_fsm_state1 = "7'b0000001" *) 
  (* ap_ST_fsm_state11 = "7'b1000000" *) 
  (* ap_ST_fsm_state2 = "7'b0000010" *) 
  (* ap_ST_fsm_state3 = "7'b0000100" *) 
  (* ap_ST_fsm_state4 = "7'b0001000" *) 
  (* ap_ST_fsm_state5 = "7'b0010000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_TDATA(inStream_TDATA),
        .inStream_TDEST(inStream_TDEST),
        .inStream_TID(inStream_TID),
        .inStream_TKEEP(inStream_TKEEP),
        .inStream_TLAST(inStream_TLAST),
        .inStream_TREADY(inStream_TREADY),
        .inStream_TSTRB(inStream_TSTRB),
        .inStream_TUSER(inStream_TUSER),
        .inStream_TVALID(inStream_TVALID),
        .interrupt(interrupt),
        .outStream_TDATA(outStream_TDATA),
        .outStream_TDEST(outStream_TDEST),
        .outStream_TID(outStream_TID),
        .outStream_TKEEP(outStream_TKEEP),
        .outStream_TLAST(outStream_TLAST),
        .outStream_TREADY(outStream_TREADY),
        .outStream_TSTRB(outStream_TSTRB),
        .outStream_TUSER(outStream_TUSER),
        .outStream_TVALID(outStream_TVALID),
        .s_axi_CTRL_BUS_ARADDR(s_axi_CTRL_BUS_ARADDR),
        .s_axi_CTRL_BUS_ARREADY(s_axi_CTRL_BUS_ARREADY),
        .s_axi_CTRL_BUS_ARVALID(s_axi_CTRL_BUS_ARVALID),
        .s_axi_CTRL_BUS_AWADDR(s_axi_CTRL_BUS_AWADDR),
        .s_axi_CTRL_BUS_AWREADY(s_axi_CTRL_BUS_AWREADY),
        .s_axi_CTRL_BUS_AWVALID(s_axi_CTRL_BUS_AWVALID),
        .s_axi_CTRL_BUS_BREADY(s_axi_CTRL_BUS_BREADY),
        .s_axi_CTRL_BUS_BRESP(s_axi_CTRL_BUS_BRESP),
        .s_axi_CTRL_BUS_BVALID(s_axi_CTRL_BUS_BVALID),
        .s_axi_CTRL_BUS_RDATA(s_axi_CTRL_BUS_RDATA),
        .s_axi_CTRL_BUS_RREADY(s_axi_CTRL_BUS_RREADY),
        .s_axi_CTRL_BUS_RRESP(s_axi_CTRL_BUS_RRESP),
        .s_axi_CTRL_BUS_RVALID(s_axi_CTRL_BUS_RVALID),
        .s_axi_CTRL_BUS_WDATA(s_axi_CTRL_BUS_WDATA),
        .s_axi_CTRL_BUS_WREADY(s_axi_CTRL_BUS_WREADY),
        .s_axi_CTRL_BUS_WSTRB(s_axi_CTRL_BUS_WSTRB),
        .s_axi_CTRL_BUS_WVALID(s_axi_CTRL_BUS_WVALID));
endmodule

(* C_S_AXI_CTRL_BUS_ADDR_WIDTH = "4" *) (* C_S_AXI_CTRL_BUS_DATA_WIDTH = "32" *) (* C_S_AXI_CTRL_BUS_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_pp0_stage0 = "7'b0100000" *) 
(* ap_ST_fsm_state1 = "7'b0000001" *) (* ap_ST_fsm_state11 = "7'b1000000" *) (* ap_ST_fsm_state2 = "7'b0000010" *) 
(* ap_ST_fsm_state3 = "7'b0000100" *) (* ap_ST_fsm_state4 = "7'b0001000" *) (* ap_ST_fsm_state5 = "7'b0010000" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top
   (ap_clk,
    ap_rst_n,
    inStream_TDATA,
    inStream_TVALID,
    inStream_TREADY,
    inStream_TKEEP,
    inStream_TSTRB,
    inStream_TUSER,
    inStream_TLAST,
    inStream_TID,
    inStream_TDEST,
    outStream_TDATA,
    outStream_TVALID,
    outStream_TREADY,
    outStream_TKEEP,
    outStream_TSTRB,
    outStream_TUSER,
    outStream_TLAST,
    outStream_TID,
    outStream_TDEST,
    s_axi_CTRL_BUS_AWVALID,
    s_axi_CTRL_BUS_AWREADY,
    s_axi_CTRL_BUS_AWADDR,
    s_axi_CTRL_BUS_WVALID,
    s_axi_CTRL_BUS_WREADY,
    s_axi_CTRL_BUS_WDATA,
    s_axi_CTRL_BUS_WSTRB,
    s_axi_CTRL_BUS_ARVALID,
    s_axi_CTRL_BUS_ARREADY,
    s_axi_CTRL_BUS_ARADDR,
    s_axi_CTRL_BUS_RVALID,
    s_axi_CTRL_BUS_RREADY,
    s_axi_CTRL_BUS_RDATA,
    s_axi_CTRL_BUS_RRESP,
    s_axi_CTRL_BUS_BVALID,
    s_axi_CTRL_BUS_BREADY,
    s_axi_CTRL_BUS_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input [63:0]inStream_TDATA;
  input inStream_TVALID;
  output inStream_TREADY;
  input [7:0]inStream_TKEEP;
  input [7:0]inStream_TSTRB;
  input [1:0]inStream_TUSER;
  input [0:0]inStream_TLAST;
  input [4:0]inStream_TID;
  input [5:0]inStream_TDEST;
  output [63:0]outStream_TDATA;
  output outStream_TVALID;
  input outStream_TREADY;
  output [7:0]outStream_TKEEP;
  output [7:0]outStream_TSTRB;
  output [1:0]outStream_TUSER;
  output [0:0]outStream_TLAST;
  output [4:0]outStream_TID;
  output [5:0]outStream_TDEST;
  input s_axi_CTRL_BUS_AWVALID;
  output s_axi_CTRL_BUS_AWREADY;
  input [3:0]s_axi_CTRL_BUS_AWADDR;
  input s_axi_CTRL_BUS_WVALID;
  output s_axi_CTRL_BUS_WREADY;
  input [31:0]s_axi_CTRL_BUS_WDATA;
  input [3:0]s_axi_CTRL_BUS_WSTRB;
  input s_axi_CTRL_BUS_ARVALID;
  output s_axi_CTRL_BUS_ARREADY;
  input [3:0]s_axi_CTRL_BUS_ARADDR;
  output s_axi_CTRL_BUS_RVALID;
  input s_axi_CTRL_BUS_RREADY;
  output [31:0]s_axi_CTRL_BUS_RDATA;
  output [1:0]s_axi_CTRL_BUS_RRESP;
  output s_axi_CTRL_BUS_BVALID;
  input s_axi_CTRL_BUS_BREADY;
  output [1:0]s_axi_CTRL_BUS_BRESP;
  output interrupt;

  wire \<const0> ;
  wire [8:1]add_ln19_1_fu_640_p2;
  wire [5:1]add_ln21_1_fu_1050_p2;
  wire and_ln52_10_fu_628_p2;
  wire and_ln52_10_reg_1342;
  wire \and_ln52_10_reg_1342[0]_i_1_n_0 ;
  wire \and_ln52_10_reg_1342[0]_i_3_n_0 ;
  wire \ap_CS_fsm[6]_i_2_n_0 ;
  wire \ap_CS_fsm[6]_i_3_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state11;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire [6:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm193_out;
  wire ap_NS_fsm194_out;
  wire ap_NS_fsm195_out;
  wire ap_block_pp0_stage0_subdone1_in;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1_n_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1_n_0;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter3_i_1_n_0;
  wire ap_enable_reg_pp0_iter4_i_1_n_0;
  wire ap_enable_reg_pp0_iter4_reg_n_0;
  wire [15:0]ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516;
  wire ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[0]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[10]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[11]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[12]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[13]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[14]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[15]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[1]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[2]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[3]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[4]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[5]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[6]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[7]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[8]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[9]_i_1_n_0 ;
  wire [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[0]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[10]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[11]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[12]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[13]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[14]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[15]_i_2_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[1]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[2]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[3]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[4]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[5]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[6]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[7]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[8]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[9]_i_1_n_0 ;
  wire [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[0]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[10]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[11]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[12]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[13]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[14]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[15]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[1]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[2]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[3]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[4]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[5]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[6]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[7]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[8]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[9]_i_1_n_0 ;
  wire [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[0]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[10]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[11]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[12]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[13]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[14]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[15]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[1]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[2]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[3]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[4]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[5]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[6]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[7]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[8]_i_1_n_0 ;
  wire \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[9]_i_1_n_0 ;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [3:0]col_assign_reg_442;
  wire \col_stride_0_reg_464[1]_i_2_n_0 ;
  wire \col_stride_0_reg_464[1]_i_5_n_0 ;
  wire \col_stride_0_reg_464_reg_n_0_[0] ;
  wire \col_stride_0_reg_464_reg_n_0_[1] ;
  wire curr_output_last_V_reg_1398;
  wire \curr_output_last_V_reg_1398[0]_i_1_n_0 ;
  wire \curr_output_last_V_reg_1398[0]_i_2_n_0 ;
  wire \curr_output_last_V_reg_1398[0]_i_3_n_0 ;
  wire \curr_output_last_V_reg_1398[0]_i_4_n_0 ;
  wire \curr_output_last_V_reg_1398[0]_i_5_n_0 ;
  wire \curr_output_last_V_reg_1398[0]_i_6_n_0 ;
  wire \curr_output_last_V_reg_1398[0]_i_7_n_0 ;
  wire \curr_output_last_V_reg_1398[0]_i_8_n_0 ;
  wire \curr_output_last_V_reg_1398[0]_i_9_n_0 ;
  wire curr_output_last_V_reg_1398_pp0_iter2_reg;
  wire [6:0]grp_fu_1207_p3;
  wire icmp_ln15_fu_598_p2;
  wire \icmp_ln15_reg_1308[0]_i_1_n_0 ;
  wire \icmp_ln15_reg_1308_pp0_iter1_reg[0]_i_1_n_0 ;
  wire \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ;
  wire \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ;
  wire icmp_ln15_reg_1308_pp0_iter3_reg;
  wire \icmp_ln15_reg_1308_reg_n_0_[0] ;
  wire icmp_ln17_fu_610_p2;
  wire icmp_ln17_reg_1317;
  wire \icmp_ln17_reg_1317[0]_i_2_n_0 ;
  wire \icmp_ln17_reg_1317[0]_i_3_n_0 ;
  wire icmp_ln19_fu_622_p2;
  wire icmp_ln19_reg_1337;
  wire [63:0]inStream_TDATA;
  wire [5:0]inStream_TDEST;
  wire [4:0]inStream_TID;
  wire [7:0]inStream_TKEEP;
  wire inStream_TREADY;
  wire [7:0]inStream_TSTRB;
  wire [1:0]inStream_TUSER;
  wire inStream_TVALID;
  wire inStream_V_data_0_ack_in;
  wire inStream_V_data_0_load_A;
  wire inStream_V_data_0_load_B;
  wire [63:0]inStream_V_data_0_payload_A;
  wire [63:0]inStream_V_data_0_payload_B;
  wire inStream_V_data_0_sel;
  wire inStream_V_data_0_sel_rd_i_1_n_0;
  wire inStream_V_data_0_sel_wr;
  wire inStream_V_data_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_V_data_0_state;
  wire \inStream_V_data_0_state[0]_i_1_n_0 ;
  wire \inStream_V_data_0_state_reg_n_0_[0] ;
  wire [5:0]inStream_V_dest_V_0_data_out;
  wire inStream_V_dest_V_0_load_A;
  wire inStream_V_dest_V_0_load_B;
  wire [5:0]inStream_V_dest_V_0_payload_A;
  wire [5:0]inStream_V_dest_V_0_payload_B;
  wire inStream_V_dest_V_0_sel;
  wire inStream_V_dest_V_0_sel_rd_i_1_n_0;
  wire inStream_V_dest_V_0_sel_wr;
  wire inStream_V_dest_V_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_V_dest_V_0_state;
  wire \inStream_V_dest_V_0_state[0]_i_1_n_0 ;
  wire \inStream_V_dest_V_0_state_reg_n_0_[0] ;
  wire inStream_V_id_V_0_ack_in;
  wire [4:0]inStream_V_id_V_0_data_out;
  wire inStream_V_id_V_0_load_A;
  wire inStream_V_id_V_0_load_B;
  wire [4:0]inStream_V_id_V_0_payload_A;
  wire [4:0]inStream_V_id_V_0_payload_B;
  wire inStream_V_id_V_0_sel;
  wire inStream_V_id_V_0_sel_rd_i_1_n_0;
  wire inStream_V_id_V_0_sel_wr;
  wire inStream_V_id_V_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_V_id_V_0_state;
  wire \inStream_V_id_V_0_state[0]_i_1_n_0 ;
  wire \inStream_V_id_V_0_state_reg_n_0_[0] ;
  wire inStream_V_keep_V_0_ack_in;
  wire [7:0]inStream_V_keep_V_0_data_out;
  wire inStream_V_keep_V_0_load_A;
  wire inStream_V_keep_V_0_load_B;
  wire [7:0]inStream_V_keep_V_0_payload_A;
  wire [7:0]inStream_V_keep_V_0_payload_B;
  wire inStream_V_keep_V_0_sel;
  wire inStream_V_keep_V_0_sel_rd_i_1_n_0;
  wire inStream_V_keep_V_0_sel_wr;
  wire inStream_V_keep_V_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_V_keep_V_0_state;
  wire \inStream_V_keep_V_0_state[0]_i_1_n_0 ;
  wire \inStream_V_keep_V_0_state_reg_n_0_[0] ;
  wire inStream_V_strb_V_0_ack_in;
  wire [7:0]inStream_V_strb_V_0_data_out;
  wire inStream_V_strb_V_0_load_A;
  wire inStream_V_strb_V_0_load_B;
  wire [7:0]inStream_V_strb_V_0_payload_A;
  wire [7:0]inStream_V_strb_V_0_payload_B;
  wire inStream_V_strb_V_0_sel;
  wire inStream_V_strb_V_0_sel_rd_i_1_n_0;
  wire inStream_V_strb_V_0_sel_wr;
  wire inStream_V_strb_V_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_V_strb_V_0_state;
  wire \inStream_V_strb_V_0_state[0]_i_1_n_0 ;
  wire \inStream_V_strb_V_0_state_reg_n_0_[0] ;
  wire inStream_V_user_V_0_ack_in;
  wire [1:0]inStream_V_user_V_0_data_out;
  wire [1:0]inStream_V_user_V_0_payload_A;
  wire \inStream_V_user_V_0_payload_A[0]_i_1_n_0 ;
  wire \inStream_V_user_V_0_payload_A[1]_i_1_n_0 ;
  wire [1:0]inStream_V_user_V_0_payload_B;
  wire \inStream_V_user_V_0_payload_B[0]_i_1_n_0 ;
  wire \inStream_V_user_V_0_payload_B[1]_i_1_n_0 ;
  wire inStream_V_user_V_0_sel;
  wire inStream_V_user_V_0_sel_rd_i_1_n_0;
  wire inStream_V_user_V_0_sel_wr;
  wire inStream_V_user_V_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_V_user_V_0_state;
  wire \inStream_V_user_V_0_state[0]_i_1_n_0 ;
  wire \inStream_V_user_V_0_state_reg_n_0_[0] ;
  wire \indvar_flatten136_reg_387[0]_i_2_n_0 ;
  wire [12:0]indvar_flatten136_reg_387_reg;
  wire \indvar_flatten136_reg_387_reg[0]_i_1_n_0 ;
  wire \indvar_flatten136_reg_387_reg[0]_i_1_n_1 ;
  wire \indvar_flatten136_reg_387_reg[0]_i_1_n_2 ;
  wire \indvar_flatten136_reg_387_reg[0]_i_1_n_3 ;
  wire \indvar_flatten136_reg_387_reg[0]_i_1_n_4 ;
  wire \indvar_flatten136_reg_387_reg[0]_i_1_n_5 ;
  wire \indvar_flatten136_reg_387_reg[0]_i_1_n_6 ;
  wire \indvar_flatten136_reg_387_reg[0]_i_1_n_7 ;
  wire \indvar_flatten136_reg_387_reg[12]_i_1_n_7 ;
  wire \indvar_flatten136_reg_387_reg[4]_i_1_n_0 ;
  wire \indvar_flatten136_reg_387_reg[4]_i_1_n_1 ;
  wire \indvar_flatten136_reg_387_reg[4]_i_1_n_2 ;
  wire \indvar_flatten136_reg_387_reg[4]_i_1_n_3 ;
  wire \indvar_flatten136_reg_387_reg[4]_i_1_n_4 ;
  wire \indvar_flatten136_reg_387_reg[4]_i_1_n_5 ;
  wire \indvar_flatten136_reg_387_reg[4]_i_1_n_6 ;
  wire \indvar_flatten136_reg_387_reg[4]_i_1_n_7 ;
  wire \indvar_flatten136_reg_387_reg[8]_i_1_n_0 ;
  wire \indvar_flatten136_reg_387_reg[8]_i_1_n_1 ;
  wire \indvar_flatten136_reg_387_reg[8]_i_1_n_2 ;
  wire \indvar_flatten136_reg_387_reg[8]_i_1_n_3 ;
  wire \indvar_flatten136_reg_387_reg[8]_i_1_n_4 ;
  wire \indvar_flatten136_reg_387_reg[8]_i_1_n_5 ;
  wire \indvar_flatten136_reg_387_reg[8]_i_1_n_6 ;
  wire \indvar_flatten136_reg_387_reg[8]_i_1_n_7 ;
  wire [4:4]indvar_flatten27_reg_409;
  wire \indvar_flatten27_reg_409[0]_i_1_n_0 ;
  wire \indvar_flatten27_reg_409[8]_i_2_n_0 ;
  wire \indvar_flatten27_reg_409[8]_i_4_n_0 ;
  wire \indvar_flatten27_reg_409[8]_i_7_n_0 ;
  wire \indvar_flatten27_reg_409[8]_i_8_n_0 ;
  wire \indvar_flatten27_reg_409[8]_i_9_n_0 ;
  wire \indvar_flatten27_reg_409_reg_n_0_[0] ;
  wire \indvar_flatten27_reg_409_reg_n_0_[1] ;
  wire \indvar_flatten27_reg_409_reg_n_0_[2] ;
  wire \indvar_flatten27_reg_409_reg_n_0_[3] ;
  wire \indvar_flatten27_reg_409_reg_n_0_[4] ;
  wire \indvar_flatten27_reg_409_reg_n_0_[5] ;
  wire \indvar_flatten27_reg_409_reg_n_0_[6] ;
  wire \indvar_flatten27_reg_409_reg_n_0_[7] ;
  wire \indvar_flatten27_reg_409_reg_n_0_[8] ;
  wire \indvar_flatten72_reg_398[8]_i_2_n_0 ;
  wire \indvar_flatten72_reg_398[9]_i_2_n_0 ;
  wire [9:0]indvar_flatten72_reg_398_reg;
  wire [4:4]indvar_flatten_reg_453;
  wire \indvar_flatten_reg_453[0]_i_1_n_0 ;
  wire \indvar_flatten_reg_453_reg_n_0_[0] ;
  wire \indvar_flatten_reg_453_reg_n_0_[1] ;
  wire \indvar_flatten_reg_453_reg_n_0_[2] ;
  wire \indvar_flatten_reg_453_reg_n_0_[3] ;
  wire \indvar_flatten_reg_453_reg_n_0_[4] ;
  wire \indvar_flatten_reg_453_reg_n_0_[5] ;
  wire [3:0]input_ch_idx_0_reg_475;
  wire [3:0]input_ch_idx_fu_1044_p2;
  wire interrupt;
  wire line_buff_group_0_va_ce0;
  wire line_buff_group_0_va_we0;
  wire line_buff_group_3_va_U_n_19;
  wire [6:0]line_buff_group_3_va_address0;
  wire or_ln17_reg_1351;
  wire [63:0]outStream_TDATA;
  wire [5:0]outStream_TDEST;
  wire [4:0]outStream_TID;
  wire [7:0]outStream_TKEEP;
  wire [0:0]outStream_TLAST;
  wire outStream_TREADY;
  wire [7:0]outStream_TSTRB;
  wire [1:0]outStream_TUSER;
  wire outStream_TVALID;
  wire outStream_V_data_1_ack_in;
  wire outStream_V_data_1_load_A;
  wire outStream_V_data_1_load_B;
  wire [63:0]outStream_V_data_1_payload_A;
  wire [63:0]outStream_V_data_1_payload_B;
  wire outStream_V_data_1_sel;
  wire outStream_V_data_1_sel_rd_i_1_n_0;
  wire outStream_V_data_1_sel_wr;
  wire outStream_V_data_1_sel_wr_i_1_n_0;
  wire [1:1]outStream_V_data_1_state;
  wire \outStream_V_data_1_state[0]_i_1_n_0 ;
  wire \outStream_V_data_1_state_reg_n_0_[0] ;
  wire outStream_V_dest_V_1_ack_in;
  wire outStream_V_dest_V_1_load_A;
  wire outStream_V_dest_V_1_load_B;
  wire [5:0]outStream_V_dest_V_1_payload_A;
  wire [5:0]outStream_V_dest_V_1_payload_B;
  wire outStream_V_dest_V_1_sel;
  wire outStream_V_dest_V_1_sel_rd_i_1_n_0;
  wire outStream_V_dest_V_1_sel_wr;
  wire outStream_V_dest_V_1_sel_wr_i_1_n_0;
  wire \outStream_V_dest_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_dest_V_1_state[1]_i_1_n_0 ;
  wire outStream_V_id_V_1_ack_in;
  wire outStream_V_id_V_1_load_A;
  wire outStream_V_id_V_1_load_B;
  wire [4:0]outStream_V_id_V_1_payload_A;
  wire [4:0]outStream_V_id_V_1_payload_B;
  wire outStream_V_id_V_1_sel;
  wire outStream_V_id_V_1_sel_rd_i_1_n_0;
  wire outStream_V_id_V_1_sel_wr;
  wire outStream_V_id_V_1_sel_wr_i_1_n_0;
  wire \outStream_V_id_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_id_V_1_state[1]_i_1_n_0 ;
  wire \outStream_V_id_V_1_state_reg_n_0_[0] ;
  wire outStream_V_keep_V_1_ack_in;
  wire outStream_V_keep_V_1_load_A;
  wire outStream_V_keep_V_1_load_B;
  wire [7:0]outStream_V_keep_V_1_payload_A;
  wire [7:0]outStream_V_keep_V_1_payload_B;
  wire outStream_V_keep_V_1_sel;
  wire outStream_V_keep_V_1_sel_rd_i_1_n_0;
  wire outStream_V_keep_V_1_sel_wr;
  wire outStream_V_keep_V_1_sel_wr_i_1_n_0;
  wire \outStream_V_keep_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_keep_V_1_state[1]_i_1_n_0 ;
  wire \outStream_V_keep_V_1_state_reg_n_0_[0] ;
  wire outStream_V_last_V_1_ack_in;
  wire outStream_V_last_V_1_payload_A;
  wire \outStream_V_last_V_1_payload_A[0]_i_1_n_0 ;
  wire outStream_V_last_V_1_payload_B;
  wire \outStream_V_last_V_1_payload_B[0]_i_1_n_0 ;
  wire outStream_V_last_V_1_sel;
  wire outStream_V_last_V_1_sel_rd_i_1_n_0;
  wire outStream_V_last_V_1_sel_wr;
  wire outStream_V_last_V_1_sel_wr_i_1_n_0;
  wire \outStream_V_last_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_last_V_1_state[1]_i_1_n_0 ;
  wire \outStream_V_last_V_1_state_reg_n_0_[0] ;
  wire outStream_V_strb_V_1_ack_in;
  wire outStream_V_strb_V_1_load_A;
  wire outStream_V_strb_V_1_load_B;
  wire [7:0]outStream_V_strb_V_1_payload_A;
  wire [7:0]outStream_V_strb_V_1_payload_B;
  wire outStream_V_strb_V_1_sel;
  wire outStream_V_strb_V_1_sel_rd_i_1_n_0;
  wire outStream_V_strb_V_1_sel_wr;
  wire outStream_V_strb_V_1_sel_wr_i_1_n_0;
  wire \outStream_V_strb_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_strb_V_1_state[1]_i_1_n_0 ;
  wire \outStream_V_strb_V_1_state_reg_n_0_[0] ;
  wire outStream_V_user_V_1_ack_in;
  wire [1:0]outStream_V_user_V_1_payload_A;
  wire \outStream_V_user_V_1_payload_A[0]_i_1_n_0 ;
  wire \outStream_V_user_V_1_payload_A[1]_i_1_n_0 ;
  wire [1:0]outStream_V_user_V_1_payload_B;
  wire \outStream_V_user_V_1_payload_B[0]_i_1_n_0 ;
  wire \outStream_V_user_V_1_payload_B[1]_i_1_n_0 ;
  wire outStream_V_user_V_1_sel;
  wire outStream_V_user_V_1_sel_rd_i_1_n_0;
  wire outStream_V_user_V_1_sel_wr;
  wire outStream_V_user_V_1_sel_wr_i_1_n_0;
  wire \outStream_V_user_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_user_V_1_state[1]_i_1_n_0 ;
  wire \outStream_V_user_V_1_state_reg_n_0_[0] ;
  wire p_0_in2_out;
  wire p_3_in;
  wire p_5_in;
  wire [2:0]phi_ln10_reg_321;
  wire phi_ln10_reg_3210;
  wire \phi_ln10_reg_321[0]_i_1_n_0 ;
  wire \phi_ln10_reg_321[1]_i_1_n_0 ;
  wire \phi_ln10_reg_321[2]_i_1_n_0 ;
  wire [2:0]phi_ln11_reg_343;
  wire phi_ln11_reg_3430;
  wire \phi_ln11_reg_343[0]_i_1_n_0 ;
  wire \phi_ln11_reg_343[1]_i_1_n_0 ;
  wire \phi_ln11_reg_343[2]_i_1_n_0 ;
  wire [2:0]phi_ln12_reg_365;
  wire phi_ln12_reg_3650;
  wire \phi_ln12_reg_365[0]_i_1_n_0 ;
  wire \phi_ln12_reg_365[1]_i_1_n_0 ;
  wire \phi_ln12_reg_365[2]_i_1_n_0 ;
  wire \phi_ln9_reg_299_reg_n_0_[0] ;
  wire \phi_ln9_reg_299_reg_n_0_[1] ;
  wire \phi_ln9_reg_299_reg_n_0_[2] ;
  wire row_idx_0_reg_420;
  wire \row_idx_0_reg_420[0]_i_1_n_0 ;
  wire [3:0]row_idx_0_reg_420_reg;
  wire [3:1]row_idx_fu_706_p2;
  wire \row_stride_0_reg_431_reg_n_0_[0] ;
  wire \row_stride_0_reg_431_reg_n_0_[1] ;
  wire [3:0]s_axi_CTRL_BUS_ARADDR;
  wire s_axi_CTRL_BUS_ARREADY;
  wire s_axi_CTRL_BUS_ARVALID;
  wire [3:0]s_axi_CTRL_BUS_AWADDR;
  wire s_axi_CTRL_BUS_AWREADY;
  wire s_axi_CTRL_BUS_AWVALID;
  wire s_axi_CTRL_BUS_BREADY;
  wire s_axi_CTRL_BUS_BVALID;
  wire [7:0]\^s_axi_CTRL_BUS_RDATA ;
  wire s_axi_CTRL_BUS_RREADY;
  wire s_axi_CTRL_BUS_RVALID;
  wire [31:0]s_axi_CTRL_BUS_WDATA;
  wire s_axi_CTRL_BUS_WREADY;
  wire [3:0]s_axi_CTRL_BUS_WSTRB;
  wire s_axi_CTRL_BUS_WVALID;
  wire [1:0]select_ln17_4_fu_876_p3;
  wire [9:0]select_ln17_5_fu_660_p3;
  wire \select_ln21_1_reg_1389[0]_i_1_n_0 ;
  wire \select_ln21_1_reg_1389[0]_i_2_n_0 ;
  wire \select_ln21_1_reg_1389[0]_i_3_n_0 ;
  wire \select_ln21_1_reg_1389[0]_i_4_n_0 ;
  wire \select_ln21_1_reg_1389[0]_i_5_n_0 ;
  wire \select_ln21_1_reg_1389[0]_i_6_n_0 ;
  wire select_ln21_1_reg_1389_pp0_iter2_reg;
  wire \select_ln21_1_reg_1389_reg_n_0_[0] ;
  wire [1:0]select_ln21_3_fu_1012_p3;
  wire [3:0]select_ln21_fu_972_p3;
  wire [3:0]select_ln52_4_fu_921_p3;
  wire [3:0]select_ln52_4_reg_1377;
  wire [63:0]tmp_data_1_fu_1194_p5;
  wire [5:0]tmp_dest_V_fu_160;
  wire [4:0]tmp_id_V_fu_176;
  wire [7:0]tmp_keep_V_fu_164;
  wire [7:0]tmp_strb_V_fu_168;
  wire [1:0]tmp_user_V_fu_172;
  wire xor_ln52_fu_616_p2;
  wire xor_ln52_reg_1326;
  wire yolo_upsamp_top_CTRL_BUS_s_axi_U_n_2;
  wire yolo_upsamp_top_CTRL_BUS_s_axi_U_n_3;
  wire yolo_upsamp_top_CTRL_BUS_s_axi_U_n_4;
  wire yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_10;
  wire yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_11;
  wire yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_12;
  wire yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13;
  wire yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_9;
  wire yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7;
  wire [3:0]\NLW_indvar_flatten136_reg_387_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_indvar_flatten136_reg_387_reg[12]_i_1_O_UNCONNECTED ;

  assign s_axi_CTRL_BUS_BRESP[1] = \<const0> ;
  assign s_axi_CTRL_BUS_BRESP[0] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[31] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[30] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[29] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[28] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[27] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[26] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[25] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[24] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[23] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[22] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[21] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[20] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[19] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[18] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[17] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[16] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[15] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[14] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[13] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[12] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[11] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[10] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[9] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[8] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[7] = \^s_axi_CTRL_BUS_RDATA [7];
  assign s_axi_CTRL_BUS_RDATA[6] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[5] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[4] = \<const0> ;
  assign s_axi_CTRL_BUS_RDATA[3:0] = \^s_axi_CTRL_BUS_RDATA [3:0];
  assign s_axi_CTRL_BUS_RRESP[1] = \<const0> ;
  assign s_axi_CTRL_BUS_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    \and_ln52_10_reg_1342[0]_i_1 
       (.I0(p_3_in),
        .I1(icmp_ln15_fu_598_p2),
        .O(\and_ln52_10_reg_1342[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \and_ln52_10_reg_1342[0]_i_2 
       (.I0(\and_ln52_10_reg_1342[0]_i_3_n_0 ),
        .I1(\indvar_flatten27_reg_409_reg_n_0_[0] ),
        .I2(\indvar_flatten27_reg_409_reg_n_0_[1] ),
        .I3(\indvar_flatten27_reg_409_reg_n_0_[2] ),
        .I4(icmp_ln17_fu_610_p2),
        .O(and_ln52_10_fu_628_p2));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \and_ln52_10_reg_1342[0]_i_3 
       (.I0(\indvar_flatten27_reg_409_reg_n_0_[4] ),
        .I1(\indvar_flatten27_reg_409_reg_n_0_[3] ),
        .I2(\indvar_flatten27_reg_409_reg_n_0_[6] ),
        .I3(\indvar_flatten27_reg_409_reg_n_0_[5] ),
        .I4(\indvar_flatten27_reg_409_reg_n_0_[8] ),
        .I5(\indvar_flatten27_reg_409_reg_n_0_[7] ),
        .O(\and_ln52_10_reg_1342[0]_i_3_n_0 ));
  FDRE \and_ln52_10_reg_1342_reg[0] 
       (.C(ap_clk),
        .CE(\and_ln52_10_reg_1342[0]_i_1_n_0 ),
        .D(and_ln52_10_fu_628_p2),
        .Q(and_ln52_10_reg_1342),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\phi_ln9_reg_299_reg_n_0_[2] ),
        .I1(\phi_ln9_reg_299_reg_n_0_[1] ),
        .I2(\phi_ln9_reg_299_reg_n_0_[0] ),
        .I3(ap_CS_fsm_state2),
        .I4(phi_ln10_reg_3210),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(phi_ln10_reg_321[0]),
        .I2(phi_ln10_reg_321[1]),
        .I3(phi_ln10_reg_321[2]),
        .O(phi_ln10_reg_3210));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(phi_ln10_reg_321[2]),
        .I1(phi_ln10_reg_321[1]),
        .I2(phi_ln10_reg_321[0]),
        .I3(ap_CS_fsm_state3),
        .I4(phi_ln11_reg_3430),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(ap_CS_fsm_state4),
        .I1(phi_ln11_reg_343[0]),
        .I2(phi_ln11_reg_343[1]),
        .I3(phi_ln11_reg_343[2]),
        .O(phi_ln11_reg_3430));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(phi_ln11_reg_343[2]),
        .I1(phi_ln11_reg_343[1]),
        .I2(phi_ln11_reg_343[0]),
        .I3(ap_CS_fsm_state4),
        .I4(phi_ln12_reg_3650),
        .O(ap_NS_fsm[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \ap_CS_fsm[4]_i_2 
       (.I0(ap_CS_fsm_state5),
        .I1(phi_ln12_reg_365[0]),
        .I2(phi_ln12_reg_365[1]),
        .I3(phi_ln12_reg_365[2]),
        .O(phi_ln12_reg_3650));
  LUT6 #(
    .INIT(64'hF444444444444444)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(\ap_CS_fsm[6]_i_2_n_0 ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(phi_ln12_reg_365[2]),
        .I3(phi_ln12_reg_365[1]),
        .I4(phi_ln12_reg_365[0]),
        .I5(ap_CS_fsm_state5),
        .O(ap_NS_fsm[5]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(\ap_CS_fsm[6]_i_2_n_0 ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_done),
        .I3(ap_CS_fsm_state11),
        .O(ap_NS_fsm[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h8080F080)) 
    \ap_CS_fsm[6]_i_2 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(\ap_CS_fsm[6]_i_3_n_0 ),
        .I2(ap_block_pp0_stage0_subdone1_in),
        .I3(ap_enable_reg_pp0_iter4_reg_n_0),
        .I4(ap_enable_reg_pp0_iter3),
        .O(\ap_CS_fsm[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \ap_CS_fsm[6]_i_3 
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_enable_reg_pp0_iter1),
        .O(\ap_CS_fsm[6]_i_3_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state11),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h00A8A8A8)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_rst_n),
        .I1(ap_NS_fsm1),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(icmp_ln15_fu_598_p2),
        .I4(p_3_in),
        .O(ap_enable_reg_pp0_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_block_pp0_stage0_subdone1_in),
        .I2(ap_enable_reg_pp0_iter1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_block_pp0_stage0_subdone1_in),
        .I3(ap_enable_reg_pp0_iter2),
        .O(ap_enable_reg_pp0_iter2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_enable_reg_pp0_iter3_i_1
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_block_pp0_stage0_subdone1_in),
        .I2(ap_enable_reg_pp0_iter3),
        .O(ap_enable_reg_pp0_iter3_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h888800A0)) 
    ap_enable_reg_pp0_iter4_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(ap_enable_reg_pp0_iter4_reg_n_0),
        .I3(ap_NS_fsm1),
        .I4(ap_block_pp0_stage0_subdone1_in),
        .O(ap_enable_reg_pp0_iter4_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter4_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter4_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[0]_i_1 
       (.I0(inStream_V_data_0_payload_A[48]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[48]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[10]_i_1 
       (.I0(inStream_V_data_0_payload_A[58]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[58]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[11]_i_1 
       (.I0(inStream_V_data_0_payload_A[59]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[59]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[12]_i_1 
       (.I0(inStream_V_data_0_payload_A[60]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[60]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[13]_i_1 
       (.I0(inStream_V_data_0_payload_A[61]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[61]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[14]_i_1 
       (.I0(inStream_V_data_0_payload_A[62]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[62]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[15]_i_1 
       (.I0(inStream_V_data_0_payload_A[63]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[63]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[1]_i_1 
       (.I0(inStream_V_data_0_payload_A[49]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[49]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[2]_i_1 
       (.I0(inStream_V_data_0_payload_A[50]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[50]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[3]_i_1 
       (.I0(inStream_V_data_0_payload_A[51]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[51]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[4]_i_1 
       (.I0(inStream_V_data_0_payload_A[52]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[52]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[5]_i_1 
       (.I0(inStream_V_data_0_payload_A[53]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[53]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[6]_i_1 
       (.I0(inStream_V_data_0_payload_A[54]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[54]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[7]_i_1 
       (.I0(inStream_V_data_0_payload_A[55]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[55]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[8]_i_1 
       (.I0(inStream_V_data_0_payload_A[56]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[56]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[9]_i_1 
       (.I0(inStream_V_data_0_payload_A[57]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[57]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[9]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[0] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[0]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[0]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[10] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[10]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[10]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[11] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[11]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[11]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[12] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[12]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[12]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[13] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[13]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[13]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[14] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[14]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[14]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[15] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[15]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[15]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[1] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[1]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[1]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[2] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[2]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[2]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[3] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[3]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[3]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[4] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[4]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[4]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[5] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[5]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[5]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[6] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[6]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[6]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[7] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[7]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[7]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[8] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[8]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[8]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[9] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[9]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[0]_i_1 
       (.I0(inStream_V_data_0_payload_A[0]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[0]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[10]_i_1 
       (.I0(inStream_V_data_0_payload_A[10]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[10]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[11]_i_1 
       (.I0(inStream_V_data_0_payload_A[11]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[11]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[12]_i_1 
       (.I0(inStream_V_data_0_payload_A[12]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[12]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[13]_i_1 
       (.I0(inStream_V_data_0_payload_A[13]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[13]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[14]_i_1 
       (.I0(inStream_V_data_0_payload_A[14]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[14]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[15]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter2),
        .O(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[15]_i_2 
       (.I0(inStream_V_data_0_payload_A[15]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[15]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[1]_i_1 
       (.I0(inStream_V_data_0_payload_A[1]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[1]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[2]_i_1 
       (.I0(inStream_V_data_0_payload_A[2]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[2]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[3]_i_1 
       (.I0(inStream_V_data_0_payload_A[3]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[3]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[4]_i_1 
       (.I0(inStream_V_data_0_payload_A[4]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[4]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[5]_i_1 
       (.I0(inStream_V_data_0_payload_A[5]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[5]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[6]_i_1 
       (.I0(inStream_V_data_0_payload_A[6]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[6]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[7]_i_1 
       (.I0(inStream_V_data_0_payload_A[7]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[7]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[8]_i_1 
       (.I0(inStream_V_data_0_payload_A[8]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[8]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[9]_i_1 
       (.I0(inStream_V_data_0_payload_A[9]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[9]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[9]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[0] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[0]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[0]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[10] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[10]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[10]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[11] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[11]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[11]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[12] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[12]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[12]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[13] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[13]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[13]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[14] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[14]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[14]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[15] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[15]_i_2_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[15]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[1] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[1]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[1]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[2] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[2]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[2]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[3] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[3]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[3]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[4] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[4]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[4]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[5] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[5]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[5]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[6] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[6]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[6]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[7] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[7]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[7]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[8] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[8]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[8]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[9] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[9]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[0]_i_1 
       (.I0(inStream_V_data_0_payload_A[16]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[16]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[10]_i_1 
       (.I0(inStream_V_data_0_payload_A[26]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[26]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[11]_i_1 
       (.I0(inStream_V_data_0_payload_A[27]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[27]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[12]_i_1 
       (.I0(inStream_V_data_0_payload_A[28]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[28]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[13]_i_1 
       (.I0(inStream_V_data_0_payload_A[29]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[29]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[14]_i_1 
       (.I0(inStream_V_data_0_payload_A[30]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[30]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[15]_i_1 
       (.I0(inStream_V_data_0_payload_A[31]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[31]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[1]_i_1 
       (.I0(inStream_V_data_0_payload_A[17]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[17]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[2]_i_1 
       (.I0(inStream_V_data_0_payload_A[18]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[18]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[3]_i_1 
       (.I0(inStream_V_data_0_payload_A[19]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[19]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[4]_i_1 
       (.I0(inStream_V_data_0_payload_A[20]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[20]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[5]_i_1 
       (.I0(inStream_V_data_0_payload_A[21]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[21]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[6]_i_1 
       (.I0(inStream_V_data_0_payload_A[22]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[22]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[7]_i_1 
       (.I0(inStream_V_data_0_payload_A[23]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[23]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[8]_i_1 
       (.I0(inStream_V_data_0_payload_A[24]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[24]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[9]_i_1 
       (.I0(inStream_V_data_0_payload_A[25]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[25]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[9]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[0] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[0]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[0]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[10] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[10]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[10]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[11] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[11]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[11]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[12] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[12]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[12]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[13] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[13]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[13]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[14] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[14]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[14]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[15] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[15]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[15]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[1] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[1]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[1]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[2] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[2]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[2]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[3] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[3]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[3]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[4] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[4]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[4]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[5] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[5]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[5]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[6] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[6]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[6]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[7] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[7]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[7]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[8] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[8]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[8]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[9] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[9]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[0]_i_1 
       (.I0(inStream_V_data_0_payload_A[32]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[32]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[10]_i_1 
       (.I0(inStream_V_data_0_payload_A[42]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[42]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[11]_i_1 
       (.I0(inStream_V_data_0_payload_A[43]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[43]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[12]_i_1 
       (.I0(inStream_V_data_0_payload_A[44]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[44]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[13]_i_1 
       (.I0(inStream_V_data_0_payload_A[45]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[45]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[14]_i_1 
       (.I0(inStream_V_data_0_payload_A[46]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[46]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[15]_i_1 
       (.I0(inStream_V_data_0_payload_A[47]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[47]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[1]_i_1 
       (.I0(inStream_V_data_0_payload_A[33]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[33]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[2]_i_1 
       (.I0(inStream_V_data_0_payload_A[34]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[34]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[3]_i_1 
       (.I0(inStream_V_data_0_payload_A[35]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[35]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[4]_i_1 
       (.I0(inStream_V_data_0_payload_A[36]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[36]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[5]_i_1 
       (.I0(inStream_V_data_0_payload_A[37]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[37]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[6]_i_1 
       (.I0(inStream_V_data_0_payload_A[38]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[38]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[7]_i_1 
       (.I0(inStream_V_data_0_payload_A[39]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[39]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[8]_i_1 
       (.I0(inStream_V_data_0_payload_A[40]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[40]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[9]_i_1 
       (.I0(inStream_V_data_0_payload_A[41]),
        .I1(inStream_V_data_0_sel),
        .I2(inStream_V_data_0_payload_B[41]),
        .I3(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[9]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[0] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[0]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[0]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[10] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[10]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[10]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[11] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[11]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[11]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[12] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[12]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[12]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[13] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[13]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[13]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[14] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[14]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[14]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[15] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[15]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[15]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[1] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[1]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[1]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[2] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[2]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[2]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[3] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[3]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[3]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[4] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[4]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[4]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[5] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[5]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[5]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[6] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[6]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[6]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[7] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[7]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[7]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[8] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[8]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[8]),
        .R(1'b0));
  FDRE \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[9] 
       (.C(ap_clk),
        .CE(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160),
        .D(\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[9]_i_1_n_0 ),
        .Q(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[9]),
        .R(1'b0));
  FDRE \col_assign_reg_442_reg[0] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_ce0),
        .D(select_ln52_4_reg_1377[0]),
        .Q(col_assign_reg_442[0]),
        .R(ap_NS_fsm1));
  FDRE \col_assign_reg_442_reg[1] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_ce0),
        .D(select_ln52_4_reg_1377[1]),
        .Q(col_assign_reg_442[1]),
        .R(ap_NS_fsm1));
  FDRE \col_assign_reg_442_reg[2] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_ce0),
        .D(select_ln52_4_reg_1377[2]),
        .Q(col_assign_reg_442[2]),
        .R(ap_NS_fsm1));
  FDRE \col_assign_reg_442_reg[3] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_ce0),
        .D(select_ln52_4_reg_1377[3]),
        .Q(col_assign_reg_442[3]),
        .R(ap_NS_fsm1));
  LUT6 #(
    .INIT(64'h10101010000010EF)) 
    \col_stride_0_reg_464[0]_i_1 
       (.I0(icmp_ln17_reg_1317),
        .I1(and_ln52_10_reg_1342),
        .I2(\col_stride_0_reg_464_reg_n_0_[0] ),
        .I3(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13),
        .I4(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_12),
        .I5(\col_stride_0_reg_464[1]_i_2_n_0 ),
        .O(select_ln21_3_fu_1012_p3[0]));
  LUT6 #(
    .INIT(64'h000000008A898A8A)) 
    \col_stride_0_reg_464[1]_i_1 
       (.I0(\col_stride_0_reg_464_reg_n_0_[1] ),
        .I1(\col_stride_0_reg_464[1]_i_2_n_0 ),
        .I2(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_12),
        .I3(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13),
        .I4(\col_stride_0_reg_464_reg_n_0_[0] ),
        .I5(\col_stride_0_reg_464[1]_i_5_n_0 ),
        .O(select_ln21_3_fu_1012_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \col_stride_0_reg_464[1]_i_2 
       (.I0(icmp_ln17_reg_1317),
        .I1(icmp_ln19_reg_1337),
        .I2(xor_ln52_reg_1326),
        .O(\col_stride_0_reg_464[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \col_stride_0_reg_464[1]_i_5 
       (.I0(icmp_ln17_reg_1317),
        .I1(and_ln52_10_reg_1342),
        .O(\col_stride_0_reg_464[1]_i_5_n_0 ));
  FDRE \col_stride_0_reg_464_reg[0] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(select_ln21_3_fu_1012_p3[0]),
        .Q(\col_stride_0_reg_464_reg_n_0_[0] ),
        .R(ap_NS_fsm1));
  FDRE \col_stride_0_reg_464_reg[1] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(select_ln21_3_fu_1012_p3[1]),
        .Q(\col_stride_0_reg_464_reg_n_0_[1] ),
        .R(ap_NS_fsm1));
  LUT6 #(
    .INIT(64'hFFFF02FF00000200)) 
    \curr_output_last_V_reg_1398[0]_i_1 
       (.I0(\curr_output_last_V_reg_1398[0]_i_2_n_0 ),
        .I1(\curr_output_last_V_reg_1398[0]_i_3_n_0 ),
        .I2(\curr_output_last_V_reg_1398[0]_i_4_n_0 ),
        .I3(p_3_in),
        .I4(\icmp_ln15_reg_1308_reg_n_0_[0] ),
        .I5(curr_output_last_V_reg_1398),
        .O(\curr_output_last_V_reg_1398[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \curr_output_last_V_reg_1398[0]_i_2 
       (.I0(input_ch_idx_0_reg_475[3]),
        .I1(input_ch_idx_0_reg_475[2]),
        .I2(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_11),
        .I3(input_ch_idx_0_reg_475[0]),
        .I4(input_ch_idx_0_reg_475[1]),
        .O(\curr_output_last_V_reg_1398[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFAEAA)) 
    \curr_output_last_V_reg_1398[0]_i_3 
       (.I0(\curr_output_last_V_reg_1398[0]_i_5_n_0 ),
        .I1(select_ln52_4_reg_1377[0]),
        .I2(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(col_assign_reg_442[0]),
        .I5(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_12),
        .O(\curr_output_last_V_reg_1398[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFEFFFEF)) 
    \curr_output_last_V_reg_1398[0]_i_4 
       (.I0(\curr_output_last_V_reg_1398[0]_i_6_n_0 ),
        .I1(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_9),
        .I2(row_idx_0_reg_420_reg[3]),
        .I3(\curr_output_last_V_reg_1398[0]_i_7_n_0 ),
        .I4(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13),
        .I5(\col_stride_0_reg_464_reg_n_0_[1] ),
        .O(\curr_output_last_V_reg_1398[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02FF0302)) 
    \curr_output_last_V_reg_1398[0]_i_5 
       (.I0(\col_stride_0_reg_464_reg_n_0_[1] ),
        .I1(icmp_ln17_reg_1317),
        .I2(and_ln52_10_reg_1342),
        .I3(\col_stride_0_reg_464_reg_n_0_[0] ),
        .I4(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13),
        .I5(\col_stride_0_reg_464[1]_i_2_n_0 ),
        .O(\curr_output_last_V_reg_1398[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F335F5F5FFF5F)) 
    \curr_output_last_V_reg_1398[0]_i_6 
       (.I0(col_assign_reg_442[2]),
        .I1(select_ln52_4_reg_1377[2]),
        .I2(col_assign_reg_442[3]),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .I5(select_ln52_4_reg_1377[3]),
        .O(\curr_output_last_V_reg_1398[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEECECEEE0ECEC)) 
    \curr_output_last_V_reg_1398[0]_i_7 
       (.I0(\select_ln21_1_reg_1389[0]_i_3_n_0 ),
        .I1(\curr_output_last_V_reg_1398[0]_i_8_n_0 ),
        .I2(\select_ln21_1_reg_1389[0]_i_2_n_0 ),
        .I3(row_idx_0_reg_420_reg[2]),
        .I4(icmp_ln17_reg_1317),
        .I5(\curr_output_last_V_reg_1398[0]_i_9_n_0 ),
        .O(\curr_output_last_V_reg_1398[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \curr_output_last_V_reg_1398[0]_i_8 
       (.I0(row_idx_0_reg_420_reg[2]),
        .I1(\row_stride_0_reg_431_reg_n_0_[1] ),
        .I2(row_idx_0_reg_420_reg[1]),
        .I3(row_idx_0_reg_420_reg[0]),
        .O(\curr_output_last_V_reg_1398[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \curr_output_last_V_reg_1398[0]_i_9 
       (.I0(row_idx_0_reg_420_reg[0]),
        .I1(row_idx_0_reg_420_reg[1]),
        .O(\curr_output_last_V_reg_1398[0]_i_9_n_0 ));
  FDRE \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone1_in),
        .D(curr_output_last_V_reg_1398),
        .Q(curr_output_last_V_reg_1398_pp0_iter2_reg),
        .R(1'b0));
  FDRE \curr_output_last_V_reg_1398_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\curr_output_last_V_reg_1398[0]_i_1_n_0 ),
        .Q(curr_output_last_V_reg_1398),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \icmp_ln15_reg_1308[0]_i_1 
       (.I0(icmp_ln15_fu_598_p2),
        .I1(p_3_in),
        .I2(\icmp_ln15_reg_1308_reg_n_0_[0] ),
        .O(\icmp_ln15_reg_1308[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \icmp_ln15_reg_1308_pp0_iter1_reg[0]_i_1 
       (.I0(\icmp_ln15_reg_1308_reg_n_0_[0] ),
        .I1(p_3_in),
        .I2(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .O(\icmp_ln15_reg_1308_pp0_iter1_reg[0]_i_1_n_0 ));
  FDRE \icmp_ln15_reg_1308_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln15_reg_1308_pp0_iter1_reg[0]_i_1_n_0 ),
        .Q(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \icmp_ln15_reg_1308_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone1_in),
        .D(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .Q(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \icmp_ln15_reg_1308_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone1_in),
        .D(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .Q(icmp_ln15_reg_1308_pp0_iter3_reg),
        .R(1'b0));
  FDRE \icmp_ln15_reg_1308_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln15_reg_1308[0]_i_1_n_0 ),
        .Q(\icmp_ln15_reg_1308_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \icmp_ln17_reg_1317[0]_i_1 
       (.I0(indvar_flatten72_reg_398_reg[8]),
        .I1(indvar_flatten72_reg_398_reg[9]),
        .I2(\icmp_ln17_reg_1317[0]_i_2_n_0 ),
        .I3(\icmp_ln17_reg_1317[0]_i_3_n_0 ),
        .O(icmp_ln17_fu_610_p2));
  LUT4 #(
    .INIT(16'h0400)) 
    \icmp_ln17_reg_1317[0]_i_2 
       (.I0(indvar_flatten72_reg_398_reg[6]),
        .I1(indvar_flatten72_reg_398_reg[7]),
        .I2(indvar_flatten72_reg_398_reg[4]),
        .I3(indvar_flatten72_reg_398_reg[5]),
        .O(\icmp_ln17_reg_1317[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \icmp_ln17_reg_1317[0]_i_3 
       (.I0(indvar_flatten72_reg_398_reg[1]),
        .I1(indvar_flatten72_reg_398_reg[0]),
        .I2(indvar_flatten72_reg_398_reg[3]),
        .I3(indvar_flatten72_reg_398_reg[2]),
        .O(\icmp_ln17_reg_1317[0]_i_3_n_0 ));
  FDRE \icmp_ln17_reg_1317_reg[0] 
       (.C(ap_clk),
        .CE(\and_ln52_10_reg_1342[0]_i_1_n_0 ),
        .D(icmp_ln17_fu_610_p2),
        .Q(icmp_ln17_reg_1317),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0002)) 
    \icmp_ln19_reg_1337[0]_i_1 
       (.I0(\and_ln52_10_reg_1342[0]_i_3_n_0 ),
        .I1(\indvar_flatten27_reg_409_reg_n_0_[0] ),
        .I2(\indvar_flatten27_reg_409_reg_n_0_[1] ),
        .I3(\indvar_flatten27_reg_409_reg_n_0_[2] ),
        .O(icmp_ln19_fu_622_p2));
  FDRE \icmp_ln19_reg_1337_reg[0] 
       (.C(ap_clk),
        .CE(\and_ln52_10_reg_1342[0]_i_1_n_0 ),
        .D(icmp_ln19_fu_622_p2),
        .Q(icmp_ln19_reg_1337),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h45)) 
    \inStream_V_data_0_payload_A[63]_i_1 
       (.I0(inStream_V_data_0_sel_wr),
        .I1(inStream_V_data_0_ack_in),
        .I2(\inStream_V_data_0_state_reg_n_0_[0] ),
        .O(inStream_V_data_0_load_A));
  FDRE \inStream_V_data_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[0]),
        .Q(inStream_V_data_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[10]),
        .Q(inStream_V_data_0_payload_A[10]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[11]),
        .Q(inStream_V_data_0_payload_A[11]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[12]),
        .Q(inStream_V_data_0_payload_A[12]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[13]),
        .Q(inStream_V_data_0_payload_A[13]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[14]),
        .Q(inStream_V_data_0_payload_A[14]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[15]),
        .Q(inStream_V_data_0_payload_A[15]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[16]),
        .Q(inStream_V_data_0_payload_A[16]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[17]),
        .Q(inStream_V_data_0_payload_A[17]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[18]),
        .Q(inStream_V_data_0_payload_A[18]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[19]),
        .Q(inStream_V_data_0_payload_A[19]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[1]),
        .Q(inStream_V_data_0_payload_A[1]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[20]),
        .Q(inStream_V_data_0_payload_A[20]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[21]),
        .Q(inStream_V_data_0_payload_A[21]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[22]),
        .Q(inStream_V_data_0_payload_A[22]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[23]),
        .Q(inStream_V_data_0_payload_A[23]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[24]),
        .Q(inStream_V_data_0_payload_A[24]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[25]),
        .Q(inStream_V_data_0_payload_A[25]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[26]),
        .Q(inStream_V_data_0_payload_A[26]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[27]),
        .Q(inStream_V_data_0_payload_A[27]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[28]),
        .Q(inStream_V_data_0_payload_A[28]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[29]),
        .Q(inStream_V_data_0_payload_A[29]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[2]),
        .Q(inStream_V_data_0_payload_A[2]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[30]),
        .Q(inStream_V_data_0_payload_A[30]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[31]),
        .Q(inStream_V_data_0_payload_A[31]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[32]),
        .Q(inStream_V_data_0_payload_A[32]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[33]),
        .Q(inStream_V_data_0_payload_A[33]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[34]),
        .Q(inStream_V_data_0_payload_A[34]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[35]),
        .Q(inStream_V_data_0_payload_A[35]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[36]),
        .Q(inStream_V_data_0_payload_A[36]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[37]),
        .Q(inStream_V_data_0_payload_A[37]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[38]),
        .Q(inStream_V_data_0_payload_A[38]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[39]),
        .Q(inStream_V_data_0_payload_A[39]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[3]),
        .Q(inStream_V_data_0_payload_A[3]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[40]),
        .Q(inStream_V_data_0_payload_A[40]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[41]),
        .Q(inStream_V_data_0_payload_A[41]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[42]),
        .Q(inStream_V_data_0_payload_A[42]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[43]),
        .Q(inStream_V_data_0_payload_A[43]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[44]),
        .Q(inStream_V_data_0_payload_A[44]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[45]),
        .Q(inStream_V_data_0_payload_A[45]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[46]),
        .Q(inStream_V_data_0_payload_A[46]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[47]),
        .Q(inStream_V_data_0_payload_A[47]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[48]),
        .Q(inStream_V_data_0_payload_A[48]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[49]),
        .Q(inStream_V_data_0_payload_A[49]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[4]),
        .Q(inStream_V_data_0_payload_A[4]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[50]),
        .Q(inStream_V_data_0_payload_A[50]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[51]),
        .Q(inStream_V_data_0_payload_A[51]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[52]),
        .Q(inStream_V_data_0_payload_A[52]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[53]),
        .Q(inStream_V_data_0_payload_A[53]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[54]),
        .Q(inStream_V_data_0_payload_A[54]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[55]),
        .Q(inStream_V_data_0_payload_A[55]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[56]),
        .Q(inStream_V_data_0_payload_A[56]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[57]),
        .Q(inStream_V_data_0_payload_A[57]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[58]),
        .Q(inStream_V_data_0_payload_A[58]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[59]),
        .Q(inStream_V_data_0_payload_A[59]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[5]),
        .Q(inStream_V_data_0_payload_A[5]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[60]),
        .Q(inStream_V_data_0_payload_A[60]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[61]),
        .Q(inStream_V_data_0_payload_A[61]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[62]),
        .Q(inStream_V_data_0_payload_A[62]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[63]),
        .Q(inStream_V_data_0_payload_A[63]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[6]),
        .Q(inStream_V_data_0_payload_A[6]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[7]),
        .Q(inStream_V_data_0_payload_A[7]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[8]),
        .Q(inStream_V_data_0_payload_A[8]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_A),
        .D(inStream_TDATA[9]),
        .Q(inStream_V_data_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \inStream_V_data_0_payload_B[63]_i_1 
       (.I0(inStream_V_data_0_sel_wr),
        .I1(inStream_V_data_0_ack_in),
        .I2(\inStream_V_data_0_state_reg_n_0_[0] ),
        .O(inStream_V_data_0_load_B));
  FDRE \inStream_V_data_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[0]),
        .Q(inStream_V_data_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[10]),
        .Q(inStream_V_data_0_payload_B[10]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[11]),
        .Q(inStream_V_data_0_payload_B[11]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[12]),
        .Q(inStream_V_data_0_payload_B[12]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[13]),
        .Q(inStream_V_data_0_payload_B[13]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[14]),
        .Q(inStream_V_data_0_payload_B[14]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[15]),
        .Q(inStream_V_data_0_payload_B[15]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[16]),
        .Q(inStream_V_data_0_payload_B[16]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[17]),
        .Q(inStream_V_data_0_payload_B[17]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[18]),
        .Q(inStream_V_data_0_payload_B[18]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[19]),
        .Q(inStream_V_data_0_payload_B[19]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[1]),
        .Q(inStream_V_data_0_payload_B[1]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[20]),
        .Q(inStream_V_data_0_payload_B[20]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[21]),
        .Q(inStream_V_data_0_payload_B[21]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[22]),
        .Q(inStream_V_data_0_payload_B[22]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[23]),
        .Q(inStream_V_data_0_payload_B[23]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[24]),
        .Q(inStream_V_data_0_payload_B[24]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[25]),
        .Q(inStream_V_data_0_payload_B[25]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[26]),
        .Q(inStream_V_data_0_payload_B[26]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[27]),
        .Q(inStream_V_data_0_payload_B[27]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[28]),
        .Q(inStream_V_data_0_payload_B[28]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[29]),
        .Q(inStream_V_data_0_payload_B[29]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[2]),
        .Q(inStream_V_data_0_payload_B[2]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[30]),
        .Q(inStream_V_data_0_payload_B[30]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[31]),
        .Q(inStream_V_data_0_payload_B[31]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[32]),
        .Q(inStream_V_data_0_payload_B[32]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[33]),
        .Q(inStream_V_data_0_payload_B[33]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[34]),
        .Q(inStream_V_data_0_payload_B[34]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[35]),
        .Q(inStream_V_data_0_payload_B[35]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[36]),
        .Q(inStream_V_data_0_payload_B[36]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[37]),
        .Q(inStream_V_data_0_payload_B[37]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[38]),
        .Q(inStream_V_data_0_payload_B[38]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[39]),
        .Q(inStream_V_data_0_payload_B[39]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[3]),
        .Q(inStream_V_data_0_payload_B[3]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[40]),
        .Q(inStream_V_data_0_payload_B[40]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[41]),
        .Q(inStream_V_data_0_payload_B[41]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[42]),
        .Q(inStream_V_data_0_payload_B[42]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[43]),
        .Q(inStream_V_data_0_payload_B[43]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[44]),
        .Q(inStream_V_data_0_payload_B[44]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[45]),
        .Q(inStream_V_data_0_payload_B[45]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[46]),
        .Q(inStream_V_data_0_payload_B[46]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[47]),
        .Q(inStream_V_data_0_payload_B[47]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[48]),
        .Q(inStream_V_data_0_payload_B[48]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[49]),
        .Q(inStream_V_data_0_payload_B[49]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[4]),
        .Q(inStream_V_data_0_payload_B[4]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[50]),
        .Q(inStream_V_data_0_payload_B[50]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[51]),
        .Q(inStream_V_data_0_payload_B[51]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[52]),
        .Q(inStream_V_data_0_payload_B[52]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[53]),
        .Q(inStream_V_data_0_payload_B[53]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[54]),
        .Q(inStream_V_data_0_payload_B[54]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[55]),
        .Q(inStream_V_data_0_payload_B[55]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[56]),
        .Q(inStream_V_data_0_payload_B[56]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[57]),
        .Q(inStream_V_data_0_payload_B[57]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[58]),
        .Q(inStream_V_data_0_payload_B[58]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[59]),
        .Q(inStream_V_data_0_payload_B[59]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[5]),
        .Q(inStream_V_data_0_payload_B[5]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[60]),
        .Q(inStream_V_data_0_payload_B[60]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[61]),
        .Q(inStream_V_data_0_payload_B[61]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[62]),
        .Q(inStream_V_data_0_payload_B[62]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[63]),
        .Q(inStream_V_data_0_payload_B[63]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[6]),
        .Q(inStream_V_data_0_payload_B[6]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[7]),
        .Q(inStream_V_data_0_payload_B[7]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[8]),
        .Q(inStream_V_data_0_payload_B[8]),
        .R(1'b0));
  FDRE \inStream_V_data_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(inStream_V_data_0_load_B),
        .D(inStream_TDATA[9]),
        .Q(inStream_V_data_0_payload_B[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    inStream_V_data_0_sel_rd_i_1
       (.I0(line_buff_group_3_va_U_n_19),
        .I1(inStream_V_data_0_sel),
        .O(inStream_V_data_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_data_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_data_0_sel_rd_i_1_n_0),
        .Q(inStream_V_data_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_V_data_0_sel_wr_i_1
       (.I0(inStream_V_data_0_ack_in),
        .I1(inStream_TVALID),
        .I2(inStream_V_data_0_sel_wr),
        .O(inStream_V_data_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_data_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_data_0_sel_wr_i_1_n_0),
        .Q(inStream_V_data_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF8D80000)) 
    \inStream_V_data_0_state[0]_i_1 
       (.I0(inStream_V_data_0_ack_in),
        .I1(inStream_TVALID),
        .I2(\inStream_V_data_0_state_reg_n_0_[0] ),
        .I3(line_buff_group_3_va_U_n_19),
        .I4(ap_rst_n),
        .O(\inStream_V_data_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \inStream_V_data_0_state[1]_i_1 
       (.I0(line_buff_group_3_va_U_n_19),
        .I1(\inStream_V_data_0_state_reg_n_0_[0] ),
        .I2(inStream_TVALID),
        .I3(inStream_V_data_0_ack_in),
        .O(inStream_V_data_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_data_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_V_data_0_state[0]_i_1_n_0 ),
        .Q(\inStream_V_data_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_data_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_data_0_state),
        .Q(inStream_V_data_0_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h45)) 
    \inStream_V_dest_V_0_payload_A[5]_i_1 
       (.I0(inStream_V_dest_V_0_sel_wr),
        .I1(inStream_TREADY),
        .I2(\inStream_V_dest_V_0_state_reg_n_0_[0] ),
        .O(inStream_V_dest_V_0_load_A));
  FDRE \inStream_V_dest_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_dest_V_0_load_A),
        .D(inStream_TDEST[0]),
        .Q(inStream_V_dest_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_V_dest_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_dest_V_0_load_A),
        .D(inStream_TDEST[1]),
        .Q(inStream_V_dest_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \inStream_V_dest_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_dest_V_0_load_A),
        .D(inStream_TDEST[2]),
        .Q(inStream_V_dest_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \inStream_V_dest_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_dest_V_0_load_A),
        .D(inStream_TDEST[3]),
        .Q(inStream_V_dest_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \inStream_V_dest_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_dest_V_0_load_A),
        .D(inStream_TDEST[4]),
        .Q(inStream_V_dest_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \inStream_V_dest_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(inStream_V_dest_V_0_load_A),
        .D(inStream_TDEST[5]),
        .Q(inStream_V_dest_V_0_payload_A[5]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \inStream_V_dest_V_0_payload_B[5]_i_1 
       (.I0(inStream_V_dest_V_0_sel_wr),
        .I1(inStream_TREADY),
        .I2(\inStream_V_dest_V_0_state_reg_n_0_[0] ),
        .O(inStream_V_dest_V_0_load_B));
  FDRE \inStream_V_dest_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_dest_V_0_load_B),
        .D(inStream_TDEST[0]),
        .Q(inStream_V_dest_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_V_dest_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_dest_V_0_load_B),
        .D(inStream_TDEST[1]),
        .Q(inStream_V_dest_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \inStream_V_dest_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_dest_V_0_load_B),
        .D(inStream_TDEST[2]),
        .Q(inStream_V_dest_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \inStream_V_dest_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_dest_V_0_load_B),
        .D(inStream_TDEST[3]),
        .Q(inStream_V_dest_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \inStream_V_dest_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_dest_V_0_load_B),
        .D(inStream_TDEST[4]),
        .Q(inStream_V_dest_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \inStream_V_dest_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(inStream_V_dest_V_0_load_B),
        .D(inStream_TDEST[5]),
        .Q(inStream_V_dest_V_0_payload_B[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    inStream_V_dest_V_0_sel_rd_i_1
       (.I0(line_buff_group_3_va_U_n_19),
        .I1(\inStream_V_dest_V_0_state_reg_n_0_[0] ),
        .I2(inStream_V_dest_V_0_sel),
        .O(inStream_V_dest_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_dest_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_dest_V_0_sel_rd_i_1_n_0),
        .Q(inStream_V_dest_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    inStream_V_dest_V_0_sel_wr_i_1
       (.I0(inStream_TREADY),
        .I1(inStream_TVALID),
        .I2(inStream_V_dest_V_0_sel_wr),
        .O(inStream_V_dest_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_dest_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_dest_V_0_sel_wr_i_1_n_0),
        .Q(inStream_V_dest_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF8D80000)) 
    \inStream_V_dest_V_0_state[0]_i_1 
       (.I0(inStream_TREADY),
        .I1(inStream_TVALID),
        .I2(\inStream_V_dest_V_0_state_reg_n_0_[0] ),
        .I3(line_buff_group_3_va_U_n_19),
        .I4(ap_rst_n),
        .O(\inStream_V_dest_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \inStream_V_dest_V_0_state[1]_i_2 
       (.I0(line_buff_group_3_va_U_n_19),
        .I1(\inStream_V_dest_V_0_state_reg_n_0_[0] ),
        .I2(inStream_TVALID),
        .I3(inStream_TREADY),
        .O(inStream_V_dest_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_dest_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_V_dest_V_0_state[0]_i_1_n_0 ),
        .Q(\inStream_V_dest_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_dest_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_dest_V_0_state),
        .Q(inStream_TREADY),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h45)) 
    \inStream_V_id_V_0_payload_A[4]_i_1 
       (.I0(inStream_V_id_V_0_sel_wr),
        .I1(inStream_V_id_V_0_ack_in),
        .I2(\inStream_V_id_V_0_state_reg_n_0_[0] ),
        .O(inStream_V_id_V_0_load_A));
  FDRE \inStream_V_id_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_id_V_0_load_A),
        .D(inStream_TID[0]),
        .Q(inStream_V_id_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_V_id_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_id_V_0_load_A),
        .D(inStream_TID[1]),
        .Q(inStream_V_id_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \inStream_V_id_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_id_V_0_load_A),
        .D(inStream_TID[2]),
        .Q(inStream_V_id_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \inStream_V_id_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_id_V_0_load_A),
        .D(inStream_TID[3]),
        .Q(inStream_V_id_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \inStream_V_id_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_id_V_0_load_A),
        .D(inStream_TID[4]),
        .Q(inStream_V_id_V_0_payload_A[4]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \inStream_V_id_V_0_payload_B[4]_i_1 
       (.I0(inStream_V_id_V_0_sel_wr),
        .I1(inStream_V_id_V_0_ack_in),
        .I2(\inStream_V_id_V_0_state_reg_n_0_[0] ),
        .O(inStream_V_id_V_0_load_B));
  FDRE \inStream_V_id_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_id_V_0_load_B),
        .D(inStream_TID[0]),
        .Q(inStream_V_id_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_V_id_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_id_V_0_load_B),
        .D(inStream_TID[1]),
        .Q(inStream_V_id_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \inStream_V_id_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_id_V_0_load_B),
        .D(inStream_TID[2]),
        .Q(inStream_V_id_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \inStream_V_id_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_id_V_0_load_B),
        .D(inStream_TID[3]),
        .Q(inStream_V_id_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \inStream_V_id_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_id_V_0_load_B),
        .D(inStream_TID[4]),
        .Q(inStream_V_id_V_0_payload_B[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    inStream_V_id_V_0_sel_rd_i_1
       (.I0(line_buff_group_3_va_U_n_19),
        .I1(\inStream_V_id_V_0_state_reg_n_0_[0] ),
        .I2(inStream_V_id_V_0_sel),
        .O(inStream_V_id_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_id_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_id_V_0_sel_rd_i_1_n_0),
        .Q(inStream_V_id_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_V_id_V_0_sel_wr_i_1
       (.I0(inStream_V_id_V_0_ack_in),
        .I1(inStream_TVALID),
        .I2(inStream_V_id_V_0_sel_wr),
        .O(inStream_V_id_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_id_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_id_V_0_sel_wr_i_1_n_0),
        .Q(inStream_V_id_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF8D80000)) 
    \inStream_V_id_V_0_state[0]_i_1 
       (.I0(inStream_V_id_V_0_ack_in),
        .I1(inStream_TVALID),
        .I2(\inStream_V_id_V_0_state_reg_n_0_[0] ),
        .I3(line_buff_group_3_va_U_n_19),
        .I4(ap_rst_n),
        .O(\inStream_V_id_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \inStream_V_id_V_0_state[1]_i_1 
       (.I0(line_buff_group_3_va_U_n_19),
        .I1(\inStream_V_id_V_0_state_reg_n_0_[0] ),
        .I2(inStream_TVALID),
        .I3(inStream_V_id_V_0_ack_in),
        .O(inStream_V_id_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_id_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_V_id_V_0_state[0]_i_1_n_0 ),
        .Q(\inStream_V_id_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_id_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_id_V_0_state),
        .Q(inStream_V_id_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h45)) 
    \inStream_V_keep_V_0_payload_A[7]_i_1 
       (.I0(inStream_V_keep_V_0_sel_wr),
        .I1(inStream_V_keep_V_0_ack_in),
        .I2(\inStream_V_keep_V_0_state_reg_n_0_[0] ),
        .O(inStream_V_keep_V_0_load_A));
  FDRE \inStream_V_keep_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_A),
        .D(inStream_TKEEP[0]),
        .Q(inStream_V_keep_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_V_keep_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_A),
        .D(inStream_TKEEP[1]),
        .Q(inStream_V_keep_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \inStream_V_keep_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_A),
        .D(inStream_TKEEP[2]),
        .Q(inStream_V_keep_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \inStream_V_keep_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_A),
        .D(inStream_TKEEP[3]),
        .Q(inStream_V_keep_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \inStream_V_keep_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_A),
        .D(inStream_TKEEP[4]),
        .Q(inStream_V_keep_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \inStream_V_keep_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_A),
        .D(inStream_TKEEP[5]),
        .Q(inStream_V_keep_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \inStream_V_keep_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_A),
        .D(inStream_TKEEP[6]),
        .Q(inStream_V_keep_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \inStream_V_keep_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_A),
        .D(inStream_TKEEP[7]),
        .Q(inStream_V_keep_V_0_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \inStream_V_keep_V_0_payload_B[7]_i_1 
       (.I0(inStream_V_keep_V_0_sel_wr),
        .I1(inStream_V_keep_V_0_ack_in),
        .I2(\inStream_V_keep_V_0_state_reg_n_0_[0] ),
        .O(inStream_V_keep_V_0_load_B));
  FDRE \inStream_V_keep_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_B),
        .D(inStream_TKEEP[0]),
        .Q(inStream_V_keep_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_V_keep_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_B),
        .D(inStream_TKEEP[1]),
        .Q(inStream_V_keep_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \inStream_V_keep_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_B),
        .D(inStream_TKEEP[2]),
        .Q(inStream_V_keep_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \inStream_V_keep_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_B),
        .D(inStream_TKEEP[3]),
        .Q(inStream_V_keep_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \inStream_V_keep_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_B),
        .D(inStream_TKEEP[4]),
        .Q(inStream_V_keep_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \inStream_V_keep_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_B),
        .D(inStream_TKEEP[5]),
        .Q(inStream_V_keep_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \inStream_V_keep_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_B),
        .D(inStream_TKEEP[6]),
        .Q(inStream_V_keep_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \inStream_V_keep_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(inStream_V_keep_V_0_load_B),
        .D(inStream_TKEEP[7]),
        .Q(inStream_V_keep_V_0_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    inStream_V_keep_V_0_sel_rd_i_1
       (.I0(line_buff_group_3_va_U_n_19),
        .I1(\inStream_V_keep_V_0_state_reg_n_0_[0] ),
        .I2(inStream_V_keep_V_0_sel),
        .O(inStream_V_keep_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_keep_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_keep_V_0_sel_rd_i_1_n_0),
        .Q(inStream_V_keep_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_V_keep_V_0_sel_wr_i_1
       (.I0(inStream_V_keep_V_0_ack_in),
        .I1(inStream_TVALID),
        .I2(inStream_V_keep_V_0_sel_wr),
        .O(inStream_V_keep_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_keep_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_keep_V_0_sel_wr_i_1_n_0),
        .Q(inStream_V_keep_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF8D80000)) 
    \inStream_V_keep_V_0_state[0]_i_1 
       (.I0(inStream_V_keep_V_0_ack_in),
        .I1(inStream_TVALID),
        .I2(\inStream_V_keep_V_0_state_reg_n_0_[0] ),
        .I3(line_buff_group_3_va_U_n_19),
        .I4(ap_rst_n),
        .O(\inStream_V_keep_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \inStream_V_keep_V_0_state[1]_i_1 
       (.I0(line_buff_group_3_va_U_n_19),
        .I1(\inStream_V_keep_V_0_state_reg_n_0_[0] ),
        .I2(inStream_TVALID),
        .I3(inStream_V_keep_V_0_ack_in),
        .O(inStream_V_keep_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_keep_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_V_keep_V_0_state[0]_i_1_n_0 ),
        .Q(\inStream_V_keep_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_keep_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_keep_V_0_state),
        .Q(inStream_V_keep_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h45)) 
    \inStream_V_strb_V_0_payload_A[7]_i_1 
       (.I0(inStream_V_strb_V_0_sel_wr),
        .I1(inStream_V_strb_V_0_ack_in),
        .I2(\inStream_V_strb_V_0_state_reg_n_0_[0] ),
        .O(inStream_V_strb_V_0_load_A));
  FDRE \inStream_V_strb_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_A),
        .D(inStream_TSTRB[0]),
        .Q(inStream_V_strb_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_V_strb_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_A),
        .D(inStream_TSTRB[1]),
        .Q(inStream_V_strb_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \inStream_V_strb_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_A),
        .D(inStream_TSTRB[2]),
        .Q(inStream_V_strb_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \inStream_V_strb_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_A),
        .D(inStream_TSTRB[3]),
        .Q(inStream_V_strb_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \inStream_V_strb_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_A),
        .D(inStream_TSTRB[4]),
        .Q(inStream_V_strb_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \inStream_V_strb_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_A),
        .D(inStream_TSTRB[5]),
        .Q(inStream_V_strb_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \inStream_V_strb_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_A),
        .D(inStream_TSTRB[6]),
        .Q(inStream_V_strb_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \inStream_V_strb_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_A),
        .D(inStream_TSTRB[7]),
        .Q(inStream_V_strb_V_0_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \inStream_V_strb_V_0_payload_B[7]_i_1 
       (.I0(inStream_V_strb_V_0_sel_wr),
        .I1(inStream_V_strb_V_0_ack_in),
        .I2(\inStream_V_strb_V_0_state_reg_n_0_[0] ),
        .O(inStream_V_strb_V_0_load_B));
  FDRE \inStream_V_strb_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_B),
        .D(inStream_TSTRB[0]),
        .Q(inStream_V_strb_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_V_strb_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_B),
        .D(inStream_TSTRB[1]),
        .Q(inStream_V_strb_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \inStream_V_strb_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_B),
        .D(inStream_TSTRB[2]),
        .Q(inStream_V_strb_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \inStream_V_strb_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_B),
        .D(inStream_TSTRB[3]),
        .Q(inStream_V_strb_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \inStream_V_strb_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_B),
        .D(inStream_TSTRB[4]),
        .Q(inStream_V_strb_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \inStream_V_strb_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_B),
        .D(inStream_TSTRB[5]),
        .Q(inStream_V_strb_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \inStream_V_strb_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_B),
        .D(inStream_TSTRB[6]),
        .Q(inStream_V_strb_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \inStream_V_strb_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(inStream_V_strb_V_0_load_B),
        .D(inStream_TSTRB[7]),
        .Q(inStream_V_strb_V_0_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    inStream_V_strb_V_0_sel_rd_i_1
       (.I0(line_buff_group_3_va_U_n_19),
        .I1(\inStream_V_strb_V_0_state_reg_n_0_[0] ),
        .I2(inStream_V_strb_V_0_sel),
        .O(inStream_V_strb_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_strb_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_strb_V_0_sel_rd_i_1_n_0),
        .Q(inStream_V_strb_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_V_strb_V_0_sel_wr_i_1
       (.I0(inStream_V_strb_V_0_ack_in),
        .I1(inStream_TVALID),
        .I2(inStream_V_strb_V_0_sel_wr),
        .O(inStream_V_strb_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_strb_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_strb_V_0_sel_wr_i_1_n_0),
        .Q(inStream_V_strb_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF8D80000)) 
    \inStream_V_strb_V_0_state[0]_i_1 
       (.I0(inStream_V_strb_V_0_ack_in),
        .I1(inStream_TVALID),
        .I2(\inStream_V_strb_V_0_state_reg_n_0_[0] ),
        .I3(line_buff_group_3_va_U_n_19),
        .I4(ap_rst_n),
        .O(\inStream_V_strb_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \inStream_V_strb_V_0_state[1]_i_1 
       (.I0(line_buff_group_3_va_U_n_19),
        .I1(\inStream_V_strb_V_0_state_reg_n_0_[0] ),
        .I2(inStream_TVALID),
        .I3(inStream_V_strb_V_0_ack_in),
        .O(inStream_V_strb_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_strb_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_V_strb_V_0_state[0]_i_1_n_0 ),
        .Q(\inStream_V_strb_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_strb_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_strb_V_0_state),
        .Q(inStream_V_strb_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \inStream_V_user_V_0_payload_A[0]_i_1 
       (.I0(inStream_TUSER[0]),
        .I1(inStream_V_user_V_0_sel_wr),
        .I2(inStream_V_user_V_0_ack_in),
        .I3(\inStream_V_user_V_0_state_reg_n_0_[0] ),
        .I4(inStream_V_user_V_0_payload_A[0]),
        .O(\inStream_V_user_V_0_payload_A[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \inStream_V_user_V_0_payload_A[1]_i_1 
       (.I0(inStream_TUSER[1]),
        .I1(inStream_V_user_V_0_sel_wr),
        .I2(inStream_V_user_V_0_ack_in),
        .I3(\inStream_V_user_V_0_state_reg_n_0_[0] ),
        .I4(inStream_V_user_V_0_payload_A[1]),
        .O(\inStream_V_user_V_0_payload_A[1]_i_1_n_0 ));
  FDRE \inStream_V_user_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_V_user_V_0_payload_A[0]_i_1_n_0 ),
        .Q(inStream_V_user_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_V_user_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_V_user_V_0_payload_A[1]_i_1_n_0 ),
        .Q(inStream_V_user_V_0_payload_A[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \inStream_V_user_V_0_payload_B[0]_i_1 
       (.I0(inStream_TUSER[0]),
        .I1(inStream_V_user_V_0_sel_wr),
        .I2(inStream_V_user_V_0_ack_in),
        .I3(\inStream_V_user_V_0_state_reg_n_0_[0] ),
        .I4(inStream_V_user_V_0_payload_B[0]),
        .O(\inStream_V_user_V_0_payload_B[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \inStream_V_user_V_0_payload_B[1]_i_1 
       (.I0(inStream_TUSER[1]),
        .I1(inStream_V_user_V_0_sel_wr),
        .I2(inStream_V_user_V_0_ack_in),
        .I3(\inStream_V_user_V_0_state_reg_n_0_[0] ),
        .I4(inStream_V_user_V_0_payload_B[1]),
        .O(\inStream_V_user_V_0_payload_B[1]_i_1_n_0 ));
  FDRE \inStream_V_user_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_V_user_V_0_payload_B[0]_i_1_n_0 ),
        .Q(inStream_V_user_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_V_user_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_V_user_V_0_payload_B[1]_i_1_n_0 ),
        .Q(inStream_V_user_V_0_payload_B[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    inStream_V_user_V_0_sel_rd_i_1
       (.I0(line_buff_group_3_va_U_n_19),
        .I1(\inStream_V_user_V_0_state_reg_n_0_[0] ),
        .I2(inStream_V_user_V_0_sel),
        .O(inStream_V_user_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_user_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_user_V_0_sel_rd_i_1_n_0),
        .Q(inStream_V_user_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_V_user_V_0_sel_wr_i_1
       (.I0(inStream_V_user_V_0_ack_in),
        .I1(inStream_TVALID),
        .I2(inStream_V_user_V_0_sel_wr),
        .O(inStream_V_user_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_V_user_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_user_V_0_sel_wr_i_1_n_0),
        .Q(inStream_V_user_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF8D80000)) 
    \inStream_V_user_V_0_state[0]_i_1 
       (.I0(inStream_V_user_V_0_ack_in),
        .I1(inStream_TVALID),
        .I2(\inStream_V_user_V_0_state_reg_n_0_[0] ),
        .I3(line_buff_group_3_va_U_n_19),
        .I4(ap_rst_n),
        .O(\inStream_V_user_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \inStream_V_user_V_0_state[1]_i_1 
       (.I0(line_buff_group_3_va_U_n_19),
        .I1(\inStream_V_user_V_0_state_reg_n_0_[0] ),
        .I2(inStream_TVALID),
        .I3(inStream_V_user_V_0_ack_in),
        .O(inStream_V_user_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_user_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_V_user_V_0_state[0]_i_1_n_0 ),
        .Q(\inStream_V_user_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_V_user_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_V_user_V_0_state),
        .Q(inStream_V_user_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten136_reg_387[0]_i_2 
       (.I0(indvar_flatten136_reg_387_reg[0]),
        .O(\indvar_flatten136_reg_387[0]_i_2_n_0 ));
  FDRE \indvar_flatten136_reg_387_reg[0] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(\indvar_flatten136_reg_387_reg[0]_i_1_n_7 ),
        .Q(indvar_flatten136_reg_387_reg[0]),
        .R(ap_NS_fsm1));
  CARRY4 \indvar_flatten136_reg_387_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\indvar_flatten136_reg_387_reg[0]_i_1_n_0 ,\indvar_flatten136_reg_387_reg[0]_i_1_n_1 ,\indvar_flatten136_reg_387_reg[0]_i_1_n_2 ,\indvar_flatten136_reg_387_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\indvar_flatten136_reg_387_reg[0]_i_1_n_4 ,\indvar_flatten136_reg_387_reg[0]_i_1_n_5 ,\indvar_flatten136_reg_387_reg[0]_i_1_n_6 ,\indvar_flatten136_reg_387_reg[0]_i_1_n_7 }),
        .S({indvar_flatten136_reg_387_reg[3:1],\indvar_flatten136_reg_387[0]_i_2_n_0 }));
  FDRE \indvar_flatten136_reg_387_reg[10] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(\indvar_flatten136_reg_387_reg[8]_i_1_n_5 ),
        .Q(indvar_flatten136_reg_387_reg[10]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten136_reg_387_reg[11] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(\indvar_flatten136_reg_387_reg[8]_i_1_n_4 ),
        .Q(indvar_flatten136_reg_387_reg[11]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten136_reg_387_reg[12] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(\indvar_flatten136_reg_387_reg[12]_i_1_n_7 ),
        .Q(indvar_flatten136_reg_387_reg[12]),
        .R(ap_NS_fsm1));
  CARRY4 \indvar_flatten136_reg_387_reg[12]_i_1 
       (.CI(\indvar_flatten136_reg_387_reg[8]_i_1_n_0 ),
        .CO(\NLW_indvar_flatten136_reg_387_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_indvar_flatten136_reg_387_reg[12]_i_1_O_UNCONNECTED [3:1],\indvar_flatten136_reg_387_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,indvar_flatten136_reg_387_reg[12]}));
  FDRE \indvar_flatten136_reg_387_reg[1] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(\indvar_flatten136_reg_387_reg[0]_i_1_n_6 ),
        .Q(indvar_flatten136_reg_387_reg[1]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten136_reg_387_reg[2] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(\indvar_flatten136_reg_387_reg[0]_i_1_n_5 ),
        .Q(indvar_flatten136_reg_387_reg[2]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten136_reg_387_reg[3] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(\indvar_flatten136_reg_387_reg[0]_i_1_n_4 ),
        .Q(indvar_flatten136_reg_387_reg[3]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten136_reg_387_reg[4] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(\indvar_flatten136_reg_387_reg[4]_i_1_n_7 ),
        .Q(indvar_flatten136_reg_387_reg[4]),
        .R(ap_NS_fsm1));
  CARRY4 \indvar_flatten136_reg_387_reg[4]_i_1 
       (.CI(\indvar_flatten136_reg_387_reg[0]_i_1_n_0 ),
        .CO({\indvar_flatten136_reg_387_reg[4]_i_1_n_0 ,\indvar_flatten136_reg_387_reg[4]_i_1_n_1 ,\indvar_flatten136_reg_387_reg[4]_i_1_n_2 ,\indvar_flatten136_reg_387_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten136_reg_387_reg[4]_i_1_n_4 ,\indvar_flatten136_reg_387_reg[4]_i_1_n_5 ,\indvar_flatten136_reg_387_reg[4]_i_1_n_6 ,\indvar_flatten136_reg_387_reg[4]_i_1_n_7 }),
        .S(indvar_flatten136_reg_387_reg[7:4]));
  FDRE \indvar_flatten136_reg_387_reg[5] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(\indvar_flatten136_reg_387_reg[4]_i_1_n_6 ),
        .Q(indvar_flatten136_reg_387_reg[5]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten136_reg_387_reg[6] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(\indvar_flatten136_reg_387_reg[4]_i_1_n_5 ),
        .Q(indvar_flatten136_reg_387_reg[6]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten136_reg_387_reg[7] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(\indvar_flatten136_reg_387_reg[4]_i_1_n_4 ),
        .Q(indvar_flatten136_reg_387_reg[7]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten136_reg_387_reg[8] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(\indvar_flatten136_reg_387_reg[8]_i_1_n_7 ),
        .Q(indvar_flatten136_reg_387_reg[8]),
        .R(ap_NS_fsm1));
  CARRY4 \indvar_flatten136_reg_387_reg[8]_i_1 
       (.CI(\indvar_flatten136_reg_387_reg[4]_i_1_n_0 ),
        .CO({\indvar_flatten136_reg_387_reg[8]_i_1_n_0 ,\indvar_flatten136_reg_387_reg[8]_i_1_n_1 ,\indvar_flatten136_reg_387_reg[8]_i_1_n_2 ,\indvar_flatten136_reg_387_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten136_reg_387_reg[8]_i_1_n_4 ,\indvar_flatten136_reg_387_reg[8]_i_1_n_5 ,\indvar_flatten136_reg_387_reg[8]_i_1_n_6 ,\indvar_flatten136_reg_387_reg[8]_i_1_n_7 }),
        .S(indvar_flatten136_reg_387_reg[11:8]));
  FDRE \indvar_flatten136_reg_387_reg[9] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(\indvar_flatten136_reg_387_reg[8]_i_1_n_6 ),
        .Q(indvar_flatten136_reg_387_reg[9]),
        .R(ap_NS_fsm1));
  LUT6 #(
    .INIT(64'h00000000AA6AAAEA)) 
    \indvar_flatten27_reg_409[0]_i_1 
       (.I0(\indvar_flatten27_reg_409_reg_n_0_[0] ),
        .I1(p_3_in),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(icmp_ln15_fu_598_p2),
        .I4(\indvar_flatten27_reg_409[8]_i_4_n_0 ),
        .I5(ap_NS_fsm1),
        .O(\indvar_flatten27_reg_409[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \indvar_flatten27_reg_409[1]_i_1 
       (.I0(\indvar_flatten27_reg_409_reg_n_0_[0] ),
        .I1(\indvar_flatten27_reg_409_reg_n_0_[1] ),
        .O(add_ln19_1_fu_640_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \indvar_flatten27_reg_409[2]_i_1 
       (.I0(\indvar_flatten27_reg_409_reg_n_0_[2] ),
        .I1(\indvar_flatten27_reg_409_reg_n_0_[1] ),
        .I2(\indvar_flatten27_reg_409_reg_n_0_[0] ),
        .O(add_ln19_1_fu_640_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \indvar_flatten27_reg_409[3]_i_1 
       (.I0(\indvar_flatten27_reg_409_reg_n_0_[3] ),
        .I1(\indvar_flatten27_reg_409_reg_n_0_[2] ),
        .I2(\indvar_flatten27_reg_409_reg_n_0_[0] ),
        .I3(\indvar_flatten27_reg_409_reg_n_0_[1] ),
        .O(add_ln19_1_fu_640_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \indvar_flatten27_reg_409[4]_i_1 
       (.I0(\indvar_flatten27_reg_409_reg_n_0_[4] ),
        .I1(\indvar_flatten27_reg_409_reg_n_0_[3] ),
        .I2(\indvar_flatten27_reg_409_reg_n_0_[1] ),
        .I3(\indvar_flatten27_reg_409_reg_n_0_[0] ),
        .I4(\indvar_flatten27_reg_409_reg_n_0_[2] ),
        .O(add_ln19_1_fu_640_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \indvar_flatten27_reg_409[5]_i_1 
       (.I0(\indvar_flatten27_reg_409_reg_n_0_[3] ),
        .I1(\indvar_flatten27_reg_409_reg_n_0_[1] ),
        .I2(\indvar_flatten27_reg_409_reg_n_0_[0] ),
        .I3(\indvar_flatten27_reg_409_reg_n_0_[2] ),
        .I4(\indvar_flatten27_reg_409_reg_n_0_[4] ),
        .I5(\indvar_flatten27_reg_409_reg_n_0_[5] ),
        .O(add_ln19_1_fu_640_p2[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \indvar_flatten27_reg_409[6]_i_1 
       (.I0(\indvar_flatten27_reg_409_reg_n_0_[6] ),
        .I1(\indvar_flatten27_reg_409[8]_i_7_n_0 ),
        .O(add_ln19_1_fu_640_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \indvar_flatten27_reg_409[7]_i_1 
       (.I0(\indvar_flatten27_reg_409_reg_n_0_[7] ),
        .I1(\indvar_flatten27_reg_409[8]_i_7_n_0 ),
        .I2(\indvar_flatten27_reg_409_reg_n_0_[6] ),
        .O(add_ln19_1_fu_640_p2[7]));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \indvar_flatten27_reg_409[8]_i_1 
       (.I0(\indvar_flatten27_reg_409[8]_i_4_n_0 ),
        .I1(icmp_ln15_fu_598_p2),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(p_3_in),
        .I4(ap_NS_fsm1),
        .O(indvar_flatten27_reg_409));
  LUT3 #(
    .INIT(8'h40)) 
    \indvar_flatten27_reg_409[8]_i_2 
       (.I0(icmp_ln15_fu_598_p2),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(p_3_in),
        .O(\indvar_flatten27_reg_409[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \indvar_flatten27_reg_409[8]_i_3 
       (.I0(\indvar_flatten27_reg_409_reg_n_0_[8] ),
        .I1(\indvar_flatten27_reg_409[8]_i_7_n_0 ),
        .I2(\indvar_flatten27_reg_409_reg_n_0_[6] ),
        .I3(\indvar_flatten27_reg_409_reg_n_0_[7] ),
        .O(add_ln19_1_fu_640_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0000FFFD)) 
    \indvar_flatten27_reg_409[8]_i_4 
       (.I0(\and_ln52_10_reg_1342[0]_i_3_n_0 ),
        .I1(\indvar_flatten27_reg_409_reg_n_0_[0] ),
        .I2(\indvar_flatten27_reg_409_reg_n_0_[1] ),
        .I3(\indvar_flatten27_reg_409_reg_n_0_[2] ),
        .I4(icmp_ln17_fu_610_p2),
        .O(\indvar_flatten27_reg_409[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \indvar_flatten27_reg_409[8]_i_5 
       (.I0(\indvar_flatten27_reg_409[8]_i_8_n_0 ),
        .I1(indvar_flatten136_reg_387_reg[2]),
        .I2(indvar_flatten136_reg_387_reg[1]),
        .I3(indvar_flatten136_reg_387_reg[0]),
        .I4(\indvar_flatten27_reg_409[8]_i_9_n_0 ),
        .O(icmp_ln15_fu_598_p2));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \indvar_flatten27_reg_409[8]_i_6 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_block_pp0_stage0_subdone1_in),
        .O(p_3_in));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \indvar_flatten27_reg_409[8]_i_7 
       (.I0(\indvar_flatten27_reg_409_reg_n_0_[5] ),
        .I1(\indvar_flatten27_reg_409_reg_n_0_[4] ),
        .I2(\indvar_flatten27_reg_409_reg_n_0_[2] ),
        .I3(\indvar_flatten27_reg_409_reg_n_0_[0] ),
        .I4(\indvar_flatten27_reg_409_reg_n_0_[1] ),
        .I5(\indvar_flatten27_reg_409_reg_n_0_[3] ),
        .O(\indvar_flatten27_reg_409[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \indvar_flatten27_reg_409[8]_i_8 
       (.I0(indvar_flatten136_reg_387_reg[6]),
        .I1(indvar_flatten136_reg_387_reg[5]),
        .I2(indvar_flatten136_reg_387_reg[4]),
        .I3(indvar_flatten136_reg_387_reg[3]),
        .O(\indvar_flatten27_reg_409[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \indvar_flatten27_reg_409[8]_i_9 
       (.I0(indvar_flatten136_reg_387_reg[8]),
        .I1(indvar_flatten136_reg_387_reg[7]),
        .I2(indvar_flatten136_reg_387_reg[10]),
        .I3(indvar_flatten136_reg_387_reg[9]),
        .I4(indvar_flatten136_reg_387_reg[11]),
        .I5(indvar_flatten136_reg_387_reg[12]),
        .O(\indvar_flatten27_reg_409[8]_i_9_n_0 ));
  FDRE \indvar_flatten27_reg_409_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\indvar_flatten27_reg_409[0]_i_1_n_0 ),
        .Q(\indvar_flatten27_reg_409_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \indvar_flatten27_reg_409_reg[1] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(add_ln19_1_fu_640_p2[1]),
        .Q(\indvar_flatten27_reg_409_reg_n_0_[1] ),
        .R(indvar_flatten27_reg_409));
  FDRE \indvar_flatten27_reg_409_reg[2] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(add_ln19_1_fu_640_p2[2]),
        .Q(\indvar_flatten27_reg_409_reg_n_0_[2] ),
        .R(indvar_flatten27_reg_409));
  FDRE \indvar_flatten27_reg_409_reg[3] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(add_ln19_1_fu_640_p2[3]),
        .Q(\indvar_flatten27_reg_409_reg_n_0_[3] ),
        .R(indvar_flatten27_reg_409));
  FDRE \indvar_flatten27_reg_409_reg[4] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(add_ln19_1_fu_640_p2[4]),
        .Q(\indvar_flatten27_reg_409_reg_n_0_[4] ),
        .R(indvar_flatten27_reg_409));
  FDRE \indvar_flatten27_reg_409_reg[5] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(add_ln19_1_fu_640_p2[5]),
        .Q(\indvar_flatten27_reg_409_reg_n_0_[5] ),
        .R(indvar_flatten27_reg_409));
  FDRE \indvar_flatten27_reg_409_reg[6] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(add_ln19_1_fu_640_p2[6]),
        .Q(\indvar_flatten27_reg_409_reg_n_0_[6] ),
        .R(indvar_flatten27_reg_409));
  FDRE \indvar_flatten27_reg_409_reg[7] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(add_ln19_1_fu_640_p2[7]),
        .Q(\indvar_flatten27_reg_409_reg_n_0_[7] ),
        .R(indvar_flatten27_reg_409));
  FDRE \indvar_flatten27_reg_409_reg[8] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(add_ln19_1_fu_640_p2[8]),
        .Q(\indvar_flatten27_reg_409_reg_n_0_[8] ),
        .R(indvar_flatten27_reg_409));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten72_reg_398[0]_i_1 
       (.I0(indvar_flatten72_reg_398_reg[0]),
        .O(select_ln17_5_fu_660_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \indvar_flatten72_reg_398[1]_i_1 
       (.I0(indvar_flatten72_reg_398_reg[0]),
        .I1(indvar_flatten72_reg_398_reg[1]),
        .O(select_ln17_5_fu_660_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \indvar_flatten72_reg_398[2]_i_1 
       (.I0(indvar_flatten72_reg_398_reg[2]),
        .I1(indvar_flatten72_reg_398_reg[1]),
        .I2(indvar_flatten72_reg_398_reg[0]),
        .O(select_ln17_5_fu_660_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \indvar_flatten72_reg_398[3]_i_1 
       (.I0(indvar_flatten72_reg_398_reg[3]),
        .I1(indvar_flatten72_reg_398_reg[2]),
        .I2(indvar_flatten72_reg_398_reg[0]),
        .I3(indvar_flatten72_reg_398_reg[1]),
        .O(select_ln17_5_fu_660_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \indvar_flatten72_reg_398[4]_i_1 
       (.I0(indvar_flatten72_reg_398_reg[4]),
        .I1(indvar_flatten72_reg_398_reg[3]),
        .I2(indvar_flatten72_reg_398_reg[1]),
        .I3(indvar_flatten72_reg_398_reg[0]),
        .I4(indvar_flatten72_reg_398_reg[2]),
        .O(select_ln17_5_fu_660_p3[4]));
  LUT3 #(
    .INIT(8'h82)) 
    \indvar_flatten72_reg_398[5]_i_1 
       (.I0(\indvar_flatten72_reg_398[8]_i_2_n_0 ),
        .I1(\indvar_flatten72_reg_398[9]_i_2_n_0 ),
        .I2(indvar_flatten72_reg_398_reg[5]),
        .O(select_ln17_5_fu_660_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \indvar_flatten72_reg_398[6]_i_1 
       (.I0(indvar_flatten72_reg_398_reg[6]),
        .I1(\indvar_flatten72_reg_398[9]_i_2_n_0 ),
        .I2(indvar_flatten72_reg_398_reg[5]),
        .O(select_ln17_5_fu_660_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hDF002000)) 
    \indvar_flatten72_reg_398[7]_i_1 
       (.I0(indvar_flatten72_reg_398_reg[6]),
        .I1(\indvar_flatten72_reg_398[9]_i_2_n_0 ),
        .I2(indvar_flatten72_reg_398_reg[5]),
        .I3(\indvar_flatten72_reg_398[8]_i_2_n_0 ),
        .I4(indvar_flatten72_reg_398_reg[7]),
        .O(select_ln17_5_fu_660_p3[7]));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \indvar_flatten72_reg_398[8]_i_1 
       (.I0(indvar_flatten72_reg_398_reg[7]),
        .I1(indvar_flatten72_reg_398_reg[5]),
        .I2(\indvar_flatten72_reg_398[9]_i_2_n_0 ),
        .I3(indvar_flatten72_reg_398_reg[6]),
        .I4(\indvar_flatten72_reg_398[8]_i_2_n_0 ),
        .I5(indvar_flatten72_reg_398_reg[8]),
        .O(select_ln17_5_fu_660_p3[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \indvar_flatten72_reg_398[8]_i_2 
       (.I0(indvar_flatten72_reg_398_reg[8]),
        .I1(indvar_flatten72_reg_398_reg[9]),
        .I2(\icmp_ln17_reg_1317[0]_i_3_n_0 ),
        .I3(\icmp_ln17_reg_1317[0]_i_2_n_0 ),
        .O(\indvar_flatten72_reg_398[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \indvar_flatten72_reg_398[9]_i_1 
       (.I0(indvar_flatten72_reg_398_reg[9]),
        .I1(indvar_flatten72_reg_398_reg[8]),
        .I2(indvar_flatten72_reg_398_reg[7]),
        .I3(indvar_flatten72_reg_398_reg[5]),
        .I4(\indvar_flatten72_reg_398[9]_i_2_n_0 ),
        .I5(indvar_flatten72_reg_398_reg[6]),
        .O(select_ln17_5_fu_660_p3[9]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \indvar_flatten72_reg_398[9]_i_2 
       (.I0(indvar_flatten72_reg_398_reg[3]),
        .I1(indvar_flatten72_reg_398_reg[1]),
        .I2(indvar_flatten72_reg_398_reg[0]),
        .I3(indvar_flatten72_reg_398_reg[2]),
        .I4(indvar_flatten72_reg_398_reg[4]),
        .O(\indvar_flatten72_reg_398[9]_i_2_n_0 ));
  FDRE \indvar_flatten72_reg_398_reg[0] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(select_ln17_5_fu_660_p3[0]),
        .Q(indvar_flatten72_reg_398_reg[0]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten72_reg_398_reg[1] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(select_ln17_5_fu_660_p3[1]),
        .Q(indvar_flatten72_reg_398_reg[1]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten72_reg_398_reg[2] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(select_ln17_5_fu_660_p3[2]),
        .Q(indvar_flatten72_reg_398_reg[2]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten72_reg_398_reg[3] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(select_ln17_5_fu_660_p3[3]),
        .Q(indvar_flatten72_reg_398_reg[3]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten72_reg_398_reg[4] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(select_ln17_5_fu_660_p3[4]),
        .Q(indvar_flatten72_reg_398_reg[4]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten72_reg_398_reg[5] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(select_ln17_5_fu_660_p3[5]),
        .Q(indvar_flatten72_reg_398_reg[5]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten72_reg_398_reg[6] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(select_ln17_5_fu_660_p3[6]),
        .Q(indvar_flatten72_reg_398_reg[6]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten72_reg_398_reg[7] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(select_ln17_5_fu_660_p3[7]),
        .Q(indvar_flatten72_reg_398_reg[7]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten72_reg_398_reg[8] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(select_ln17_5_fu_660_p3[8]),
        .Q(indvar_flatten72_reg_398_reg[8]),
        .R(ap_NS_fsm1));
  FDRE \indvar_flatten72_reg_398_reg[9] 
       (.C(ap_clk),
        .CE(\indvar_flatten27_reg_409[8]_i_2_n_0 ),
        .D(select_ln17_5_fu_660_p3[9]),
        .Q(indvar_flatten72_reg_398_reg[9]),
        .R(ap_NS_fsm1));
  LUT6 #(
    .INIT(64'h00000000FFFDAAAA)) 
    \indvar_flatten_reg_453[0]_i_1 
       (.I0(\indvar_flatten_reg_453_reg_n_0_[0] ),
        .I1(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_10),
        .I2(icmp_ln17_reg_1317),
        .I3(and_ln52_10_reg_1342),
        .I4(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .I5(ap_NS_fsm1),
        .O(\indvar_flatten_reg_453[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \indvar_flatten_reg_453[1]_i_1 
       (.I0(\indvar_flatten_reg_453_reg_n_0_[0] ),
        .I1(\indvar_flatten_reg_453_reg_n_0_[1] ),
        .O(add_ln21_1_fu_1050_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \indvar_flatten_reg_453[2]_i_1 
       (.I0(\indvar_flatten_reg_453_reg_n_0_[2] ),
        .I1(\indvar_flatten_reg_453_reg_n_0_[1] ),
        .I2(\indvar_flatten_reg_453_reg_n_0_[0] ),
        .O(add_ln21_1_fu_1050_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \indvar_flatten_reg_453[3]_i_1 
       (.I0(\indvar_flatten_reg_453_reg_n_0_[3] ),
        .I1(\indvar_flatten_reg_453_reg_n_0_[0] ),
        .I2(\indvar_flatten_reg_453_reg_n_0_[1] ),
        .I3(\indvar_flatten_reg_453_reg_n_0_[2] ),
        .O(add_ln21_1_fu_1050_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \indvar_flatten_reg_453[4]_i_1 
       (.I0(\indvar_flatten_reg_453_reg_n_0_[4] ),
        .I1(\indvar_flatten_reg_453_reg_n_0_[2] ),
        .I2(\indvar_flatten_reg_453_reg_n_0_[1] ),
        .I3(\indvar_flatten_reg_453_reg_n_0_[0] ),
        .I4(\indvar_flatten_reg_453_reg_n_0_[3] ),
        .O(add_ln21_1_fu_1050_p2[4]));
  LUT5 #(
    .INIT(32'hEEEEEEEA)) 
    \indvar_flatten_reg_453[5]_i_1 
       (.I0(ap_NS_fsm1),
        .I1(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .I2(and_ln52_10_reg_1342),
        .I3(icmp_ln17_reg_1317),
        .I4(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_10),
        .O(indvar_flatten_reg_453));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \indvar_flatten_reg_453[5]_i_2 
       (.I0(\indvar_flatten_reg_453_reg_n_0_[5] ),
        .I1(\indvar_flatten_reg_453_reg_n_0_[3] ),
        .I2(\indvar_flatten_reg_453_reg_n_0_[0] ),
        .I3(\indvar_flatten_reg_453_reg_n_0_[1] ),
        .I4(\indvar_flatten_reg_453_reg_n_0_[2] ),
        .I5(\indvar_flatten_reg_453_reg_n_0_[4] ),
        .O(add_ln21_1_fu_1050_p2[5]));
  FDRE \indvar_flatten_reg_453_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\indvar_flatten_reg_453[0]_i_1_n_0 ),
        .Q(\indvar_flatten_reg_453_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \indvar_flatten_reg_453_reg[1] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(add_ln21_1_fu_1050_p2[1]),
        .Q(\indvar_flatten_reg_453_reg_n_0_[1] ),
        .R(indvar_flatten_reg_453));
  FDRE \indvar_flatten_reg_453_reg[2] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(add_ln21_1_fu_1050_p2[2]),
        .Q(\indvar_flatten_reg_453_reg_n_0_[2] ),
        .R(indvar_flatten_reg_453));
  FDRE \indvar_flatten_reg_453_reg[3] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(add_ln21_1_fu_1050_p2[3]),
        .Q(\indvar_flatten_reg_453_reg_n_0_[3] ),
        .R(indvar_flatten_reg_453));
  FDRE \indvar_flatten_reg_453_reg[4] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(add_ln21_1_fu_1050_p2[4]),
        .Q(\indvar_flatten_reg_453_reg_n_0_[4] ),
        .R(indvar_flatten_reg_453));
  FDRE \indvar_flatten_reg_453_reg[5] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(add_ln21_1_fu_1050_p2[5]),
        .Q(\indvar_flatten_reg_453_reg_n_0_[5] ),
        .R(indvar_flatten_reg_453));
  LUT2 #(
    .INIT(4'hB)) 
    \input_ch_idx_0_reg_475[0]_i_1 
       (.I0(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_11),
        .I1(input_ch_idx_0_reg_475[0]),
        .O(input_ch_idx_fu_1044_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \input_ch_idx_0_reg_475[1]_i_1 
       (.I0(input_ch_idx_0_reg_475[1]),
        .I1(input_ch_idx_0_reg_475[0]),
        .I2(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_11),
        .O(input_ch_idx_fu_1044_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h1222)) 
    \input_ch_idx_0_reg_475[2]_i_1 
       (.I0(input_ch_idx_0_reg_475[2]),
        .I1(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_11),
        .I2(input_ch_idx_0_reg_475[0]),
        .I3(input_ch_idx_0_reg_475[1]),
        .O(input_ch_idx_fu_1044_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h006A00AA)) 
    \input_ch_idx_0_reg_475[3]_i_1 
       (.I0(input_ch_idx_0_reg_475[3]),
        .I1(input_ch_idx_0_reg_475[1]),
        .I2(input_ch_idx_0_reg_475[0]),
        .I3(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_11),
        .I4(input_ch_idx_0_reg_475[2]),
        .O(input_ch_idx_fu_1044_p2[3]));
  FDRE \input_ch_idx_0_reg_475_reg[0] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(input_ch_idx_fu_1044_p2[0]),
        .Q(input_ch_idx_0_reg_475[0]),
        .R(ap_NS_fsm1));
  FDRE \input_ch_idx_0_reg_475_reg[1] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(input_ch_idx_fu_1044_p2[1]),
        .Q(input_ch_idx_0_reg_475[1]),
        .R(ap_NS_fsm1));
  FDRE \input_ch_idx_0_reg_475_reg[2] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(input_ch_idx_fu_1044_p2[2]),
        .Q(input_ch_idx_0_reg_475[2]),
        .R(ap_NS_fsm1));
  FDRE \input_ch_idx_0_reg_475_reg[3] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(input_ch_idx_fu_1044_p2[3]),
        .Q(input_ch_idx_0_reg_475[3]),
        .R(ap_NS_fsm1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va line_buff_group_0_va_U
       (.ADDRARDADDR(line_buff_group_3_va_address0),
        .D(tmp_data_1_fu_1194_p5[15:0]),
        .Q(inStream_V_data_0_payload_B[15:0]),
        .WEA(line_buff_group_0_va_we0),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486),
        .inStream_V_data_0_sel(inStream_V_data_0_sel),
        .line_buff_group_0_va_ce0(line_buff_group_0_va_ce0),
        .\outStream_V_data_1_payload_B_reg[15] (\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .ram_reg(inStream_V_data_0_payload_A[15:0]),
        .select_ln21_1_reg_1389_pp0_iter2_reg(select_ln21_1_reg_1389_pp0_iter2_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va_0 line_buff_group_1_va_U
       (.ADDRARDADDR(line_buff_group_3_va_address0),
        .D(tmp_data_1_fu_1194_p5[31:16]),
        .Q(inStream_V_data_0_payload_B[31:16]),
        .WEA(line_buff_group_0_va_we0),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496),
        .inStream_V_data_0_sel(inStream_V_data_0_sel),
        .line_buff_group_0_va_ce0(line_buff_group_0_va_ce0),
        .\outStream_V_data_1_payload_B_reg[31] (\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .ram_reg(inStream_V_data_0_payload_A[31:16]),
        .select_ln21_1_reg_1389_pp0_iter2_reg(select_ln21_1_reg_1389_pp0_iter2_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va_1 line_buff_group_2_va_U
       (.ADDRARDADDR(line_buff_group_3_va_address0),
        .D(tmp_data_1_fu_1194_p5[47:32]),
        .Q(inStream_V_data_0_payload_B[47:32]),
        .WEA(line_buff_group_0_va_we0),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506),
        .inStream_V_data_0_sel(inStream_V_data_0_sel),
        .line_buff_group_0_va_ce0(line_buff_group_0_va_ce0),
        .\outStream_V_data_1_payload_B_reg[47] (\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .ram_reg(inStream_V_data_0_payload_A[47:32]),
        .select_ln21_1_reg_1389_pp0_iter2_reg(select_ln21_1_reg_1389_pp0_iter2_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va_2 line_buff_group_3_va_U
       (.ADDRARDADDR(line_buff_group_3_va_address0),
        .D(tmp_data_1_fu_1194_p5[63:48]),
        .Q(inStream_V_data_0_payload_B[63:48]),
        .WEA(line_buff_group_0_va_we0),
        .ap_block_pp0_stage0_subdone1_in(ap_block_pp0_stage0_subdone1_in),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516),
        .\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0] (\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0 (\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1 (\inStream_V_data_0_state_reg_n_0_[0] ),
        .\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2 (ap_enable_reg_pp0_iter4_reg_n_0),
        .icmp_ln15_reg_1308_pp0_iter3_reg(icmp_ln15_reg_1308_pp0_iter3_reg),
        .inStream_V_data_0_sel(inStream_V_data_0_sel),
        .line_buff_group_0_va_ce0(line_buff_group_0_va_ce0),
        .outStream_V_data_1_ack_in(outStream_V_data_1_ack_in),
        .\outStream_V_data_1_payload_B_reg[63] (\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .ram_reg(inStream_V_data_0_payload_A[63:48]),
        .select_ln21_1_reg_1389_pp0_iter2_reg(select_ln21_1_reg_1389_pp0_iter2_reg),
        .\select_ln21_1_reg_1389_reg[0] (line_buff_group_3_va_U_n_19));
  LUT1 #(
    .INIT(2'h1)) 
    \or_ln17_reg_1351[0]_i_1 
       (.I0(\indvar_flatten27_reg_409[8]_i_4_n_0 ),
        .O(p_0_in2_out));
  FDRE \or_ln17_reg_1351_reg[0] 
       (.C(ap_clk),
        .CE(\and_ln52_10_reg_1342[0]_i_1_n_0 ),
        .D(p_0_in2_out),
        .Q(or_ln17_reg_1351),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[0]_INST_0 
       (.I0(outStream_V_data_1_payload_B[0]),
        .I1(outStream_V_data_1_payload_A[0]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[10]_INST_0 
       (.I0(outStream_V_data_1_payload_B[10]),
        .I1(outStream_V_data_1_payload_A[10]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[11]_INST_0 
       (.I0(outStream_V_data_1_payload_B[11]),
        .I1(outStream_V_data_1_payload_A[11]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[12]_INST_0 
       (.I0(outStream_V_data_1_payload_B[12]),
        .I1(outStream_V_data_1_payload_A[12]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[13]_INST_0 
       (.I0(outStream_V_data_1_payload_B[13]),
        .I1(outStream_V_data_1_payload_A[13]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[14]_INST_0 
       (.I0(outStream_V_data_1_payload_B[14]),
        .I1(outStream_V_data_1_payload_A[14]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[15]_INST_0 
       (.I0(outStream_V_data_1_payload_B[15]),
        .I1(outStream_V_data_1_payload_A[15]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[16]_INST_0 
       (.I0(outStream_V_data_1_payload_B[16]),
        .I1(outStream_V_data_1_payload_A[16]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[17]_INST_0 
       (.I0(outStream_V_data_1_payload_B[17]),
        .I1(outStream_V_data_1_payload_A[17]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[18]_INST_0 
       (.I0(outStream_V_data_1_payload_B[18]),
        .I1(outStream_V_data_1_payload_A[18]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[19]_INST_0 
       (.I0(outStream_V_data_1_payload_B[19]),
        .I1(outStream_V_data_1_payload_A[19]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[1]_INST_0 
       (.I0(outStream_V_data_1_payload_B[1]),
        .I1(outStream_V_data_1_payload_A[1]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[20]_INST_0 
       (.I0(outStream_V_data_1_payload_B[20]),
        .I1(outStream_V_data_1_payload_A[20]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[21]_INST_0 
       (.I0(outStream_V_data_1_payload_B[21]),
        .I1(outStream_V_data_1_payload_A[21]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[22]_INST_0 
       (.I0(outStream_V_data_1_payload_B[22]),
        .I1(outStream_V_data_1_payload_A[22]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[23]_INST_0 
       (.I0(outStream_V_data_1_payload_B[23]),
        .I1(outStream_V_data_1_payload_A[23]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[24]_INST_0 
       (.I0(outStream_V_data_1_payload_B[24]),
        .I1(outStream_V_data_1_payload_A[24]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[25]_INST_0 
       (.I0(outStream_V_data_1_payload_B[25]),
        .I1(outStream_V_data_1_payload_A[25]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[26]_INST_0 
       (.I0(outStream_V_data_1_payload_B[26]),
        .I1(outStream_V_data_1_payload_A[26]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[27]_INST_0 
       (.I0(outStream_V_data_1_payload_B[27]),
        .I1(outStream_V_data_1_payload_A[27]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[28]_INST_0 
       (.I0(outStream_V_data_1_payload_B[28]),
        .I1(outStream_V_data_1_payload_A[28]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[29]_INST_0 
       (.I0(outStream_V_data_1_payload_B[29]),
        .I1(outStream_V_data_1_payload_A[29]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[2]_INST_0 
       (.I0(outStream_V_data_1_payload_B[2]),
        .I1(outStream_V_data_1_payload_A[2]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[30]_INST_0 
       (.I0(outStream_V_data_1_payload_B[30]),
        .I1(outStream_V_data_1_payload_A[30]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[31]_INST_0 
       (.I0(outStream_V_data_1_payload_B[31]),
        .I1(outStream_V_data_1_payload_A[31]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[32]_INST_0 
       (.I0(outStream_V_data_1_payload_B[32]),
        .I1(outStream_V_data_1_payload_A[32]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[32]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[33]_INST_0 
       (.I0(outStream_V_data_1_payload_B[33]),
        .I1(outStream_V_data_1_payload_A[33]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[33]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[34]_INST_0 
       (.I0(outStream_V_data_1_payload_B[34]),
        .I1(outStream_V_data_1_payload_A[34]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[34]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[35]_INST_0 
       (.I0(outStream_V_data_1_payload_B[35]),
        .I1(outStream_V_data_1_payload_A[35]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[35]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[36]_INST_0 
       (.I0(outStream_V_data_1_payload_B[36]),
        .I1(outStream_V_data_1_payload_A[36]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[36]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[37]_INST_0 
       (.I0(outStream_V_data_1_payload_B[37]),
        .I1(outStream_V_data_1_payload_A[37]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[37]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[38]_INST_0 
       (.I0(outStream_V_data_1_payload_B[38]),
        .I1(outStream_V_data_1_payload_A[38]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[38]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[39]_INST_0 
       (.I0(outStream_V_data_1_payload_B[39]),
        .I1(outStream_V_data_1_payload_A[39]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[39]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[3]_INST_0 
       (.I0(outStream_V_data_1_payload_B[3]),
        .I1(outStream_V_data_1_payload_A[3]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[40]_INST_0 
       (.I0(outStream_V_data_1_payload_B[40]),
        .I1(outStream_V_data_1_payload_A[40]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[40]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[41]_INST_0 
       (.I0(outStream_V_data_1_payload_B[41]),
        .I1(outStream_V_data_1_payload_A[41]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[41]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[42]_INST_0 
       (.I0(outStream_V_data_1_payload_B[42]),
        .I1(outStream_V_data_1_payload_A[42]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[42]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[43]_INST_0 
       (.I0(outStream_V_data_1_payload_B[43]),
        .I1(outStream_V_data_1_payload_A[43]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[43]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[44]_INST_0 
       (.I0(outStream_V_data_1_payload_B[44]),
        .I1(outStream_V_data_1_payload_A[44]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[44]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[45]_INST_0 
       (.I0(outStream_V_data_1_payload_B[45]),
        .I1(outStream_V_data_1_payload_A[45]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[45]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[46]_INST_0 
       (.I0(outStream_V_data_1_payload_B[46]),
        .I1(outStream_V_data_1_payload_A[46]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[46]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[47]_INST_0 
       (.I0(outStream_V_data_1_payload_B[47]),
        .I1(outStream_V_data_1_payload_A[47]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[47]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[48]_INST_0 
       (.I0(outStream_V_data_1_payload_B[48]),
        .I1(outStream_V_data_1_payload_A[48]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[48]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[49]_INST_0 
       (.I0(outStream_V_data_1_payload_B[49]),
        .I1(outStream_V_data_1_payload_A[49]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[49]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[4]_INST_0 
       (.I0(outStream_V_data_1_payload_B[4]),
        .I1(outStream_V_data_1_payload_A[4]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[50]_INST_0 
       (.I0(outStream_V_data_1_payload_B[50]),
        .I1(outStream_V_data_1_payload_A[50]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[50]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[51]_INST_0 
       (.I0(outStream_V_data_1_payload_B[51]),
        .I1(outStream_V_data_1_payload_A[51]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[51]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[52]_INST_0 
       (.I0(outStream_V_data_1_payload_B[52]),
        .I1(outStream_V_data_1_payload_A[52]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[52]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[53]_INST_0 
       (.I0(outStream_V_data_1_payload_B[53]),
        .I1(outStream_V_data_1_payload_A[53]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[53]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[54]_INST_0 
       (.I0(outStream_V_data_1_payload_B[54]),
        .I1(outStream_V_data_1_payload_A[54]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[54]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[55]_INST_0 
       (.I0(outStream_V_data_1_payload_B[55]),
        .I1(outStream_V_data_1_payload_A[55]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[55]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[56]_INST_0 
       (.I0(outStream_V_data_1_payload_B[56]),
        .I1(outStream_V_data_1_payload_A[56]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[56]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[57]_INST_0 
       (.I0(outStream_V_data_1_payload_B[57]),
        .I1(outStream_V_data_1_payload_A[57]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[57]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[58]_INST_0 
       (.I0(outStream_V_data_1_payload_B[58]),
        .I1(outStream_V_data_1_payload_A[58]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[58]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[59]_INST_0 
       (.I0(outStream_V_data_1_payload_B[59]),
        .I1(outStream_V_data_1_payload_A[59]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[59]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[5]_INST_0 
       (.I0(outStream_V_data_1_payload_B[5]),
        .I1(outStream_V_data_1_payload_A[5]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[60]_INST_0 
       (.I0(outStream_V_data_1_payload_B[60]),
        .I1(outStream_V_data_1_payload_A[60]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[60]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[61]_INST_0 
       (.I0(outStream_V_data_1_payload_B[61]),
        .I1(outStream_V_data_1_payload_A[61]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[61]));
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[62]_INST_0 
       (.I0(outStream_V_data_1_payload_B[62]),
        .I1(outStream_V_data_1_payload_A[62]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[62]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[63]_INST_0 
       (.I0(outStream_V_data_1_payload_B[63]),
        .I1(outStream_V_data_1_payload_A[63]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[63]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[6]_INST_0 
       (.I0(outStream_V_data_1_payload_B[6]),
        .I1(outStream_V_data_1_payload_A[6]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[7]_INST_0 
       (.I0(outStream_V_data_1_payload_B[7]),
        .I1(outStream_V_data_1_payload_A[7]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[8]_INST_0 
       (.I0(outStream_V_data_1_payload_B[8]),
        .I1(outStream_V_data_1_payload_A[8]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[9]_INST_0 
       (.I0(outStream_V_data_1_payload_B[9]),
        .I1(outStream_V_data_1_payload_A[9]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TDEST[0]_INST_0 
       (.I0(outStream_V_dest_V_1_payload_B[0]),
        .I1(outStream_V_dest_V_1_sel),
        .I2(outStream_V_dest_V_1_payload_A[0]),
        .O(outStream_TDEST[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TDEST[1]_INST_0 
       (.I0(outStream_V_dest_V_1_payload_B[1]),
        .I1(outStream_V_dest_V_1_sel),
        .I2(outStream_V_dest_V_1_payload_A[1]),
        .O(outStream_TDEST[1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TDEST[2]_INST_0 
       (.I0(outStream_V_dest_V_1_payload_B[2]),
        .I1(outStream_V_dest_V_1_sel),
        .I2(outStream_V_dest_V_1_payload_A[2]),
        .O(outStream_TDEST[2]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TDEST[3]_INST_0 
       (.I0(outStream_V_dest_V_1_payload_B[3]),
        .I1(outStream_V_dest_V_1_sel),
        .I2(outStream_V_dest_V_1_payload_A[3]),
        .O(outStream_TDEST[3]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TDEST[4]_INST_0 
       (.I0(outStream_V_dest_V_1_payload_B[4]),
        .I1(outStream_V_dest_V_1_sel),
        .I2(outStream_V_dest_V_1_payload_A[4]),
        .O(outStream_TDEST[4]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TDEST[5]_INST_0 
       (.I0(outStream_V_dest_V_1_payload_B[5]),
        .I1(outStream_V_dest_V_1_sel),
        .I2(outStream_V_dest_V_1_payload_A[5]),
        .O(outStream_TDEST[5]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TID[0]_INST_0 
       (.I0(outStream_V_id_V_1_payload_B[0]),
        .I1(outStream_V_id_V_1_sel),
        .I2(outStream_V_id_V_1_payload_A[0]),
        .O(outStream_TID[0]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TID[1]_INST_0 
       (.I0(outStream_V_id_V_1_payload_B[1]),
        .I1(outStream_V_id_V_1_sel),
        .I2(outStream_V_id_V_1_payload_A[1]),
        .O(outStream_TID[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TID[2]_INST_0 
       (.I0(outStream_V_id_V_1_payload_B[2]),
        .I1(outStream_V_id_V_1_sel),
        .I2(outStream_V_id_V_1_payload_A[2]),
        .O(outStream_TID[2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TID[3]_INST_0 
       (.I0(outStream_V_id_V_1_payload_B[3]),
        .I1(outStream_V_id_V_1_sel),
        .I2(outStream_V_id_V_1_payload_A[3]),
        .O(outStream_TID[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TID[4]_INST_0 
       (.I0(outStream_V_id_V_1_payload_B[4]),
        .I1(outStream_V_id_V_1_sel),
        .I2(outStream_V_id_V_1_payload_A[4]),
        .O(outStream_TID[4]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[0]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[0]),
        .I1(outStream_V_keep_V_1_payload_A[0]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[0]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[1]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[1]),
        .I1(outStream_V_keep_V_1_payload_A[1]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[1]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[2]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[2]),
        .I1(outStream_V_keep_V_1_payload_A[2]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[2]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[3]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[3]),
        .I1(outStream_V_keep_V_1_payload_A[3]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[3]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[4]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[4]),
        .I1(outStream_V_keep_V_1_payload_A[4]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[4]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[5]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[5]),
        .I1(outStream_V_keep_V_1_payload_A[5]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[5]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[6]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[6]),
        .I1(outStream_V_keep_V_1_payload_A[6]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[6]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[7]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[7]),
        .I1(outStream_V_keep_V_1_payload_A[7]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TLAST[0]_INST_0 
       (.I0(outStream_V_last_V_1_payload_B),
        .I1(outStream_V_last_V_1_sel),
        .I2(outStream_V_last_V_1_payload_A),
        .O(outStream_TLAST));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[0]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[0]),
        .I1(outStream_V_strb_V_1_payload_A[0]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[1]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[1]),
        .I1(outStream_V_strb_V_1_payload_A[1]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[2]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[2]),
        .I1(outStream_V_strb_V_1_payload_A[2]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[3]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[3]),
        .I1(outStream_V_strb_V_1_payload_A[3]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[4]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[4]),
        .I1(outStream_V_strb_V_1_payload_A[4]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[5]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[5]),
        .I1(outStream_V_strb_V_1_payload_A[5]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[5]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[6]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[6]),
        .I1(outStream_V_strb_V_1_payload_A[6]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[7]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[7]),
        .I1(outStream_V_strb_V_1_payload_A[7]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[7]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TUSER[0]_INST_0 
       (.I0(outStream_V_user_V_1_payload_B[0]),
        .I1(outStream_V_user_V_1_sel),
        .I2(outStream_V_user_V_1_payload_A[0]),
        .O(outStream_TUSER[0]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TUSER[1]_INST_0 
       (.I0(outStream_V_user_V_1_payload_B[1]),
        .I1(outStream_V_user_V_1_sel),
        .I2(outStream_V_user_V_1_payload_A[1]),
        .O(outStream_TUSER[1]));
  LUT3 #(
    .INIT(8'h45)) 
    \outStream_V_data_1_payload_A[63]_i_1 
       (.I0(outStream_V_data_1_sel_wr),
        .I1(outStream_V_data_1_ack_in),
        .I2(\outStream_V_data_1_state_reg_n_0_[0] ),
        .O(outStream_V_data_1_load_A));
  FDRE \outStream_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[0]),
        .Q(outStream_V_data_1_payload_A[0]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[10]),
        .Q(outStream_V_data_1_payload_A[10]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[11]),
        .Q(outStream_V_data_1_payload_A[11]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[12]),
        .Q(outStream_V_data_1_payload_A[12]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[13]),
        .Q(outStream_V_data_1_payload_A[13]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[14]),
        .Q(outStream_V_data_1_payload_A[14]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[15]),
        .Q(outStream_V_data_1_payload_A[15]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[16]),
        .Q(outStream_V_data_1_payload_A[16]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[17]),
        .Q(outStream_V_data_1_payload_A[17]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[18]),
        .Q(outStream_V_data_1_payload_A[18]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[19]),
        .Q(outStream_V_data_1_payload_A[19]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[1]),
        .Q(outStream_V_data_1_payload_A[1]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[20]),
        .Q(outStream_V_data_1_payload_A[20]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[21]),
        .Q(outStream_V_data_1_payload_A[21]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[22]),
        .Q(outStream_V_data_1_payload_A[22]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[23]),
        .Q(outStream_V_data_1_payload_A[23]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[24]),
        .Q(outStream_V_data_1_payload_A[24]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[25]),
        .Q(outStream_V_data_1_payload_A[25]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[26]),
        .Q(outStream_V_data_1_payload_A[26]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[27]),
        .Q(outStream_V_data_1_payload_A[27]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[28]),
        .Q(outStream_V_data_1_payload_A[28]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[29]),
        .Q(outStream_V_data_1_payload_A[29]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[2]),
        .Q(outStream_V_data_1_payload_A[2]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[30]),
        .Q(outStream_V_data_1_payload_A[30]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[31]),
        .Q(outStream_V_data_1_payload_A[31]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[32]),
        .Q(outStream_V_data_1_payload_A[32]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[33]),
        .Q(outStream_V_data_1_payload_A[33]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[34]),
        .Q(outStream_V_data_1_payload_A[34]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[35]),
        .Q(outStream_V_data_1_payload_A[35]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[36]),
        .Q(outStream_V_data_1_payload_A[36]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[37]),
        .Q(outStream_V_data_1_payload_A[37]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[38]),
        .Q(outStream_V_data_1_payload_A[38]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[39]),
        .Q(outStream_V_data_1_payload_A[39]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[3]),
        .Q(outStream_V_data_1_payload_A[3]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[40]),
        .Q(outStream_V_data_1_payload_A[40]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[41]),
        .Q(outStream_V_data_1_payload_A[41]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[42]),
        .Q(outStream_V_data_1_payload_A[42]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[43]),
        .Q(outStream_V_data_1_payload_A[43]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[44]),
        .Q(outStream_V_data_1_payload_A[44]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[45]),
        .Q(outStream_V_data_1_payload_A[45]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[46]),
        .Q(outStream_V_data_1_payload_A[46]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[47]),
        .Q(outStream_V_data_1_payload_A[47]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[48]),
        .Q(outStream_V_data_1_payload_A[48]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[49]),
        .Q(outStream_V_data_1_payload_A[49]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[4]),
        .Q(outStream_V_data_1_payload_A[4]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[50]),
        .Q(outStream_V_data_1_payload_A[50]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[51]),
        .Q(outStream_V_data_1_payload_A[51]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[52]),
        .Q(outStream_V_data_1_payload_A[52]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[53]),
        .Q(outStream_V_data_1_payload_A[53]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[54]),
        .Q(outStream_V_data_1_payload_A[54]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[55]),
        .Q(outStream_V_data_1_payload_A[55]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[56]),
        .Q(outStream_V_data_1_payload_A[56]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[57]),
        .Q(outStream_V_data_1_payload_A[57]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[58]),
        .Q(outStream_V_data_1_payload_A[58]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[59]),
        .Q(outStream_V_data_1_payload_A[59]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[5]),
        .Q(outStream_V_data_1_payload_A[5]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[60]),
        .Q(outStream_V_data_1_payload_A[60]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[61]),
        .Q(outStream_V_data_1_payload_A[61]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[62]),
        .Q(outStream_V_data_1_payload_A[62]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[63]),
        .Q(outStream_V_data_1_payload_A[63]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[6]),
        .Q(outStream_V_data_1_payload_A[6]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[7]),
        .Q(outStream_V_data_1_payload_A[7]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[8]),
        .Q(outStream_V_data_1_payload_A[8]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(tmp_data_1_fu_1194_p5[9]),
        .Q(outStream_V_data_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \outStream_V_data_1_payload_B[63]_i_1 
       (.I0(outStream_V_data_1_sel_wr),
        .I1(outStream_V_data_1_ack_in),
        .I2(\outStream_V_data_1_state_reg_n_0_[0] ),
        .O(outStream_V_data_1_load_B));
  FDRE \outStream_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[0]),
        .Q(outStream_V_data_1_payload_B[0]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[10]),
        .Q(outStream_V_data_1_payload_B[10]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[11]),
        .Q(outStream_V_data_1_payload_B[11]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[12]),
        .Q(outStream_V_data_1_payload_B[12]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[13]),
        .Q(outStream_V_data_1_payload_B[13]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[14]),
        .Q(outStream_V_data_1_payload_B[14]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[15]),
        .Q(outStream_V_data_1_payload_B[15]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[16]),
        .Q(outStream_V_data_1_payload_B[16]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[17]),
        .Q(outStream_V_data_1_payload_B[17]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[18]),
        .Q(outStream_V_data_1_payload_B[18]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[19]),
        .Q(outStream_V_data_1_payload_B[19]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[1]),
        .Q(outStream_V_data_1_payload_B[1]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[20]),
        .Q(outStream_V_data_1_payload_B[20]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[21]),
        .Q(outStream_V_data_1_payload_B[21]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[22]),
        .Q(outStream_V_data_1_payload_B[22]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[23]),
        .Q(outStream_V_data_1_payload_B[23]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[24]),
        .Q(outStream_V_data_1_payload_B[24]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[25]),
        .Q(outStream_V_data_1_payload_B[25]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[26]),
        .Q(outStream_V_data_1_payload_B[26]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[27]),
        .Q(outStream_V_data_1_payload_B[27]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[28]),
        .Q(outStream_V_data_1_payload_B[28]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[29]),
        .Q(outStream_V_data_1_payload_B[29]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[2]),
        .Q(outStream_V_data_1_payload_B[2]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[30]),
        .Q(outStream_V_data_1_payload_B[30]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[31]),
        .Q(outStream_V_data_1_payload_B[31]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[32]),
        .Q(outStream_V_data_1_payload_B[32]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[33]),
        .Q(outStream_V_data_1_payload_B[33]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[34]),
        .Q(outStream_V_data_1_payload_B[34]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[35]),
        .Q(outStream_V_data_1_payload_B[35]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[36]),
        .Q(outStream_V_data_1_payload_B[36]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[37]),
        .Q(outStream_V_data_1_payload_B[37]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[38]),
        .Q(outStream_V_data_1_payload_B[38]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[39]),
        .Q(outStream_V_data_1_payload_B[39]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[3]),
        .Q(outStream_V_data_1_payload_B[3]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[40]),
        .Q(outStream_V_data_1_payload_B[40]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[41]),
        .Q(outStream_V_data_1_payload_B[41]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[42]),
        .Q(outStream_V_data_1_payload_B[42]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[43]),
        .Q(outStream_V_data_1_payload_B[43]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[44]),
        .Q(outStream_V_data_1_payload_B[44]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[45]),
        .Q(outStream_V_data_1_payload_B[45]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[46]),
        .Q(outStream_V_data_1_payload_B[46]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[47]),
        .Q(outStream_V_data_1_payload_B[47]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[48]),
        .Q(outStream_V_data_1_payload_B[48]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[49]),
        .Q(outStream_V_data_1_payload_B[49]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[4]),
        .Q(outStream_V_data_1_payload_B[4]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[50]),
        .Q(outStream_V_data_1_payload_B[50]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[51]),
        .Q(outStream_V_data_1_payload_B[51]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[52]),
        .Q(outStream_V_data_1_payload_B[52]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[53]),
        .Q(outStream_V_data_1_payload_B[53]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[54]),
        .Q(outStream_V_data_1_payload_B[54]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[55]),
        .Q(outStream_V_data_1_payload_B[55]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[56]),
        .Q(outStream_V_data_1_payload_B[56]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[57]),
        .Q(outStream_V_data_1_payload_B[57]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[58]),
        .Q(outStream_V_data_1_payload_B[58]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[59]),
        .Q(outStream_V_data_1_payload_B[59]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[5]),
        .Q(outStream_V_data_1_payload_B[5]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[60]),
        .Q(outStream_V_data_1_payload_B[60]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[61]),
        .Q(outStream_V_data_1_payload_B[61]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[62]),
        .Q(outStream_V_data_1_payload_B[62]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[63]),
        .Q(outStream_V_data_1_payload_B[63]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[6]),
        .Q(outStream_V_data_1_payload_B[6]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[7]),
        .Q(outStream_V_data_1_payload_B[7]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[8]),
        .Q(outStream_V_data_1_payload_B[8]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(tmp_data_1_fu_1194_p5[9]),
        .Q(outStream_V_data_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_data_1_sel_rd_i_1
       (.I0(\outStream_V_data_1_state_reg_n_0_[0] ),
        .I1(outStream_TREADY),
        .I2(outStream_V_data_1_sel),
        .O(outStream_V_data_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_data_1_sel_rd_i_1_n_0),
        .Q(outStream_V_data_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    outStream_V_data_1_sel_wr_i_1
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_V_data_1_sel_wr),
        .O(outStream_V_data_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_data_1_sel_wr_i_1_n_0),
        .Q(outStream_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h08FFFFFF08080808)) 
    \outStream_V_data_1_state[0]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_TREADY),
        .I4(outStream_V_data_1_ack_in),
        .I5(\outStream_V_data_1_state_reg_n_0_[0] ),
        .O(\outStream_V_data_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFF00FF)) 
    \outStream_V_data_1_state[1]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(\outStream_V_data_1_state_reg_n_0_[0] ),
        .I4(outStream_TREADY),
        .I5(outStream_V_data_1_ack_in),
        .O(outStream_V_data_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_data_1_state[0]_i_1_n_0 ),
        .Q(\outStream_V_data_1_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_data_1_state),
        .Q(outStream_V_data_1_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h45)) 
    \outStream_V_dest_V_1_payload_A[5]_i_1 
       (.I0(outStream_V_dest_V_1_sel_wr),
        .I1(outStream_V_dest_V_1_ack_in),
        .I2(outStream_TVALID),
        .O(outStream_V_dest_V_1_load_A));
  FDRE \outStream_V_dest_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_A),
        .D(tmp_dest_V_fu_160[0]),
        .Q(outStream_V_dest_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_A),
        .D(tmp_dest_V_fu_160[1]),
        .Q(outStream_V_dest_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_A),
        .D(tmp_dest_V_fu_160[2]),
        .Q(outStream_V_dest_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_A),
        .D(tmp_dest_V_fu_160[3]),
        .Q(outStream_V_dest_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_A),
        .D(tmp_dest_V_fu_160[4]),
        .Q(outStream_V_dest_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_A),
        .D(tmp_dest_V_fu_160[5]),
        .Q(outStream_V_dest_V_1_payload_A[5]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \outStream_V_dest_V_1_payload_B[5]_i_1 
       (.I0(outStream_V_dest_V_1_sel_wr),
        .I1(outStream_V_dest_V_1_ack_in),
        .I2(outStream_TVALID),
        .O(outStream_V_dest_V_1_load_B));
  FDRE \outStream_V_dest_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_B),
        .D(tmp_dest_V_fu_160[0]),
        .Q(outStream_V_dest_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_B),
        .D(tmp_dest_V_fu_160[1]),
        .Q(outStream_V_dest_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_B),
        .D(tmp_dest_V_fu_160[2]),
        .Q(outStream_V_dest_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_B),
        .D(tmp_dest_V_fu_160[3]),
        .Q(outStream_V_dest_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_B),
        .D(tmp_dest_V_fu_160[4]),
        .Q(outStream_V_dest_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_B),
        .D(tmp_dest_V_fu_160[5]),
        .Q(outStream_V_dest_V_1_payload_B[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_dest_V_1_sel_rd_i_1
       (.I0(outStream_TVALID),
        .I1(outStream_TREADY),
        .I2(outStream_V_dest_V_1_sel),
        .O(outStream_V_dest_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_dest_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_dest_V_1_sel_rd_i_1_n_0),
        .Q(outStream_V_dest_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    outStream_V_dest_V_1_sel_wr_i_1
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_V_dest_V_1_ack_in),
        .I4(outStream_V_dest_V_1_sel_wr),
        .O(outStream_V_dest_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_dest_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_dest_V_1_sel_wr_i_1_n_0),
        .Q(outStream_V_dest_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h08FF0808FFFF0000)) 
    \outStream_V_dest_V_1_state[0]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_TREADY),
        .I4(outStream_TVALID),
        .I5(outStream_V_dest_V_1_ack_in),
        .O(\outStream_V_dest_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFF00FF)) 
    \outStream_V_dest_V_1_state[1]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_TVALID),
        .I4(outStream_TREADY),
        .I5(outStream_V_dest_V_1_ack_in),
        .O(\outStream_V_dest_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_dest_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_dest_V_1_state[0]_i_1_n_0 ),
        .Q(outStream_TVALID),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_dest_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_dest_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_dest_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h45)) 
    \outStream_V_id_V_1_payload_A[4]_i_1 
       (.I0(outStream_V_id_V_1_sel_wr),
        .I1(outStream_V_id_V_1_ack_in),
        .I2(\outStream_V_id_V_1_state_reg_n_0_[0] ),
        .O(outStream_V_id_V_1_load_A));
  FDRE \outStream_V_id_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_A),
        .D(tmp_id_V_fu_176[0]),
        .Q(outStream_V_id_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_A),
        .D(tmp_id_V_fu_176[1]),
        .Q(outStream_V_id_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_A),
        .D(tmp_id_V_fu_176[2]),
        .Q(outStream_V_id_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_A),
        .D(tmp_id_V_fu_176[3]),
        .Q(outStream_V_id_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_A),
        .D(tmp_id_V_fu_176[4]),
        .Q(outStream_V_id_V_1_payload_A[4]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \outStream_V_id_V_1_payload_B[4]_i_1 
       (.I0(outStream_V_id_V_1_sel_wr),
        .I1(outStream_V_id_V_1_ack_in),
        .I2(\outStream_V_id_V_1_state_reg_n_0_[0] ),
        .O(outStream_V_id_V_1_load_B));
  FDRE \outStream_V_id_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_B),
        .D(tmp_id_V_fu_176[0]),
        .Q(outStream_V_id_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_B),
        .D(tmp_id_V_fu_176[1]),
        .Q(outStream_V_id_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_B),
        .D(tmp_id_V_fu_176[2]),
        .Q(outStream_V_id_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_B),
        .D(tmp_id_V_fu_176[3]),
        .Q(outStream_V_id_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_B),
        .D(tmp_id_V_fu_176[4]),
        .Q(outStream_V_id_V_1_payload_B[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_id_V_1_sel_rd_i_1
       (.I0(\outStream_V_id_V_1_state_reg_n_0_[0] ),
        .I1(outStream_TREADY),
        .I2(outStream_V_id_V_1_sel),
        .O(outStream_V_id_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_id_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_id_V_1_sel_rd_i_1_n_0),
        .Q(outStream_V_id_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    outStream_V_id_V_1_sel_wr_i_1
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_V_id_V_1_ack_in),
        .I4(outStream_V_id_V_1_sel_wr),
        .O(outStream_V_id_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_id_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_id_V_1_sel_wr_i_1_n_0),
        .Q(outStream_V_id_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h08FF0808FFFF0000)) 
    \outStream_V_id_V_1_state[0]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_TREADY),
        .I4(\outStream_V_id_V_1_state_reg_n_0_[0] ),
        .I5(outStream_V_id_V_1_ack_in),
        .O(\outStream_V_id_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFF00FF)) 
    \outStream_V_id_V_1_state[1]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(\outStream_V_id_V_1_state_reg_n_0_[0] ),
        .I4(outStream_TREADY),
        .I5(outStream_V_id_V_1_ack_in),
        .O(\outStream_V_id_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_id_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_id_V_1_state[0]_i_1_n_0 ),
        .Q(\outStream_V_id_V_1_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_id_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_id_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_id_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h45)) 
    \outStream_V_keep_V_1_payload_A[7]_i_1 
       (.I0(outStream_V_keep_V_1_sel_wr),
        .I1(outStream_V_keep_V_1_ack_in),
        .I2(\outStream_V_keep_V_1_state_reg_n_0_[0] ),
        .O(outStream_V_keep_V_1_load_A));
  FDRE \outStream_V_keep_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_fu_164[0]),
        .Q(outStream_V_keep_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_fu_164[1]),
        .Q(outStream_V_keep_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_fu_164[2]),
        .Q(outStream_V_keep_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_fu_164[3]),
        .Q(outStream_V_keep_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_fu_164[4]),
        .Q(outStream_V_keep_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_fu_164[5]),
        .Q(outStream_V_keep_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_fu_164[6]),
        .Q(outStream_V_keep_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_fu_164[7]),
        .Q(outStream_V_keep_V_1_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \outStream_V_keep_V_1_payload_B[7]_i_1 
       (.I0(outStream_V_keep_V_1_sel_wr),
        .I1(outStream_V_keep_V_1_ack_in),
        .I2(\outStream_V_keep_V_1_state_reg_n_0_[0] ),
        .O(outStream_V_keep_V_1_load_B));
  FDRE \outStream_V_keep_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_fu_164[0]),
        .Q(outStream_V_keep_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_fu_164[1]),
        .Q(outStream_V_keep_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_fu_164[2]),
        .Q(outStream_V_keep_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_fu_164[3]),
        .Q(outStream_V_keep_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_fu_164[4]),
        .Q(outStream_V_keep_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_fu_164[5]),
        .Q(outStream_V_keep_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_fu_164[6]),
        .Q(outStream_V_keep_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_fu_164[7]),
        .Q(outStream_V_keep_V_1_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_keep_V_1_sel_rd_i_1
       (.I0(\outStream_V_keep_V_1_state_reg_n_0_[0] ),
        .I1(outStream_TREADY),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_V_keep_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_keep_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_keep_V_1_sel_rd_i_1_n_0),
        .Q(outStream_V_keep_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    outStream_V_keep_V_1_sel_wr_i_1
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_V_keep_V_1_ack_in),
        .I4(outStream_V_keep_V_1_sel_wr),
        .O(outStream_V_keep_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_keep_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_keep_V_1_sel_wr_i_1_n_0),
        .Q(outStream_V_keep_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h08FF0808FFFF0000)) 
    \outStream_V_keep_V_1_state[0]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_TREADY),
        .I4(\outStream_V_keep_V_1_state_reg_n_0_[0] ),
        .I5(outStream_V_keep_V_1_ack_in),
        .O(\outStream_V_keep_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFF00FF)) 
    \outStream_V_keep_V_1_state[1]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(\outStream_V_keep_V_1_state_reg_n_0_[0] ),
        .I4(outStream_TREADY),
        .I5(outStream_V_keep_V_1_ack_in),
        .O(\outStream_V_keep_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_keep_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_keep_V_1_state[0]_i_1_n_0 ),
        .Q(\outStream_V_keep_V_1_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_keep_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_keep_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_keep_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \outStream_V_last_V_1_payload_A[0]_i_1 
       (.I0(curr_output_last_V_reg_1398_pp0_iter2_reg),
        .I1(outStream_V_last_V_1_sel_wr),
        .I2(outStream_V_last_V_1_ack_in),
        .I3(\outStream_V_last_V_1_state_reg_n_0_[0] ),
        .I4(outStream_V_last_V_1_payload_A),
        .O(\outStream_V_last_V_1_payload_A[0]_i_1_n_0 ));
  FDRE \outStream_V_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_last_V_1_payload_A[0]_i_1_n_0 ),
        .Q(outStream_V_last_V_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \outStream_V_last_V_1_payload_B[0]_i_1 
       (.I0(curr_output_last_V_reg_1398_pp0_iter2_reg),
        .I1(outStream_V_last_V_1_sel_wr),
        .I2(outStream_V_last_V_1_ack_in),
        .I3(\outStream_V_last_V_1_state_reg_n_0_[0] ),
        .I4(outStream_V_last_V_1_payload_B),
        .O(\outStream_V_last_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \outStream_V_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_last_V_1_payload_B[0]_i_1_n_0 ),
        .Q(outStream_V_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_last_V_1_sel_rd_i_1
       (.I0(\outStream_V_last_V_1_state_reg_n_0_[0] ),
        .I1(outStream_TREADY),
        .I2(outStream_V_last_V_1_sel),
        .O(outStream_V_last_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_last_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_last_V_1_sel_rd_i_1_n_0),
        .Q(outStream_V_last_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    outStream_V_last_V_1_sel_wr_i_1
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_V_last_V_1_ack_in),
        .I4(outStream_V_last_V_1_sel_wr),
        .O(outStream_V_last_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_last_V_1_sel_wr_i_1_n_0),
        .Q(outStream_V_last_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h08FF0808FFFF0000)) 
    \outStream_V_last_V_1_state[0]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_TREADY),
        .I4(\outStream_V_last_V_1_state_reg_n_0_[0] ),
        .I5(outStream_V_last_V_1_ack_in),
        .O(\outStream_V_last_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFF00FF)) 
    \outStream_V_last_V_1_state[1]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(\outStream_V_last_V_1_state_reg_n_0_[0] ),
        .I4(outStream_TREADY),
        .I5(outStream_V_last_V_1_ack_in),
        .O(\outStream_V_last_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_last_V_1_state[0]_i_1_n_0 ),
        .Q(\outStream_V_last_V_1_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_last_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_last_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h45)) 
    \outStream_V_strb_V_1_payload_A[7]_i_1 
       (.I0(outStream_V_strb_V_1_sel_wr),
        .I1(outStream_V_strb_V_1_ack_in),
        .I2(\outStream_V_strb_V_1_state_reg_n_0_[0] ),
        .O(outStream_V_strb_V_1_load_A));
  FDRE \outStream_V_strb_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_fu_168[0]),
        .Q(outStream_V_strb_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_fu_168[1]),
        .Q(outStream_V_strb_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_fu_168[2]),
        .Q(outStream_V_strb_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_fu_168[3]),
        .Q(outStream_V_strb_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_fu_168[4]),
        .Q(outStream_V_strb_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_fu_168[5]),
        .Q(outStream_V_strb_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_fu_168[6]),
        .Q(outStream_V_strb_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_fu_168[7]),
        .Q(outStream_V_strb_V_1_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \outStream_V_strb_V_1_payload_B[7]_i_1 
       (.I0(outStream_V_strb_V_1_sel_wr),
        .I1(outStream_V_strb_V_1_ack_in),
        .I2(\outStream_V_strb_V_1_state_reg_n_0_[0] ),
        .O(outStream_V_strb_V_1_load_B));
  FDRE \outStream_V_strb_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_fu_168[0]),
        .Q(outStream_V_strb_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_fu_168[1]),
        .Q(outStream_V_strb_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_fu_168[2]),
        .Q(outStream_V_strb_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_fu_168[3]),
        .Q(outStream_V_strb_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_fu_168[4]),
        .Q(outStream_V_strb_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_fu_168[5]),
        .Q(outStream_V_strb_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_fu_168[6]),
        .Q(outStream_V_strb_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_fu_168[7]),
        .Q(outStream_V_strb_V_1_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_strb_V_1_sel_rd_i_1
       (.I0(\outStream_V_strb_V_1_state_reg_n_0_[0] ),
        .I1(outStream_TREADY),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_V_strb_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_strb_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_strb_V_1_sel_rd_i_1_n_0),
        .Q(outStream_V_strb_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    outStream_V_strb_V_1_sel_wr_i_1
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_V_strb_V_1_ack_in),
        .I4(outStream_V_strb_V_1_sel_wr),
        .O(outStream_V_strb_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_strb_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_strb_V_1_sel_wr_i_1_n_0),
        .Q(outStream_V_strb_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h08FF0808FFFF0000)) 
    \outStream_V_strb_V_1_state[0]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_TREADY),
        .I4(\outStream_V_strb_V_1_state_reg_n_0_[0] ),
        .I5(outStream_V_strb_V_1_ack_in),
        .O(\outStream_V_strb_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFF00FF)) 
    \outStream_V_strb_V_1_state[1]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(\outStream_V_strb_V_1_state_reg_n_0_[0] ),
        .I4(outStream_TREADY),
        .I5(outStream_V_strb_V_1_ack_in),
        .O(\outStream_V_strb_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_strb_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_strb_V_1_state[0]_i_1_n_0 ),
        .Q(\outStream_V_strb_V_1_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_strb_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_strb_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_strb_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \outStream_V_user_V_1_payload_A[0]_i_1 
       (.I0(tmp_user_V_fu_172[0]),
        .I1(outStream_V_user_V_1_sel_wr),
        .I2(outStream_V_user_V_1_ack_in),
        .I3(\outStream_V_user_V_1_state_reg_n_0_[0] ),
        .I4(outStream_V_user_V_1_payload_A[0]),
        .O(\outStream_V_user_V_1_payload_A[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \outStream_V_user_V_1_payload_A[1]_i_1 
       (.I0(tmp_user_V_fu_172[1]),
        .I1(outStream_V_user_V_1_sel_wr),
        .I2(outStream_V_user_V_1_ack_in),
        .I3(\outStream_V_user_V_1_state_reg_n_0_[0] ),
        .I4(outStream_V_user_V_1_payload_A[1]),
        .O(\outStream_V_user_V_1_payload_A[1]_i_1_n_0 ));
  FDRE \outStream_V_user_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_user_V_1_payload_A[0]_i_1_n_0 ),
        .Q(outStream_V_user_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \outStream_V_user_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_user_V_1_payload_A[1]_i_1_n_0 ),
        .Q(outStream_V_user_V_1_payload_A[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \outStream_V_user_V_1_payload_B[0]_i_1 
       (.I0(tmp_user_V_fu_172[0]),
        .I1(outStream_V_user_V_1_sel_wr),
        .I2(outStream_V_user_V_1_ack_in),
        .I3(\outStream_V_user_V_1_state_reg_n_0_[0] ),
        .I4(outStream_V_user_V_1_payload_B[0]),
        .O(\outStream_V_user_V_1_payload_B[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \outStream_V_user_V_1_payload_B[1]_i_1 
       (.I0(tmp_user_V_fu_172[1]),
        .I1(outStream_V_user_V_1_sel_wr),
        .I2(outStream_V_user_V_1_ack_in),
        .I3(\outStream_V_user_V_1_state_reg_n_0_[0] ),
        .I4(outStream_V_user_V_1_payload_B[1]),
        .O(\outStream_V_user_V_1_payload_B[1]_i_1_n_0 ));
  FDRE \outStream_V_user_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_user_V_1_payload_B[0]_i_1_n_0 ),
        .Q(outStream_V_user_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \outStream_V_user_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_user_V_1_payload_B[1]_i_1_n_0 ),
        .Q(outStream_V_user_V_1_payload_B[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_user_V_1_sel_rd_i_1
       (.I0(\outStream_V_user_V_1_state_reg_n_0_[0] ),
        .I1(outStream_TREADY),
        .I2(outStream_V_user_V_1_sel),
        .O(outStream_V_user_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_user_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_user_V_1_sel_rd_i_1_n_0),
        .Q(outStream_V_user_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    outStream_V_user_V_1_sel_wr_i_1
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_V_user_V_1_ack_in),
        .I4(outStream_V_user_V_1_sel_wr),
        .O(outStream_V_user_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_user_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_user_V_1_sel_wr_i_1_n_0),
        .Q(outStream_V_user_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h08FF0808FFFF0000)) 
    \outStream_V_user_V_1_state[0]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(outStream_TREADY),
        .I4(\outStream_V_user_V_1_state_reg_n_0_[0] ),
        .I5(outStream_V_user_V_1_ack_in),
        .O(\outStream_V_user_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFF00FF)) 
    \outStream_V_user_V_1_state[1]_i_1 
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0] ),
        .I3(\outStream_V_user_V_1_state_reg_n_0_[0] ),
        .I4(outStream_TREADY),
        .I5(outStream_V_user_V_1_ack_in),
        .O(\outStream_V_user_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_user_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_user_V_1_state[0]_i_1_n_0 ),
        .Q(\outStream_V_user_V_1_state_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_user_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_user_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_user_V_1_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h0000E666)) 
    \phi_ln10_reg_321[0]_i_1 
       (.I0(phi_ln10_reg_321[0]),
        .I1(ap_CS_fsm_state3),
        .I2(phi_ln10_reg_321[1]),
        .I3(phi_ln10_reg_321[2]),
        .I4(ap_NS_fsm195_out),
        .O(\phi_ln10_reg_321[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0000BCCC)) 
    \phi_ln10_reg_321[1]_i_1 
       (.I0(phi_ln10_reg_321[2]),
        .I1(phi_ln10_reg_321[1]),
        .I2(phi_ln10_reg_321[0]),
        .I3(ap_CS_fsm_state3),
        .I4(ap_NS_fsm195_out),
        .O(\phi_ln10_reg_321[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    \phi_ln10_reg_321[2]_i_1 
       (.I0(phi_ln10_reg_321[2]),
        .I1(phi_ln10_reg_321[1]),
        .I2(phi_ln10_reg_321[0]),
        .I3(ap_CS_fsm_state3),
        .I4(ap_NS_fsm195_out),
        .O(\phi_ln10_reg_321[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \phi_ln10_reg_321[2]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(\phi_ln9_reg_299_reg_n_0_[0] ),
        .I2(\phi_ln9_reg_299_reg_n_0_[1] ),
        .I3(\phi_ln9_reg_299_reg_n_0_[2] ),
        .O(ap_NS_fsm195_out));
  FDRE \phi_ln10_reg_321_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\phi_ln10_reg_321[0]_i_1_n_0 ),
        .Q(phi_ln10_reg_321[0]),
        .R(1'b0));
  FDRE \phi_ln10_reg_321_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\phi_ln10_reg_321[1]_i_1_n_0 ),
        .Q(phi_ln10_reg_321[1]),
        .R(1'b0));
  FDRE \phi_ln10_reg_321_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\phi_ln10_reg_321[2]_i_1_n_0 ),
        .Q(phi_ln10_reg_321[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h0000E666)) 
    \phi_ln11_reg_343[0]_i_1 
       (.I0(phi_ln11_reg_343[0]),
        .I1(ap_CS_fsm_state4),
        .I2(phi_ln11_reg_343[1]),
        .I3(phi_ln11_reg_343[2]),
        .I4(ap_NS_fsm194_out),
        .O(\phi_ln11_reg_343[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h0000BCCC)) 
    \phi_ln11_reg_343[1]_i_1 
       (.I0(phi_ln11_reg_343[2]),
        .I1(phi_ln11_reg_343[1]),
        .I2(phi_ln11_reg_343[0]),
        .I3(ap_CS_fsm_state4),
        .I4(ap_NS_fsm194_out),
        .O(\phi_ln11_reg_343[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    \phi_ln11_reg_343[2]_i_1 
       (.I0(phi_ln11_reg_343[2]),
        .I1(phi_ln11_reg_343[1]),
        .I2(phi_ln11_reg_343[0]),
        .I3(ap_CS_fsm_state4),
        .I4(ap_NS_fsm194_out),
        .O(\phi_ln11_reg_343[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \phi_ln11_reg_343[2]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(phi_ln10_reg_321[0]),
        .I2(phi_ln10_reg_321[1]),
        .I3(phi_ln10_reg_321[2]),
        .O(ap_NS_fsm194_out));
  FDRE \phi_ln11_reg_343_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\phi_ln11_reg_343[0]_i_1_n_0 ),
        .Q(phi_ln11_reg_343[0]),
        .R(1'b0));
  FDRE \phi_ln11_reg_343_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\phi_ln11_reg_343[1]_i_1_n_0 ),
        .Q(phi_ln11_reg_343[1]),
        .R(1'b0));
  FDRE \phi_ln11_reg_343_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\phi_ln11_reg_343[2]_i_1_n_0 ),
        .Q(phi_ln11_reg_343[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h0000E666)) 
    \phi_ln12_reg_365[0]_i_1 
       (.I0(phi_ln12_reg_365[0]),
        .I1(ap_CS_fsm_state5),
        .I2(phi_ln12_reg_365[1]),
        .I3(phi_ln12_reg_365[2]),
        .I4(ap_NS_fsm193_out),
        .O(\phi_ln12_reg_365[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h0000BCCC)) 
    \phi_ln12_reg_365[1]_i_1 
       (.I0(phi_ln12_reg_365[2]),
        .I1(phi_ln12_reg_365[1]),
        .I2(phi_ln12_reg_365[0]),
        .I3(ap_CS_fsm_state5),
        .I4(ap_NS_fsm193_out),
        .O(\phi_ln12_reg_365[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    \phi_ln12_reg_365[2]_i_1 
       (.I0(phi_ln12_reg_365[2]),
        .I1(phi_ln12_reg_365[1]),
        .I2(phi_ln12_reg_365[0]),
        .I3(ap_CS_fsm_state5),
        .I4(ap_NS_fsm193_out),
        .O(\phi_ln12_reg_365[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \phi_ln12_reg_365[2]_i_2 
       (.I0(ap_CS_fsm_state4),
        .I1(phi_ln11_reg_343[0]),
        .I2(phi_ln11_reg_343[1]),
        .I3(phi_ln11_reg_343[2]),
        .O(ap_NS_fsm193_out));
  FDRE \phi_ln12_reg_365_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\phi_ln12_reg_365[0]_i_1_n_0 ),
        .Q(phi_ln12_reg_365[0]),
        .R(1'b0));
  FDRE \phi_ln12_reg_365_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\phi_ln12_reg_365[1]_i_1_n_0 ),
        .Q(phi_ln12_reg_365[1]),
        .R(1'b0));
  FDRE \phi_ln12_reg_365_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\phi_ln12_reg_365[2]_i_1_n_0 ),
        .Q(phi_ln12_reg_365[2]),
        .R(1'b0));
  FDRE \phi_ln9_reg_299_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(yolo_upsamp_top_CTRL_BUS_s_axi_U_n_4),
        .Q(\phi_ln9_reg_299_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \phi_ln9_reg_299_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(yolo_upsamp_top_CTRL_BUS_s_axi_U_n_3),
        .Q(\phi_ln9_reg_299_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \phi_ln9_reg_299_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(yolo_upsamp_top_CTRL_BUS_s_axi_U_n_2),
        .Q(\phi_ln9_reg_299_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \row_idx_0_reg_420[0]_i_1 
       (.I0(row_idx_0_reg_420_reg[0]),
        .O(\row_idx_0_reg_420[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \row_idx_0_reg_420[1]_i_1 
       (.I0(row_idx_0_reg_420_reg[0]),
        .I1(row_idx_0_reg_420_reg[1]),
        .O(row_idx_fu_706_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \row_idx_0_reg_420[2]_i_1 
       (.I0(row_idx_0_reg_420_reg[2]),
        .I1(row_idx_0_reg_420_reg[1]),
        .I2(row_idx_0_reg_420_reg[0]),
        .O(row_idx_fu_706_p2[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \row_idx_0_reg_420[3]_i_1 
       (.I0(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .I1(icmp_ln17_reg_1317),
        .O(row_idx_0_reg_420));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \row_idx_0_reg_420[3]_i_2 
       (.I0(row_idx_0_reg_420_reg[3]),
        .I1(row_idx_0_reg_420_reg[0]),
        .I2(row_idx_0_reg_420_reg[1]),
        .I3(row_idx_0_reg_420_reg[2]),
        .O(row_idx_fu_706_p2[3]));
  FDRE \row_idx_0_reg_420_reg[0] 
       (.C(ap_clk),
        .CE(row_idx_0_reg_420),
        .D(\row_idx_0_reg_420[0]_i_1_n_0 ),
        .Q(row_idx_0_reg_420_reg[0]),
        .R(ap_NS_fsm1));
  FDRE \row_idx_0_reg_420_reg[1] 
       (.C(ap_clk),
        .CE(row_idx_0_reg_420),
        .D(row_idx_fu_706_p2[1]),
        .Q(row_idx_0_reg_420_reg[1]),
        .R(ap_NS_fsm1));
  FDRE \row_idx_0_reg_420_reg[2] 
       (.C(ap_clk),
        .CE(row_idx_0_reg_420),
        .D(row_idx_fu_706_p2[2]),
        .Q(row_idx_0_reg_420_reg[2]),
        .R(ap_NS_fsm1));
  FDRE \row_idx_0_reg_420_reg[3] 
       (.C(ap_clk),
        .CE(row_idx_0_reg_420),
        .D(row_idx_fu_706_p2[3]),
        .Q(row_idx_0_reg_420_reg[3]),
        .R(ap_NS_fsm1));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \row_stride_0_reg_431[0]_i_1 
       (.I0(and_ln52_10_reg_1342),
        .I1(icmp_ln17_reg_1317),
        .I2(\row_stride_0_reg_431_reg_n_0_[0] ),
        .O(select_ln17_4_fu_876_p3[0]));
  LUT4 #(
    .INIT(16'h8000)) 
    \row_stride_0_reg_431[1]_i_1 
       (.I0(ap_CS_fsm_state5),
        .I1(phi_ln12_reg_365[0]),
        .I2(phi_ln12_reg_365[1]),
        .I3(phi_ln12_reg_365[2]),
        .O(ap_NS_fsm1));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \row_stride_0_reg_431[1]_i_2 
       (.I0(and_ln52_10_reg_1342),
        .I1(\row_stride_0_reg_431_reg_n_0_[0] ),
        .I2(icmp_ln17_reg_1317),
        .I3(\row_stride_0_reg_431_reg_n_0_[1] ),
        .O(select_ln17_4_fu_876_p3[1]));
  FDRE \row_stride_0_reg_431_reg[0] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(select_ln17_4_fu_876_p3[0]),
        .Q(\row_stride_0_reg_431_reg_n_0_[0] ),
        .R(ap_NS_fsm1));
  FDRE \row_stride_0_reg_431_reg[1] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(select_ln17_4_fu_876_p3[1]),
        .Q(\row_stride_0_reg_431_reg_n_0_[1] ),
        .R(ap_NS_fsm1));
  LUT6 #(
    .INIT(64'h7F55FFFF7F550000)) 
    \select_ln21_1_reg_1389[0]_i_1 
       (.I0(\select_ln21_1_reg_1389[0]_i_2_n_0 ),
        .I1(\select_ln21_1_reg_1389[0]_i_3_n_0 ),
        .I2(\select_ln21_1_reg_1389[0]_i_4_n_0 ),
        .I3(\select_ln21_1_reg_1389[0]_i_5_n_0 ),
        .I4(p_5_in),
        .I5(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .O(\select_ln21_1_reg_1389[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \select_ln21_1_reg_1389[0]_i_2 
       (.I0(icmp_ln17_reg_1317),
        .I1(\row_stride_0_reg_431_reg_n_0_[0] ),
        .I2(and_ln52_10_reg_1342),
        .O(\select_ln21_1_reg_1389[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \select_ln21_1_reg_1389[0]_i_3 
       (.I0(and_ln52_10_reg_1342),
        .I1(xor_ln52_reg_1326),
        .I2(\row_stride_0_reg_431_reg_n_0_[0] ),
        .O(\select_ln21_1_reg_1389[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0010)) 
    \select_ln21_1_reg_1389[0]_i_4 
       (.I0(icmp_ln17_reg_1317),
        .I1(and_ln52_10_reg_1342),
        .I2(\col_stride_0_reg_464_reg_n_0_[0] ),
        .I3(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13),
        .I4(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_12),
        .I5(\col_stride_0_reg_464[1]_i_2_n_0 ),
        .O(\select_ln21_1_reg_1389[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFF00E0)) 
    \select_ln21_1_reg_1389[0]_i_5 
       (.I0(\row_stride_0_reg_431_reg_n_0_[0] ),
        .I1(\col_stride_0_reg_464_reg_n_0_[0] ),
        .I2(xor_ln52_reg_1326),
        .I3(and_ln52_10_reg_1342),
        .I4(\select_ln21_1_reg_1389[0]_i_6_n_0 ),
        .O(\select_ln21_1_reg_1389[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hCF004500)) 
    \select_ln21_1_reg_1389[0]_i_6 
       (.I0(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13),
        .I1(icmp_ln17_reg_1317),
        .I2(icmp_ln19_reg_1337),
        .I3(xor_ln52_reg_1326),
        .I4(yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_12),
        .O(\select_ln21_1_reg_1389[0]_i_6_n_0 ));
  FDRE \select_ln21_1_reg_1389_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone1_in),
        .D(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .Q(select_ln21_1_reg_1389_pp0_iter2_reg),
        .R(1'b0));
  FDRE \select_ln21_1_reg_1389_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\select_ln21_1_reg_1389[0]_i_1_n_0 ),
        .Q(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \select_ln52_4_reg_1377_reg[0] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(select_ln52_4_fu_921_p3[0]),
        .Q(select_ln52_4_reg_1377[0]),
        .R(1'b0));
  FDRE \select_ln52_4_reg_1377_reg[1] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(select_ln52_4_fu_921_p3[1]),
        .Q(select_ln52_4_reg_1377[1]),
        .R(1'b0));
  FDRE \select_ln52_4_reg_1377_reg[2] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(select_ln52_4_fu_921_p3[2]),
        .Q(select_ln52_4_reg_1377[2]),
        .R(1'b0));
  FDRE \select_ln52_4_reg_1377_reg[3] 
       (.C(ap_clk),
        .CE(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .D(select_ln52_4_fu_921_p3[3]),
        .Q(select_ln52_4_reg_1377[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_fu_160[0]_i_1 
       (.I0(inStream_V_dest_V_0_payload_B[0]),
        .I1(inStream_V_dest_V_0_sel),
        .I2(inStream_V_dest_V_0_payload_A[0]),
        .O(inStream_V_dest_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_fu_160[1]_i_1 
       (.I0(inStream_V_dest_V_0_payload_B[1]),
        .I1(inStream_V_dest_V_0_sel),
        .I2(inStream_V_dest_V_0_payload_A[1]),
        .O(inStream_V_dest_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_fu_160[2]_i_1 
       (.I0(inStream_V_dest_V_0_payload_B[2]),
        .I1(inStream_V_dest_V_0_sel),
        .I2(inStream_V_dest_V_0_payload_A[2]),
        .O(inStream_V_dest_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_fu_160[3]_i_1 
       (.I0(inStream_V_dest_V_0_payload_B[3]),
        .I1(inStream_V_dest_V_0_sel),
        .I2(inStream_V_dest_V_0_payload_A[3]),
        .O(inStream_V_dest_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_fu_160[4]_i_1 
       (.I0(inStream_V_dest_V_0_payload_B[4]),
        .I1(inStream_V_dest_V_0_sel),
        .I2(inStream_V_dest_V_0_payload_A[4]),
        .O(inStream_V_dest_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_fu_160[5]_i_1 
       (.I0(inStream_V_dest_V_0_payload_B[5]),
        .I1(inStream_V_dest_V_0_sel),
        .I2(inStream_V_dest_V_0_payload_A[5]),
        .O(inStream_V_dest_V_0_data_out[5]));
  FDRE \tmp_dest_V_fu_160_reg[0] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_dest_V_0_data_out[0]),
        .Q(tmp_dest_V_fu_160[0]),
        .R(1'b0));
  FDRE \tmp_dest_V_fu_160_reg[1] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_dest_V_0_data_out[1]),
        .Q(tmp_dest_V_fu_160[1]),
        .R(1'b0));
  FDRE \tmp_dest_V_fu_160_reg[2] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_dest_V_0_data_out[2]),
        .Q(tmp_dest_V_fu_160[2]),
        .R(1'b0));
  FDRE \tmp_dest_V_fu_160_reg[3] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_dest_V_0_data_out[3]),
        .Q(tmp_dest_V_fu_160[3]),
        .R(1'b0));
  FDRE \tmp_dest_V_fu_160_reg[4] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_dest_V_0_data_out[4]),
        .Q(tmp_dest_V_fu_160[4]),
        .R(1'b0));
  FDRE \tmp_dest_V_fu_160_reg[5] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_dest_V_0_data_out[5]),
        .Q(tmp_dest_V_fu_160[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_fu_176[0]_i_1 
       (.I0(inStream_V_id_V_0_payload_B[0]),
        .I1(inStream_V_id_V_0_sel),
        .I2(inStream_V_id_V_0_payload_A[0]),
        .O(inStream_V_id_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_fu_176[1]_i_1 
       (.I0(inStream_V_id_V_0_payload_B[1]),
        .I1(inStream_V_id_V_0_sel),
        .I2(inStream_V_id_V_0_payload_A[1]),
        .O(inStream_V_id_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_fu_176[2]_i_1 
       (.I0(inStream_V_id_V_0_payload_B[2]),
        .I1(inStream_V_id_V_0_sel),
        .I2(inStream_V_id_V_0_payload_A[2]),
        .O(inStream_V_id_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_fu_176[3]_i_1 
       (.I0(inStream_V_id_V_0_payload_B[3]),
        .I1(inStream_V_id_V_0_sel),
        .I2(inStream_V_id_V_0_payload_A[3]),
        .O(inStream_V_id_V_0_data_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_fu_176[4]_i_1 
       (.I0(inStream_V_id_V_0_payload_B[4]),
        .I1(inStream_V_id_V_0_sel),
        .I2(inStream_V_id_V_0_payload_A[4]),
        .O(inStream_V_id_V_0_data_out[4]));
  FDRE \tmp_id_V_fu_176_reg[0] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_id_V_0_data_out[0]),
        .Q(tmp_id_V_fu_176[0]),
        .R(1'b0));
  FDRE \tmp_id_V_fu_176_reg[1] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_id_V_0_data_out[1]),
        .Q(tmp_id_V_fu_176[1]),
        .R(1'b0));
  FDRE \tmp_id_V_fu_176_reg[2] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_id_V_0_data_out[2]),
        .Q(tmp_id_V_fu_176[2]),
        .R(1'b0));
  FDRE \tmp_id_V_fu_176_reg[3] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_id_V_0_data_out[3]),
        .Q(tmp_id_V_fu_176[3]),
        .R(1'b0));
  FDRE \tmp_id_V_fu_176_reg[4] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_id_V_0_data_out[4]),
        .Q(tmp_id_V_fu_176[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_fu_164[0]_i_1 
       (.I0(inStream_V_keep_V_0_payload_B[0]),
        .I1(inStream_V_keep_V_0_payload_A[0]),
        .I2(inStream_V_keep_V_0_sel),
        .O(inStream_V_keep_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_fu_164[1]_i_1 
       (.I0(inStream_V_keep_V_0_payload_B[1]),
        .I1(inStream_V_keep_V_0_payload_A[1]),
        .I2(inStream_V_keep_V_0_sel),
        .O(inStream_V_keep_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_fu_164[2]_i_1 
       (.I0(inStream_V_keep_V_0_payload_B[2]),
        .I1(inStream_V_keep_V_0_payload_A[2]),
        .I2(inStream_V_keep_V_0_sel),
        .O(inStream_V_keep_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_fu_164[3]_i_1 
       (.I0(inStream_V_keep_V_0_payload_B[3]),
        .I1(inStream_V_keep_V_0_payload_A[3]),
        .I2(inStream_V_keep_V_0_sel),
        .O(inStream_V_keep_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_fu_164[4]_i_1 
       (.I0(inStream_V_keep_V_0_payload_B[4]),
        .I1(inStream_V_keep_V_0_payload_A[4]),
        .I2(inStream_V_keep_V_0_sel),
        .O(inStream_V_keep_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_fu_164[5]_i_1 
       (.I0(inStream_V_keep_V_0_payload_B[5]),
        .I1(inStream_V_keep_V_0_payload_A[5]),
        .I2(inStream_V_keep_V_0_sel),
        .O(inStream_V_keep_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_fu_164[6]_i_1 
       (.I0(inStream_V_keep_V_0_payload_B[6]),
        .I1(inStream_V_keep_V_0_payload_A[6]),
        .I2(inStream_V_keep_V_0_sel),
        .O(inStream_V_keep_V_0_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_fu_164[7]_i_1 
       (.I0(inStream_V_keep_V_0_payload_B[7]),
        .I1(inStream_V_keep_V_0_payload_A[7]),
        .I2(inStream_V_keep_V_0_sel),
        .O(inStream_V_keep_V_0_data_out[7]));
  FDRE \tmp_keep_V_fu_164_reg[0] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_keep_V_0_data_out[0]),
        .Q(tmp_keep_V_fu_164[0]),
        .R(1'b0));
  FDRE \tmp_keep_V_fu_164_reg[1] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_keep_V_0_data_out[1]),
        .Q(tmp_keep_V_fu_164[1]),
        .R(1'b0));
  FDRE \tmp_keep_V_fu_164_reg[2] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_keep_V_0_data_out[2]),
        .Q(tmp_keep_V_fu_164[2]),
        .R(1'b0));
  FDRE \tmp_keep_V_fu_164_reg[3] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_keep_V_0_data_out[3]),
        .Q(tmp_keep_V_fu_164[3]),
        .R(1'b0));
  FDRE \tmp_keep_V_fu_164_reg[4] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_keep_V_0_data_out[4]),
        .Q(tmp_keep_V_fu_164[4]),
        .R(1'b0));
  FDRE \tmp_keep_V_fu_164_reg[5] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_keep_V_0_data_out[5]),
        .Q(tmp_keep_V_fu_164[5]),
        .R(1'b0));
  FDRE \tmp_keep_V_fu_164_reg[6] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_keep_V_0_data_out[6]),
        .Q(tmp_keep_V_fu_164[6]),
        .R(1'b0));
  FDRE \tmp_keep_V_fu_164_reg[7] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_keep_V_0_data_out[7]),
        .Q(tmp_keep_V_fu_164[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_fu_168[0]_i_1 
       (.I0(inStream_V_strb_V_0_payload_B[0]),
        .I1(inStream_V_strb_V_0_payload_A[0]),
        .I2(inStream_V_strb_V_0_sel),
        .O(inStream_V_strb_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_fu_168[1]_i_1 
       (.I0(inStream_V_strb_V_0_payload_B[1]),
        .I1(inStream_V_strb_V_0_payload_A[1]),
        .I2(inStream_V_strb_V_0_sel),
        .O(inStream_V_strb_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_fu_168[2]_i_1 
       (.I0(inStream_V_strb_V_0_payload_B[2]),
        .I1(inStream_V_strb_V_0_payload_A[2]),
        .I2(inStream_V_strb_V_0_sel),
        .O(inStream_V_strb_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_fu_168[3]_i_1 
       (.I0(inStream_V_strb_V_0_payload_B[3]),
        .I1(inStream_V_strb_V_0_payload_A[3]),
        .I2(inStream_V_strb_V_0_sel),
        .O(inStream_V_strb_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_fu_168[4]_i_1 
       (.I0(inStream_V_strb_V_0_payload_B[4]),
        .I1(inStream_V_strb_V_0_payload_A[4]),
        .I2(inStream_V_strb_V_0_sel),
        .O(inStream_V_strb_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_fu_168[5]_i_1 
       (.I0(inStream_V_strb_V_0_payload_B[5]),
        .I1(inStream_V_strb_V_0_payload_A[5]),
        .I2(inStream_V_strb_V_0_sel),
        .O(inStream_V_strb_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_fu_168[6]_i_1 
       (.I0(inStream_V_strb_V_0_payload_B[6]),
        .I1(inStream_V_strb_V_0_payload_A[6]),
        .I2(inStream_V_strb_V_0_sel),
        .O(inStream_V_strb_V_0_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_fu_168[7]_i_1 
       (.I0(inStream_V_strb_V_0_payload_B[7]),
        .I1(inStream_V_strb_V_0_payload_A[7]),
        .I2(inStream_V_strb_V_0_sel),
        .O(inStream_V_strb_V_0_data_out[7]));
  FDRE \tmp_strb_V_fu_168_reg[0] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_strb_V_0_data_out[0]),
        .Q(tmp_strb_V_fu_168[0]),
        .R(1'b0));
  FDRE \tmp_strb_V_fu_168_reg[1] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_strb_V_0_data_out[1]),
        .Q(tmp_strb_V_fu_168[1]),
        .R(1'b0));
  FDRE \tmp_strb_V_fu_168_reg[2] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_strb_V_0_data_out[2]),
        .Q(tmp_strb_V_fu_168[2]),
        .R(1'b0));
  FDRE \tmp_strb_V_fu_168_reg[3] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_strb_V_0_data_out[3]),
        .Q(tmp_strb_V_fu_168[3]),
        .R(1'b0));
  FDRE \tmp_strb_V_fu_168_reg[4] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_strb_V_0_data_out[4]),
        .Q(tmp_strb_V_fu_168[4]),
        .R(1'b0));
  FDRE \tmp_strb_V_fu_168_reg[5] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_strb_V_0_data_out[5]),
        .Q(tmp_strb_V_fu_168[5]),
        .R(1'b0));
  FDRE \tmp_strb_V_fu_168_reg[6] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_strb_V_0_data_out[6]),
        .Q(tmp_strb_V_fu_168[6]),
        .R(1'b0));
  FDRE \tmp_strb_V_fu_168_reg[7] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_strb_V_0_data_out[7]),
        .Q(tmp_strb_V_fu_168[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_user_V_fu_172[0]_i_1 
       (.I0(inStream_V_user_V_0_payload_B[0]),
        .I1(inStream_V_user_V_0_sel),
        .I2(inStream_V_user_V_0_payload_A[0]),
        .O(inStream_V_user_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_user_V_fu_172[1]_i_1 
       (.I0(inStream_V_user_V_0_payload_B[1]),
        .I1(inStream_V_user_V_0_sel),
        .I2(inStream_V_user_V_0_payload_A[1]),
        .O(inStream_V_user_V_0_data_out[1]));
  FDRE \tmp_user_V_fu_172_reg[0] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_user_V_0_data_out[0]),
        .Q(tmp_user_V_fu_172[0]),
        .R(1'b0));
  FDRE \tmp_user_V_fu_172_reg[1] 
       (.C(ap_clk),
        .CE(line_buff_group_0_va_we0),
        .D(inStream_V_user_V_0_data_out[1]),
        .Q(tmp_user_V_fu_172[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \xor_ln52_reg_1326[0]_i_1 
       (.I0(icmp_ln17_fu_610_p2),
        .O(xor_ln52_fu_616_p2));
  FDRE \xor_ln52_reg_1326_reg[0] 
       (.C(ap_clk),
        .CE(\and_ln52_10_reg_1342[0]_i_1_n_0 ),
        .D(xor_ln52_fu_616_p2),
        .Q(xor_ln52_reg_1326),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_CTRL_BUS_s_axi yolo_upsamp_top_CTRL_BUS_s_axi_U
       (.D(ap_NS_fsm[1:0]),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_CTRL_BUS_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_CTRL_BUS_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_CTRL_BUS_WREADY),
        .Q({ap_CS_fsm_state11,ap_CS_fsm_state2,\ap_CS_fsm_reg_n_0_[0] }),
        .\ap_CS_fsm_reg[1] (yolo_upsamp_top_CTRL_BUS_s_axi_U_n_2),
        .\ap_CS_fsm_reg[1]_0 (yolo_upsamp_top_CTRL_BUS_s_axi_U_n_3),
        .\ap_CS_fsm_reg[1]_1 (yolo_upsamp_top_CTRL_BUS_s_axi_U_n_4),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .int_ap_ready_i_2_0(\outStream_V_strb_V_1_state_reg_n_0_[0] ),
        .int_ap_ready_i_2_1(\outStream_V_data_1_state_reg_n_0_[0] ),
        .int_ap_ready_i_3_0(\outStream_V_id_V_1_state_reg_n_0_[0] ),
        .int_ap_ready_reg_0(\outStream_V_last_V_1_state_reg_n_0_[0] ),
        .int_ap_ready_reg_1(outStream_TVALID),
        .int_ap_ready_reg_2(\outStream_V_user_V_1_state_reg_n_0_[0] ),
        .int_ap_ready_reg_3(\outStream_V_keep_V_1_state_reg_n_0_[0] ),
        .interrupt(interrupt),
        .outStream_TREADY(outStream_TREADY),
        .outStream_V_data_1_ack_in(outStream_V_data_1_ack_in),
        .outStream_V_dest_V_1_ack_in(outStream_V_dest_V_1_ack_in),
        .outStream_V_id_V_1_ack_in(outStream_V_id_V_1_ack_in),
        .outStream_V_keep_V_1_ack_in(outStream_V_keep_V_1_ack_in),
        .outStream_V_last_V_1_ack_in(outStream_V_last_V_1_ack_in),
        .outStream_V_strb_V_1_ack_in(outStream_V_strb_V_1_ack_in),
        .outStream_V_user_V_1_ack_in(outStream_V_user_V_1_ack_in),
        .\phi_ln9_reg_299_reg[2] (\phi_ln9_reg_299_reg_n_0_[0] ),
        .\phi_ln9_reg_299_reg[2]_0 (\phi_ln9_reg_299_reg_n_0_[1] ),
        .\phi_ln9_reg_299_reg[2]_1 (\phi_ln9_reg_299_reg_n_0_[2] ),
        .s_axi_CTRL_BUS_ARADDR(s_axi_CTRL_BUS_ARADDR),
        .s_axi_CTRL_BUS_ARVALID(s_axi_CTRL_BUS_ARVALID),
        .s_axi_CTRL_BUS_AWADDR(s_axi_CTRL_BUS_AWADDR),
        .s_axi_CTRL_BUS_AWVALID(s_axi_CTRL_BUS_AWVALID),
        .s_axi_CTRL_BUS_BREADY(s_axi_CTRL_BUS_BREADY),
        .s_axi_CTRL_BUS_BVALID(s_axi_CTRL_BUS_BVALID),
        .s_axi_CTRL_BUS_RDATA({\^s_axi_CTRL_BUS_RDATA [7],\^s_axi_CTRL_BUS_RDATA [3:0]}),
        .s_axi_CTRL_BUS_RREADY(s_axi_CTRL_BUS_RREADY),
        .s_axi_CTRL_BUS_RVALID(s_axi_CTRL_BUS_RVALID),
        .s_axi_CTRL_BUS_WDATA({s_axi_CTRL_BUS_WDATA[7],s_axi_CTRL_BUS_WDATA[1:0]}),
        .s_axi_CTRL_BUS_WSTRB(s_axi_CTRL_BUS_WSTRB[0]),
        .s_axi_CTRL_BUS_WVALID(s_axi_CTRL_BUS_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1 yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2
       (.A(select_ln21_fu_972_p3),
        .ADDRARDADDR(line_buff_group_3_va_address0),
        .D(select_ln52_4_fu_921_p3),
        .P(grp_fu_1207_p3),
        .Q(ap_CS_fsm_pp0_stage0),
        .ap_block_pp0_stage0_subdone1_in(ap_block_pp0_stage0_subdone1_in),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .\col_assign_reg_442_reg[1] (yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_9),
        .\col_stride_0_reg_464_reg[0] ({\indvar_flatten_reg_453_reg_n_0_[5] ,\indvar_flatten_reg_453_reg_n_0_[4] ,\indvar_flatten_reg_453_reg_n_0_[3] ,\indvar_flatten_reg_453_reg_n_0_[2] ,\indvar_flatten_reg_453_reg_n_0_[1] }),
        .\col_stride_0_reg_464_reg[0]_0 (\indvar_flatten_reg_453_reg_n_0_[0] ),
        .icmp_ln17_reg_1317(icmp_ln17_reg_1317),
        .icmp_ln19_reg_1337(icmp_ln19_reg_1337),
        .\indvar_flatten_reg_453_reg[2] (yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_12),
        .\input_ch_idx_0_reg_475_reg[1] (yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13),
        .or_ln17_reg_1351(or_ln17_reg_1351),
        .\or_ln17_reg_1351_reg[0] (yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_11),
        .p(yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .p_0(\icmp_ln15_reg_1308_reg_n_0_[0] ),
        .p_1(select_ln52_4_reg_1377),
        .p_2(\icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0] ),
        .p_3(col_assign_reg_442),
        .p_4(input_ch_idx_0_reg_475),
        .p_5_in(p_5_in),
        .ram_reg(\select_ln21_1_reg_1389_reg_n_0_[0] ),
        .xor_ln52_reg_1326(xor_ln52_reg_1326),
        .\xor_ln52_reg_1326_reg[0] (yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_10));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1 yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1
       (.A(select_ln21_fu_972_p3),
        .D(select_ln52_4_fu_921_p3),
        .P(grp_fu_1207_p3),
        .Q(ap_CS_fsm_pp0_stage0),
        .ap_block_pp0_stage0_subdone1_in(ap_block_pp0_stage0_subdone1_in),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .\icmp_ln15_reg_1308_reg[0] (yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7),
        .p(\icmp_ln15_reg_1308_reg_n_0_[0] ),
        .p_5_in(p_5_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_CTRL_BUS_s_axi
   (ap_rst_n_inv,
    ap_done,
    \ap_CS_fsm_reg[1] ,
    \ap_CS_fsm_reg[1]_0 ,
    \ap_CS_fsm_reg[1]_1 ,
    \FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_CTRL_BUS_BVALID,
    D,
    s_axi_CTRL_BUS_RVALID,
    \FSM_onehot_rstate_reg[1]_0 ,
    interrupt,
    s_axi_CTRL_BUS_RDATA,
    ap_clk,
    Q,
    \phi_ln9_reg_299_reg[2] ,
    \phi_ln9_reg_299_reg[2]_0 ,
    \phi_ln9_reg_299_reg[2]_1 ,
    s_axi_CTRL_BUS_WVALID,
    s_axi_CTRL_BUS_AWVALID,
    s_axi_CTRL_BUS_BREADY,
    s_axi_CTRL_BUS_WDATA,
    s_axi_CTRL_BUS_WSTRB,
    outStream_TREADY,
    outStream_V_last_V_1_ack_in,
    int_ap_ready_reg_0,
    outStream_V_dest_V_1_ack_in,
    int_ap_ready_reg_1,
    outStream_V_user_V_1_ack_in,
    int_ap_ready_reg_2,
    outStream_V_id_V_1_ack_in,
    int_ap_ready_i_3_0,
    outStream_V_keep_V_1_ack_in,
    int_ap_ready_reg_3,
    int_ap_ready_i_2_0,
    outStream_V_strb_V_1_ack_in,
    int_ap_ready_i_2_1,
    outStream_V_data_1_ack_in,
    s_axi_CTRL_BUS_ARADDR,
    s_axi_CTRL_BUS_RREADY,
    s_axi_CTRL_BUS_ARVALID,
    ap_rst_n,
    s_axi_CTRL_BUS_AWADDR);
  output ap_rst_n_inv;
  output ap_done;
  output \ap_CS_fsm_reg[1] ;
  output \ap_CS_fsm_reg[1]_0 ;
  output \ap_CS_fsm_reg[1]_1 ;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_CTRL_BUS_BVALID;
  output [1:0]D;
  output s_axi_CTRL_BUS_RVALID;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output interrupt;
  output [4:0]s_axi_CTRL_BUS_RDATA;
  input ap_clk;
  input [2:0]Q;
  input \phi_ln9_reg_299_reg[2] ;
  input \phi_ln9_reg_299_reg[2]_0 ;
  input \phi_ln9_reg_299_reg[2]_1 ;
  input s_axi_CTRL_BUS_WVALID;
  input s_axi_CTRL_BUS_AWVALID;
  input s_axi_CTRL_BUS_BREADY;
  input [2:0]s_axi_CTRL_BUS_WDATA;
  input [0:0]s_axi_CTRL_BUS_WSTRB;
  input outStream_TREADY;
  input outStream_V_last_V_1_ack_in;
  input int_ap_ready_reg_0;
  input outStream_V_dest_V_1_ack_in;
  input int_ap_ready_reg_1;
  input outStream_V_user_V_1_ack_in;
  input int_ap_ready_reg_2;
  input outStream_V_id_V_1_ack_in;
  input int_ap_ready_i_3_0;
  input outStream_V_keep_V_1_ack_in;
  input int_ap_ready_reg_3;
  input int_ap_ready_i_2_0;
  input outStream_V_strb_V_1_ack_in;
  input int_ap_ready_i_2_1;
  input outStream_V_data_1_ack_in;
  input [3:0]s_axi_CTRL_BUS_ARADDR;
  input s_axi_CTRL_BUS_RREADY;
  input s_axi_CTRL_BUS_ARVALID;
  input ap_rst_n;
  input [3:0]s_axi_CTRL_BUS_AWADDR;

  wire [1:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [2:0]Q;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[1]_1 ;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ar_hs;
  wire int_ap_done;
  wire int_ap_done_i_1_n_0;
  wire int_ap_done_i_2_n_0;
  wire int_ap_idle;
  wire int_ap_ready;
  wire int_ap_ready_i_2_0;
  wire int_ap_ready_i_2_1;
  wire int_ap_ready_i_2_n_0;
  wire int_ap_ready_i_3_0;
  wire int_ap_ready_i_3_n_0;
  wire int_ap_ready_i_4_n_0;
  wire int_ap_ready_i_5_n_0;
  wire int_ap_ready_i_6_n_0;
  wire int_ap_ready_i_7_n_0;
  wire int_ap_ready_i_8_n_0;
  wire int_ap_ready_i_9_n_0;
  wire int_ap_ready_reg_0;
  wire int_ap_ready_reg_1;
  wire int_ap_ready_reg_2;
  wire int_ap_ready_reg_3;
  wire int_ap_start3_out;
  wire int_ap_start_i_1_n_0;
  wire int_auto_restart;
  wire int_auto_restart_i_1_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_isr6_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire interrupt;
  wire outStream_TREADY;
  wire outStream_V_data_1_ack_in;
  wire outStream_V_dest_V_1_ack_in;
  wire outStream_V_id_V_1_ack_in;
  wire outStream_V_keep_V_1_ack_in;
  wire outStream_V_last_V_1_ack_in;
  wire outStream_V_strb_V_1_ack_in;
  wire outStream_V_user_V_1_ack_in;
  wire p_0_in__0;
  wire p_1_in;
  wire \phi_ln9_reg_299_reg[2] ;
  wire \phi_ln9_reg_299_reg[2]_0 ;
  wire \phi_ln9_reg_299_reg[2]_1 ;
  wire [7:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire [3:0]s_axi_CTRL_BUS_ARADDR;
  wire s_axi_CTRL_BUS_ARVALID;
  wire [3:0]s_axi_CTRL_BUS_AWADDR;
  wire s_axi_CTRL_BUS_AWVALID;
  wire s_axi_CTRL_BUS_BREADY;
  wire s_axi_CTRL_BUS_BVALID;
  wire [4:0]s_axi_CTRL_BUS_RDATA;
  wire s_axi_CTRL_BUS_RREADY;
  wire s_axi_CTRL_BUS_RVALID;
  wire [2:0]s_axi_CTRL_BUS_WDATA;
  wire [0:0]s_axi_CTRL_BUS_WSTRB;
  wire s_axi_CTRL_BUS_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8FDD)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_CTRL_BUS_RVALID),
        .I1(s_axi_CTRL_BUS_RREADY),
        .I2(s_axi_CTRL_BUS_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_CTRL_BUS_RREADY),
        .I1(s_axi_CTRL_BUS_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_CTRL_BUS_ARVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_CTRL_BUS_RVALID),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFF353035)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_CTRL_BUS_AWVALID),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_CTRL_BUS_BVALID),
        .I4(s_axi_CTRL_BUS_BREADY),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_CTRL_BUS_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_CTRL_BUS_AWVALID),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_CTRL_BUS_WVALID),
        .I2(s_axi_CTRL_BUS_BREADY),
        .I3(s_axi_CTRL_BUS_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_CTRL_BUS_BVALID),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(ap_done),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8FFFFFFF88888888)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(\phi_ln9_reg_299_reg[2]_1 ),
        .I3(\phi_ln9_reg_299_reg[2]_0 ),
        .I4(\phi_ln9_reg_299_reg[2] ),
        .I5(Q[1]),
        .O(D[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \inStream_V_dest_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    int_ap_done_i_1
       (.I0(int_ap_done_i_2_n_0),
        .I1(s_axi_CTRL_BUS_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(ap_done),
        .I4(int_ap_done),
        .O(int_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_done_i_2
       (.I0(s_axi_CTRL_BUS_ARADDR[2]),
        .I1(s_axi_CTRL_BUS_ARADDR[3]),
        .I2(s_axi_CTRL_BUS_ARADDR[1]),
        .I3(s_axi_CTRL_BUS_ARADDR[0]),
        .O(int_ap_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_0),
        .Q(int_ap_done),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(int_ap_idle),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h8880)) 
    int_ap_ready_i_1
       (.I0(int_ap_ready_i_2_n_0),
        .I1(int_ap_ready_i_3_n_0),
        .I2(outStream_TREADY),
        .I3(int_ap_ready_i_4_n_0),
        .O(ap_done));
  LUT6 #(
    .INIT(64'h000000000000DD0D)) 
    int_ap_ready_i_2
       (.I0(int_ap_ready_reg_2),
        .I1(outStream_V_user_V_1_ack_in),
        .I2(int_ap_ready_reg_3),
        .I3(outStream_V_keep_V_1_ack_in),
        .I4(int_ap_ready_i_5_n_0),
        .I5(int_ap_ready_i_6_n_0),
        .O(int_ap_ready_i_2_n_0));
  LUT6 #(
    .INIT(64'h00D000D0000000D0)) 
    int_ap_ready_i_3
       (.I0(int_ap_ready_reg_0),
        .I1(outStream_V_last_V_1_ack_in),
        .I2(Q[2]),
        .I3(int_ap_ready_i_7_n_0),
        .I4(int_ap_ready_reg_1),
        .I5(outStream_V_dest_V_1_ack_in),
        .O(int_ap_ready_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000022202220222)) 
    int_ap_ready_i_4
       (.I0(int_ap_ready_i_8_n_0),
        .I1(int_ap_ready_i_9_n_0),
        .I2(outStream_V_last_V_1_ack_in),
        .I3(int_ap_ready_reg_0),
        .I4(outStream_V_dest_V_1_ack_in),
        .I5(int_ap_ready_reg_1),
        .O(int_ap_ready_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_ready_i_5
       (.I0(int_ap_ready_i_2_1),
        .I1(outStream_V_data_1_ack_in),
        .O(int_ap_ready_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_ready_i_6
       (.I0(int_ap_ready_i_2_0),
        .I1(outStream_V_strb_V_1_ack_in),
        .O(int_ap_ready_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_ready_i_7
       (.I0(int_ap_ready_i_3_0),
        .I1(outStream_V_id_V_1_ack_in),
        .O(int_ap_ready_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000077707770777)) 
    int_ap_ready_i_8
       (.I0(outStream_V_keep_V_1_ack_in),
        .I1(int_ap_ready_reg_3),
        .I2(int_ap_ready_i_2_0),
        .I3(outStream_V_strb_V_1_ack_in),
        .I4(int_ap_ready_i_2_1),
        .I5(outStream_V_data_1_ack_in),
        .O(int_ap_ready_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    int_ap_ready_i_9
       (.I0(outStream_V_user_V_1_ack_in),
        .I1(int_ap_ready_reg_2),
        .I2(outStream_V_id_V_1_ack_in),
        .I3(int_ap_ready_i_3_0),
        .O(int_ap_ready_i_9_n_0));
  FDRE int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(int_auto_restart),
        .I1(ap_done),
        .I2(int_ap_start3_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    int_ap_start_i_2
       (.I0(s_axi_CTRL_BUS_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .O(int_ap_start3_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_CTRL_BUS_WDATA[2]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(int_auto_restart),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(int_auto_restart),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_CTRL_BUS_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[1]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(p_0_in__0),
        .O(\int_ier[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \int_ier[1]_i_2 
       (.I0(s_axi_CTRL_BUS_WSTRB),
        .I1(s_axi_CTRL_BUS_WVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\waddr_reg_n_0_[0] ),
        .I4(\waddr_reg_n_0_[1] ),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(p_0_in__0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[0]),
        .I1(int_isr6_out),
        .I2(ap_done),
        .I3(\int_ier_reg_n_0_[0] ),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\int_ier[1]_i_2_n_0 ),
        .O(int_isr6_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[1]),
        .I1(int_isr6_out),
        .I2(ap_done),
        .I3(p_0_in__0),
        .I4(p_1_in),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hE0)) 
    interrupt_INST_0
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(int_gie_reg_n_0),
        .O(interrupt));
  LUT6 #(
    .INIT(64'h2222E666E666E666)) 
    \phi_ln9_reg_299[0]_i_1 
       (.I0(Q[1]),
        .I1(\phi_ln9_reg_299_reg[2] ),
        .I2(\phi_ln9_reg_299_reg[2]_0 ),
        .I3(\phi_ln9_reg_299_reg[2]_1 ),
        .I4(ap_start),
        .I5(Q[0]),
        .O(\ap_CS_fsm_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h2828F878F878F878)) 
    \phi_ln9_reg_299[1]_i_1 
       (.I0(Q[1]),
        .I1(\phi_ln9_reg_299_reg[2] ),
        .I2(\phi_ln9_reg_299_reg[2]_0 ),
        .I3(\phi_ln9_reg_299_reg[2]_1 ),
        .I4(ap_start),
        .I5(Q[0]),
        .O(\ap_CS_fsm_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h2A80FF80FF80FF80)) 
    \phi_ln9_reg_299[2]_i_1 
       (.I0(Q[1]),
        .I1(\phi_ln9_reg_299_reg[2] ),
        .I2(\phi_ln9_reg_299_reg[2]_0 ),
        .I3(\phi_ln9_reg_299_reg[2]_1 ),
        .I4(ap_start),
        .I5(Q[0]),
        .O(\ap_CS_fsm_reg[1] ));
  LUT3 #(
    .INIT(8'h02)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(s_axi_CTRL_BUS_ARADDR[1]),
        .I2(s_axi_CTRL_BUS_ARADDR[0]),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \rdata[0]_i_2 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(s_axi_CTRL_BUS_ARADDR[2]),
        .I4(s_axi_CTRL_BUS_ARADDR[3]),
        .I5(int_gie_reg_n_0),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F838C80)) 
    \rdata[1]_i_1 
       (.I0(p_1_in),
        .I1(s_axi_CTRL_BUS_ARADDR[3]),
        .I2(s_axi_CTRL_BUS_ARADDR[2]),
        .I3(p_0_in__0),
        .I4(int_ap_done),
        .I5(\rdata[1]_i_2_n_0 ),
        .O(rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[1]_i_2 
       (.I0(s_axi_CTRL_BUS_ARADDR[0]),
        .I1(s_axi_CTRL_BUS_ARADDR[1]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[2]_i_1 
       (.I0(int_ap_idle),
        .I1(s_axi_CTRL_BUS_ARADDR[0]),
        .I2(s_axi_CTRL_BUS_ARADDR[1]),
        .I3(s_axi_CTRL_BUS_ARADDR[3]),
        .I4(s_axi_CTRL_BUS_ARADDR[2]),
        .O(rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[3]_i_1 
       (.I0(int_ap_ready),
        .I1(s_axi_CTRL_BUS_ARADDR[0]),
        .I2(s_axi_CTRL_BUS_ARADDR[1]),
        .I3(s_axi_CTRL_BUS_ARADDR[3]),
        .I4(s_axi_CTRL_BUS_ARADDR[2]),
        .O(rdata[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[7]_i_1 
       (.I0(s_axi_CTRL_BUS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[7]_i_2 
       (.I0(int_auto_restart),
        .I1(s_axi_CTRL_BUS_ARADDR[0]),
        .I2(s_axi_CTRL_BUS_ARADDR[1]),
        .I3(s_axi_CTRL_BUS_ARADDR[3]),
        .I4(s_axi_CTRL_BUS_ARADDR[2]),
        .O(rdata[7]));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_CTRL_BUS_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_CTRL_BUS_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_CTRL_BUS_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_CTRL_BUS_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_CTRL_BUS_RDATA[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[3]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_CTRL_BUS_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_BUS_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_BUS_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_BUS_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_BUS_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va
   (D,
    ap_clk,
    line_buff_group_0_va_ce0,
    ADDRARDADDR,
    WEA,
    ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486,
    ap_enable_reg_pp0_iter3,
    \outStream_V_data_1_payload_B_reg[15] ,
    select_ln21_1_reg_1389_pp0_iter2_reg,
    Q,
    inStream_V_data_0_sel,
    ram_reg);
  output [15:0]D;
  input ap_clk;
  input line_buff_group_0_va_ce0;
  input [6:0]ADDRARDADDR;
  input [0:0]WEA;
  input [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486;
  input ap_enable_reg_pp0_iter3;
  input \outStream_V_data_1_payload_B_reg[15] ;
  input select_ln21_1_reg_1389_pp0_iter2_reg;
  input [15:0]Q;
  input inStream_V_data_0_sel;
  input [15:0]ram_reg;

  wire [6:0]ADDRARDADDR;
  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter3;
  wire [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486;
  wire inStream_V_data_0_sel;
  wire line_buff_group_0_va_ce0;
  wire \outStream_V_data_1_payload_B_reg[15] ;
  wire [15:0]ram_reg;
  wire select_ln21_1_reg_1389_pp0_iter2_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va_ram_5 yolo_upsamp_top_line_buff_group_0_va_ram_U
       (.ADDRARDADDR(ADDRARDADDR),
        .D(D),
        .Q(Q),
        .WEA(WEA),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486),
        .inStream_V_data_0_sel(inStream_V_data_0_sel),
        .line_buff_group_0_va_ce0(line_buff_group_0_va_ce0),
        .\outStream_V_data_1_payload_B_reg[15] (\outStream_V_data_1_payload_B_reg[15] ),
        .ram_reg_0(ram_reg),
        .select_ln21_1_reg_1389_pp0_iter2_reg(select_ln21_1_reg_1389_pp0_iter2_reg));
endmodule

(* ORIG_REF_NAME = "yolo_upsamp_top_line_buff_group_0_va" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va_0
   (D,
    ap_clk,
    line_buff_group_0_va_ce0,
    ADDRARDADDR,
    WEA,
    ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496,
    ap_enable_reg_pp0_iter3,
    \outStream_V_data_1_payload_B_reg[31] ,
    select_ln21_1_reg_1389_pp0_iter2_reg,
    Q,
    inStream_V_data_0_sel,
    ram_reg);
  output [15:0]D;
  input ap_clk;
  input line_buff_group_0_va_ce0;
  input [6:0]ADDRARDADDR;
  input [0:0]WEA;
  input [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496;
  input ap_enable_reg_pp0_iter3;
  input \outStream_V_data_1_payload_B_reg[31] ;
  input select_ln21_1_reg_1389_pp0_iter2_reg;
  input [15:0]Q;
  input inStream_V_data_0_sel;
  input [15:0]ram_reg;

  wire [6:0]ADDRARDADDR;
  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter3;
  wire [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496;
  wire inStream_V_data_0_sel;
  wire line_buff_group_0_va_ce0;
  wire \outStream_V_data_1_payload_B_reg[31] ;
  wire [15:0]ram_reg;
  wire select_ln21_1_reg_1389_pp0_iter2_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va_ram_4 yolo_upsamp_top_line_buff_group_0_va_ram_U
       (.ADDRARDADDR(ADDRARDADDR),
        .D(D),
        .Q(Q),
        .WEA(WEA),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496),
        .inStream_V_data_0_sel(inStream_V_data_0_sel),
        .line_buff_group_0_va_ce0(line_buff_group_0_va_ce0),
        .\outStream_V_data_1_payload_B_reg[31] (\outStream_V_data_1_payload_B_reg[31] ),
        .ram_reg_0(ram_reg),
        .select_ln21_1_reg_1389_pp0_iter2_reg(select_ln21_1_reg_1389_pp0_iter2_reg));
endmodule

(* ORIG_REF_NAME = "yolo_upsamp_top_line_buff_group_0_va" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va_1
   (D,
    ap_clk,
    line_buff_group_0_va_ce0,
    ADDRARDADDR,
    WEA,
    ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506,
    ap_enable_reg_pp0_iter3,
    \outStream_V_data_1_payload_B_reg[47] ,
    select_ln21_1_reg_1389_pp0_iter2_reg,
    Q,
    inStream_V_data_0_sel,
    ram_reg);
  output [15:0]D;
  input ap_clk;
  input line_buff_group_0_va_ce0;
  input [6:0]ADDRARDADDR;
  input [0:0]WEA;
  input [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506;
  input ap_enable_reg_pp0_iter3;
  input \outStream_V_data_1_payload_B_reg[47] ;
  input select_ln21_1_reg_1389_pp0_iter2_reg;
  input [15:0]Q;
  input inStream_V_data_0_sel;
  input [15:0]ram_reg;

  wire [6:0]ADDRARDADDR;
  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter3;
  wire [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506;
  wire inStream_V_data_0_sel;
  wire line_buff_group_0_va_ce0;
  wire \outStream_V_data_1_payload_B_reg[47] ;
  wire [15:0]ram_reg;
  wire select_ln21_1_reg_1389_pp0_iter2_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va_ram_3 yolo_upsamp_top_line_buff_group_0_va_ram_U
       (.ADDRARDADDR(ADDRARDADDR),
        .D(D),
        .Q(Q),
        .WEA(WEA),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506),
        .inStream_V_data_0_sel(inStream_V_data_0_sel),
        .line_buff_group_0_va_ce0(line_buff_group_0_va_ce0),
        .\outStream_V_data_1_payload_B_reg[47] (\outStream_V_data_1_payload_B_reg[47] ),
        .ram_reg_0(ram_reg),
        .select_ln21_1_reg_1389_pp0_iter2_reg(select_ln21_1_reg_1389_pp0_iter2_reg));
endmodule

(* ORIG_REF_NAME = "yolo_upsamp_top_line_buff_group_0_va" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va_2
   (line_buff_group_0_va_ce0,
    WEA,
    D,
    ap_block_pp0_stage0_subdone1_in,
    \select_ln21_1_reg_1389_reg[0] ,
    ap_clk,
    ADDRARDADDR,
    ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516,
    ap_enable_reg_pp0_iter3,
    \outStream_V_data_1_payload_B_reg[63] ,
    select_ln21_1_reg_1389_pp0_iter2_reg,
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0] ,
    ap_enable_reg_pp0_iter2,
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0 ,
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1 ,
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2 ,
    icmp_ln15_reg_1308_pp0_iter3_reg,
    outStream_V_data_1_ack_in,
    Q,
    inStream_V_data_0_sel,
    ram_reg);
  output line_buff_group_0_va_ce0;
  output [0:0]WEA;
  output [15:0]D;
  output ap_block_pp0_stage0_subdone1_in;
  output \select_ln21_1_reg_1389_reg[0] ;
  input ap_clk;
  input [6:0]ADDRARDADDR;
  input [15:0]ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516;
  input ap_enable_reg_pp0_iter3;
  input \outStream_V_data_1_payload_B_reg[63] ;
  input select_ln21_1_reg_1389_pp0_iter2_reg;
  input \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0] ;
  input ap_enable_reg_pp0_iter2;
  input \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0 ;
  input \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1 ;
  input \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2 ;
  input icmp_ln15_reg_1308_pp0_iter3_reg;
  input outStream_V_data_1_ack_in;
  input [15:0]Q;
  input inStream_V_data_0_sel;
  input [15:0]ram_reg;

  wire [6:0]ADDRARDADDR;
  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]WEA;
  wire ap_block_pp0_stage0_subdone1_in;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire [15:0]ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516;
  wire \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0] ;
  wire \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0 ;
  wire \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1 ;
  wire \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2 ;
  wire icmp_ln15_reg_1308_pp0_iter3_reg;
  wire inStream_V_data_0_sel;
  wire line_buff_group_0_va_ce0;
  wire outStream_V_data_1_ack_in;
  wire \outStream_V_data_1_payload_B_reg[63] ;
  wire [15:0]ram_reg;
  wire select_ln21_1_reg_1389_pp0_iter2_reg;
  wire \select_ln21_1_reg_1389_reg[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va_ram yolo_upsamp_top_line_buff_group_0_va_ram_U
       (.ADDRARDADDR(ADDRARDADDR),
        .D(D),
        .Q(Q),
        .WEA(WEA),
        .ap_block_pp0_stage0_subdone1_in(ap_block_pp0_stage0_subdone1_in),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516),
        .\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0] (\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0] ),
        .\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0 (\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0 ),
        .\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1 (\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1 ),
        .\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2 (\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2 ),
        .icmp_ln15_reg_1308_pp0_iter3_reg(icmp_ln15_reg_1308_pp0_iter3_reg),
        .inStream_V_data_0_sel(inStream_V_data_0_sel),
        .line_buff_group_0_va_ce0(line_buff_group_0_va_ce0),
        .outStream_V_data_1_ack_in(outStream_V_data_1_ack_in),
        .\outStream_V_data_1_payload_B_reg[63] (\outStream_V_data_1_payload_B_reg[63] ),
        .ram_reg_0(ram_reg),
        .select_ln21_1_reg_1389_pp0_iter2_reg(select_ln21_1_reg_1389_pp0_iter2_reg),
        .\select_ln21_1_reg_1389_reg[0] (\select_ln21_1_reg_1389_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va_ram
   (line_buff_group_0_va_ce0,
    WEA,
    D,
    ap_block_pp0_stage0_subdone1_in,
    \select_ln21_1_reg_1389_reg[0] ,
    ap_clk,
    ADDRARDADDR,
    ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516,
    ap_enable_reg_pp0_iter3,
    \outStream_V_data_1_payload_B_reg[63] ,
    select_ln21_1_reg_1389_pp0_iter2_reg,
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0] ,
    ap_enable_reg_pp0_iter2,
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0 ,
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1 ,
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2 ,
    icmp_ln15_reg_1308_pp0_iter3_reg,
    outStream_V_data_1_ack_in,
    Q,
    inStream_V_data_0_sel,
    ram_reg_0);
  output line_buff_group_0_va_ce0;
  output [0:0]WEA;
  output [15:0]D;
  output ap_block_pp0_stage0_subdone1_in;
  output \select_ln21_1_reg_1389_reg[0] ;
  input ap_clk;
  input [6:0]ADDRARDADDR;
  input [15:0]ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516;
  input ap_enable_reg_pp0_iter3;
  input \outStream_V_data_1_payload_B_reg[63] ;
  input select_ln21_1_reg_1389_pp0_iter2_reg;
  input \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0] ;
  input ap_enable_reg_pp0_iter2;
  input \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0 ;
  input \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1 ;
  input \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2 ;
  input icmp_ln15_reg_1308_pp0_iter3_reg;
  input outStream_V_data_1_ack_in;
  input [15:0]Q;
  input inStream_V_data_0_sel;
  input [15:0]ram_reg_0;

  wire [6:0]ADDRARDADDR;
  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]WEA;
  wire ap_block_pp0_stage0_subdone1_in;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire [15:0]ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516;
  wire \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0] ;
  wire \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0 ;
  wire \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1 ;
  wire \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2 ;
  wire \icmp_ln15_reg_1308_pp0_iter2_reg[0]_i_2_n_0 ;
  wire icmp_ln15_reg_1308_pp0_iter3_reg;
  wire inStream_V_data_0_sel;
  wire line_buff_group_0_va_ce0;
  wire [15:0]line_buff_group_3_va_d0;
  wire [15:0]line_buff_group_3_va_q0;
  wire outStream_V_data_1_ack_in;
  wire \outStream_V_data_1_payload_B_reg[63] ;
  wire [15:0]ram_reg_0;
  wire select_ln21_1_reg_1389_pp0_iter2_reg;
  wire \select_ln21_1_reg_1389_reg[0] ;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  LUT5 #(
    .INIT(32'h0000FFFB)) 
    \icmp_ln15_reg_1308_pp0_iter2_reg[0]_i_1 
       (.I0(\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0] ),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0 ),
        .I3(\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1 ),
        .I4(\icmp_ln15_reg_1308_pp0_iter2_reg[0]_i_2_n_0 ),
        .O(ap_block_pp0_stage0_subdone1_in));
  LUT5 #(
    .INIT(32'h00002F22)) 
    \icmp_ln15_reg_1308_pp0_iter2_reg[0]_i_2 
       (.I0(\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2 ),
        .I1(icmp_ln15_reg_1308_pp0_iter3_reg),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(ap_enable_reg_pp0_iter3),
        .I4(outStream_V_data_1_ack_in),
        .O(\icmp_ln15_reg_1308_pp0_iter2_reg[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \inStream_V_dest_V_0_state[1]_i_3 
       (.I0(\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0 ),
        .I1(\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0] ),
        .I2(ap_block_pp0_stage0_subdone1_in),
        .I3(ap_enable_reg_pp0_iter2),
        .O(\select_ln21_1_reg_1389_reg[0] ));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[48]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[0]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[49]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[1]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[50]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[2]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[51]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[3]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[52]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[4]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[53]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[5]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[54]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[6]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[55]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[7]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[56]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[8]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[57]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[9]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[58]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[10]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[59]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[11]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[60]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[12]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[61]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[13]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[62]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[14]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[63]_i_2 
       (.I0(ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[15]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[63] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_3_va_q0[15]),
        .O(D[15]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1664" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "896" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI(line_buff_group_3_va_d0),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(line_buff_group_3_va_q0),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(line_buff_group_0_va_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h40)) 
    ram_reg_i_1
       (.I0(\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0] ),
        .I1(ap_block_pp0_stage0_subdone1_in),
        .I2(ap_enable_reg_pp0_iter2),
        .O(line_buff_group_0_va_ce0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_10
       (.I0(Q[6]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[6]),
        .O(line_buff_group_3_va_d0[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_11
       (.I0(Q[5]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[5]),
        .O(line_buff_group_3_va_d0[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_12
       (.I0(Q[4]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[4]),
        .O(line_buff_group_3_va_d0[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_13
       (.I0(Q[3]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[3]),
        .O(line_buff_group_3_va_d0[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_14
       (.I0(Q[2]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[2]),
        .O(line_buff_group_3_va_d0[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_15
       (.I0(Q[1]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[1]),
        .O(line_buff_group_3_va_d0[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_16
       (.I0(Q[0]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[0]),
        .O(line_buff_group_3_va_d0[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_1__0
       (.I0(Q[15]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[15]),
        .O(line_buff_group_3_va_d0[15]));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_i_25
       (.I0(\select_ln21_1_reg_1389_reg[0] ),
        .O(WEA));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_2__0
       (.I0(Q[14]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[14]),
        .O(line_buff_group_3_va_d0[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_3__0
       (.I0(Q[13]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[13]),
        .O(line_buff_group_3_va_d0[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_4__0
       (.I0(Q[12]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[12]),
        .O(line_buff_group_3_va_d0[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_5__0
       (.I0(Q[11]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[11]),
        .O(line_buff_group_3_va_d0[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_6__0
       (.I0(Q[10]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[10]),
        .O(line_buff_group_3_va_d0[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_7__0
       (.I0(Q[9]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[9]),
        .O(line_buff_group_3_va_d0[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_8__0
       (.I0(Q[8]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[8]),
        .O(line_buff_group_3_va_d0[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_9
       (.I0(Q[7]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[7]),
        .O(line_buff_group_3_va_d0[7]));
endmodule

(* ORIG_REF_NAME = "yolo_upsamp_top_line_buff_group_0_va_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va_ram_3
   (D,
    ap_clk,
    line_buff_group_0_va_ce0,
    ADDRARDADDR,
    WEA,
    ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506,
    ap_enable_reg_pp0_iter3,
    \outStream_V_data_1_payload_B_reg[47] ,
    select_ln21_1_reg_1389_pp0_iter2_reg,
    Q,
    inStream_V_data_0_sel,
    ram_reg_0);
  output [15:0]D;
  input ap_clk;
  input line_buff_group_0_va_ce0;
  input [6:0]ADDRARDADDR;
  input [0:0]WEA;
  input [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506;
  input ap_enable_reg_pp0_iter3;
  input \outStream_V_data_1_payload_B_reg[47] ;
  input select_ln21_1_reg_1389_pp0_iter2_reg;
  input [15:0]Q;
  input inStream_V_data_0_sel;
  input [15:0]ram_reg_0;

  wire [6:0]ADDRARDADDR;
  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter3;
  wire [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506;
  wire inStream_V_data_0_sel;
  wire line_buff_group_0_va_ce0;
  wire [15:0]line_buff_group_2_va_d0;
  wire [15:0]line_buff_group_2_va_q0;
  wire \outStream_V_data_1_payload_B_reg[47] ;
  wire [15:0]ram_reg_0;
  wire select_ln21_1_reg_1389_pp0_iter2_reg;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[32]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[0]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[33]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[1]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[34]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[2]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[35]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[3]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[36]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[4]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[37]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[5]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[38]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[6]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[39]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[7]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[40]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[8]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[41]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[9]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[42]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[10]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[43]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[11]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[44]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[12]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[45]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[13]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[46]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[14]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[47]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[15]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[47] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_2_va_q0[15]),
        .O(D[15]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1664" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "896" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI(line_buff_group_2_va_d0),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(line_buff_group_2_va_q0),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(line_buff_group_0_va_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_10__0
       (.I0(Q[6]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[6]),
        .O(line_buff_group_2_va_d0[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_11__0
       (.I0(Q[5]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[5]),
        .O(line_buff_group_2_va_d0[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_12__0
       (.I0(Q[4]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[4]),
        .O(line_buff_group_2_va_d0[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_13__0
       (.I0(Q[3]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[3]),
        .O(line_buff_group_2_va_d0[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_14__0
       (.I0(Q[2]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[2]),
        .O(line_buff_group_2_va_d0[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_15__0
       (.I0(Q[1]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[1]),
        .O(line_buff_group_2_va_d0[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_16__0
       (.I0(Q[0]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[0]),
        .O(line_buff_group_2_va_d0[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_1__1
       (.I0(Q[15]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[15]),
        .O(line_buff_group_2_va_d0[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_2__1
       (.I0(Q[14]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[14]),
        .O(line_buff_group_2_va_d0[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_3__1
       (.I0(Q[13]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[13]),
        .O(line_buff_group_2_va_d0[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_4__1
       (.I0(Q[12]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[12]),
        .O(line_buff_group_2_va_d0[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_5__1
       (.I0(Q[11]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[11]),
        .O(line_buff_group_2_va_d0[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_6__1
       (.I0(Q[10]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[10]),
        .O(line_buff_group_2_va_d0[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_7__1
       (.I0(Q[9]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[9]),
        .O(line_buff_group_2_va_d0[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_8__1
       (.I0(Q[8]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[8]),
        .O(line_buff_group_2_va_d0[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_9__0
       (.I0(Q[7]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[7]),
        .O(line_buff_group_2_va_d0[7]));
endmodule

(* ORIG_REF_NAME = "yolo_upsamp_top_line_buff_group_0_va_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va_ram_4
   (D,
    ap_clk,
    line_buff_group_0_va_ce0,
    ADDRARDADDR,
    WEA,
    ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496,
    ap_enable_reg_pp0_iter3,
    \outStream_V_data_1_payload_B_reg[31] ,
    select_ln21_1_reg_1389_pp0_iter2_reg,
    Q,
    inStream_V_data_0_sel,
    ram_reg_0);
  output [15:0]D;
  input ap_clk;
  input line_buff_group_0_va_ce0;
  input [6:0]ADDRARDADDR;
  input [0:0]WEA;
  input [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496;
  input ap_enable_reg_pp0_iter3;
  input \outStream_V_data_1_payload_B_reg[31] ;
  input select_ln21_1_reg_1389_pp0_iter2_reg;
  input [15:0]Q;
  input inStream_V_data_0_sel;
  input [15:0]ram_reg_0;

  wire [6:0]ADDRARDADDR;
  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter3;
  wire [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496;
  wire inStream_V_data_0_sel;
  wire line_buff_group_0_va_ce0;
  wire [15:0]line_buff_group_1_va_d0;
  wire [15:0]line_buff_group_1_va_q0;
  wire \outStream_V_data_1_payload_B_reg[31] ;
  wire [15:0]ram_reg_0;
  wire select_ln21_1_reg_1389_pp0_iter2_reg;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[16]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[0]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[17]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[1]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[18]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[2]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[19]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[3]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[20]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[4]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[21]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[5]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[22]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[6]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[23]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[7]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[24]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[8]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[25]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[9]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[26]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[10]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[27]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[11]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[28]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[12]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[29]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[13]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[30]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[14]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[31]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[15]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[31] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_1_va_q0[15]),
        .O(D[15]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1664" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "896" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI(line_buff_group_1_va_d0),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(line_buff_group_1_va_q0),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(line_buff_group_0_va_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_10__1
       (.I0(Q[6]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[6]),
        .O(line_buff_group_1_va_d0[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_11__1
       (.I0(Q[5]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[5]),
        .O(line_buff_group_1_va_d0[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_12__1
       (.I0(Q[4]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[4]),
        .O(line_buff_group_1_va_d0[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_13__1
       (.I0(Q[3]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[3]),
        .O(line_buff_group_1_va_d0[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_14__1
       (.I0(Q[2]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[2]),
        .O(line_buff_group_1_va_d0[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_15__1
       (.I0(Q[1]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[1]),
        .O(line_buff_group_1_va_d0[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_16__1
       (.I0(Q[0]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[0]),
        .O(line_buff_group_1_va_d0[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_1__2
       (.I0(Q[15]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[15]),
        .O(line_buff_group_1_va_d0[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_2__2
       (.I0(Q[14]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[14]),
        .O(line_buff_group_1_va_d0[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_3__2
       (.I0(Q[13]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[13]),
        .O(line_buff_group_1_va_d0[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_4__2
       (.I0(Q[12]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[12]),
        .O(line_buff_group_1_va_d0[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_5__2
       (.I0(Q[11]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[11]),
        .O(line_buff_group_1_va_d0[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_6__2
       (.I0(Q[10]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[10]),
        .O(line_buff_group_1_va_d0[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_7__2
       (.I0(Q[9]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[9]),
        .O(line_buff_group_1_va_d0[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_8__2
       (.I0(Q[8]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[8]),
        .O(line_buff_group_1_va_d0[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_9__1
       (.I0(Q[7]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[7]),
        .O(line_buff_group_1_va_d0[7]));
endmodule

(* ORIG_REF_NAME = "yolo_upsamp_top_line_buff_group_0_va_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_line_buff_group_0_va_ram_5
   (D,
    ap_clk,
    line_buff_group_0_va_ce0,
    ADDRARDADDR,
    WEA,
    ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486,
    ap_enable_reg_pp0_iter3,
    \outStream_V_data_1_payload_B_reg[15] ,
    select_ln21_1_reg_1389_pp0_iter2_reg,
    Q,
    inStream_V_data_0_sel,
    ram_reg_0);
  output [15:0]D;
  input ap_clk;
  input line_buff_group_0_va_ce0;
  input [6:0]ADDRARDADDR;
  input [0:0]WEA;
  input [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486;
  input ap_enable_reg_pp0_iter3;
  input \outStream_V_data_1_payload_B_reg[15] ;
  input select_ln21_1_reg_1389_pp0_iter2_reg;
  input [15:0]Q;
  input inStream_V_data_0_sel;
  input [15:0]ram_reg_0;

  wire [6:0]ADDRARDADDR;
  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter3;
  wire [15:0]ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486;
  wire inStream_V_data_0_sel;
  wire line_buff_group_0_va_ce0;
  wire [15:0]line_buff_group_0_va_q0;
  wire \outStream_V_data_1_payload_B_reg[15] ;
  wire [15:0]ram_reg_0;
  wire ram_reg_i_10__2_n_0;
  wire ram_reg_i_11__2_n_0;
  wire ram_reg_i_12__2_n_0;
  wire ram_reg_i_13__2_n_0;
  wire ram_reg_i_14__2_n_0;
  wire ram_reg_i_15__2_n_0;
  wire ram_reg_i_16__2_n_0;
  wire ram_reg_i_17_n_0;
  wire ram_reg_i_18_n_0;
  wire ram_reg_i_19_n_0;
  wire ram_reg_i_20_n_0;
  wire ram_reg_i_21_n_0;
  wire ram_reg_i_22_n_0;
  wire ram_reg_i_23_n_0;
  wire ram_reg_i_24_n_0;
  wire ram_reg_i_9__2_n_0;
  wire select_ln21_1_reg_1389_pp0_iter2_reg;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[0]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[0]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[10]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[10]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[11]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[11]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[12]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[12]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[13]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[13]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[14]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[14]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[15]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[15]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[1]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[1]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[2]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[2]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[3]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[3]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[4]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[4]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[5]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[5]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[6]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[6]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[7]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[7]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[8]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[8]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \outStream_V_data_1_payload_A[9]_i_1 
       (.I0(ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[9]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\outStream_V_data_1_payload_B_reg[15] ),
        .I3(select_ln21_1_reg_1389_pp0_iter2_reg),
        .I4(line_buff_group_0_va_q0[9]),
        .O(D[9]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1664" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "896" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({ram_reg_i_9__2_n_0,ram_reg_i_10__2_n_0,ram_reg_i_11__2_n_0,ram_reg_i_12__2_n_0,ram_reg_i_13__2_n_0,ram_reg_i_14__2_n_0,ram_reg_i_15__2_n_0,ram_reg_i_16__2_n_0,ram_reg_i_17_n_0,ram_reg_i_18_n_0,ram_reg_i_19_n_0,ram_reg_i_20_n_0,ram_reg_i_21_n_0,ram_reg_i_22_n_0,ram_reg_i_23_n_0,ram_reg_i_24_n_0}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(line_buff_group_0_va_q0),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(line_buff_group_0_va_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_10__2
       (.I0(Q[14]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[14]),
        .O(ram_reg_i_10__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_11__2
       (.I0(Q[13]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[13]),
        .O(ram_reg_i_11__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_12__2
       (.I0(Q[12]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[12]),
        .O(ram_reg_i_12__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_13__2
       (.I0(Q[11]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[11]),
        .O(ram_reg_i_13__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_14__2
       (.I0(Q[10]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[10]),
        .O(ram_reg_i_14__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_15__2
       (.I0(Q[9]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[9]),
        .O(ram_reg_i_15__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_16__2
       (.I0(Q[8]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[8]),
        .O(ram_reg_i_16__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_17
       (.I0(Q[7]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[7]),
        .O(ram_reg_i_17_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_18
       (.I0(Q[6]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[6]),
        .O(ram_reg_i_18_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_19
       (.I0(Q[5]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[5]),
        .O(ram_reg_i_19_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_20
       (.I0(Q[4]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[4]),
        .O(ram_reg_i_20_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_21
       (.I0(Q[3]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[3]),
        .O(ram_reg_i_21_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_22
       (.I0(Q[2]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[2]),
        .O(ram_reg_i_22_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_23
       (.I0(Q[1]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[1]),
        .O(ram_reg_i_23_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_24
       (.I0(Q[0]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[0]),
        .O(ram_reg_i_24_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_9__2
       (.I0(Q[15]),
        .I1(inStream_V_data_0_sel),
        .I2(ram_reg_0[15]),
        .O(ram_reg_i_9__2_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1
   (p_5_in,
    A,
    D,
    \col_assign_reg_442_reg[1] ,
    \xor_ln52_reg_1326_reg[0] ,
    \or_ln17_reg_1351_reg[0] ,
    \indvar_flatten_reg_453_reg[2] ,
    \input_ch_idx_0_reg_475_reg[1] ,
    ADDRARDADDR,
    p,
    ap_clk,
    ap_block_pp0_stage0_subdone1_in,
    Q,
    p_0,
    or_ln17_reg_1351,
    p_1,
    ap_enable_reg_pp0_iter2,
    p_2,
    p_3,
    p_4,
    xor_ln52_reg_1326,
    icmp_ln19_reg_1337,
    icmp_ln17_reg_1317,
    \col_stride_0_reg_464_reg[0] ,
    \col_stride_0_reg_464_reg[0]_0 ,
    ram_reg,
    P);
  output p_5_in;
  output [3:0]A;
  output [3:0]D;
  output \col_assign_reg_442_reg[1] ;
  output \xor_ln52_reg_1326_reg[0] ;
  output \or_ln17_reg_1351_reg[0] ;
  output \indvar_flatten_reg_453_reg[2] ;
  output \input_ch_idx_0_reg_475_reg[1] ;
  output [6:0]ADDRARDADDR;
  input p;
  input ap_clk;
  input ap_block_pp0_stage0_subdone1_in;
  input [0:0]Q;
  input p_0;
  input or_ln17_reg_1351;
  input [3:0]p_1;
  input ap_enable_reg_pp0_iter2;
  input p_2;
  input [3:0]p_3;
  input [3:0]p_4;
  input xor_ln52_reg_1326;
  input icmp_ln19_reg_1337;
  input icmp_ln17_reg_1317;
  input [4:0]\col_stride_0_reg_464_reg[0] ;
  input \col_stride_0_reg_464_reg[0]_0 ;
  input ram_reg;
  input [6:0]P;

  wire [3:0]A;
  wire [6:0]ADDRARDADDR;
  wire [3:0]D;
  wire [6:0]P;
  wire [0:0]Q;
  wire ap_block_pp0_stage0_subdone1_in;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter2;
  wire \col_assign_reg_442_reg[1] ;
  wire [4:0]\col_stride_0_reg_464_reg[0] ;
  wire \col_stride_0_reg_464_reg[0]_0 ;
  wire icmp_ln17_reg_1317;
  wire icmp_ln19_reg_1337;
  wire \indvar_flatten_reg_453_reg[2] ;
  wire \input_ch_idx_0_reg_475_reg[1] ;
  wire or_ln17_reg_1351;
  wire \or_ln17_reg_1351_reg[0] ;
  wire p;
  wire p_0;
  wire [3:0]p_1;
  wire p_2;
  wire [3:0]p_3;
  wire [3:0]p_4;
  wire p_5_in;
  wire ram_reg;
  wire xor_ln52_reg_1326;
  wire \xor_ln52_reg_1326_reg[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_DSP48_1 yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_DSP48_1_U
       (.A(A),
        .ADDRARDADDR(ADDRARDADDR),
        .D(D),
        .P(P),
        .Q(Q),
        .ap_block_pp0_stage0_subdone1_in(ap_block_pp0_stage0_subdone1_in),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .\col_assign_reg_442_reg[1] (\col_assign_reg_442_reg[1] ),
        .\col_stride_0_reg_464_reg[0] (\col_stride_0_reg_464_reg[0] ),
        .\col_stride_0_reg_464_reg[0]_0 (\col_stride_0_reg_464_reg[0]_0 ),
        .icmp_ln17_reg_1317(icmp_ln17_reg_1317),
        .icmp_ln19_reg_1337(icmp_ln19_reg_1337),
        .\indvar_flatten_reg_453_reg[2] (\indvar_flatten_reg_453_reg[2] ),
        .\input_ch_idx_0_reg_475_reg[1] (\input_ch_idx_0_reg_475_reg[1] ),
        .or_ln17_reg_1351(or_ln17_reg_1351),
        .\or_ln17_reg_1351_reg[0] (\or_ln17_reg_1351_reg[0] ),
        .p_0(p),
        .p_1(p_0),
        .p_2(p_1),
        .p_3(p_2),
        .p_4(p_3),
        .p_5(p_4),
        .p_5_in(p_5_in),
        .ram_reg(ram_reg),
        .xor_ln52_reg_1326(xor_ln52_reg_1326),
        .\xor_ln52_reg_1326_reg[0] (\xor_ln52_reg_1326_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_DSP48_1
   (p_5_in,
    A,
    D,
    \col_assign_reg_442_reg[1] ,
    \xor_ln52_reg_1326_reg[0] ,
    \or_ln17_reg_1351_reg[0] ,
    \indvar_flatten_reg_453_reg[2] ,
    \input_ch_idx_0_reg_475_reg[1] ,
    ADDRARDADDR,
    p_0,
    ap_clk,
    ap_block_pp0_stage0_subdone1_in,
    Q,
    p_1,
    or_ln17_reg_1351,
    p_2,
    ap_enable_reg_pp0_iter2,
    p_3,
    p_4,
    p_5,
    xor_ln52_reg_1326,
    icmp_ln19_reg_1337,
    icmp_ln17_reg_1317,
    \col_stride_0_reg_464_reg[0] ,
    \col_stride_0_reg_464_reg[0]_0 ,
    ram_reg,
    P);
  output p_5_in;
  output [3:0]A;
  output [3:0]D;
  output \col_assign_reg_442_reg[1] ;
  output \xor_ln52_reg_1326_reg[0] ;
  output \or_ln17_reg_1351_reg[0] ;
  output \indvar_flatten_reg_453_reg[2] ;
  output \input_ch_idx_0_reg_475_reg[1] ;
  output [6:0]ADDRARDADDR;
  input p_0;
  input ap_clk;
  input ap_block_pp0_stage0_subdone1_in;
  input [0:0]Q;
  input p_1;
  input or_ln17_reg_1351;
  input [3:0]p_2;
  input ap_enable_reg_pp0_iter2;
  input p_3;
  input [3:0]p_4;
  input [3:0]p_5;
  input xor_ln52_reg_1326;
  input icmp_ln19_reg_1337;
  input icmp_ln17_reg_1317;
  input [4:0]\col_stride_0_reg_464_reg[0] ;
  input \col_stride_0_reg_464_reg[0]_0 ;
  input ram_reg;
  input [6:0]P;

  wire [3:0]A;
  wire [6:0]ADDRARDADDR;
  wire [3:0]D;
  wire [6:0]P;
  wire [0:0]Q;
  wire ap_block_pp0_stage0_subdone1_in;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter2;
  wire \col_assign_reg_442_reg[1] ;
  wire [4:0]\col_stride_0_reg_464_reg[0] ;
  wire \col_stride_0_reg_464_reg[0]_0 ;
  wire [6:0]grp_fu_1216_p3;
  wire icmp_ln17_reg_1317;
  wire icmp_ln19_reg_1337;
  wire \indvar_flatten_reg_453_reg[2] ;
  wire \input_ch_idx_0_reg_475_reg[1] ;
  wire or_ln17_reg_1351;
  wire \or_ln17_reg_1351_reg[0] ;
  wire p_0;
  wire p_1;
  wire [3:0]p_2;
  wire p_3;
  wire [3:0]p_4;
  wire [3:0]p_5;
  wire p_5_in;
  wire p_i_12_n_0;
  wire p_i_13_n_0;
  wire p_i_15_n_0;
  wire p_i_16_n_0;
  wire ram_reg;
  wire xor_ln52_reg_1326;
  wire \xor_ln52_reg_1326_reg[0] ;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:7]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \col_stride_0_reg_464[1]_i_3 
       (.I0(\col_stride_0_reg_464_reg[0] [1]),
        .I1(\col_stride_0_reg_464_reg[0] [2]),
        .I2(\col_stride_0_reg_464_reg[0]_0 ),
        .I3(\col_stride_0_reg_464_reg[0] [0]),
        .I4(\col_stride_0_reg_464_reg[0] [4]),
        .I5(\col_stride_0_reg_464_reg[0] [3]),
        .O(\indvar_flatten_reg_453_reg[2] ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \col_stride_0_reg_464[1]_i_4 
       (.I0(p_5[1]),
        .I1(p_5[2]),
        .I2(p_5[3]),
        .I3(p_5[0]),
        .O(\input_ch_idx_0_reg_475_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(p_5_in),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(p_0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:7],grp_fu_1216_p3}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h08)) 
    p_i_1
       (.I0(ap_block_pp0_stage0_subdone1_in),
        .I1(Q),
        .I2(p_1),
        .O(p_5_in));
  LUT6 #(
    .INIT(64'hAAAAAAAA5655A6AA)) 
    p_i_10
       (.I0(\xor_ln52_reg_1326_reg[0] ),
        .I1(p_2[0]),
        .I2(p_3),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(p_4[0]),
        .I5(or_ln17_reg_1351),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hEAEAAAEAFAFAAAFA)) 
    p_i_11
       (.I0(or_ln17_reg_1351),
        .I1(\indvar_flatten_reg_453_reg[2] ),
        .I2(xor_ln52_reg_1326),
        .I3(icmp_ln19_reg_1337),
        .I4(icmp_ln17_reg_1317),
        .I5(\input_ch_idx_0_reg_475_reg[1] ),
        .O(\or_ln17_reg_1351_reg[0] ));
  LUT4 #(
    .INIT(16'h10DF)) 
    p_i_12
       (.I0(p_2[3]),
        .I1(p_3),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(p_4[3]),
        .O(p_i_12_n_0));
  LUT4 #(
    .INIT(16'h10DF)) 
    p_i_13
       (.I0(p_2[2]),
        .I1(p_3),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(p_4[2]),
        .O(p_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    p_i_14
       (.I0(p_4[1]),
        .I1(p_3),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(p_2[1]),
        .O(\col_assign_reg_442_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFF10DFFFFFFFFF)) 
    p_i_15
       (.I0(p_2[0]),
        .I1(p_3),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(p_4[0]),
        .I4(or_ln17_reg_1351),
        .I5(\xor_ln52_reg_1326_reg[0] ),
        .O(p_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    p_i_16
       (.I0(p_3),
        .I1(ap_enable_reg_pp0_iter2),
        .O(p_i_16_n_0));
  LUT4 #(
    .INIT(16'h8808)) 
    p_i_17
       (.I0(\indvar_flatten_reg_453_reg[2] ),
        .I1(xor_ln52_reg_1326),
        .I2(icmp_ln19_reg_1337),
        .I3(icmp_ln17_reg_1317),
        .O(\xor_ln52_reg_1326_reg[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    p_i_3
       (.I0(p_5[3]),
        .I1(\or_ln17_reg_1351_reg[0] ),
        .O(A[3]));
  LUT2 #(
    .INIT(4'h2)) 
    p_i_4
       (.I0(p_5[2]),
        .I1(\or_ln17_reg_1351_reg[0] ),
        .O(A[2]));
  LUT2 #(
    .INIT(4'h2)) 
    p_i_5
       (.I0(p_5[1]),
        .I1(\or_ln17_reg_1351_reg[0] ),
        .O(A[1]));
  LUT2 #(
    .INIT(4'h4)) 
    p_i_6
       (.I0(\or_ln17_reg_1351_reg[0] ),
        .I1(p_5[0]),
        .O(A[0]));
  LUT5 #(
    .INIT(32'h11111E11)) 
    p_i_7
       (.I0(or_ln17_reg_1351),
        .I1(p_i_12_n_0),
        .I2(p_i_13_n_0),
        .I3(\col_assign_reg_442_reg[1] ),
        .I4(p_i_15_n_0),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00E2000000E2FF1D)) 
    p_i_8
       (.I0(p_2[1]),
        .I1(p_i_16_n_0),
        .I2(p_4[1]),
        .I3(p_i_15_n_0),
        .I4(p_i_13_n_0),
        .I5(or_ln17_reg_1351),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h4444434433334333)) 
    p_i_9
       (.I0(or_ln17_reg_1351),
        .I1(p_i_15_n_0),
        .I2(p_2[1]),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(p_3),
        .I5(p_4[1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_2
       (.I0(grp_fu_1216_p3[6]),
        .I1(ram_reg),
        .I2(P[6]),
        .O(ADDRARDADDR[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_3
       (.I0(grp_fu_1216_p3[5]),
        .I1(ram_reg),
        .I2(P[5]),
        .O(ADDRARDADDR[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_4
       (.I0(grp_fu_1216_p3[4]),
        .I1(ram_reg),
        .I2(P[4]),
        .O(ADDRARDADDR[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_5
       (.I0(grp_fu_1216_p3[3]),
        .I1(ram_reg),
        .I2(P[3]),
        .O(ADDRARDADDR[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_6
       (.I0(grp_fu_1216_p3[2]),
        .I1(ram_reg),
        .I2(P[2]),
        .O(ADDRARDADDR[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_7
       (.I0(grp_fu_1216_p3[1]),
        .I1(ram_reg),
        .I2(P[1]),
        .O(ADDRARDADDR[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_8
       (.I0(grp_fu_1216_p3[0]),
        .I1(ram_reg),
        .I2(P[0]),
        .O(ADDRARDADDR[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1
   (P,
    \icmp_ln15_reg_1308_reg[0] ,
    p_5_in,
    ap_clk,
    A,
    D,
    p,
    ap_enable_reg_pp0_iter1,
    ap_block_pp0_stage0_subdone1_in,
    Q);
  output [6:0]P;
  output \icmp_ln15_reg_1308_reg[0] ;
  input p_5_in;
  input ap_clk;
  input [3:0]A;
  input [3:0]D;
  input p;
  input ap_enable_reg_pp0_iter1;
  input ap_block_pp0_stage0_subdone1_in;
  input [0:0]Q;

  wire [3:0]A;
  wire [3:0]D;
  wire [6:0]P;
  wire [0:0]Q;
  wire ap_block_pp0_stage0_subdone1_in;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire \icmp_ln15_reg_1308_reg[0] ;
  wire p;
  wire p_5_in;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_DSP48_0 yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_DSP48_0_U
       (.A(A),
        .D(D),
        .P(P),
        .Q(Q),
        .ap_block_pp0_stage0_subdone1_in(ap_block_pp0_stage0_subdone1_in),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .\icmp_ln15_reg_1308_reg[0] (\icmp_ln15_reg_1308_reg[0] ),
        .p_0(p),
        .p_5_in(p_5_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_DSP48_0
   (P,
    \icmp_ln15_reg_1308_reg[0] ,
    p_5_in,
    ap_clk,
    A,
    D,
    p_0,
    ap_enable_reg_pp0_iter1,
    ap_block_pp0_stage0_subdone1_in,
    Q);
  output [6:0]P;
  output \icmp_ln15_reg_1308_reg[0] ;
  input p_5_in;
  input ap_clk;
  input [3:0]A;
  input [3:0]D;
  input p_0;
  input ap_enable_reg_pp0_iter1;
  input ap_block_pp0_stage0_subdone1_in;
  input [0:0]Q;

  wire [3:0]A;
  wire [3:0]D;
  wire [6:0]P;
  wire [0:0]Q;
  wire ap_block_pp0_stage0_subdone1_in;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire \icmp_ln15_reg_1308_reg[0] ;
  wire p_0;
  wire p_5_in;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:7]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(p_5_in),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(\icmp_ln15_reg_1308_reg[0] ),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:7],P}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h4000)) 
    p_i_2
       (.I0(p_0),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_block_pp0_stage0_subdone1_in),
        .I3(Q),
        .O(\icmp_ln15_reg_1308_reg[0] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
