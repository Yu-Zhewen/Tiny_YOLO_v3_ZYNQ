// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sat Jul 20 20:47:47 2019
// Host        : Lenovo-XiaoXin-CHAO7000 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_yolo_acc_top_0_1_sim_netlist.v
// Design      : design_1_yolo_acc_top_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_yolo_acc_top_0_1,yolo_acc_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "yolo_acc_top,Vivado 2019.1" *) (* hls_module = "yes" *) 
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
    inStream_a_TVALID,
    inStream_a_TREADY,
    inStream_a_TDATA,
    inStream_a_TDEST,
    inStream_a_TKEEP,
    inStream_a_TSTRB,
    inStream_a_TUSER,
    inStream_a_TLAST,
    inStream_a_TID,
    inStream_b_TVALID,
    inStream_b_TREADY,
    inStream_b_TDATA,
    inStream_b_TDEST,
    inStream_b_TKEEP,
    inStream_b_TSTRB,
    inStream_b_TUSER,
    inStream_b_TLAST,
    inStream_b_TID,
    outStream_TVALID,
    outStream_TREADY,
    outStream_TDATA,
    outStream_TDEST,
    outStream_TKEEP,
    outStream_TSTRB,
    outStream_TUSER,
    outStream_TLAST,
    outStream_TID);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWADDR" *) input [5:0]s_axi_CTRL_BUS_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWVALID" *) input s_axi_CTRL_BUS_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWREADY" *) output s_axi_CTRL_BUS_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WDATA" *) input [31:0]s_axi_CTRL_BUS_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WSTRB" *) input [3:0]s_axi_CTRL_BUS_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WVALID" *) input s_axi_CTRL_BUS_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WREADY" *) output s_axi_CTRL_BUS_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BRESP" *) output [1:0]s_axi_CTRL_BUS_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BVALID" *) output s_axi_CTRL_BUS_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BREADY" *) input s_axi_CTRL_BUS_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARADDR" *) input [5:0]s_axi_CTRL_BUS_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARVALID" *) input s_axi_CTRL_BUS_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARREADY" *) output s_axi_CTRL_BUS_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RDATA" *) output [31:0]s_axi_CTRL_BUS_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RRESP" *) output [1:0]s_axi_CTRL_BUS_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RVALID" *) output s_axi_CTRL_BUS_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL_BUS, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 1e+08, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_CTRL_BUS_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL_BUS:inStream_a:inStream_b:outStream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_a TVALID" *) input inStream_a_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_a TREADY" *) output inStream_a_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_a TDATA" *) input [63:0]inStream_a_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_a TDEST" *) input [5:0]inStream_a_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_a TKEEP" *) input [7:0]inStream_a_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_a TSTRB" *) input [7:0]inStream_a_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_a TUSER" *) input [1:0]inStream_a_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_a TLAST" *) input [0:0]inStream_a_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_a TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inStream_a, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input [4:0]inStream_a_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_b TVALID" *) input inStream_b_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_b TREADY" *) output inStream_b_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_b TDATA" *) input [63:0]inStream_b_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_b TDEST" *) input [5:0]inStream_b_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_b TKEEP" *) input [7:0]inStream_b_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_b TSTRB" *) input [7:0]inStream_b_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_b TUSER" *) input [1:0]inStream_b_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_b TLAST" *) input [0:0]inStream_b_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream_b TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inStream_b, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input [4:0]inStream_b_TID;
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
  wire [63:0]inStream_a_TDATA;
  wire [5:0]inStream_a_TDEST;
  wire [4:0]inStream_a_TID;
  wire [7:0]inStream_a_TKEEP;
  wire [0:0]inStream_a_TLAST;
  wire inStream_a_TREADY;
  wire [7:0]inStream_a_TSTRB;
  wire [1:0]inStream_a_TUSER;
  wire inStream_a_TVALID;
  wire [63:0]inStream_b_TDATA;
  wire [5:0]inStream_b_TDEST;
  wire [4:0]inStream_b_TID;
  wire [7:0]inStream_b_TKEEP;
  wire [0:0]inStream_b_TLAST;
  wire inStream_b_TREADY;
  wire [7:0]inStream_b_TSTRB;
  wire [1:0]inStream_b_TUSER;
  wire inStream_b_TVALID;
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
  wire [5:0]s_axi_CTRL_BUS_ARADDR;
  wire s_axi_CTRL_BUS_ARREADY;
  wire s_axi_CTRL_BUS_ARVALID;
  wire [5:0]s_axi_CTRL_BUS_AWADDR;
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

  (* C_S_AXI_CTRL_BUS_ADDR_WIDTH = "6" *) 
  (* C_S_AXI_CTRL_BUS_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_BUS_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* ap_ST_fsm_pp1_stage0 = "6'b010000" *) 
  (* ap_ST_fsm_state1 = "6'b000001" *) 
  (* ap_ST_fsm_state11 = "6'b100000" *) 
  (* ap_ST_fsm_state2 = "6'b000010" *) 
  (* ap_ST_fsm_state3 = "6'b000100" *) 
  (* ap_ST_fsm_state4 = "6'b001000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .inStream_a_TDATA(inStream_a_TDATA),
        .inStream_a_TDEST(inStream_a_TDEST),
        .inStream_a_TID(inStream_a_TID),
        .inStream_a_TKEEP(inStream_a_TKEEP),
        .inStream_a_TLAST(inStream_a_TLAST),
        .inStream_a_TREADY(inStream_a_TREADY),
        .inStream_a_TSTRB(inStream_a_TSTRB),
        .inStream_a_TUSER(inStream_a_TUSER),
        .inStream_a_TVALID(inStream_a_TVALID),
        .inStream_b_TDATA(inStream_b_TDATA),
        .inStream_b_TDEST(inStream_b_TDEST),
        .inStream_b_TID(inStream_b_TID),
        .inStream_b_TKEEP(inStream_b_TKEEP),
        .inStream_b_TLAST(inStream_b_TLAST),
        .inStream_b_TREADY(inStream_b_TREADY),
        .inStream_b_TSTRB(inStream_b_TSTRB),
        .inStream_b_TUSER(inStream_b_TUSER),
        .inStream_b_TVALID(inStream_b_TVALID),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_post_process_unit
   (Q,
    O,
    CO,
    D,
    ap_ce_reg,
    \activated_output_V_reg_380_reg[15]_0 ,
    ap_clk,
    Range2_all_ones_reg_4060,
    S,
    DOADO,
    ret_V_fu_78_p2_carry__0_0,
    ret_V_fu_78_p2_carry__1_0,
    ret_V_fu_78_p2_carry__2_0,
    \activated_output_V_reg_380_reg[15]_1 ,
    leaky_V_read_reg_364_pp0_iter1_reg,
    bias_en_V_read_reg_369_pp0_iter1_reg,
    grp_post_process_unit_fu_403_ap_ce,
    \data_in_V_int_reg_reg[15]_0 );
  output [15:0]Q;
  output [0:0]O;
  output [0:0]CO;
  output [15:0]D;
  input ap_ce_reg;
  input \activated_output_V_reg_380_reg[15]_0 ;
  input ap_clk;
  input Range2_all_ones_reg_4060;
  input [0:0]S;
  input [14:0]DOADO;
  input [3:0]ret_V_fu_78_p2_carry__0_0;
  input [3:0]ret_V_fu_78_p2_carry__1_0;
  input [3:0]ret_V_fu_78_p2_carry__2_0;
  input [3:0]\activated_output_V_reg_380_reg[15]_1 ;
  input leaky_V_read_reg_364_pp0_iter1_reg;
  input bias_en_V_read_reg_369_pp0_iter1_reg;
  input grp_post_process_unit_fu_403_ap_ce;
  input [15:0]\data_in_V_int_reg_reg[15]_0 ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [14:0]DOADO;
  wire [0:0]O;
  wire [15:0]Q;
  wire Range2_all_ones_reg_4060;
  wire [0:0]S;
  wire activated_output_V_reg_380;
  wire \activated_output_V_reg_380[0]_i_1_n_0 ;
  wire \activated_output_V_reg_380[10]_i_1_n_0 ;
  wire \activated_output_V_reg_380[11]_i_1_n_0 ;
  wire \activated_output_V_reg_380[12]_i_1_n_0 ;
  wire \activated_output_V_reg_380[13]_i_1_n_0 ;
  wire \activated_output_V_reg_380[14]_i_1_n_0 ;
  wire \activated_output_V_reg_380[1]_i_1_n_0 ;
  wire \activated_output_V_reg_380[2]_i_1_n_0 ;
  wire \activated_output_V_reg_380[3]_i_1_n_0 ;
  wire \activated_output_V_reg_380[4]_i_1_n_0 ;
  wire \activated_output_V_reg_380[5]_i_1_n_0 ;
  wire \activated_output_V_reg_380[6]_i_1_n_0 ;
  wire \activated_output_V_reg_380[7]_i_1_n_0 ;
  wire \activated_output_V_reg_380[8]_i_1_n_0 ;
  wire \activated_output_V_reg_380[9]_i_1_n_0 ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[0] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[10] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[11] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[12] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[13] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[14] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[1] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[2] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[3] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[4] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[5] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[6] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[7] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[8] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[9] ;
  wire \activated_output_V_reg_380_reg[15]_0 ;
  wire [3:0]\activated_output_V_reg_380_reg[15]_1 ;
  wire \activated_output_V_reg_380_reg_n_0_[0] ;
  wire \activated_output_V_reg_380_reg_n_0_[10] ;
  wire \activated_output_V_reg_380_reg_n_0_[11] ;
  wire \activated_output_V_reg_380_reg_n_0_[12] ;
  wire \activated_output_V_reg_380_reg_n_0_[13] ;
  wire \activated_output_V_reg_380_reg_n_0_[14] ;
  wire \activated_output_V_reg_380_reg_n_0_[15] ;
  wire \activated_output_V_reg_380_reg_n_0_[1] ;
  wire \activated_output_V_reg_380_reg_n_0_[2] ;
  wire \activated_output_V_reg_380_reg_n_0_[3] ;
  wire \activated_output_V_reg_380_reg_n_0_[4] ;
  wire \activated_output_V_reg_380_reg_n_0_[5] ;
  wire \activated_output_V_reg_380_reg_n_0_[6] ;
  wire \activated_output_V_reg_380_reg_n_0_[7] ;
  wire \activated_output_V_reg_380_reg_n_0_[8] ;
  wire \activated_output_V_reg_380_reg_n_0_[9] ;
  wire ap_ce_reg;
  wire ap_clk;
  wire [15:0]ap_return_int_reg;
  wire bias_en_V_read_reg_369_pp0_iter1_reg;
  wire [15:0]\data_in_V_int_reg_reg[15]_0 ;
  wire [15:0]data_in_V_read_reg_375;
  wire [15:0]data_in_V_read_reg_375_pp0_iter1_reg;
  wire grp_post_process_unit_fu_403_ap_ce;
  wire leaky_V_read_reg_364_pp0_iter1_reg;
  wire p_Val2_16_fu_92_p2_carry__0_i_1_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_i_2_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_i_3_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_i_4_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_n_1;
  wire p_Val2_16_fu_92_p2_carry__0_n_2;
  wire p_Val2_16_fu_92_p2_carry__0_n_3;
  wire p_Val2_16_fu_92_p2_carry__0_n_4;
  wire p_Val2_16_fu_92_p2_carry__0_n_5;
  wire p_Val2_16_fu_92_p2_carry__0_n_6;
  wire p_Val2_16_fu_92_p2_carry__0_n_7;
  wire p_Val2_16_fu_92_p2_carry__1_i_1_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_i_2_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_i_3_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_i_4_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_n_1;
  wire p_Val2_16_fu_92_p2_carry__1_n_2;
  wire p_Val2_16_fu_92_p2_carry__1_n_3;
  wire p_Val2_16_fu_92_p2_carry__1_n_4;
  wire p_Val2_16_fu_92_p2_carry__1_n_5;
  wire p_Val2_16_fu_92_p2_carry__1_n_6;
  wire p_Val2_16_fu_92_p2_carry__1_n_7;
  wire p_Val2_16_fu_92_p2_carry__2_i_2_n_0;
  wire p_Val2_16_fu_92_p2_carry__2_i_3_n_0;
  wire p_Val2_16_fu_92_p2_carry__2_i_4_n_0;
  wire p_Val2_16_fu_92_p2_carry__2_n_1;
  wire p_Val2_16_fu_92_p2_carry__2_n_2;
  wire p_Val2_16_fu_92_p2_carry__2_n_3;
  wire p_Val2_16_fu_92_p2_carry__2_n_5;
  wire p_Val2_16_fu_92_p2_carry__2_n_6;
  wire p_Val2_16_fu_92_p2_carry__2_n_7;
  wire p_Val2_16_fu_92_p2_carry_i_1_n_0;
  wire p_Val2_16_fu_92_p2_carry_i_2_n_0;
  wire p_Val2_16_fu_92_p2_carry_i_3_n_0;
  wire p_Val2_16_fu_92_p2_carry_i_4_n_0;
  wire p_Val2_16_fu_92_p2_carry_n_0;
  wire p_Val2_16_fu_92_p2_carry_n_1;
  wire p_Val2_16_fu_92_p2_carry_n_2;
  wire p_Val2_16_fu_92_p2_carry_n_3;
  wire p_Val2_16_fu_92_p2_carry_n_4;
  wire p_Val2_16_fu_92_p2_carry_n_5;
  wire p_Val2_16_fu_92_p2_carry_n_6;
  wire p_Val2_16_fu_92_p2_carry_n_7;
  wire p_Val2_18_fu_235_p2_carry__0_n_0;
  wire p_Val2_18_fu_235_p2_carry__0_n_1;
  wire p_Val2_18_fu_235_p2_carry__0_n_2;
  wire p_Val2_18_fu_235_p2_carry__0_n_3;
  wire p_Val2_18_fu_235_p2_carry__0_n_4;
  wire p_Val2_18_fu_235_p2_carry__0_n_5;
  wire p_Val2_18_fu_235_p2_carry__0_n_6;
  wire p_Val2_18_fu_235_p2_carry__0_n_7;
  wire p_Val2_18_fu_235_p2_carry__1_n_0;
  wire p_Val2_18_fu_235_p2_carry__1_n_1;
  wire p_Val2_18_fu_235_p2_carry__1_n_2;
  wire p_Val2_18_fu_235_p2_carry__1_n_3;
  wire p_Val2_18_fu_235_p2_carry__1_n_4;
  wire p_Val2_18_fu_235_p2_carry__1_n_5;
  wire p_Val2_18_fu_235_p2_carry__1_n_6;
  wire p_Val2_18_fu_235_p2_carry__1_n_7;
  wire p_Val2_18_fu_235_p2_carry__2_n_1;
  wire p_Val2_18_fu_235_p2_carry__2_n_3;
  wire p_Val2_18_fu_235_p2_carry__2_n_6;
  wire p_Val2_18_fu_235_p2_carry__2_n_7;
  wire p_Val2_18_fu_235_p2_carry_n_0;
  wire p_Val2_18_fu_235_p2_carry_n_1;
  wire p_Val2_18_fu_235_p2_carry_n_2;
  wire p_Val2_18_fu_235_p2_carry_n_3;
  wire p_Val2_18_fu_235_p2_carry_n_4;
  wire p_Val2_18_fu_235_p2_carry_n_5;
  wire p_Val2_18_fu_235_p2_carry_n_6;
  wire p_Val2_18_fu_235_p2_carry_n_7;
  wire [3:0]ret_V_fu_78_p2_carry__0_0;
  wire ret_V_fu_78_p2_carry__0_n_0;
  wire ret_V_fu_78_p2_carry__0_n_1;
  wire ret_V_fu_78_p2_carry__0_n_2;
  wire ret_V_fu_78_p2_carry__0_n_3;
  wire [3:0]ret_V_fu_78_p2_carry__1_0;
  wire ret_V_fu_78_p2_carry__1_n_0;
  wire ret_V_fu_78_p2_carry__1_n_1;
  wire ret_V_fu_78_p2_carry__1_n_2;
  wire ret_V_fu_78_p2_carry__1_n_3;
  wire [3:0]ret_V_fu_78_p2_carry__2_0;
  wire ret_V_fu_78_p2_carry__2_i_1_n_0;
  wire ret_V_fu_78_p2_carry__2_n_1;
  wire ret_V_fu_78_p2_carry__2_n_2;
  wire ret_V_fu_78_p2_carry__2_n_3;
  wire ret_V_fu_78_p2_carry_n_0;
  wire ret_V_fu_78_p2_carry_n_1;
  wire ret_V_fu_78_p2_carry_n_2;
  wire ret_V_fu_78_p2_carry_n_3;
  wire [15:0]select_ln97_1_fu_349_p3;
  wire [12:0]sext_ln713_fu_196_p1;
  wire [13:1]sext_ln713_fu_196_p1__0;
  wire tmp_fu_180_p3;
  wire yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1_n_46;
  wire [3:3]NLW_p_Val2_16_fu_92_p2_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_p_Val2_18_fu_235_p2_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_p_Val2_18_fu_235_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[0]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[10]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[11]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_4),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[12]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry__2_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[13]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry__2_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[14]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry__2_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \activated_output_V_reg_380[15]_i_1 
       (.I0(O),
        .I1(CO),
        .I2(ap_ce_reg),
        .O(activated_output_V_reg_380));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[1]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[2]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[3]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry_n_4),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[4]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[5]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[6]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[7]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_4),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[8]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[9]_i_1 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[9]_i_1_n_0 ));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[0] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[10] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[11] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[12] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[13] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[14] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[15] ),
        .Q(tmp_fu_180_p3),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[1] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[2] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[3] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[4] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[5] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[6] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[7] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[8] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[9] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[9] ),
        .R(1'b0));
  FDSE \activated_output_V_reg_380_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[0]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[0] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[10]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[10] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[11]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[11] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[12]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[12] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[13]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[13] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[14]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[14] ),
        .S(activated_output_V_reg_380));
  FDRE \activated_output_V_reg_380_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg[15]_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[15] ),
        .R(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[1]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[1] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[2]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[2] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[3]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[3] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[4]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[4] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[5]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[5] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[6]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[6] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[7]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[7] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[8]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[8] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[9]_i_1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[9] ),
        .S(activated_output_V_reg_380));
  FDRE \ap_return_int_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[0]),
        .Q(ap_return_int_reg[0]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[10]),
        .Q(ap_return_int_reg[10]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[11]),
        .Q(ap_return_int_reg[11]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[12]),
        .Q(ap_return_int_reg[12]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[13]),
        .Q(ap_return_int_reg[13]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[14]),
        .Q(ap_return_int_reg[14]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[15]),
        .Q(ap_return_int_reg[15]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[1]),
        .Q(ap_return_int_reg[1]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[2]),
        .Q(ap_return_int_reg[2]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[3]),
        .Q(ap_return_int_reg[3]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[4]),
        .Q(ap_return_int_reg[4]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[5]),
        .Q(ap_return_int_reg[5]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[6]),
        .Q(ap_return_int_reg[6]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[7]),
        .Q(ap_return_int_reg[7]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[8]),
        .Q(ap_return_int_reg[8]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[9]),
        .Q(ap_return_int_reg[9]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[0] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[10] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[11] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[12] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[13] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[14] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[15] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[1] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[2] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[3] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[4] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[5] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[6] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[7] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[8] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[9] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[0]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[0]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[10]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[10]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[11]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[11]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[12]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[12]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[13]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[13]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[14]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[14]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[15]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[15]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[1]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[1]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[2]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[2]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[3]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[3]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[4]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[4]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[5]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[5]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[6]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[6]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[7]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[7]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[8]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[8]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[9]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[9]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[0]),
        .Q(data_in_V_read_reg_375[0]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[10]),
        .Q(data_in_V_read_reg_375[10]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[11]),
        .Q(data_in_V_read_reg_375[11]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[12]),
        .Q(data_in_V_read_reg_375[12]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[13]),
        .Q(data_in_V_read_reg_375[13]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[14]),
        .Q(data_in_V_read_reg_375[14]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[15]),
        .Q(data_in_V_read_reg_375[15]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[1]),
        .Q(data_in_V_read_reg_375[1]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[2]),
        .Q(data_in_V_read_reg_375[2]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[3]),
        .Q(data_in_V_read_reg_375[3]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[4]),
        .Q(data_in_V_read_reg_375[4]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[5]),
        .Q(data_in_V_read_reg_375[5]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[6]),
        .Q(data_in_V_read_reg_375[6]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[7]),
        .Q(data_in_V_read_reg_375[7]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[8]),
        .Q(data_in_V_read_reg_375[8]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[9]),
        .Q(data_in_V_read_reg_375[9]),
        .R(1'b0));
  CARRY4 p_Val2_16_fu_92_p2_carry
       (.CI(1'b0),
        .CO({p_Val2_16_fu_92_p2_carry_n_0,p_Val2_16_fu_92_p2_carry_n_1,p_Val2_16_fu_92_p2_carry_n_2,p_Val2_16_fu_92_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({p_Val2_16_fu_92_p2_carry_n_4,p_Val2_16_fu_92_p2_carry_n_5,p_Val2_16_fu_92_p2_carry_n_6,p_Val2_16_fu_92_p2_carry_n_7}),
        .S({p_Val2_16_fu_92_p2_carry_i_1_n_0,p_Val2_16_fu_92_p2_carry_i_2_n_0,p_Val2_16_fu_92_p2_carry_i_3_n_0,p_Val2_16_fu_92_p2_carry_i_4_n_0}));
  CARRY4 p_Val2_16_fu_92_p2_carry__0
       (.CI(p_Val2_16_fu_92_p2_carry_n_0),
        .CO({p_Val2_16_fu_92_p2_carry__0_n_0,p_Val2_16_fu_92_p2_carry__0_n_1,p_Val2_16_fu_92_p2_carry__0_n_2,p_Val2_16_fu_92_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({p_Val2_16_fu_92_p2_carry__0_n_4,p_Val2_16_fu_92_p2_carry__0_n_5,p_Val2_16_fu_92_p2_carry__0_n_6,p_Val2_16_fu_92_p2_carry__0_n_7}),
        .S({p_Val2_16_fu_92_p2_carry__0_i_1_n_0,p_Val2_16_fu_92_p2_carry__0_i_2_n_0,p_Val2_16_fu_92_p2_carry__0_i_3_n_0,p_Val2_16_fu_92_p2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_1
       (.I0(Q[7]),
        .I1(DOADO[7]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_2
       (.I0(Q[6]),
        .I1(DOADO[6]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_3
       (.I0(Q[5]),
        .I1(DOADO[5]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_4
       (.I0(Q[4]),
        .I1(DOADO[4]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_4_n_0));
  CARRY4 p_Val2_16_fu_92_p2_carry__1
       (.CI(p_Val2_16_fu_92_p2_carry__0_n_0),
        .CO({p_Val2_16_fu_92_p2_carry__1_n_0,p_Val2_16_fu_92_p2_carry__1_n_1,p_Val2_16_fu_92_p2_carry__1_n_2,p_Val2_16_fu_92_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({p_Val2_16_fu_92_p2_carry__1_n_4,p_Val2_16_fu_92_p2_carry__1_n_5,p_Val2_16_fu_92_p2_carry__1_n_6,p_Val2_16_fu_92_p2_carry__1_n_7}),
        .S({p_Val2_16_fu_92_p2_carry__1_i_1_n_0,p_Val2_16_fu_92_p2_carry__1_i_2_n_0,p_Val2_16_fu_92_p2_carry__1_i_3_n_0,p_Val2_16_fu_92_p2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_1
       (.I0(Q[11]),
        .I1(DOADO[11]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_2
       (.I0(Q[10]),
        .I1(DOADO[10]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_3
       (.I0(Q[9]),
        .I1(DOADO[9]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_4
       (.I0(Q[8]),
        .I1(DOADO[8]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_4_n_0));
  CARRY4 p_Val2_16_fu_92_p2_carry__2
       (.CI(p_Val2_16_fu_92_p2_carry__1_n_0),
        .CO({NLW_p_Val2_16_fu_92_p2_carry__2_CO_UNCONNECTED[3],p_Val2_16_fu_92_p2_carry__2_n_1,p_Val2_16_fu_92_p2_carry__2_n_2,p_Val2_16_fu_92_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14:12]}),
        .O({O,p_Val2_16_fu_92_p2_carry__2_n_5,p_Val2_16_fu_92_p2_carry__2_n_6,p_Val2_16_fu_92_p2_carry__2_n_7}),
        .S({S,p_Val2_16_fu_92_p2_carry__2_i_2_n_0,p_Val2_16_fu_92_p2_carry__2_i_3_n_0,p_Val2_16_fu_92_p2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_2
       (.I0(Q[14]),
        .I1(DOADO[14]),
        .O(p_Val2_16_fu_92_p2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_3
       (.I0(Q[13]),
        .I1(DOADO[13]),
        .O(p_Val2_16_fu_92_p2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_4
       (.I0(Q[12]),
        .I1(DOADO[12]),
        .O(p_Val2_16_fu_92_p2_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_1
       (.I0(Q[3]),
        .I1(DOADO[3]),
        .O(p_Val2_16_fu_92_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_2
       (.I0(Q[2]),
        .I1(DOADO[2]),
        .O(p_Val2_16_fu_92_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_3
       (.I0(Q[1]),
        .I1(DOADO[1]),
        .O(p_Val2_16_fu_92_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_4
       (.I0(Q[0]),
        .I1(DOADO[0]),
        .O(p_Val2_16_fu_92_p2_carry_i_4_n_0));
  CARRY4 p_Val2_18_fu_235_p2_carry
       (.CI(1'b0),
        .CO({p_Val2_18_fu_235_p2_carry_n_0,p_Val2_18_fu_235_p2_carry_n_1,p_Val2_18_fu_235_p2_carry_n_2,p_Val2_18_fu_235_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sext_ln713_fu_196_p1[0]}),
        .O({p_Val2_18_fu_235_p2_carry_n_4,p_Val2_18_fu_235_p2_carry_n_5,p_Val2_18_fu_235_p2_carry_n_6,p_Val2_18_fu_235_p2_carry_n_7}),
        .S({sext_ln713_fu_196_p1__0[3:1],yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1_n_46}));
  CARRY4 p_Val2_18_fu_235_p2_carry__0
       (.CI(p_Val2_18_fu_235_p2_carry_n_0),
        .CO({p_Val2_18_fu_235_p2_carry__0_n_0,p_Val2_18_fu_235_p2_carry__0_n_1,p_Val2_18_fu_235_p2_carry__0_n_2,p_Val2_18_fu_235_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_Val2_18_fu_235_p2_carry__0_n_4,p_Val2_18_fu_235_p2_carry__0_n_5,p_Val2_18_fu_235_p2_carry__0_n_6,p_Val2_18_fu_235_p2_carry__0_n_7}),
        .S(sext_ln713_fu_196_p1__0[7:4]));
  CARRY4 p_Val2_18_fu_235_p2_carry__1
       (.CI(p_Val2_18_fu_235_p2_carry__0_n_0),
        .CO({p_Val2_18_fu_235_p2_carry__1_n_0,p_Val2_18_fu_235_p2_carry__1_n_1,p_Val2_18_fu_235_p2_carry__1_n_2,p_Val2_18_fu_235_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_Val2_18_fu_235_p2_carry__1_n_4,p_Val2_18_fu_235_p2_carry__1_n_5,p_Val2_18_fu_235_p2_carry__1_n_6,p_Val2_18_fu_235_p2_carry__1_n_7}),
        .S(sext_ln713_fu_196_p1__0[11:8]));
  CARRY4 p_Val2_18_fu_235_p2_carry__2
       (.CI(p_Val2_18_fu_235_p2_carry__1_n_0),
        .CO({NLW_p_Val2_18_fu_235_p2_carry__2_CO_UNCONNECTED[3],p_Val2_18_fu_235_p2_carry__2_n_1,NLW_p_Val2_18_fu_235_p2_carry__2_CO_UNCONNECTED[1],p_Val2_18_fu_235_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b0}),
        .O({NLW_p_Val2_18_fu_235_p2_carry__2_O_UNCONNECTED[3:2],p_Val2_18_fu_235_p2_carry__2_n_6,p_Val2_18_fu_235_p2_carry__2_n_7}),
        .S({1'b0,1'b1,sext_ln713_fu_196_p1__0[13],sext_ln713_fu_196_p1[12]}));
  CARRY4 ret_V_fu_78_p2_carry
       (.CI(1'b0),
        .CO({ret_V_fu_78_p2_carry_n_0,ret_V_fu_78_p2_carry_n_1,ret_V_fu_78_p2_carry_n_2,ret_V_fu_78_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DOADO[3:0]),
        .O(NLW_ret_V_fu_78_p2_carry_O_UNCONNECTED[3:0]),
        .S(ret_V_fu_78_p2_carry__0_0));
  CARRY4 ret_V_fu_78_p2_carry__0
       (.CI(ret_V_fu_78_p2_carry_n_0),
        .CO({ret_V_fu_78_p2_carry__0_n_0,ret_V_fu_78_p2_carry__0_n_1,ret_V_fu_78_p2_carry__0_n_2,ret_V_fu_78_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(DOADO[7:4]),
        .O(NLW_ret_V_fu_78_p2_carry__0_O_UNCONNECTED[3:0]),
        .S(ret_V_fu_78_p2_carry__1_0));
  CARRY4 ret_V_fu_78_p2_carry__1
       (.CI(ret_V_fu_78_p2_carry__0_n_0),
        .CO({ret_V_fu_78_p2_carry__1_n_0,ret_V_fu_78_p2_carry__1_n_1,ret_V_fu_78_p2_carry__1_n_2,ret_V_fu_78_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(DOADO[11:8]),
        .O(NLW_ret_V_fu_78_p2_carry__1_O_UNCONNECTED[3:0]),
        .S(ret_V_fu_78_p2_carry__2_0));
  CARRY4 ret_V_fu_78_p2_carry__2
       (.CI(ret_V_fu_78_p2_carry__1_n_0),
        .CO({CO,ret_V_fu_78_p2_carry__2_n_1,ret_V_fu_78_p2_carry__2_n_2,ret_V_fu_78_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ret_V_fu_78_p2_carry__2_i_1_n_0,DOADO[14:12]}),
        .O(NLW_ret_V_fu_78_p2_carry__2_O_UNCONNECTED[3:0]),
        .S(\activated_output_V_reg_380_reg[15]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    ret_V_fu_78_p2_carry__2_i_1
       (.I0(Q[15]),
        .O(ret_V_fu_78_p2_carry__2_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0_9 yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1
       (.CO(p_Val2_18_fu_235_p2_carry__2_n_1),
        .D({\activated_output_V_reg_380_reg_n_0_[15] ,\activated_output_V_reg_380_reg_n_0_[14] ,\activated_output_V_reg_380_reg_n_0_[13] ,\activated_output_V_reg_380_reg_n_0_[12] ,\activated_output_V_reg_380_reg_n_0_[11] ,\activated_output_V_reg_380_reg_n_0_[10] ,\activated_output_V_reg_380_reg_n_0_[9] ,\activated_output_V_reg_380_reg_n_0_[8] ,\activated_output_V_reg_380_reg_n_0_[7] ,\activated_output_V_reg_380_reg_n_0_[6] ,\activated_output_V_reg_380_reg_n_0_[5] ,\activated_output_V_reg_380_reg_n_0_[4] ,\activated_output_V_reg_380_reg_n_0_[3] ,\activated_output_V_reg_380_reg_n_0_[2] ,\activated_output_V_reg_380_reg_n_0_[1] ,\activated_output_V_reg_380_reg_n_0_[0] }),
        .O({p_Val2_18_fu_235_p2_carry__2_n_6,p_Val2_18_fu_235_p2_carry__2_n_7}),
        .P({sext_ln713_fu_196_p1__0[13],sext_ln713_fu_196_p1[12],sext_ln713_fu_196_p1__0[11:1],sext_ln713_fu_196_p1[0]}),
        .Q(ap_return_int_reg),
        .Range2_all_ones_reg_4060(Range2_all_ones_reg_4060),
        .S(yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1_n_46),
        .ap_ce_reg(ap_ce_reg),
        .ap_ce_reg_reg(D),
        .ap_clk(ap_clk),
        .\ap_return_int_reg_reg[11] ({p_Val2_18_fu_235_p2_carry__1_n_4,p_Val2_18_fu_235_p2_carry__1_n_5,p_Val2_18_fu_235_p2_carry__1_n_6,p_Val2_18_fu_235_p2_carry__1_n_7}),
        .\ap_return_int_reg_reg[15] ({tmp_fu_180_p3,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[14] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[13] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[12] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[11] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[10] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[9] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[8] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[7] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[6] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[5] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[4] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[3] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[2] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[1] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[0] }),
        .\ap_return_int_reg_reg[15]_0 (data_in_V_read_reg_375_pp0_iter1_reg),
        .\ap_return_int_reg_reg[3] ({p_Val2_18_fu_235_p2_carry_n_4,p_Val2_18_fu_235_p2_carry_n_5,p_Val2_18_fu_235_p2_carry_n_6,p_Val2_18_fu_235_p2_carry_n_7}),
        .\ap_return_int_reg_reg[7] ({p_Val2_18_fu_235_p2_carry__0_n_4,p_Val2_18_fu_235_p2_carry__0_n_5,p_Val2_18_fu_235_p2_carry__0_n_6,p_Val2_18_fu_235_p2_carry__0_n_7}),
        .bias_en_V_read_reg_369_pp0_iter1_reg(bias_en_V_read_reg_369_pp0_iter1_reg),
        .leaky_V_read_reg_364_pp0_iter1_reg(leaky_V_read_reg_364_pp0_iter1_reg),
        .p(select_ln97_1_fu_349_p3));
endmodule

(* ORIG_REF_NAME = "post_process_unit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_post_process_unit_0
   (Q,
    O,
    CO,
    D,
    ap_ce_reg,
    \activated_output_V_reg_380_reg[15]_0 ,
    ap_clk,
    Range2_all_ones_reg_4060,
    S,
    DOADO,
    ret_V_fu_78_p2_carry__0_0,
    ret_V_fu_78_p2_carry__1_0,
    ret_V_fu_78_p2_carry__2_0,
    \activated_output_V_reg_380_reg[15]_1 ,
    leaky_V_read_reg_364_pp0_iter1_reg,
    bias_en_V_read_reg_369_pp0_iter1_reg,
    grp_post_process_unit_fu_403_ap_ce,
    \data_in_V_int_reg_reg[15]_0 );
  output [15:0]Q;
  output [0:0]O;
  output [0:0]CO;
  output [15:0]D;
  input ap_ce_reg;
  input \activated_output_V_reg_380_reg[15]_0 ;
  input ap_clk;
  input Range2_all_ones_reg_4060;
  input [0:0]S;
  input [14:0]DOADO;
  input [3:0]ret_V_fu_78_p2_carry__0_0;
  input [3:0]ret_V_fu_78_p2_carry__1_0;
  input [3:0]ret_V_fu_78_p2_carry__2_0;
  input [3:0]\activated_output_V_reg_380_reg[15]_1 ;
  input leaky_V_read_reg_364_pp0_iter1_reg;
  input bias_en_V_read_reg_369_pp0_iter1_reg;
  input grp_post_process_unit_fu_403_ap_ce;
  input [15:0]\data_in_V_int_reg_reg[15]_0 ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [14:0]DOADO;
  wire [0:0]O;
  wire [15:0]Q;
  wire Range2_all_ones_reg_4060;
  wire [0:0]S;
  wire activated_output_V_reg_380;
  wire \activated_output_V_reg_380[0]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380[10]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380[11]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380[12]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380[13]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380[14]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380[1]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380[2]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380[3]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380[4]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380[5]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380[6]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380[7]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380[8]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380[9]_i_1__0_n_0 ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[0] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[10] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[11] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[12] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[13] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[14] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[1] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[2] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[3] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[4] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[5] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[6] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[7] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[8] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[9] ;
  wire \activated_output_V_reg_380_reg[15]_0 ;
  wire [3:0]\activated_output_V_reg_380_reg[15]_1 ;
  wire \activated_output_V_reg_380_reg_n_0_[0] ;
  wire \activated_output_V_reg_380_reg_n_0_[10] ;
  wire \activated_output_V_reg_380_reg_n_0_[11] ;
  wire \activated_output_V_reg_380_reg_n_0_[12] ;
  wire \activated_output_V_reg_380_reg_n_0_[13] ;
  wire \activated_output_V_reg_380_reg_n_0_[14] ;
  wire \activated_output_V_reg_380_reg_n_0_[15] ;
  wire \activated_output_V_reg_380_reg_n_0_[1] ;
  wire \activated_output_V_reg_380_reg_n_0_[2] ;
  wire \activated_output_V_reg_380_reg_n_0_[3] ;
  wire \activated_output_V_reg_380_reg_n_0_[4] ;
  wire \activated_output_V_reg_380_reg_n_0_[5] ;
  wire \activated_output_V_reg_380_reg_n_0_[6] ;
  wire \activated_output_V_reg_380_reg_n_0_[7] ;
  wire \activated_output_V_reg_380_reg_n_0_[8] ;
  wire \activated_output_V_reg_380_reg_n_0_[9] ;
  wire ap_ce_reg;
  wire ap_clk;
  wire [15:0]ap_return_int_reg;
  wire bias_en_V_read_reg_369_pp0_iter1_reg;
  wire [15:0]\data_in_V_int_reg_reg[15]_0 ;
  wire [15:0]data_in_V_read_reg_375;
  wire [15:0]data_in_V_read_reg_375_pp0_iter1_reg;
  wire grp_post_process_unit_fu_403_ap_ce;
  wire leaky_V_read_reg_364_pp0_iter1_reg;
  wire p_Val2_16_fu_92_p2_carry__0_i_1__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_i_2__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_i_3__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_i_4__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_n_1;
  wire p_Val2_16_fu_92_p2_carry__0_n_2;
  wire p_Val2_16_fu_92_p2_carry__0_n_3;
  wire p_Val2_16_fu_92_p2_carry__0_n_4;
  wire p_Val2_16_fu_92_p2_carry__0_n_5;
  wire p_Val2_16_fu_92_p2_carry__0_n_6;
  wire p_Val2_16_fu_92_p2_carry__0_n_7;
  wire p_Val2_16_fu_92_p2_carry__1_i_1__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_i_2__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_i_3__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_i_4__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_n_1;
  wire p_Val2_16_fu_92_p2_carry__1_n_2;
  wire p_Val2_16_fu_92_p2_carry__1_n_3;
  wire p_Val2_16_fu_92_p2_carry__1_n_4;
  wire p_Val2_16_fu_92_p2_carry__1_n_5;
  wire p_Val2_16_fu_92_p2_carry__1_n_6;
  wire p_Val2_16_fu_92_p2_carry__1_n_7;
  wire p_Val2_16_fu_92_p2_carry__2_i_2__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__2_i_3__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__2_i_4__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__2_n_1;
  wire p_Val2_16_fu_92_p2_carry__2_n_2;
  wire p_Val2_16_fu_92_p2_carry__2_n_3;
  wire p_Val2_16_fu_92_p2_carry__2_n_5;
  wire p_Val2_16_fu_92_p2_carry__2_n_6;
  wire p_Val2_16_fu_92_p2_carry__2_n_7;
  wire p_Val2_16_fu_92_p2_carry_i_1__0_n_0;
  wire p_Val2_16_fu_92_p2_carry_i_2__0_n_0;
  wire p_Val2_16_fu_92_p2_carry_i_3__0_n_0;
  wire p_Val2_16_fu_92_p2_carry_i_4__0_n_0;
  wire p_Val2_16_fu_92_p2_carry_n_0;
  wire p_Val2_16_fu_92_p2_carry_n_1;
  wire p_Val2_16_fu_92_p2_carry_n_2;
  wire p_Val2_16_fu_92_p2_carry_n_3;
  wire p_Val2_16_fu_92_p2_carry_n_4;
  wire p_Val2_16_fu_92_p2_carry_n_5;
  wire p_Val2_16_fu_92_p2_carry_n_6;
  wire p_Val2_16_fu_92_p2_carry_n_7;
  wire p_Val2_18_fu_235_p2_carry__0_n_0;
  wire p_Val2_18_fu_235_p2_carry__0_n_1;
  wire p_Val2_18_fu_235_p2_carry__0_n_2;
  wire p_Val2_18_fu_235_p2_carry__0_n_3;
  wire p_Val2_18_fu_235_p2_carry__0_n_4;
  wire p_Val2_18_fu_235_p2_carry__0_n_5;
  wire p_Val2_18_fu_235_p2_carry__0_n_6;
  wire p_Val2_18_fu_235_p2_carry__0_n_7;
  wire p_Val2_18_fu_235_p2_carry__1_n_0;
  wire p_Val2_18_fu_235_p2_carry__1_n_1;
  wire p_Val2_18_fu_235_p2_carry__1_n_2;
  wire p_Val2_18_fu_235_p2_carry__1_n_3;
  wire p_Val2_18_fu_235_p2_carry__1_n_4;
  wire p_Val2_18_fu_235_p2_carry__1_n_5;
  wire p_Val2_18_fu_235_p2_carry__1_n_6;
  wire p_Val2_18_fu_235_p2_carry__1_n_7;
  wire p_Val2_18_fu_235_p2_carry__2_n_1;
  wire p_Val2_18_fu_235_p2_carry__2_n_3;
  wire p_Val2_18_fu_235_p2_carry__2_n_6;
  wire p_Val2_18_fu_235_p2_carry__2_n_7;
  wire p_Val2_18_fu_235_p2_carry_n_0;
  wire p_Val2_18_fu_235_p2_carry_n_1;
  wire p_Val2_18_fu_235_p2_carry_n_2;
  wire p_Val2_18_fu_235_p2_carry_n_3;
  wire p_Val2_18_fu_235_p2_carry_n_4;
  wire p_Val2_18_fu_235_p2_carry_n_5;
  wire p_Val2_18_fu_235_p2_carry_n_6;
  wire p_Val2_18_fu_235_p2_carry_n_7;
  wire [3:0]ret_V_fu_78_p2_carry__0_0;
  wire ret_V_fu_78_p2_carry__0_n_0;
  wire ret_V_fu_78_p2_carry__0_n_1;
  wire ret_V_fu_78_p2_carry__0_n_2;
  wire ret_V_fu_78_p2_carry__0_n_3;
  wire [3:0]ret_V_fu_78_p2_carry__1_0;
  wire ret_V_fu_78_p2_carry__1_n_0;
  wire ret_V_fu_78_p2_carry__1_n_1;
  wire ret_V_fu_78_p2_carry__1_n_2;
  wire ret_V_fu_78_p2_carry__1_n_3;
  wire [3:0]ret_V_fu_78_p2_carry__2_0;
  wire ret_V_fu_78_p2_carry__2_i_1__0_n_0;
  wire ret_V_fu_78_p2_carry__2_n_1;
  wire ret_V_fu_78_p2_carry__2_n_2;
  wire ret_V_fu_78_p2_carry__2_n_3;
  wire ret_V_fu_78_p2_carry_n_0;
  wire ret_V_fu_78_p2_carry_n_1;
  wire ret_V_fu_78_p2_carry_n_2;
  wire ret_V_fu_78_p2_carry_n_3;
  wire [15:0]select_ln97_1_fu_349_p3;
  wire [12:0]sext_ln713_fu_196_p1;
  wire [13:1]sext_ln713_fu_196_p1__0;
  wire tmp_fu_180_p3;
  wire yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1_n_46;
  wire [3:3]NLW_p_Val2_16_fu_92_p2_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_p_Val2_18_fu_235_p2_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_p_Val2_18_fu_235_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[0]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[10]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[11]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_4),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[12]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry__2_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[13]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry__2_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[14]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry__2_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[14]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \activated_output_V_reg_380[15]_i_1__0 
       (.I0(O),
        .I1(CO),
        .I2(ap_ce_reg),
        .O(activated_output_V_reg_380));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[1]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[2]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[3]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry_n_4),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[4]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[5]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[6]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[7]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_4),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[8]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[9]_i_1__0 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[9]_i_1__0_n_0 ));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[0] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[10] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[11] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[12] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[13] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[14] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[15] ),
        .Q(tmp_fu_180_p3),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[1] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[2] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[3] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[4] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[5] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[6] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[7] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[8] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[9] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[9] ),
        .R(1'b0));
  FDSE \activated_output_V_reg_380_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[0]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[0] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[10]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[10] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[11]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[11] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[12]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[12] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[13]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[13] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[14]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[14] ),
        .S(activated_output_V_reg_380));
  FDRE \activated_output_V_reg_380_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg[15]_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[15] ),
        .R(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[1]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[1] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[2]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[2] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[3]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[3] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[4]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[4] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[5]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[5] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[6]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[6] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[7]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[7] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[8]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[8] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[9]_i_1__0_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[9] ),
        .S(activated_output_V_reg_380));
  FDRE \ap_return_int_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[0]),
        .Q(ap_return_int_reg[0]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[10]),
        .Q(ap_return_int_reg[10]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[11]),
        .Q(ap_return_int_reg[11]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[12]),
        .Q(ap_return_int_reg[12]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[13]),
        .Q(ap_return_int_reg[13]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[14]),
        .Q(ap_return_int_reg[14]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[15]),
        .Q(ap_return_int_reg[15]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[1]),
        .Q(ap_return_int_reg[1]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[2]),
        .Q(ap_return_int_reg[2]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[3]),
        .Q(ap_return_int_reg[3]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[4]),
        .Q(ap_return_int_reg[4]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[5]),
        .Q(ap_return_int_reg[5]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[6]),
        .Q(ap_return_int_reg[6]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[7]),
        .Q(ap_return_int_reg[7]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[8]),
        .Q(ap_return_int_reg[8]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[9]),
        .Q(ap_return_int_reg[9]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[0] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[10] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[11] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[12] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[13] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[14] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[15] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[1] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[2] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[3] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[4] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[5] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[6] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[7] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[8] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[9] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[0]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[0]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[10]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[10]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[11]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[11]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[12]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[12]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[13]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[13]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[14]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[14]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[15]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[15]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[1]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[1]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[2]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[2]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[3]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[3]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[4]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[4]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[5]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[5]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[6]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[6]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[7]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[7]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[8]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[8]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[9]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[9]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[0]),
        .Q(data_in_V_read_reg_375[0]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[10]),
        .Q(data_in_V_read_reg_375[10]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[11]),
        .Q(data_in_V_read_reg_375[11]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[12]),
        .Q(data_in_V_read_reg_375[12]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[13]),
        .Q(data_in_V_read_reg_375[13]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[14]),
        .Q(data_in_V_read_reg_375[14]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[15]),
        .Q(data_in_V_read_reg_375[15]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[1]),
        .Q(data_in_V_read_reg_375[1]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[2]),
        .Q(data_in_V_read_reg_375[2]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[3]),
        .Q(data_in_V_read_reg_375[3]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[4]),
        .Q(data_in_V_read_reg_375[4]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[5]),
        .Q(data_in_V_read_reg_375[5]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[6]),
        .Q(data_in_V_read_reg_375[6]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[7]),
        .Q(data_in_V_read_reg_375[7]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[8]),
        .Q(data_in_V_read_reg_375[8]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[9]),
        .Q(data_in_V_read_reg_375[9]),
        .R(1'b0));
  CARRY4 p_Val2_16_fu_92_p2_carry
       (.CI(1'b0),
        .CO({p_Val2_16_fu_92_p2_carry_n_0,p_Val2_16_fu_92_p2_carry_n_1,p_Val2_16_fu_92_p2_carry_n_2,p_Val2_16_fu_92_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({p_Val2_16_fu_92_p2_carry_n_4,p_Val2_16_fu_92_p2_carry_n_5,p_Val2_16_fu_92_p2_carry_n_6,p_Val2_16_fu_92_p2_carry_n_7}),
        .S({p_Val2_16_fu_92_p2_carry_i_1__0_n_0,p_Val2_16_fu_92_p2_carry_i_2__0_n_0,p_Val2_16_fu_92_p2_carry_i_3__0_n_0,p_Val2_16_fu_92_p2_carry_i_4__0_n_0}));
  CARRY4 p_Val2_16_fu_92_p2_carry__0
       (.CI(p_Val2_16_fu_92_p2_carry_n_0),
        .CO({p_Val2_16_fu_92_p2_carry__0_n_0,p_Val2_16_fu_92_p2_carry__0_n_1,p_Val2_16_fu_92_p2_carry__0_n_2,p_Val2_16_fu_92_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({p_Val2_16_fu_92_p2_carry__0_n_4,p_Val2_16_fu_92_p2_carry__0_n_5,p_Val2_16_fu_92_p2_carry__0_n_6,p_Val2_16_fu_92_p2_carry__0_n_7}),
        .S({p_Val2_16_fu_92_p2_carry__0_i_1__0_n_0,p_Val2_16_fu_92_p2_carry__0_i_2__0_n_0,p_Val2_16_fu_92_p2_carry__0_i_3__0_n_0,p_Val2_16_fu_92_p2_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_1__0
       (.I0(Q[7]),
        .I1(DOADO[7]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_2__0
       (.I0(Q[6]),
        .I1(DOADO[6]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_3__0
       (.I0(Q[5]),
        .I1(DOADO[5]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_4__0
       (.I0(Q[4]),
        .I1(DOADO[4]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_4__0_n_0));
  CARRY4 p_Val2_16_fu_92_p2_carry__1
       (.CI(p_Val2_16_fu_92_p2_carry__0_n_0),
        .CO({p_Val2_16_fu_92_p2_carry__1_n_0,p_Val2_16_fu_92_p2_carry__1_n_1,p_Val2_16_fu_92_p2_carry__1_n_2,p_Val2_16_fu_92_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({p_Val2_16_fu_92_p2_carry__1_n_4,p_Val2_16_fu_92_p2_carry__1_n_5,p_Val2_16_fu_92_p2_carry__1_n_6,p_Val2_16_fu_92_p2_carry__1_n_7}),
        .S({p_Val2_16_fu_92_p2_carry__1_i_1__0_n_0,p_Val2_16_fu_92_p2_carry__1_i_2__0_n_0,p_Val2_16_fu_92_p2_carry__1_i_3__0_n_0,p_Val2_16_fu_92_p2_carry__1_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_1__0
       (.I0(Q[11]),
        .I1(DOADO[11]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_2__0
       (.I0(Q[10]),
        .I1(DOADO[10]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_3__0
       (.I0(Q[9]),
        .I1(DOADO[9]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_4__0
       (.I0(Q[8]),
        .I1(DOADO[8]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_4__0_n_0));
  CARRY4 p_Val2_16_fu_92_p2_carry__2
       (.CI(p_Val2_16_fu_92_p2_carry__1_n_0),
        .CO({NLW_p_Val2_16_fu_92_p2_carry__2_CO_UNCONNECTED[3],p_Val2_16_fu_92_p2_carry__2_n_1,p_Val2_16_fu_92_p2_carry__2_n_2,p_Val2_16_fu_92_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14:12]}),
        .O({O,p_Val2_16_fu_92_p2_carry__2_n_5,p_Val2_16_fu_92_p2_carry__2_n_6,p_Val2_16_fu_92_p2_carry__2_n_7}),
        .S({S,p_Val2_16_fu_92_p2_carry__2_i_2__0_n_0,p_Val2_16_fu_92_p2_carry__2_i_3__0_n_0,p_Val2_16_fu_92_p2_carry__2_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_2__0
       (.I0(Q[14]),
        .I1(DOADO[14]),
        .O(p_Val2_16_fu_92_p2_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_3__0
       (.I0(Q[13]),
        .I1(DOADO[13]),
        .O(p_Val2_16_fu_92_p2_carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_4__0
       (.I0(Q[12]),
        .I1(DOADO[12]),
        .O(p_Val2_16_fu_92_p2_carry__2_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_1__0
       (.I0(Q[3]),
        .I1(DOADO[3]),
        .O(p_Val2_16_fu_92_p2_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_2__0
       (.I0(Q[2]),
        .I1(DOADO[2]),
        .O(p_Val2_16_fu_92_p2_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_3__0
       (.I0(Q[1]),
        .I1(DOADO[1]),
        .O(p_Val2_16_fu_92_p2_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_4__0
       (.I0(Q[0]),
        .I1(DOADO[0]),
        .O(p_Val2_16_fu_92_p2_carry_i_4__0_n_0));
  CARRY4 p_Val2_18_fu_235_p2_carry
       (.CI(1'b0),
        .CO({p_Val2_18_fu_235_p2_carry_n_0,p_Val2_18_fu_235_p2_carry_n_1,p_Val2_18_fu_235_p2_carry_n_2,p_Val2_18_fu_235_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sext_ln713_fu_196_p1[0]}),
        .O({p_Val2_18_fu_235_p2_carry_n_4,p_Val2_18_fu_235_p2_carry_n_5,p_Val2_18_fu_235_p2_carry_n_6,p_Val2_18_fu_235_p2_carry_n_7}),
        .S({sext_ln713_fu_196_p1__0[3:1],yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1_n_46}));
  CARRY4 p_Val2_18_fu_235_p2_carry__0
       (.CI(p_Val2_18_fu_235_p2_carry_n_0),
        .CO({p_Val2_18_fu_235_p2_carry__0_n_0,p_Val2_18_fu_235_p2_carry__0_n_1,p_Val2_18_fu_235_p2_carry__0_n_2,p_Val2_18_fu_235_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_Val2_18_fu_235_p2_carry__0_n_4,p_Val2_18_fu_235_p2_carry__0_n_5,p_Val2_18_fu_235_p2_carry__0_n_6,p_Val2_18_fu_235_p2_carry__0_n_7}),
        .S(sext_ln713_fu_196_p1__0[7:4]));
  CARRY4 p_Val2_18_fu_235_p2_carry__1
       (.CI(p_Val2_18_fu_235_p2_carry__0_n_0),
        .CO({p_Val2_18_fu_235_p2_carry__1_n_0,p_Val2_18_fu_235_p2_carry__1_n_1,p_Val2_18_fu_235_p2_carry__1_n_2,p_Val2_18_fu_235_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_Val2_18_fu_235_p2_carry__1_n_4,p_Val2_18_fu_235_p2_carry__1_n_5,p_Val2_18_fu_235_p2_carry__1_n_6,p_Val2_18_fu_235_p2_carry__1_n_7}),
        .S(sext_ln713_fu_196_p1__0[11:8]));
  CARRY4 p_Val2_18_fu_235_p2_carry__2
       (.CI(p_Val2_18_fu_235_p2_carry__1_n_0),
        .CO({NLW_p_Val2_18_fu_235_p2_carry__2_CO_UNCONNECTED[3],p_Val2_18_fu_235_p2_carry__2_n_1,NLW_p_Val2_18_fu_235_p2_carry__2_CO_UNCONNECTED[1],p_Val2_18_fu_235_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b0}),
        .O({NLW_p_Val2_18_fu_235_p2_carry__2_O_UNCONNECTED[3:2],p_Val2_18_fu_235_p2_carry__2_n_6,p_Val2_18_fu_235_p2_carry__2_n_7}),
        .S({1'b0,1'b1,sext_ln713_fu_196_p1__0[13],sext_ln713_fu_196_p1[12]}));
  CARRY4 ret_V_fu_78_p2_carry
       (.CI(1'b0),
        .CO({ret_V_fu_78_p2_carry_n_0,ret_V_fu_78_p2_carry_n_1,ret_V_fu_78_p2_carry_n_2,ret_V_fu_78_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DOADO[3:0]),
        .O(NLW_ret_V_fu_78_p2_carry_O_UNCONNECTED[3:0]),
        .S(ret_V_fu_78_p2_carry__0_0));
  CARRY4 ret_V_fu_78_p2_carry__0
       (.CI(ret_V_fu_78_p2_carry_n_0),
        .CO({ret_V_fu_78_p2_carry__0_n_0,ret_V_fu_78_p2_carry__0_n_1,ret_V_fu_78_p2_carry__0_n_2,ret_V_fu_78_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(DOADO[7:4]),
        .O(NLW_ret_V_fu_78_p2_carry__0_O_UNCONNECTED[3:0]),
        .S(ret_V_fu_78_p2_carry__1_0));
  CARRY4 ret_V_fu_78_p2_carry__1
       (.CI(ret_V_fu_78_p2_carry__0_n_0),
        .CO({ret_V_fu_78_p2_carry__1_n_0,ret_V_fu_78_p2_carry__1_n_1,ret_V_fu_78_p2_carry__1_n_2,ret_V_fu_78_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(DOADO[11:8]),
        .O(NLW_ret_V_fu_78_p2_carry__1_O_UNCONNECTED[3:0]),
        .S(ret_V_fu_78_p2_carry__2_0));
  CARRY4 ret_V_fu_78_p2_carry__2
       (.CI(ret_V_fu_78_p2_carry__1_n_0),
        .CO({CO,ret_V_fu_78_p2_carry__2_n_1,ret_V_fu_78_p2_carry__2_n_2,ret_V_fu_78_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ret_V_fu_78_p2_carry__2_i_1__0_n_0,DOADO[14:12]}),
        .O(NLW_ret_V_fu_78_p2_carry__2_O_UNCONNECTED[3:0]),
        .S(\activated_output_V_reg_380_reg[15]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    ret_V_fu_78_p2_carry__2_i_1__0
       (.I0(Q[15]),
        .O(ret_V_fu_78_p2_carry__2_i_1__0_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0_7 yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1
       (.CO(p_Val2_18_fu_235_p2_carry__2_n_1),
        .D({\activated_output_V_reg_380_reg_n_0_[15] ,\activated_output_V_reg_380_reg_n_0_[14] ,\activated_output_V_reg_380_reg_n_0_[13] ,\activated_output_V_reg_380_reg_n_0_[12] ,\activated_output_V_reg_380_reg_n_0_[11] ,\activated_output_V_reg_380_reg_n_0_[10] ,\activated_output_V_reg_380_reg_n_0_[9] ,\activated_output_V_reg_380_reg_n_0_[8] ,\activated_output_V_reg_380_reg_n_0_[7] ,\activated_output_V_reg_380_reg_n_0_[6] ,\activated_output_V_reg_380_reg_n_0_[5] ,\activated_output_V_reg_380_reg_n_0_[4] ,\activated_output_V_reg_380_reg_n_0_[3] ,\activated_output_V_reg_380_reg_n_0_[2] ,\activated_output_V_reg_380_reg_n_0_[1] ,\activated_output_V_reg_380_reg_n_0_[0] }),
        .O({p_Val2_18_fu_235_p2_carry__2_n_6,p_Val2_18_fu_235_p2_carry__2_n_7}),
        .P({sext_ln713_fu_196_p1__0[13],sext_ln713_fu_196_p1[12],sext_ln713_fu_196_p1__0[11:1],sext_ln713_fu_196_p1[0]}),
        .Q(ap_return_int_reg),
        .Range2_all_ones_reg_4060(Range2_all_ones_reg_4060),
        .S(yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1_n_46),
        .ap_ce_reg(ap_ce_reg),
        .ap_ce_reg_reg(D),
        .ap_clk(ap_clk),
        .\ap_return_int_reg_reg[11] ({p_Val2_18_fu_235_p2_carry__1_n_4,p_Val2_18_fu_235_p2_carry__1_n_5,p_Val2_18_fu_235_p2_carry__1_n_6,p_Val2_18_fu_235_p2_carry__1_n_7}),
        .\ap_return_int_reg_reg[15] ({tmp_fu_180_p3,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[14] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[13] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[12] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[11] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[10] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[9] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[8] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[7] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[6] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[5] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[4] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[3] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[2] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[1] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[0] }),
        .\ap_return_int_reg_reg[15]_0 (data_in_V_read_reg_375_pp0_iter1_reg),
        .\ap_return_int_reg_reg[3] ({p_Val2_18_fu_235_p2_carry_n_4,p_Val2_18_fu_235_p2_carry_n_5,p_Val2_18_fu_235_p2_carry_n_6,p_Val2_18_fu_235_p2_carry_n_7}),
        .\ap_return_int_reg_reg[7] ({p_Val2_18_fu_235_p2_carry__0_n_4,p_Val2_18_fu_235_p2_carry__0_n_5,p_Val2_18_fu_235_p2_carry__0_n_6,p_Val2_18_fu_235_p2_carry__0_n_7}),
        .bias_en_V_read_reg_369_pp0_iter1_reg(bias_en_V_read_reg_369_pp0_iter1_reg),
        .leaky_V_read_reg_364_pp0_iter1_reg(leaky_V_read_reg_364_pp0_iter1_reg),
        .p(select_ln97_1_fu_349_p3));
endmodule

(* ORIG_REF_NAME = "post_process_unit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_post_process_unit_1
   (Q,
    O,
    CO,
    D,
    ap_ce_reg,
    \activated_output_V_reg_380_reg[15]_0 ,
    ap_clk,
    Range2_all_ones_reg_4060,
    S,
    DOBDO,
    ret_V_fu_78_p2_carry__0_0,
    ret_V_fu_78_p2_carry__1_0,
    ret_V_fu_78_p2_carry__2_0,
    \activated_output_V_reg_380_reg[15]_1 ,
    leaky_V_read_reg_364_pp0_iter1_reg,
    bias_en_V_read_reg_369_pp0_iter1_reg,
    grp_post_process_unit_fu_403_ap_ce,
    \data_in_V_int_reg_reg[15]_0 );
  output [15:0]Q;
  output [0:0]O;
  output [0:0]CO;
  output [15:0]D;
  input ap_ce_reg;
  input \activated_output_V_reg_380_reg[15]_0 ;
  input ap_clk;
  input Range2_all_ones_reg_4060;
  input [0:0]S;
  input [14:0]DOBDO;
  input [3:0]ret_V_fu_78_p2_carry__0_0;
  input [3:0]ret_V_fu_78_p2_carry__1_0;
  input [3:0]ret_V_fu_78_p2_carry__2_0;
  input [3:0]\activated_output_V_reg_380_reg[15]_1 ;
  input leaky_V_read_reg_364_pp0_iter1_reg;
  input bias_en_V_read_reg_369_pp0_iter1_reg;
  input grp_post_process_unit_fu_403_ap_ce;
  input [15:0]\data_in_V_int_reg_reg[15]_0 ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [14:0]DOBDO;
  wire [0:0]O;
  wire [15:0]Q;
  wire Range2_all_ones_reg_4060;
  wire [0:0]S;
  wire activated_output_V_reg_380;
  wire \activated_output_V_reg_380[0]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380[10]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380[11]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380[12]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380[13]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380[14]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380[1]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380[2]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380[3]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380[4]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380[5]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380[6]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380[7]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380[8]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380[9]_i_1__1_n_0 ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[0] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[10] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[11] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[12] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[13] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[14] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[1] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[2] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[3] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[4] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[5] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[6] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[7] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[8] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[9] ;
  wire \activated_output_V_reg_380_reg[15]_0 ;
  wire [3:0]\activated_output_V_reg_380_reg[15]_1 ;
  wire \activated_output_V_reg_380_reg_n_0_[0] ;
  wire \activated_output_V_reg_380_reg_n_0_[10] ;
  wire \activated_output_V_reg_380_reg_n_0_[11] ;
  wire \activated_output_V_reg_380_reg_n_0_[12] ;
  wire \activated_output_V_reg_380_reg_n_0_[13] ;
  wire \activated_output_V_reg_380_reg_n_0_[14] ;
  wire \activated_output_V_reg_380_reg_n_0_[15] ;
  wire \activated_output_V_reg_380_reg_n_0_[1] ;
  wire \activated_output_V_reg_380_reg_n_0_[2] ;
  wire \activated_output_V_reg_380_reg_n_0_[3] ;
  wire \activated_output_V_reg_380_reg_n_0_[4] ;
  wire \activated_output_V_reg_380_reg_n_0_[5] ;
  wire \activated_output_V_reg_380_reg_n_0_[6] ;
  wire \activated_output_V_reg_380_reg_n_0_[7] ;
  wire \activated_output_V_reg_380_reg_n_0_[8] ;
  wire \activated_output_V_reg_380_reg_n_0_[9] ;
  wire ap_ce_reg;
  wire ap_clk;
  wire [15:0]ap_return_int_reg;
  wire bias_en_V_read_reg_369_pp0_iter1_reg;
  wire [15:0]\data_in_V_int_reg_reg[15]_0 ;
  wire [15:0]data_in_V_read_reg_375;
  wire [15:0]data_in_V_read_reg_375_pp0_iter1_reg;
  wire grp_post_process_unit_fu_403_ap_ce;
  wire leaky_V_read_reg_364_pp0_iter1_reg;
  wire p_Val2_16_fu_92_p2_carry__0_i_1__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_i_2__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_i_3__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_i_4__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_n_1;
  wire p_Val2_16_fu_92_p2_carry__0_n_2;
  wire p_Val2_16_fu_92_p2_carry__0_n_3;
  wire p_Val2_16_fu_92_p2_carry__0_n_4;
  wire p_Val2_16_fu_92_p2_carry__0_n_5;
  wire p_Val2_16_fu_92_p2_carry__0_n_6;
  wire p_Val2_16_fu_92_p2_carry__0_n_7;
  wire p_Val2_16_fu_92_p2_carry__1_i_1__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_i_2__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_i_3__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_i_4__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_n_1;
  wire p_Val2_16_fu_92_p2_carry__1_n_2;
  wire p_Val2_16_fu_92_p2_carry__1_n_3;
  wire p_Val2_16_fu_92_p2_carry__1_n_4;
  wire p_Val2_16_fu_92_p2_carry__1_n_5;
  wire p_Val2_16_fu_92_p2_carry__1_n_6;
  wire p_Val2_16_fu_92_p2_carry__1_n_7;
  wire p_Val2_16_fu_92_p2_carry__2_i_2__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__2_i_3__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__2_i_4__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__2_n_1;
  wire p_Val2_16_fu_92_p2_carry__2_n_2;
  wire p_Val2_16_fu_92_p2_carry__2_n_3;
  wire p_Val2_16_fu_92_p2_carry__2_n_5;
  wire p_Val2_16_fu_92_p2_carry__2_n_6;
  wire p_Val2_16_fu_92_p2_carry__2_n_7;
  wire p_Val2_16_fu_92_p2_carry_i_1__1_n_0;
  wire p_Val2_16_fu_92_p2_carry_i_2__1_n_0;
  wire p_Val2_16_fu_92_p2_carry_i_3__1_n_0;
  wire p_Val2_16_fu_92_p2_carry_i_4__1_n_0;
  wire p_Val2_16_fu_92_p2_carry_n_0;
  wire p_Val2_16_fu_92_p2_carry_n_1;
  wire p_Val2_16_fu_92_p2_carry_n_2;
  wire p_Val2_16_fu_92_p2_carry_n_3;
  wire p_Val2_16_fu_92_p2_carry_n_4;
  wire p_Val2_16_fu_92_p2_carry_n_5;
  wire p_Val2_16_fu_92_p2_carry_n_6;
  wire p_Val2_16_fu_92_p2_carry_n_7;
  wire p_Val2_18_fu_235_p2_carry__0_n_0;
  wire p_Val2_18_fu_235_p2_carry__0_n_1;
  wire p_Val2_18_fu_235_p2_carry__0_n_2;
  wire p_Val2_18_fu_235_p2_carry__0_n_3;
  wire p_Val2_18_fu_235_p2_carry__0_n_4;
  wire p_Val2_18_fu_235_p2_carry__0_n_5;
  wire p_Val2_18_fu_235_p2_carry__0_n_6;
  wire p_Val2_18_fu_235_p2_carry__0_n_7;
  wire p_Val2_18_fu_235_p2_carry__1_n_0;
  wire p_Val2_18_fu_235_p2_carry__1_n_1;
  wire p_Val2_18_fu_235_p2_carry__1_n_2;
  wire p_Val2_18_fu_235_p2_carry__1_n_3;
  wire p_Val2_18_fu_235_p2_carry__1_n_4;
  wire p_Val2_18_fu_235_p2_carry__1_n_5;
  wire p_Val2_18_fu_235_p2_carry__1_n_6;
  wire p_Val2_18_fu_235_p2_carry__1_n_7;
  wire p_Val2_18_fu_235_p2_carry__2_n_1;
  wire p_Val2_18_fu_235_p2_carry__2_n_3;
  wire p_Val2_18_fu_235_p2_carry__2_n_6;
  wire p_Val2_18_fu_235_p2_carry__2_n_7;
  wire p_Val2_18_fu_235_p2_carry_n_0;
  wire p_Val2_18_fu_235_p2_carry_n_1;
  wire p_Val2_18_fu_235_p2_carry_n_2;
  wire p_Val2_18_fu_235_p2_carry_n_3;
  wire p_Val2_18_fu_235_p2_carry_n_4;
  wire p_Val2_18_fu_235_p2_carry_n_5;
  wire p_Val2_18_fu_235_p2_carry_n_6;
  wire p_Val2_18_fu_235_p2_carry_n_7;
  wire [3:0]ret_V_fu_78_p2_carry__0_0;
  wire ret_V_fu_78_p2_carry__0_n_0;
  wire ret_V_fu_78_p2_carry__0_n_1;
  wire ret_V_fu_78_p2_carry__0_n_2;
  wire ret_V_fu_78_p2_carry__0_n_3;
  wire [3:0]ret_V_fu_78_p2_carry__1_0;
  wire ret_V_fu_78_p2_carry__1_n_0;
  wire ret_V_fu_78_p2_carry__1_n_1;
  wire ret_V_fu_78_p2_carry__1_n_2;
  wire ret_V_fu_78_p2_carry__1_n_3;
  wire [3:0]ret_V_fu_78_p2_carry__2_0;
  wire ret_V_fu_78_p2_carry__2_i_1__1_n_0;
  wire ret_V_fu_78_p2_carry__2_n_1;
  wire ret_V_fu_78_p2_carry__2_n_2;
  wire ret_V_fu_78_p2_carry__2_n_3;
  wire ret_V_fu_78_p2_carry_n_0;
  wire ret_V_fu_78_p2_carry_n_1;
  wire ret_V_fu_78_p2_carry_n_2;
  wire ret_V_fu_78_p2_carry_n_3;
  wire [15:0]select_ln97_1_fu_349_p3;
  wire [12:0]sext_ln713_fu_196_p1;
  wire [13:1]sext_ln713_fu_196_p1__0;
  wire tmp_fu_180_p3;
  wire yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1_n_46;
  wire [3:3]NLW_p_Val2_16_fu_92_p2_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_p_Val2_18_fu_235_p2_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_p_Val2_18_fu_235_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[0]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[10]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[10]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[11]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_4),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[11]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[12]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry__2_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[12]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[13]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry__2_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[13]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[14]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry__2_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[14]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \activated_output_V_reg_380[15]_i_1__1 
       (.I0(O),
        .I1(CO),
        .I2(ap_ce_reg),
        .O(activated_output_V_reg_380));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[1]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[2]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[3]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry_n_4),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[4]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[5]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[6]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[7]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_4),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[8]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[9]_i_1__1 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[9]_i_1__1_n_0 ));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[0] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[10] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[11] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[12] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[13] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[14] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[15] ),
        .Q(tmp_fu_180_p3),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[1] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[2] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[3] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[4] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[5] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[6] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[7] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[8] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[9] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[9] ),
        .R(1'b0));
  FDSE \activated_output_V_reg_380_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[0]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[0] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[10]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[10] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[11]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[11] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[12]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[12] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[13]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[13] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[14]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[14] ),
        .S(activated_output_V_reg_380));
  FDRE \activated_output_V_reg_380_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg[15]_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[15] ),
        .R(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[1]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[1] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[2]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[2] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[3]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[3] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[4]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[4] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[5]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[5] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[6]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[6] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[7]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[7] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[8]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[8] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[9]_i_1__1_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[9] ),
        .S(activated_output_V_reg_380));
  FDRE \ap_return_int_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[0]),
        .Q(ap_return_int_reg[0]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[10]),
        .Q(ap_return_int_reg[10]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[11]),
        .Q(ap_return_int_reg[11]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[12]),
        .Q(ap_return_int_reg[12]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[13]),
        .Q(ap_return_int_reg[13]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[14]),
        .Q(ap_return_int_reg[14]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[15]),
        .Q(ap_return_int_reg[15]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[1]),
        .Q(ap_return_int_reg[1]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[2]),
        .Q(ap_return_int_reg[2]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[3]),
        .Q(ap_return_int_reg[3]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[4]),
        .Q(ap_return_int_reg[4]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[5]),
        .Q(ap_return_int_reg[5]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[6]),
        .Q(ap_return_int_reg[6]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[7]),
        .Q(ap_return_int_reg[7]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[8]),
        .Q(ap_return_int_reg[8]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[9]),
        .Q(ap_return_int_reg[9]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[0] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[10] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[11] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[12] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[13] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[14] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[15] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[1] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[2] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[3] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[4] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[5] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[6] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[7] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[8] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[9] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[0]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[0]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[10]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[10]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[11]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[11]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[12]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[12]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[13]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[13]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[14]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[14]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[15]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[15]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[1]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[1]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[2]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[2]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[3]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[3]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[4]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[4]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[5]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[5]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[6]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[6]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[7]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[7]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[8]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[8]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[9]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[9]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[0]),
        .Q(data_in_V_read_reg_375[0]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[10]),
        .Q(data_in_V_read_reg_375[10]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[11]),
        .Q(data_in_V_read_reg_375[11]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[12]),
        .Q(data_in_V_read_reg_375[12]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[13]),
        .Q(data_in_V_read_reg_375[13]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[14]),
        .Q(data_in_V_read_reg_375[14]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[15]),
        .Q(data_in_V_read_reg_375[15]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[1]),
        .Q(data_in_V_read_reg_375[1]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[2]),
        .Q(data_in_V_read_reg_375[2]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[3]),
        .Q(data_in_V_read_reg_375[3]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[4]),
        .Q(data_in_V_read_reg_375[4]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[5]),
        .Q(data_in_V_read_reg_375[5]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[6]),
        .Q(data_in_V_read_reg_375[6]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[7]),
        .Q(data_in_V_read_reg_375[7]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[8]),
        .Q(data_in_V_read_reg_375[8]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[9]),
        .Q(data_in_V_read_reg_375[9]),
        .R(1'b0));
  CARRY4 p_Val2_16_fu_92_p2_carry
       (.CI(1'b0),
        .CO({p_Val2_16_fu_92_p2_carry_n_0,p_Val2_16_fu_92_p2_carry_n_1,p_Val2_16_fu_92_p2_carry_n_2,p_Val2_16_fu_92_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({p_Val2_16_fu_92_p2_carry_n_4,p_Val2_16_fu_92_p2_carry_n_5,p_Val2_16_fu_92_p2_carry_n_6,p_Val2_16_fu_92_p2_carry_n_7}),
        .S({p_Val2_16_fu_92_p2_carry_i_1__1_n_0,p_Val2_16_fu_92_p2_carry_i_2__1_n_0,p_Val2_16_fu_92_p2_carry_i_3__1_n_0,p_Val2_16_fu_92_p2_carry_i_4__1_n_0}));
  CARRY4 p_Val2_16_fu_92_p2_carry__0
       (.CI(p_Val2_16_fu_92_p2_carry_n_0),
        .CO({p_Val2_16_fu_92_p2_carry__0_n_0,p_Val2_16_fu_92_p2_carry__0_n_1,p_Val2_16_fu_92_p2_carry__0_n_2,p_Val2_16_fu_92_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({p_Val2_16_fu_92_p2_carry__0_n_4,p_Val2_16_fu_92_p2_carry__0_n_5,p_Val2_16_fu_92_p2_carry__0_n_6,p_Val2_16_fu_92_p2_carry__0_n_7}),
        .S({p_Val2_16_fu_92_p2_carry__0_i_1__1_n_0,p_Val2_16_fu_92_p2_carry__0_i_2__1_n_0,p_Val2_16_fu_92_p2_carry__0_i_3__1_n_0,p_Val2_16_fu_92_p2_carry__0_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_1__1
       (.I0(Q[7]),
        .I1(DOBDO[7]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_2__1
       (.I0(Q[6]),
        .I1(DOBDO[6]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_3__1
       (.I0(Q[5]),
        .I1(DOBDO[5]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_4__1
       (.I0(Q[4]),
        .I1(DOBDO[4]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_4__1_n_0));
  CARRY4 p_Val2_16_fu_92_p2_carry__1
       (.CI(p_Val2_16_fu_92_p2_carry__0_n_0),
        .CO({p_Val2_16_fu_92_p2_carry__1_n_0,p_Val2_16_fu_92_p2_carry__1_n_1,p_Val2_16_fu_92_p2_carry__1_n_2,p_Val2_16_fu_92_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({p_Val2_16_fu_92_p2_carry__1_n_4,p_Val2_16_fu_92_p2_carry__1_n_5,p_Val2_16_fu_92_p2_carry__1_n_6,p_Val2_16_fu_92_p2_carry__1_n_7}),
        .S({p_Val2_16_fu_92_p2_carry__1_i_1__1_n_0,p_Val2_16_fu_92_p2_carry__1_i_2__1_n_0,p_Val2_16_fu_92_p2_carry__1_i_3__1_n_0,p_Val2_16_fu_92_p2_carry__1_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_1__1
       (.I0(Q[11]),
        .I1(DOBDO[11]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_2__1
       (.I0(Q[10]),
        .I1(DOBDO[10]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_3__1
       (.I0(Q[9]),
        .I1(DOBDO[9]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_4__1
       (.I0(Q[8]),
        .I1(DOBDO[8]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_4__1_n_0));
  CARRY4 p_Val2_16_fu_92_p2_carry__2
       (.CI(p_Val2_16_fu_92_p2_carry__1_n_0),
        .CO({NLW_p_Val2_16_fu_92_p2_carry__2_CO_UNCONNECTED[3],p_Val2_16_fu_92_p2_carry__2_n_1,p_Val2_16_fu_92_p2_carry__2_n_2,p_Val2_16_fu_92_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14:12]}),
        .O({O,p_Val2_16_fu_92_p2_carry__2_n_5,p_Val2_16_fu_92_p2_carry__2_n_6,p_Val2_16_fu_92_p2_carry__2_n_7}),
        .S({S,p_Val2_16_fu_92_p2_carry__2_i_2__1_n_0,p_Val2_16_fu_92_p2_carry__2_i_3__1_n_0,p_Val2_16_fu_92_p2_carry__2_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_2__1
       (.I0(Q[14]),
        .I1(DOBDO[14]),
        .O(p_Val2_16_fu_92_p2_carry__2_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_3__1
       (.I0(Q[13]),
        .I1(DOBDO[13]),
        .O(p_Val2_16_fu_92_p2_carry__2_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_4__1
       (.I0(Q[12]),
        .I1(DOBDO[12]),
        .O(p_Val2_16_fu_92_p2_carry__2_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_1__1
       (.I0(Q[3]),
        .I1(DOBDO[3]),
        .O(p_Val2_16_fu_92_p2_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_2__1
       (.I0(Q[2]),
        .I1(DOBDO[2]),
        .O(p_Val2_16_fu_92_p2_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_3__1
       (.I0(Q[1]),
        .I1(DOBDO[1]),
        .O(p_Val2_16_fu_92_p2_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_4__1
       (.I0(Q[0]),
        .I1(DOBDO[0]),
        .O(p_Val2_16_fu_92_p2_carry_i_4__1_n_0));
  CARRY4 p_Val2_18_fu_235_p2_carry
       (.CI(1'b0),
        .CO({p_Val2_18_fu_235_p2_carry_n_0,p_Val2_18_fu_235_p2_carry_n_1,p_Val2_18_fu_235_p2_carry_n_2,p_Val2_18_fu_235_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sext_ln713_fu_196_p1[0]}),
        .O({p_Val2_18_fu_235_p2_carry_n_4,p_Val2_18_fu_235_p2_carry_n_5,p_Val2_18_fu_235_p2_carry_n_6,p_Val2_18_fu_235_p2_carry_n_7}),
        .S({sext_ln713_fu_196_p1__0[3:1],yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1_n_46}));
  CARRY4 p_Val2_18_fu_235_p2_carry__0
       (.CI(p_Val2_18_fu_235_p2_carry_n_0),
        .CO({p_Val2_18_fu_235_p2_carry__0_n_0,p_Val2_18_fu_235_p2_carry__0_n_1,p_Val2_18_fu_235_p2_carry__0_n_2,p_Val2_18_fu_235_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_Val2_18_fu_235_p2_carry__0_n_4,p_Val2_18_fu_235_p2_carry__0_n_5,p_Val2_18_fu_235_p2_carry__0_n_6,p_Val2_18_fu_235_p2_carry__0_n_7}),
        .S(sext_ln713_fu_196_p1__0[7:4]));
  CARRY4 p_Val2_18_fu_235_p2_carry__1
       (.CI(p_Val2_18_fu_235_p2_carry__0_n_0),
        .CO({p_Val2_18_fu_235_p2_carry__1_n_0,p_Val2_18_fu_235_p2_carry__1_n_1,p_Val2_18_fu_235_p2_carry__1_n_2,p_Val2_18_fu_235_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_Val2_18_fu_235_p2_carry__1_n_4,p_Val2_18_fu_235_p2_carry__1_n_5,p_Val2_18_fu_235_p2_carry__1_n_6,p_Val2_18_fu_235_p2_carry__1_n_7}),
        .S(sext_ln713_fu_196_p1__0[11:8]));
  CARRY4 p_Val2_18_fu_235_p2_carry__2
       (.CI(p_Val2_18_fu_235_p2_carry__1_n_0),
        .CO({NLW_p_Val2_18_fu_235_p2_carry__2_CO_UNCONNECTED[3],p_Val2_18_fu_235_p2_carry__2_n_1,NLW_p_Val2_18_fu_235_p2_carry__2_CO_UNCONNECTED[1],p_Val2_18_fu_235_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b0}),
        .O({NLW_p_Val2_18_fu_235_p2_carry__2_O_UNCONNECTED[3:2],p_Val2_18_fu_235_p2_carry__2_n_6,p_Val2_18_fu_235_p2_carry__2_n_7}),
        .S({1'b0,1'b1,sext_ln713_fu_196_p1__0[13],sext_ln713_fu_196_p1[12]}));
  CARRY4 ret_V_fu_78_p2_carry
       (.CI(1'b0),
        .CO({ret_V_fu_78_p2_carry_n_0,ret_V_fu_78_p2_carry_n_1,ret_V_fu_78_p2_carry_n_2,ret_V_fu_78_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DOBDO[3:0]),
        .O(NLW_ret_V_fu_78_p2_carry_O_UNCONNECTED[3:0]),
        .S(ret_V_fu_78_p2_carry__0_0));
  CARRY4 ret_V_fu_78_p2_carry__0
       (.CI(ret_V_fu_78_p2_carry_n_0),
        .CO({ret_V_fu_78_p2_carry__0_n_0,ret_V_fu_78_p2_carry__0_n_1,ret_V_fu_78_p2_carry__0_n_2,ret_V_fu_78_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(DOBDO[7:4]),
        .O(NLW_ret_V_fu_78_p2_carry__0_O_UNCONNECTED[3:0]),
        .S(ret_V_fu_78_p2_carry__1_0));
  CARRY4 ret_V_fu_78_p2_carry__1
       (.CI(ret_V_fu_78_p2_carry__0_n_0),
        .CO({ret_V_fu_78_p2_carry__1_n_0,ret_V_fu_78_p2_carry__1_n_1,ret_V_fu_78_p2_carry__1_n_2,ret_V_fu_78_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(DOBDO[11:8]),
        .O(NLW_ret_V_fu_78_p2_carry__1_O_UNCONNECTED[3:0]),
        .S(ret_V_fu_78_p2_carry__2_0));
  CARRY4 ret_V_fu_78_p2_carry__2
       (.CI(ret_V_fu_78_p2_carry__1_n_0),
        .CO({CO,ret_V_fu_78_p2_carry__2_n_1,ret_V_fu_78_p2_carry__2_n_2,ret_V_fu_78_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ret_V_fu_78_p2_carry__2_i_1__1_n_0,DOBDO[14:12]}),
        .O(NLW_ret_V_fu_78_p2_carry__2_O_UNCONNECTED[3:0]),
        .S(\activated_output_V_reg_380_reg[15]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    ret_V_fu_78_p2_carry__2_i_1__1
       (.I0(Q[15]),
        .O(ret_V_fu_78_p2_carry__2_i_1__1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0_5 yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1
       (.CO(p_Val2_18_fu_235_p2_carry__2_n_1),
        .D({\activated_output_V_reg_380_reg_n_0_[15] ,\activated_output_V_reg_380_reg_n_0_[14] ,\activated_output_V_reg_380_reg_n_0_[13] ,\activated_output_V_reg_380_reg_n_0_[12] ,\activated_output_V_reg_380_reg_n_0_[11] ,\activated_output_V_reg_380_reg_n_0_[10] ,\activated_output_V_reg_380_reg_n_0_[9] ,\activated_output_V_reg_380_reg_n_0_[8] ,\activated_output_V_reg_380_reg_n_0_[7] ,\activated_output_V_reg_380_reg_n_0_[6] ,\activated_output_V_reg_380_reg_n_0_[5] ,\activated_output_V_reg_380_reg_n_0_[4] ,\activated_output_V_reg_380_reg_n_0_[3] ,\activated_output_V_reg_380_reg_n_0_[2] ,\activated_output_V_reg_380_reg_n_0_[1] ,\activated_output_V_reg_380_reg_n_0_[0] }),
        .O({p_Val2_18_fu_235_p2_carry__2_n_6,p_Val2_18_fu_235_p2_carry__2_n_7}),
        .P({sext_ln713_fu_196_p1__0[13],sext_ln713_fu_196_p1[12],sext_ln713_fu_196_p1__0[11:1],sext_ln713_fu_196_p1[0]}),
        .Q(ap_return_int_reg),
        .Range2_all_ones_reg_4060(Range2_all_ones_reg_4060),
        .S(yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1_n_46),
        .ap_ce_reg(ap_ce_reg),
        .ap_ce_reg_reg(D),
        .ap_clk(ap_clk),
        .\ap_return_int_reg_reg[11] ({p_Val2_18_fu_235_p2_carry__1_n_4,p_Val2_18_fu_235_p2_carry__1_n_5,p_Val2_18_fu_235_p2_carry__1_n_6,p_Val2_18_fu_235_p2_carry__1_n_7}),
        .\ap_return_int_reg_reg[15] ({tmp_fu_180_p3,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[14] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[13] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[12] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[11] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[10] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[9] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[8] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[7] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[6] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[5] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[4] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[3] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[2] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[1] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[0] }),
        .\ap_return_int_reg_reg[15]_0 (data_in_V_read_reg_375_pp0_iter1_reg),
        .\ap_return_int_reg_reg[3] ({p_Val2_18_fu_235_p2_carry_n_4,p_Val2_18_fu_235_p2_carry_n_5,p_Val2_18_fu_235_p2_carry_n_6,p_Val2_18_fu_235_p2_carry_n_7}),
        .\ap_return_int_reg_reg[7] ({p_Val2_18_fu_235_p2_carry__0_n_4,p_Val2_18_fu_235_p2_carry__0_n_5,p_Val2_18_fu_235_p2_carry__0_n_6,p_Val2_18_fu_235_p2_carry__0_n_7}),
        .bias_en_V_read_reg_369_pp0_iter1_reg(bias_en_V_read_reg_369_pp0_iter1_reg),
        .leaky_V_read_reg_364_pp0_iter1_reg(leaky_V_read_reg_364_pp0_iter1_reg),
        .\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] (select_ln97_1_fu_349_p3));
endmodule

(* ORIG_REF_NAME = "post_process_unit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_post_process_unit_2
   (ap_ce_reg,
    Range2_all_ones_reg_4060,
    grp_post_process_unit_fu_403_ap_ce,
    leaky_V_read_reg_364_pp0_iter1_reg,
    bias_en_V_read_reg_369_pp0_iter1_reg,
    Q,
    O,
    CO,
    ap_block_pp1_stage0_11001,
    \icmp_ln40_reg_1302_pp1_iter4_reg_reg[0] ,
    mul_ln1354_1_reg_1287_reg,
    \icmp_ln40_reg_1302_pp1_iter3_reg_reg[0] ,
    D,
    \activated_output_V_reg_380_reg[15]_0 ,
    ap_clk,
    leaky_V_read_reg_1233,
    bias_en_V_read_reg_1225,
    S,
    DOBDO,
    ret_V_fu_78_p2_carry__0_0,
    ret_V_fu_78_p2_carry__1_0,
    ret_V_fu_78_p2_carry__2_0,
    \activated_output_V_reg_380_reg[15]_1 ,
    ap_ce_reg_reg_0,
    ap_enable_reg_pp1_iter0,
    ap_ce_reg_reg_1,
    ap_ce_reg_reg_2,
    \output_acc_3_V_reg_1361_reg[15] ,
    ap_enable_reg_pp1_iter4,
    outStream_V_data_1_ack_in,
    icmp_ln40_reg_1302_pp1_iter4_reg,
    \output_acc_3_V_reg_1361_reg[15]_0 ,
    P,
    indvar_flatten17_reg_348_reg,
    \data_in_V_int_reg_reg[15]_0 );
  output ap_ce_reg;
  output Range2_all_ones_reg_4060;
  output grp_post_process_unit_fu_403_ap_ce;
  output leaky_V_read_reg_364_pp0_iter1_reg;
  output bias_en_V_read_reg_369_pp0_iter1_reg;
  output [15:0]Q;
  output [0:0]O;
  output [0:0]CO;
  output ap_block_pp1_stage0_11001;
  output \icmp_ln40_reg_1302_pp1_iter4_reg_reg[0] ;
  output [0:0]mul_ln1354_1_reg_1287_reg;
  output \icmp_ln40_reg_1302_pp1_iter3_reg_reg[0] ;
  output [15:0]D;
  input \activated_output_V_reg_380_reg[15]_0 ;
  input ap_clk;
  input leaky_V_read_reg_1233;
  input bias_en_V_read_reg_1225;
  input [0:0]S;
  input [14:0]DOBDO;
  input [3:0]ret_V_fu_78_p2_carry__0_0;
  input [3:0]ret_V_fu_78_p2_carry__1_0;
  input [3:0]ret_V_fu_78_p2_carry__2_0;
  input [3:0]\activated_output_V_reg_380_reg[15]_1 ;
  input [0:0]ap_ce_reg_reg_0;
  input ap_enable_reg_pp1_iter0;
  input ap_ce_reg_reg_1;
  input ap_ce_reg_reg_2;
  input \output_acc_3_V_reg_1361_reg[15] ;
  input ap_enable_reg_pp1_iter4;
  input outStream_V_data_1_ack_in;
  input icmp_ln40_reg_1302_pp1_iter4_reg;
  input \output_acc_3_V_reg_1361_reg[15]_0 ;
  input [21:0]P;
  input [21:0]indvar_flatten17_reg_348_reg;
  input [15:0]\data_in_V_int_reg_reg[15]_0 ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [14:0]DOBDO;
  wire [0:0]O;
  wire [21:0]P;
  wire [15:0]Q;
  wire Range2_all_ones_reg_4060;
  wire [0:0]S;
  wire activated_output_V_reg_380;
  wire \activated_output_V_reg_380[0]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380[10]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380[11]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380[12]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380[13]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380[14]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380[1]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380[2]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380[3]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380[4]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380[5]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380[6]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380[7]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380[8]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380[9]_i_1__2_n_0 ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[0] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[10] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[11] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[12] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[13] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[14] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[1] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[2] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[3] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[4] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[5] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[6] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[7] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[8] ;
  wire \activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[9] ;
  wire \activated_output_V_reg_380_reg[15]_0 ;
  wire [3:0]\activated_output_V_reg_380_reg[15]_1 ;
  wire \activated_output_V_reg_380_reg_n_0_[0] ;
  wire \activated_output_V_reg_380_reg_n_0_[10] ;
  wire \activated_output_V_reg_380_reg_n_0_[11] ;
  wire \activated_output_V_reg_380_reg_n_0_[12] ;
  wire \activated_output_V_reg_380_reg_n_0_[13] ;
  wire \activated_output_V_reg_380_reg_n_0_[14] ;
  wire \activated_output_V_reg_380_reg_n_0_[15] ;
  wire \activated_output_V_reg_380_reg_n_0_[1] ;
  wire \activated_output_V_reg_380_reg_n_0_[2] ;
  wire \activated_output_V_reg_380_reg_n_0_[3] ;
  wire \activated_output_V_reg_380_reg_n_0_[4] ;
  wire \activated_output_V_reg_380_reg_n_0_[5] ;
  wire \activated_output_V_reg_380_reg_n_0_[6] ;
  wire \activated_output_V_reg_380_reg_n_0_[7] ;
  wire \activated_output_V_reg_380_reg_n_0_[8] ;
  wire \activated_output_V_reg_380_reg_n_0_[9] ;
  wire ap_block_pp1_stage0_11001;
  wire ap_ce_reg;
  wire [0:0]ap_ce_reg_reg_0;
  wire ap_ce_reg_reg_1;
  wire ap_ce_reg_reg_2;
  wire ap_clk;
  wire ap_enable_reg_pp1_iter0;
  wire ap_enable_reg_pp1_iter4;
  wire [15:0]ap_return_int_reg;
  wire bias_en_V_int_reg;
  wire bias_en_V_read_reg_1225;
  wire bias_en_V_read_reg_369;
  wire bias_en_V_read_reg_369_pp0_iter1_reg;
  wire [15:0]\data_in_V_int_reg_reg[15]_0 ;
  wire [15:0]data_in_V_read_reg_375;
  wire [15:0]data_in_V_read_reg_375_pp0_iter1_reg;
  wire grp_post_process_unit_fu_403_ap_ce;
  wire \icmp_ln40_reg_1302[0]_i_10_n_0 ;
  wire \icmp_ln40_reg_1302[0]_i_3_n_0 ;
  wire \icmp_ln40_reg_1302[0]_i_4_n_0 ;
  wire \icmp_ln40_reg_1302[0]_i_5_n_0 ;
  wire \icmp_ln40_reg_1302[0]_i_6_n_0 ;
  wire \icmp_ln40_reg_1302[0]_i_7_n_0 ;
  wire \icmp_ln40_reg_1302[0]_i_8_n_0 ;
  wire \icmp_ln40_reg_1302[0]_i_9_n_0 ;
  wire \icmp_ln40_reg_1302_pp1_iter3_reg_reg[0] ;
  wire icmp_ln40_reg_1302_pp1_iter4_reg;
  wire \icmp_ln40_reg_1302_pp1_iter4_reg_reg[0] ;
  wire \icmp_ln40_reg_1302_reg[0]_i_1_n_1 ;
  wire \icmp_ln40_reg_1302_reg[0]_i_1_n_2 ;
  wire \icmp_ln40_reg_1302_reg[0]_i_1_n_3 ;
  wire \icmp_ln40_reg_1302_reg[0]_i_2_n_0 ;
  wire \icmp_ln40_reg_1302_reg[0]_i_2_n_1 ;
  wire \icmp_ln40_reg_1302_reg[0]_i_2_n_2 ;
  wire \icmp_ln40_reg_1302_reg[0]_i_2_n_3 ;
  wire [21:0]indvar_flatten17_reg_348_reg;
  wire leaky_V_int_reg;
  wire leaky_V_read_reg_1233;
  wire leaky_V_read_reg_364;
  wire leaky_V_read_reg_364_pp0_iter1_reg;
  wire [0:0]mul_ln1354_1_reg_1287_reg;
  wire outStream_V_data_1_ack_in;
  wire \output_acc_3_V_reg_1361_reg[15] ;
  wire \output_acc_3_V_reg_1361_reg[15]_0 ;
  wire p_Val2_16_fu_92_p2_carry__0_i_1__2_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_i_2__2_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_i_3__2_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_i_4__2_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_n_0;
  wire p_Val2_16_fu_92_p2_carry__0_n_1;
  wire p_Val2_16_fu_92_p2_carry__0_n_2;
  wire p_Val2_16_fu_92_p2_carry__0_n_3;
  wire p_Val2_16_fu_92_p2_carry__0_n_4;
  wire p_Val2_16_fu_92_p2_carry__0_n_5;
  wire p_Val2_16_fu_92_p2_carry__0_n_6;
  wire p_Val2_16_fu_92_p2_carry__0_n_7;
  wire p_Val2_16_fu_92_p2_carry__1_i_1__2_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_i_2__2_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_i_3__2_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_i_4__2_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_n_0;
  wire p_Val2_16_fu_92_p2_carry__1_n_1;
  wire p_Val2_16_fu_92_p2_carry__1_n_2;
  wire p_Val2_16_fu_92_p2_carry__1_n_3;
  wire p_Val2_16_fu_92_p2_carry__1_n_4;
  wire p_Val2_16_fu_92_p2_carry__1_n_5;
  wire p_Val2_16_fu_92_p2_carry__1_n_6;
  wire p_Val2_16_fu_92_p2_carry__1_n_7;
  wire p_Val2_16_fu_92_p2_carry__2_i_2__2_n_0;
  wire p_Val2_16_fu_92_p2_carry__2_i_3__2_n_0;
  wire p_Val2_16_fu_92_p2_carry__2_i_4__2_n_0;
  wire p_Val2_16_fu_92_p2_carry__2_n_1;
  wire p_Val2_16_fu_92_p2_carry__2_n_2;
  wire p_Val2_16_fu_92_p2_carry__2_n_3;
  wire p_Val2_16_fu_92_p2_carry__2_n_5;
  wire p_Val2_16_fu_92_p2_carry__2_n_6;
  wire p_Val2_16_fu_92_p2_carry__2_n_7;
  wire p_Val2_16_fu_92_p2_carry_i_1__2_n_0;
  wire p_Val2_16_fu_92_p2_carry_i_2__2_n_0;
  wire p_Val2_16_fu_92_p2_carry_i_3__2_n_0;
  wire p_Val2_16_fu_92_p2_carry_i_4__2_n_0;
  wire p_Val2_16_fu_92_p2_carry_n_0;
  wire p_Val2_16_fu_92_p2_carry_n_1;
  wire p_Val2_16_fu_92_p2_carry_n_2;
  wire p_Val2_16_fu_92_p2_carry_n_3;
  wire p_Val2_16_fu_92_p2_carry_n_4;
  wire p_Val2_16_fu_92_p2_carry_n_5;
  wire p_Val2_16_fu_92_p2_carry_n_6;
  wire p_Val2_16_fu_92_p2_carry_n_7;
  wire p_Val2_18_fu_235_p2_carry__0_n_0;
  wire p_Val2_18_fu_235_p2_carry__0_n_1;
  wire p_Val2_18_fu_235_p2_carry__0_n_2;
  wire p_Val2_18_fu_235_p2_carry__0_n_3;
  wire p_Val2_18_fu_235_p2_carry__0_n_4;
  wire p_Val2_18_fu_235_p2_carry__0_n_5;
  wire p_Val2_18_fu_235_p2_carry__0_n_6;
  wire p_Val2_18_fu_235_p2_carry__0_n_7;
  wire p_Val2_18_fu_235_p2_carry__1_n_0;
  wire p_Val2_18_fu_235_p2_carry__1_n_1;
  wire p_Val2_18_fu_235_p2_carry__1_n_2;
  wire p_Val2_18_fu_235_p2_carry__1_n_3;
  wire p_Val2_18_fu_235_p2_carry__1_n_4;
  wire p_Val2_18_fu_235_p2_carry__1_n_5;
  wire p_Val2_18_fu_235_p2_carry__1_n_6;
  wire p_Val2_18_fu_235_p2_carry__1_n_7;
  wire p_Val2_18_fu_235_p2_carry__2_n_1;
  wire p_Val2_18_fu_235_p2_carry__2_n_3;
  wire p_Val2_18_fu_235_p2_carry__2_n_6;
  wire p_Val2_18_fu_235_p2_carry__2_n_7;
  wire p_Val2_18_fu_235_p2_carry_n_0;
  wire p_Val2_18_fu_235_p2_carry_n_1;
  wire p_Val2_18_fu_235_p2_carry_n_2;
  wire p_Val2_18_fu_235_p2_carry_n_3;
  wire p_Val2_18_fu_235_p2_carry_n_4;
  wire p_Val2_18_fu_235_p2_carry_n_5;
  wire p_Val2_18_fu_235_p2_carry_n_6;
  wire p_Val2_18_fu_235_p2_carry_n_7;
  wire [3:0]ret_V_fu_78_p2_carry__0_0;
  wire ret_V_fu_78_p2_carry__0_n_0;
  wire ret_V_fu_78_p2_carry__0_n_1;
  wire ret_V_fu_78_p2_carry__0_n_2;
  wire ret_V_fu_78_p2_carry__0_n_3;
  wire [3:0]ret_V_fu_78_p2_carry__1_0;
  wire ret_V_fu_78_p2_carry__1_n_0;
  wire ret_V_fu_78_p2_carry__1_n_1;
  wire ret_V_fu_78_p2_carry__1_n_2;
  wire ret_V_fu_78_p2_carry__1_n_3;
  wire [3:0]ret_V_fu_78_p2_carry__2_0;
  wire ret_V_fu_78_p2_carry__2_i_1__2_n_0;
  wire ret_V_fu_78_p2_carry__2_n_1;
  wire ret_V_fu_78_p2_carry__2_n_2;
  wire ret_V_fu_78_p2_carry__2_n_3;
  wire ret_V_fu_78_p2_carry_n_0;
  wire ret_V_fu_78_p2_carry_n_1;
  wire ret_V_fu_78_p2_carry_n_2;
  wire ret_V_fu_78_p2_carry_n_3;
  wire [15:0]select_ln97_1_fu_349_p3;
  wire [12:0]sext_ln713_fu_196_p1;
  wire [13:1]sext_ln713_fu_196_p1__0;
  wire tmp_fu_180_p3;
  wire yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1_n_47;
  wire [3:0]\NLW_icmp_ln40_reg_1302_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_icmp_ln40_reg_1302_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:3]NLW_p_Val2_16_fu_92_p2_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_p_Val2_18_fu_235_p2_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_p_Val2_18_fu_235_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ret_V_fu_78_p2_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[0]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[10]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[10]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[11]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_4),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[11]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[12]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry__2_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[12]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[13]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry__2_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[13]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[14]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry__2_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[14]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \activated_output_V_reg_380[15]_i_1__2 
       (.I0(O),
        .I1(CO),
        .I2(ap_ce_reg),
        .O(activated_output_V_reg_380));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[1]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[2]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[3]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry_n_4),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[4]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[5]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[6]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_5),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[7]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry__0_n_4),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[8]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_7),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[8]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \activated_output_V_reg_380[9]_i_1__2 
       (.I0(p_Val2_16_fu_92_p2_carry__1_n_6),
        .I1(CO),
        .I2(O),
        .O(\activated_output_V_reg_380[9]_i_1__2_n_0 ));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[0] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[10] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[11] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[12] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[13] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[14] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[15] ),
        .Q(tmp_fu_180_p3),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[1] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[2] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[3] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[4] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[5] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[6] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[7] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[8] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \activated_output_V_reg_380_pp0_iter1_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg_n_0_[9] ),
        .Q(\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[9] ),
        .R(1'b0));
  FDSE \activated_output_V_reg_380_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[0]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[0] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[10]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[10] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[11]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[11] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[12]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[12] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[13]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[13] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[14]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[14] ),
        .S(activated_output_V_reg_380));
  FDRE \activated_output_V_reg_380_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380_reg[15]_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[15] ),
        .R(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[1]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[1] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[2]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[2] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[3]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[3] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[4]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[4] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[5]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[5] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[6]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[6] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[7]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[7] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[8]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[8] ),
        .S(activated_output_V_reg_380));
  FDSE \activated_output_V_reg_380_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(\activated_output_V_reg_380[9]_i_1__2_n_0 ),
        .Q(\activated_output_V_reg_380_reg_n_0_[9] ),
        .S(activated_output_V_reg_380));
  FDRE ap_ce_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_post_process_unit_fu_403_ap_ce),
        .Q(ap_ce_reg),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[0]),
        .Q(ap_return_int_reg[0]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[10]),
        .Q(ap_return_int_reg[10]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[11]),
        .Q(ap_return_int_reg[11]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[12]),
        .Q(ap_return_int_reg[12]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[13]),
        .Q(ap_return_int_reg[13]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[14]),
        .Q(ap_return_int_reg[14]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[15]),
        .Q(ap_return_int_reg[15]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[1]),
        .Q(ap_return_int_reg[1]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[2]),
        .Q(ap_return_int_reg[2]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[3]),
        .Q(ap_return_int_reg[3]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[4]),
        .Q(ap_return_int_reg[4]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[5]),
        .Q(ap_return_int_reg[5]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[6]),
        .Q(ap_return_int_reg[6]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[7]),
        .Q(ap_return_int_reg[7]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[8]),
        .Q(ap_return_int_reg[8]),
        .R(1'b0));
  FDRE \ap_return_int_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(select_ln97_1_fu_349_p3[9]),
        .Q(ap_return_int_reg[9]),
        .R(1'b0));
  FDRE \bias_en_V_int_reg_reg[0] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(bias_en_V_read_reg_1225),
        .Q(bias_en_V_int_reg),
        .R(1'b0));
  FDRE \bias_en_V_read_reg_369_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(bias_en_V_read_reg_369),
        .Q(bias_en_V_read_reg_369_pp0_iter1_reg),
        .R(1'b0));
  FDRE \bias_en_V_read_reg_369_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(bias_en_V_int_reg),
        .Q(bias_en_V_read_reg_369),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[0] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[10] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[11] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[12] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[13] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[14] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[15] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[1] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[2] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[3] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[4] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[5] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[6] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[7] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[8] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \data_in_V_int_reg_reg[9] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(\data_in_V_int_reg_reg[15]_0 [9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[0]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[0]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[10]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[10]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[11]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[11]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[12]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[12]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[13]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[13]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[14]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[14]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[15]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[15]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[1]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[1]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[2]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[2]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[3]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[3]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[4]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[4]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[5]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[5]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[6]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[6]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[7]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[7]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[8]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[8]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_pp0_iter1_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(data_in_V_read_reg_375[9]),
        .Q(data_in_V_read_reg_375_pp0_iter1_reg[9]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[0]),
        .Q(data_in_V_read_reg_375[0]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[10] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[10]),
        .Q(data_in_V_read_reg_375[10]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[11] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[11]),
        .Q(data_in_V_read_reg_375[11]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[12] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[12]),
        .Q(data_in_V_read_reg_375[12]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[13] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[13]),
        .Q(data_in_V_read_reg_375[13]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[14] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[14]),
        .Q(data_in_V_read_reg_375[14]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[15] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[15]),
        .Q(data_in_V_read_reg_375[15]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[1] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[1]),
        .Q(data_in_V_read_reg_375[1]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[2] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[2]),
        .Q(data_in_V_read_reg_375[2]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[3] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[3]),
        .Q(data_in_V_read_reg_375[3]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[4] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[4]),
        .Q(data_in_V_read_reg_375[4]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[5] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[5]),
        .Q(data_in_V_read_reg_375[5]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[6] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[6]),
        .Q(data_in_V_read_reg_375[6]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[7] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[7]),
        .Q(data_in_V_read_reg_375[7]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[8] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[8]),
        .Q(data_in_V_read_reg_375[8]),
        .R(1'b0));
  FDRE \data_in_V_read_reg_375_reg[9] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(Q[9]),
        .Q(data_in_V_read_reg_375[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \icmp_ln40_reg_1302[0]_i_10 
       (.I0(P[0]),
        .I1(indvar_flatten17_reg_348_reg[0]),
        .I2(indvar_flatten17_reg_348_reg[1]),
        .I3(P[1]),
        .I4(P[2]),
        .I5(indvar_flatten17_reg_348_reg[2]),
        .O(\icmp_ln40_reg_1302[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \icmp_ln40_reg_1302[0]_i_3 
       (.I0(P[21]),
        .I1(indvar_flatten17_reg_348_reg[21]),
        .O(\icmp_ln40_reg_1302[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \icmp_ln40_reg_1302[0]_i_4 
       (.I0(indvar_flatten17_reg_348_reg[18]),
        .I1(P[18]),
        .I2(indvar_flatten17_reg_348_reg[19]),
        .I3(P[19]),
        .I4(P[20]),
        .I5(indvar_flatten17_reg_348_reg[20]),
        .O(\icmp_ln40_reg_1302[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \icmp_ln40_reg_1302[0]_i_5 
       (.I0(indvar_flatten17_reg_348_reg[15]),
        .I1(P[15]),
        .I2(indvar_flatten17_reg_348_reg[16]),
        .I3(P[16]),
        .I4(P[17]),
        .I5(indvar_flatten17_reg_348_reg[17]),
        .O(\icmp_ln40_reg_1302[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \icmp_ln40_reg_1302[0]_i_6 
       (.I0(indvar_flatten17_reg_348_reg[12]),
        .I1(P[12]),
        .I2(indvar_flatten17_reg_348_reg[13]),
        .I3(P[13]),
        .I4(P[14]),
        .I5(indvar_flatten17_reg_348_reg[14]),
        .O(\icmp_ln40_reg_1302[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \icmp_ln40_reg_1302[0]_i_7 
       (.I0(indvar_flatten17_reg_348_reg[9]),
        .I1(P[9]),
        .I2(indvar_flatten17_reg_348_reg[10]),
        .I3(P[10]),
        .I4(P[11]),
        .I5(indvar_flatten17_reg_348_reg[11]),
        .O(\icmp_ln40_reg_1302[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \icmp_ln40_reg_1302[0]_i_8 
       (.I0(indvar_flatten17_reg_348_reg[6]),
        .I1(P[6]),
        .I2(indvar_flatten17_reg_348_reg[7]),
        .I3(P[7]),
        .I4(P[8]),
        .I5(indvar_flatten17_reg_348_reg[8]),
        .O(\icmp_ln40_reg_1302[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \icmp_ln40_reg_1302[0]_i_9 
       (.I0(indvar_flatten17_reg_348_reg[3]),
        .I1(P[3]),
        .I2(indvar_flatten17_reg_348_reg[4]),
        .I3(P[4]),
        .I4(P[5]),
        .I5(indvar_flatten17_reg_348_reg[5]),
        .O(\icmp_ln40_reg_1302[0]_i_9_n_0 ));
  CARRY4 \icmp_ln40_reg_1302_reg[0]_i_1 
       (.CI(\icmp_ln40_reg_1302_reg[0]_i_2_n_0 ),
        .CO({mul_ln1354_1_reg_1287_reg,\icmp_ln40_reg_1302_reg[0]_i_1_n_1 ,\icmp_ln40_reg_1302_reg[0]_i_1_n_2 ,\icmp_ln40_reg_1302_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_icmp_ln40_reg_1302_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({\icmp_ln40_reg_1302[0]_i_3_n_0 ,\icmp_ln40_reg_1302[0]_i_4_n_0 ,\icmp_ln40_reg_1302[0]_i_5_n_0 ,\icmp_ln40_reg_1302[0]_i_6_n_0 }));
  CARRY4 \icmp_ln40_reg_1302_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\icmp_ln40_reg_1302_reg[0]_i_2_n_0 ,\icmp_ln40_reg_1302_reg[0]_i_2_n_1 ,\icmp_ln40_reg_1302_reg[0]_i_2_n_2 ,\icmp_ln40_reg_1302_reg[0]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_icmp_ln40_reg_1302_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\icmp_ln40_reg_1302[0]_i_7_n_0 ,\icmp_ln40_reg_1302[0]_i_8_n_0 ,\icmp_ln40_reg_1302[0]_i_9_n_0 ,\icmp_ln40_reg_1302[0]_i_10_n_0 }));
  FDRE \leaky_V_int_reg_reg[0] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(leaky_V_read_reg_1233),
        .Q(leaky_V_int_reg),
        .R(1'b0));
  FDRE \leaky_V_read_reg_364_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(leaky_V_read_reg_364),
        .Q(leaky_V_read_reg_364_pp0_iter1_reg),
        .R(1'b0));
  FDRE \leaky_V_read_reg_364_reg[0] 
       (.C(ap_clk),
        .CE(ap_ce_reg),
        .D(leaky_V_int_reg),
        .Q(leaky_V_read_reg_364),
        .R(1'b0));
  CARRY4 p_Val2_16_fu_92_p2_carry
       (.CI(1'b0),
        .CO({p_Val2_16_fu_92_p2_carry_n_0,p_Val2_16_fu_92_p2_carry_n_1,p_Val2_16_fu_92_p2_carry_n_2,p_Val2_16_fu_92_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({p_Val2_16_fu_92_p2_carry_n_4,p_Val2_16_fu_92_p2_carry_n_5,p_Val2_16_fu_92_p2_carry_n_6,p_Val2_16_fu_92_p2_carry_n_7}),
        .S({p_Val2_16_fu_92_p2_carry_i_1__2_n_0,p_Val2_16_fu_92_p2_carry_i_2__2_n_0,p_Val2_16_fu_92_p2_carry_i_3__2_n_0,p_Val2_16_fu_92_p2_carry_i_4__2_n_0}));
  CARRY4 p_Val2_16_fu_92_p2_carry__0
       (.CI(p_Val2_16_fu_92_p2_carry_n_0),
        .CO({p_Val2_16_fu_92_p2_carry__0_n_0,p_Val2_16_fu_92_p2_carry__0_n_1,p_Val2_16_fu_92_p2_carry__0_n_2,p_Val2_16_fu_92_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({p_Val2_16_fu_92_p2_carry__0_n_4,p_Val2_16_fu_92_p2_carry__0_n_5,p_Val2_16_fu_92_p2_carry__0_n_6,p_Val2_16_fu_92_p2_carry__0_n_7}),
        .S({p_Val2_16_fu_92_p2_carry__0_i_1__2_n_0,p_Val2_16_fu_92_p2_carry__0_i_2__2_n_0,p_Val2_16_fu_92_p2_carry__0_i_3__2_n_0,p_Val2_16_fu_92_p2_carry__0_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_1__2
       (.I0(Q[7]),
        .I1(DOBDO[7]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_2__2
       (.I0(Q[6]),
        .I1(DOBDO[6]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_3__2
       (.I0(Q[5]),
        .I1(DOBDO[5]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__0_i_4__2
       (.I0(Q[4]),
        .I1(DOBDO[4]),
        .O(p_Val2_16_fu_92_p2_carry__0_i_4__2_n_0));
  CARRY4 p_Val2_16_fu_92_p2_carry__1
       (.CI(p_Val2_16_fu_92_p2_carry__0_n_0),
        .CO({p_Val2_16_fu_92_p2_carry__1_n_0,p_Val2_16_fu_92_p2_carry__1_n_1,p_Val2_16_fu_92_p2_carry__1_n_2,p_Val2_16_fu_92_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({p_Val2_16_fu_92_p2_carry__1_n_4,p_Val2_16_fu_92_p2_carry__1_n_5,p_Val2_16_fu_92_p2_carry__1_n_6,p_Val2_16_fu_92_p2_carry__1_n_7}),
        .S({p_Val2_16_fu_92_p2_carry__1_i_1__2_n_0,p_Val2_16_fu_92_p2_carry__1_i_2__2_n_0,p_Val2_16_fu_92_p2_carry__1_i_3__2_n_0,p_Val2_16_fu_92_p2_carry__1_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_1__2
       (.I0(Q[11]),
        .I1(DOBDO[11]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_2__2
       (.I0(Q[10]),
        .I1(DOBDO[10]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_3__2
       (.I0(Q[9]),
        .I1(DOBDO[9]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__1_i_4__2
       (.I0(Q[8]),
        .I1(DOBDO[8]),
        .O(p_Val2_16_fu_92_p2_carry__1_i_4__2_n_0));
  CARRY4 p_Val2_16_fu_92_p2_carry__2
       (.CI(p_Val2_16_fu_92_p2_carry__1_n_0),
        .CO({NLW_p_Val2_16_fu_92_p2_carry__2_CO_UNCONNECTED[3],p_Val2_16_fu_92_p2_carry__2_n_1,p_Val2_16_fu_92_p2_carry__2_n_2,p_Val2_16_fu_92_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14:12]}),
        .O({O,p_Val2_16_fu_92_p2_carry__2_n_5,p_Val2_16_fu_92_p2_carry__2_n_6,p_Val2_16_fu_92_p2_carry__2_n_7}),
        .S({S,p_Val2_16_fu_92_p2_carry__2_i_2__2_n_0,p_Val2_16_fu_92_p2_carry__2_i_3__2_n_0,p_Val2_16_fu_92_p2_carry__2_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_2__2
       (.I0(Q[14]),
        .I1(DOBDO[14]),
        .O(p_Val2_16_fu_92_p2_carry__2_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_3__2
       (.I0(Q[13]),
        .I1(DOBDO[13]),
        .O(p_Val2_16_fu_92_p2_carry__2_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_4__2
       (.I0(Q[12]),
        .I1(DOBDO[12]),
        .O(p_Val2_16_fu_92_p2_carry__2_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_1__2
       (.I0(Q[3]),
        .I1(DOBDO[3]),
        .O(p_Val2_16_fu_92_p2_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_2__2
       (.I0(Q[2]),
        .I1(DOBDO[2]),
        .O(p_Val2_16_fu_92_p2_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_3__2
       (.I0(Q[1]),
        .I1(DOBDO[1]),
        .O(p_Val2_16_fu_92_p2_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry_i_4__2
       (.I0(Q[0]),
        .I1(DOBDO[0]),
        .O(p_Val2_16_fu_92_p2_carry_i_4__2_n_0));
  CARRY4 p_Val2_18_fu_235_p2_carry
       (.CI(1'b0),
        .CO({p_Val2_18_fu_235_p2_carry_n_0,p_Val2_18_fu_235_p2_carry_n_1,p_Val2_18_fu_235_p2_carry_n_2,p_Val2_18_fu_235_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sext_ln713_fu_196_p1[0]}),
        .O({p_Val2_18_fu_235_p2_carry_n_4,p_Val2_18_fu_235_p2_carry_n_5,p_Val2_18_fu_235_p2_carry_n_6,p_Val2_18_fu_235_p2_carry_n_7}),
        .S({sext_ln713_fu_196_p1__0[3:1],yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1_n_47}));
  CARRY4 p_Val2_18_fu_235_p2_carry__0
       (.CI(p_Val2_18_fu_235_p2_carry_n_0),
        .CO({p_Val2_18_fu_235_p2_carry__0_n_0,p_Val2_18_fu_235_p2_carry__0_n_1,p_Val2_18_fu_235_p2_carry__0_n_2,p_Val2_18_fu_235_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_Val2_18_fu_235_p2_carry__0_n_4,p_Val2_18_fu_235_p2_carry__0_n_5,p_Val2_18_fu_235_p2_carry__0_n_6,p_Val2_18_fu_235_p2_carry__0_n_7}),
        .S(sext_ln713_fu_196_p1__0[7:4]));
  CARRY4 p_Val2_18_fu_235_p2_carry__1
       (.CI(p_Val2_18_fu_235_p2_carry__0_n_0),
        .CO({p_Val2_18_fu_235_p2_carry__1_n_0,p_Val2_18_fu_235_p2_carry__1_n_1,p_Val2_18_fu_235_p2_carry__1_n_2,p_Val2_18_fu_235_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_Val2_18_fu_235_p2_carry__1_n_4,p_Val2_18_fu_235_p2_carry__1_n_5,p_Val2_18_fu_235_p2_carry__1_n_6,p_Val2_18_fu_235_p2_carry__1_n_7}),
        .S(sext_ln713_fu_196_p1__0[11:8]));
  CARRY4 p_Val2_18_fu_235_p2_carry__2
       (.CI(p_Val2_18_fu_235_p2_carry__1_n_0),
        .CO({NLW_p_Val2_18_fu_235_p2_carry__2_CO_UNCONNECTED[3],p_Val2_18_fu_235_p2_carry__2_n_1,NLW_p_Val2_18_fu_235_p2_carry__2_CO_UNCONNECTED[1],p_Val2_18_fu_235_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b0}),
        .O({NLW_p_Val2_18_fu_235_p2_carry__2_O_UNCONNECTED[3:2],p_Val2_18_fu_235_p2_carry__2_n_6,p_Val2_18_fu_235_p2_carry__2_n_7}),
        .S({1'b0,1'b1,sext_ln713_fu_196_p1__0[13],sext_ln713_fu_196_p1[12]}));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_i_2
       (.I0(ap_ce_reg_reg_0),
        .I1(ap_block_pp1_stage0_11001),
        .O(grp_post_process_unit_fu_403_ap_ce));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABABABA)) 
    ram_reg_i_39
       (.I0(\icmp_ln40_reg_1302_pp1_iter4_reg_reg[0] ),
        .I1(mul_ln1354_1_reg_1287_reg),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(ap_ce_reg_reg_1),
        .I4(ap_ce_reg_reg_2),
        .I5(\icmp_ln40_reg_1302_pp1_iter3_reg_reg[0] ),
        .O(ap_block_pp1_stage0_11001));
  CARRY4 ret_V_fu_78_p2_carry
       (.CI(1'b0),
        .CO({ret_V_fu_78_p2_carry_n_0,ret_V_fu_78_p2_carry_n_1,ret_V_fu_78_p2_carry_n_2,ret_V_fu_78_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DOBDO[3:0]),
        .O(NLW_ret_V_fu_78_p2_carry_O_UNCONNECTED[3:0]),
        .S(ret_V_fu_78_p2_carry__0_0));
  CARRY4 ret_V_fu_78_p2_carry__0
       (.CI(ret_V_fu_78_p2_carry_n_0),
        .CO({ret_V_fu_78_p2_carry__0_n_0,ret_V_fu_78_p2_carry__0_n_1,ret_V_fu_78_p2_carry__0_n_2,ret_V_fu_78_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(DOBDO[7:4]),
        .O(NLW_ret_V_fu_78_p2_carry__0_O_UNCONNECTED[3:0]),
        .S(ret_V_fu_78_p2_carry__1_0));
  CARRY4 ret_V_fu_78_p2_carry__1
       (.CI(ret_V_fu_78_p2_carry__0_n_0),
        .CO({ret_V_fu_78_p2_carry__1_n_0,ret_V_fu_78_p2_carry__1_n_1,ret_V_fu_78_p2_carry__1_n_2,ret_V_fu_78_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(DOBDO[11:8]),
        .O(NLW_ret_V_fu_78_p2_carry__1_O_UNCONNECTED[3:0]),
        .S(ret_V_fu_78_p2_carry__2_0));
  CARRY4 ret_V_fu_78_p2_carry__2
       (.CI(ret_V_fu_78_p2_carry__1_n_0),
        .CO({CO,ret_V_fu_78_p2_carry__2_n_1,ret_V_fu_78_p2_carry__2_n_2,ret_V_fu_78_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ret_V_fu_78_p2_carry__2_i_1__2_n_0,DOBDO[14:12]}),
        .O(NLW_ret_V_fu_78_p2_carry__2_O_UNCONNECTED[3:0]),
        .S(\activated_output_V_reg_380_reg[15]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    ret_V_fu_78_p2_carry__2_i_1__2
       (.I0(Q[15]),
        .O(ret_V_fu_78_p2_carry__2_i_1__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \tmp_keep_V_reg_1321[7]_i_3 
       (.I0(icmp_ln40_reg_1302_pp1_iter4_reg),
        .I1(\output_acc_3_V_reg_1361_reg[15]_0 ),
        .I2(outStream_V_data_1_ack_in),
        .O(\icmp_ln40_reg_1302_pp1_iter4_reg_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \tmp_keep_V_reg_1321[7]_i_5 
       (.I0(\output_acc_3_V_reg_1361_reg[15] ),
        .I1(ap_enable_reg_pp1_iter4),
        .I2(outStream_V_data_1_ack_in),
        .O(\icmp_ln40_reg_1302_pp1_iter3_reg_reg[0] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0 yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1
       (.CO(p_Val2_18_fu_235_p2_carry__2_n_1),
        .D({\activated_output_V_reg_380_reg_n_0_[15] ,\activated_output_V_reg_380_reg_n_0_[14] ,\activated_output_V_reg_380_reg_n_0_[13] ,\activated_output_V_reg_380_reg_n_0_[12] ,\activated_output_V_reg_380_reg_n_0_[11] ,\activated_output_V_reg_380_reg_n_0_[10] ,\activated_output_V_reg_380_reg_n_0_[9] ,\activated_output_V_reg_380_reg_n_0_[8] ,\activated_output_V_reg_380_reg_n_0_[7] ,\activated_output_V_reg_380_reg_n_0_[6] ,\activated_output_V_reg_380_reg_n_0_[5] ,\activated_output_V_reg_380_reg_n_0_[4] ,\activated_output_V_reg_380_reg_n_0_[3] ,\activated_output_V_reg_380_reg_n_0_[2] ,\activated_output_V_reg_380_reg_n_0_[1] ,\activated_output_V_reg_380_reg_n_0_[0] }),
        .O({p_Val2_18_fu_235_p2_carry__2_n_6,p_Val2_18_fu_235_p2_carry__2_n_7}),
        .P({sext_ln713_fu_196_p1__0[13],sext_ln713_fu_196_p1[12],sext_ln713_fu_196_p1__0[11:1],sext_ln713_fu_196_p1[0]}),
        .Q(ap_return_int_reg),
        .Range2_all_ones_reg_4060(Range2_all_ones_reg_4060),
        .S(yolo_acc_top_mul_mul_6ns_16s_22_1_0_U1_n_47),
        .ap_ce_reg_reg(D),
        .ap_clk(ap_clk),
        .\ap_return_int_reg_reg[11] ({p_Val2_18_fu_235_p2_carry__1_n_4,p_Val2_18_fu_235_p2_carry__1_n_5,p_Val2_18_fu_235_p2_carry__1_n_6,p_Val2_18_fu_235_p2_carry__1_n_7}),
        .\ap_return_int_reg_reg[15] (leaky_V_read_reg_364_pp0_iter1_reg),
        .\ap_return_int_reg_reg[15]_0 ({tmp_fu_180_p3,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[14] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[13] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[12] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[11] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[10] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[9] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[8] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[7] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[6] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[5] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[4] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[3] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[2] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[1] ,\activated_output_V_reg_380_pp0_iter1_reg_reg_n_0_[0] }),
        .\ap_return_int_reg_reg[15]_1 (bias_en_V_read_reg_369_pp0_iter1_reg),
        .\ap_return_int_reg_reg[15]_2 (data_in_V_read_reg_375_pp0_iter1_reg),
        .\ap_return_int_reg_reg[3] ({p_Val2_18_fu_235_p2_carry_n_4,p_Val2_18_fu_235_p2_carry_n_5,p_Val2_18_fu_235_p2_carry_n_6,p_Val2_18_fu_235_p2_carry_n_7}),
        .\ap_return_int_reg_reg[7] ({p_Val2_18_fu_235_p2_carry__0_n_4,p_Val2_18_fu_235_p2_carry__0_n_5,p_Val2_18_fu_235_p2_carry__0_n_6,p_Val2_18_fu_235_p2_carry__0_n_7}),
        .bias_en_V_read_reg_369(bias_en_V_read_reg_369),
        .\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] (select_ln97_1_fu_349_p3),
        .p(ap_ce_reg));
endmodule

(* C_S_AXI_CTRL_BUS_ADDR_WIDTH = "6" *) (* C_S_AXI_CTRL_BUS_DATA_WIDTH = "32" *) (* C_S_AXI_CTRL_BUS_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_pp1_stage0 = "6'b010000" *) 
(* ap_ST_fsm_state1 = "6'b000001" *) (* ap_ST_fsm_state11 = "6'b100000" *) (* ap_ST_fsm_state2 = "6'b000010" *) 
(* ap_ST_fsm_state3 = "6'b000100" *) (* ap_ST_fsm_state4 = "6'b001000" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top
   (ap_clk,
    ap_rst_n,
    inStream_a_TDATA,
    inStream_a_TVALID,
    inStream_a_TREADY,
    inStream_a_TKEEP,
    inStream_a_TSTRB,
    inStream_a_TUSER,
    inStream_a_TLAST,
    inStream_a_TID,
    inStream_a_TDEST,
    inStream_b_TDATA,
    inStream_b_TVALID,
    inStream_b_TREADY,
    inStream_b_TKEEP,
    inStream_b_TSTRB,
    inStream_b_TUSER,
    inStream_b_TLAST,
    inStream_b_TID,
    inStream_b_TDEST,
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
  input [63:0]inStream_a_TDATA;
  input inStream_a_TVALID;
  output inStream_a_TREADY;
  input [7:0]inStream_a_TKEEP;
  input [7:0]inStream_a_TSTRB;
  input [1:0]inStream_a_TUSER;
  input [0:0]inStream_a_TLAST;
  input [4:0]inStream_a_TID;
  input [5:0]inStream_a_TDEST;
  input [63:0]inStream_b_TDATA;
  input inStream_b_TVALID;
  output inStream_b_TREADY;
  input [7:0]inStream_b_TKEEP;
  input [7:0]inStream_b_TSTRB;
  input [1:0]inStream_b_TUSER;
  input [0:0]inStream_b_TLAST;
  input [4:0]inStream_b_TID;
  input [5:0]inStream_b_TDEST;
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
  input [5:0]s_axi_CTRL_BUS_AWADDR;
  input s_axi_CTRL_BUS_WVALID;
  output s_axi_CTRL_BUS_WREADY;
  input [31:0]s_axi_CTRL_BUS_WDATA;
  input [3:0]s_axi_CTRL_BUS_WSTRB;
  input s_axi_CTRL_BUS_ARVALID;
  output s_axi_CTRL_BUS_ARREADY;
  input [5:0]s_axi_CTRL_BUS_ARADDR;
  output s_axi_CTRL_BUS_RVALID;
  input s_axi_CTRL_BUS_RREADY;
  output [31:0]s_axi_CTRL_BUS_RDATA;
  output [1:0]s_axi_CTRL_BUS_RRESP;
  output s_axi_CTRL_BUS_BVALID;
  input s_axi_CTRL_BUS_BREADY;
  output [1:0]s_axi_CTRL_BUS_BRESP;
  output interrupt;

  wire \<const0> ;
  wire Range2_all_ones_reg_4060;
  wire [0:0]add_ln1354_1_fu_542_p2;
  wire [8:0]add_ln1354_1_reg_1281;
  wire \add_ln1354_1_reg_1281[1]_i_1_n_0 ;
  wire \add_ln1354_1_reg_1281[2]_i_1_n_0 ;
  wire \add_ln1354_1_reg_1281[3]_i_1_n_0 ;
  wire \add_ln1354_1_reg_1281[4]_i_1_n_0 ;
  wire \add_ln1354_1_reg_1281[5]_i_1_n_0 ;
  wire \add_ln1354_1_reg_1281[6]_i_1_n_0 ;
  wire \add_ln1354_1_reg_1281[7]_i_1_n_0 ;
  wire \add_ln1354_1_reg_1281[8]_i_1_n_0 ;
  wire \add_ln1354_1_reg_1281[9]_inv_i_1_n_0 ;
  wire \add_ln1354_1_reg_1281[9]_inv_i_2_n_0 ;
  wire \add_ln1354_1_reg_1281_reg[9]_inv_n_0 ;
  wire [9:0]add_ln1354_fu_533_p2;
  wire [8:0]add_ln1354_reg_1275;
  wire \add_ln1354_reg_1275[9]_inv_i_2_n_0 ;
  wire \add_ln1354_reg_1275_reg[9]_inv_n_0 ;
  wire [12:1]add_ln43_1_fu_1192_p2;
  wire \ap_CS_fsm[5]_i_2_n_0 ;
  wire ap_CS_fsm_pp1_stage0;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire \ap_CS_fsm_reg_n_0_[1] ;
  wire \ap_CS_fsm_reg_n_0_[5] ;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire [5:0]ap_NS_fsm;
  wire ap_NS_fsm1110_out;
  wire ap_NS_fsm1111_out;
  wire ap_block_pp1_stage0_11001;
  wire ap_block_pp1_stage0_subdone;
  wire ap_ce_reg;
  wire ap_clk;
  wire ap_condition_pp1_exit_iter0_state5;
  wire ap_done2;
  wire ap_enable_reg_pp1_iter0;
  wire ap_enable_reg_pp1_iter0_i_1_n_0;
  wire ap_enable_reg_pp1_iter1_i_1_n_0;
  wire ap_enable_reg_pp1_iter1_reg_n_0;
  wire ap_enable_reg_pp1_iter2;
  wire ap_enable_reg_pp1_iter3;
  wire ap_enable_reg_pp1_iter4;
  wire ap_enable_reg_pp1_iter5_i_1_n_0;
  wire ap_enable_reg_pp1_iter5_reg_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [14:0]bias_V_int_reg;
  wire [14:0]bias_V_int_reg_6;
  wire [14:0]bias_V_int_reg_7;
  wire [14:0]bias_V_int_reg_8;
  wire bias_en_V;
  wire bias_en_V_read_reg_1225;
  wire bias_en_V_read_reg_369_pp0_iter1_reg;
  wire [15:0]data_in_V_int_reg;
  wire [15:0]data_in_V_int_reg_1;
  wire [15:0]data_in_V_int_reg_3;
  wire [15:0]data_in_V_int_reg_5;
  wire [3:0]fold_input_ch_V;
  wire [3:0]fold_input_ch_V_read_reg_1241;
  wire grp_post_process_unit_fu_403_ap_ce;
  wire [15:0]grp_post_process_unit_fu_403_ap_return;
  wire grp_post_process_unit_fu_403_n_17;
  wire [15:0]grp_post_process_unit_fu_412_ap_return;
  wire grp_post_process_unit_fu_412_n_17;
  wire [15:0]grp_post_process_unit_fu_421_ap_return;
  wire grp_post_process_unit_fu_421_n_17;
  wire [15:0]grp_post_process_unit_fu_430_ap_return;
  wire grp_post_process_unit_fu_430_n_22;
  wire grp_post_process_unit_fu_430_n_24;
  wire grp_post_process_unit_fu_430_n_26;
  wire [3:0]i_V_fu_481_p2;
  wire [8:0]i_op_assign_1_reg_381;
  wire \i_op_assign_1_reg_381[4]_i_2_n_0 ;
  wire \i_op_assign_1_reg_381[5]_i_2_n_0 ;
  wire \i_op_assign_1_reg_381[6]_i_2_n_0 ;
  wire \i_op_assign_1_reg_381[8]_i_1_n_0 ;
  wire \i_op_assign_1_reg_381[8]_i_3_n_0 ;
  wire \i_op_assign_1_reg_381[8]_i_4_n_0 ;
  wire \i_op_assign_1_reg_381[8]_i_5_n_0 ;
  wire i_op_assign_2_reg_392;
  wire \i_op_assign_2_reg_392_reg_n_0_[0] ;
  wire \i_op_assign_2_reg_392_reg_n_0_[1] ;
  wire \i_op_assign_2_reg_392_reg_n_0_[2] ;
  wire \i_op_assign_2_reg_392_reg_n_0_[3] ;
  wire i_op_assign_reg_359;
  wire \i_op_assign_reg_359[8]_i_3_n_0 ;
  wire [8:0]i_op_assign_reg_359_reg;
  wire icmp_ln40_reg_1302;
  wire icmp_ln40_reg_1302_pp1_iter1_reg;
  wire icmp_ln40_reg_1302_pp1_iter2_reg;
  wire \icmp_ln40_reg_1302_pp1_iter3_reg_reg_n_0_[0] ;
  wire icmp_ln40_reg_1302_pp1_iter4_reg;
  wire \icmp_ln46_reg_1297[0]_i_1_n_0 ;
  wire \icmp_ln46_reg_1297_reg_n_0_[0] ;
  wire icmp_ln73_1_fu_578_p2;
  wire icmp_ln73_2_fu_569_p2;
  wire [63:0]inStream_a_TDATA;
  wire [5:0]inStream_a_TDEST;
  wire [4:0]inStream_a_TID;
  wire [7:0]inStream_a_TKEEP;
  wire inStream_a_TREADY;
  wire [7:0]inStream_a_TSTRB;
  wire [1:0]inStream_a_TUSER;
  wire inStream_a_TVALID;
  wire inStream_a_V_data_0_load_A;
  wire inStream_a_V_data_0_load_B;
  wire [63:0]inStream_a_V_data_0_payload_A;
  wire [63:0]inStream_a_V_data_0_payload_B;
  wire inStream_a_V_data_0_sel;
  wire inStream_a_V_data_0_sel_rd_i_1_n_0;
  wire inStream_a_V_data_0_sel_wr;
  wire inStream_a_V_data_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_a_V_data_0_state;
  wire \inStream_a_V_data_0_state[0]_i_1_n_0 ;
  wire \inStream_a_V_data_0_state_reg_n_0_[0] ;
  wire \inStream_a_V_data_0_state_reg_n_0_[1] ;
  wire [5:0]inStream_a_V_dest_V_0_data_out;
  wire inStream_a_V_dest_V_0_load_A;
  wire inStream_a_V_dest_V_0_load_B;
  wire [5:0]inStream_a_V_dest_V_0_payload_A;
  wire [5:0]inStream_a_V_dest_V_0_payload_B;
  wire inStream_a_V_dest_V_0_sel;
  wire inStream_a_V_dest_V_0_sel_rd_i_1_n_0;
  wire inStream_a_V_dest_V_0_sel_wr;
  wire inStream_a_V_dest_V_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_a_V_dest_V_0_state;
  wire \inStream_a_V_dest_V_0_state[0]_i_1_n_0 ;
  wire \inStream_a_V_dest_V_0_state_reg_n_0_[0] ;
  wire [4:0]inStream_a_V_id_V_0_data_out;
  wire inStream_a_V_id_V_0_load_A;
  wire inStream_a_V_id_V_0_load_B;
  wire [4:0]inStream_a_V_id_V_0_payload_A;
  wire [4:0]inStream_a_V_id_V_0_payload_B;
  wire inStream_a_V_id_V_0_sel;
  wire inStream_a_V_id_V_0_sel_rd_i_1_n_0;
  wire inStream_a_V_id_V_0_sel_wr;
  wire inStream_a_V_id_V_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_a_V_id_V_0_state;
  wire \inStream_a_V_id_V_0_state[0]_i_1_n_0 ;
  wire \inStream_a_V_id_V_0_state_reg_n_0_[0] ;
  wire \inStream_a_V_id_V_0_state_reg_n_0_[1] ;
  wire [7:0]inStream_a_V_keep_V_0_data_out;
  wire inStream_a_V_keep_V_0_load_A;
  wire inStream_a_V_keep_V_0_load_B;
  wire [7:0]inStream_a_V_keep_V_0_payload_A;
  wire [7:0]inStream_a_V_keep_V_0_payload_B;
  wire inStream_a_V_keep_V_0_sel;
  wire inStream_a_V_keep_V_0_sel_rd_i_1_n_0;
  wire inStream_a_V_keep_V_0_sel_wr;
  wire inStream_a_V_keep_V_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_a_V_keep_V_0_state;
  wire \inStream_a_V_keep_V_0_state[0]_i_1_n_0 ;
  wire \inStream_a_V_keep_V_0_state_reg_n_0_[0] ;
  wire \inStream_a_V_keep_V_0_state_reg_n_0_[1] ;
  wire [7:0]inStream_a_V_strb_V_0_data_out;
  wire inStream_a_V_strb_V_0_load_A;
  wire inStream_a_V_strb_V_0_load_B;
  wire [7:0]inStream_a_V_strb_V_0_payload_A;
  wire [7:0]inStream_a_V_strb_V_0_payload_B;
  wire inStream_a_V_strb_V_0_sel;
  wire inStream_a_V_strb_V_0_sel_rd_i_1_n_0;
  wire inStream_a_V_strb_V_0_sel_wr;
  wire inStream_a_V_strb_V_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_a_V_strb_V_0_state;
  wire \inStream_a_V_strb_V_0_state[0]_i_1_n_0 ;
  wire \inStream_a_V_strb_V_0_state_reg_n_0_[0] ;
  wire \inStream_a_V_strb_V_0_state_reg_n_0_[1] ;
  wire [1:0]inStream_a_V_user_V_0_data_out;
  wire [1:0]inStream_a_V_user_V_0_payload_A;
  wire \inStream_a_V_user_V_0_payload_A[0]_i_1_n_0 ;
  wire \inStream_a_V_user_V_0_payload_A[1]_i_1_n_0 ;
  wire [1:0]inStream_a_V_user_V_0_payload_B;
  wire \inStream_a_V_user_V_0_payload_B[0]_i_1_n_0 ;
  wire \inStream_a_V_user_V_0_payload_B[1]_i_1_n_0 ;
  wire inStream_a_V_user_V_0_sel;
  wire inStream_a_V_user_V_0_sel_rd_i_1_n_0;
  wire inStream_a_V_user_V_0_sel_wr;
  wire inStream_a_V_user_V_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_a_V_user_V_0_state;
  wire \inStream_a_V_user_V_0_state[0]_i_1_n_0 ;
  wire \inStream_a_V_user_V_0_state_reg_n_0_[0] ;
  wire \inStream_a_V_user_V_0_state_reg_n_0_[1] ;
  wire [63:0]inStream_b_TDATA;
  wire inStream_b_TREADY;
  wire inStream_b_TVALID;
  wire inStream_b_V_data_0_load_A;
  wire inStream_b_V_data_0_load_B;
  wire [63:0]inStream_b_V_data_0_payload_A;
  wire [63:0]inStream_b_V_data_0_payload_B;
  wire inStream_b_V_data_0_sel;
  wire inStream_b_V_data_0_sel_rd_i_1_n_0;
  wire inStream_b_V_data_0_sel_rd_reg_rep__0_n_0;
  wire inStream_b_V_data_0_sel_rd_reg_rep_n_0;
  wire inStream_b_V_data_0_sel_rd_rep_i_1__0_n_0;
  wire inStream_b_V_data_0_sel_rd_rep_i_1_n_0;
  wire inStream_b_V_data_0_sel_wr;
  wire inStream_b_V_data_0_sel_wr_i_1_n_0;
  wire [1:1]inStream_b_V_data_0_state;
  wire \inStream_b_V_data_0_state[0]_i_1_n_0 ;
  wire \inStream_b_V_data_0_state_reg_n_0_[0] ;
  wire \inStream_b_V_data_0_state_reg_n_0_[1] ;
  wire [1:1]inStream_b_V_dest_V_0_state;
  wire \inStream_b_V_dest_V_0_state[0]_i_1_n_0 ;
  wire \inStream_b_V_dest_V_0_state_reg_n_0_[0] ;
  wire \indvar_flatten17_reg_348[0]_i_2_n_0 ;
  wire [21:0]indvar_flatten17_reg_348_reg;
  wire \indvar_flatten17_reg_348_reg[0]_i_1_n_0 ;
  wire \indvar_flatten17_reg_348_reg[0]_i_1_n_1 ;
  wire \indvar_flatten17_reg_348_reg[0]_i_1_n_2 ;
  wire \indvar_flatten17_reg_348_reg[0]_i_1_n_3 ;
  wire \indvar_flatten17_reg_348_reg[0]_i_1_n_4 ;
  wire \indvar_flatten17_reg_348_reg[0]_i_1_n_5 ;
  wire \indvar_flatten17_reg_348_reg[0]_i_1_n_6 ;
  wire \indvar_flatten17_reg_348_reg[0]_i_1_n_7 ;
  wire \indvar_flatten17_reg_348_reg[12]_i_1_n_0 ;
  wire \indvar_flatten17_reg_348_reg[12]_i_1_n_1 ;
  wire \indvar_flatten17_reg_348_reg[12]_i_1_n_2 ;
  wire \indvar_flatten17_reg_348_reg[12]_i_1_n_3 ;
  wire \indvar_flatten17_reg_348_reg[12]_i_1_n_4 ;
  wire \indvar_flatten17_reg_348_reg[12]_i_1_n_5 ;
  wire \indvar_flatten17_reg_348_reg[12]_i_1_n_6 ;
  wire \indvar_flatten17_reg_348_reg[12]_i_1_n_7 ;
  wire \indvar_flatten17_reg_348_reg[16]_i_1_n_0 ;
  wire \indvar_flatten17_reg_348_reg[16]_i_1_n_1 ;
  wire \indvar_flatten17_reg_348_reg[16]_i_1_n_2 ;
  wire \indvar_flatten17_reg_348_reg[16]_i_1_n_3 ;
  wire \indvar_flatten17_reg_348_reg[16]_i_1_n_4 ;
  wire \indvar_flatten17_reg_348_reg[16]_i_1_n_5 ;
  wire \indvar_flatten17_reg_348_reg[16]_i_1_n_6 ;
  wire \indvar_flatten17_reg_348_reg[16]_i_1_n_7 ;
  wire \indvar_flatten17_reg_348_reg[20]_i_1_n_3 ;
  wire \indvar_flatten17_reg_348_reg[20]_i_1_n_6 ;
  wire \indvar_flatten17_reg_348_reg[20]_i_1_n_7 ;
  wire \indvar_flatten17_reg_348_reg[4]_i_1_n_0 ;
  wire \indvar_flatten17_reg_348_reg[4]_i_1_n_1 ;
  wire \indvar_flatten17_reg_348_reg[4]_i_1_n_2 ;
  wire \indvar_flatten17_reg_348_reg[4]_i_1_n_3 ;
  wire \indvar_flatten17_reg_348_reg[4]_i_1_n_4 ;
  wire \indvar_flatten17_reg_348_reg[4]_i_1_n_5 ;
  wire \indvar_flatten17_reg_348_reg[4]_i_1_n_6 ;
  wire \indvar_flatten17_reg_348_reg[4]_i_1_n_7 ;
  wire \indvar_flatten17_reg_348_reg[8]_i_1_n_0 ;
  wire \indvar_flatten17_reg_348_reg[8]_i_1_n_1 ;
  wire \indvar_flatten17_reg_348_reg[8]_i_1_n_2 ;
  wire \indvar_flatten17_reg_348_reg[8]_i_1_n_3 ;
  wire \indvar_flatten17_reg_348_reg[8]_i_1_n_4 ;
  wire \indvar_flatten17_reg_348_reg[8]_i_1_n_5 ;
  wire \indvar_flatten17_reg_348_reg[8]_i_1_n_6 ;
  wire \indvar_flatten17_reg_348_reg[8]_i_1_n_7 ;
  wire [12:12]indvar_flatten_reg_370;
  wire \indvar_flatten_reg_370[0]_i_1_n_0 ;
  wire \indvar_flatten_reg_370[12]_i_10_n_0 ;
  wire \indvar_flatten_reg_370[12]_i_6_n_0 ;
  wire \indvar_flatten_reg_370[12]_i_7_n_0 ;
  wire \indvar_flatten_reg_370[12]_i_8_n_0 ;
  wire \indvar_flatten_reg_370[12]_i_9_n_0 ;
  wire \indvar_flatten_reg_370_reg[12]_i_3_n_1 ;
  wire \indvar_flatten_reg_370_reg[12]_i_3_n_2 ;
  wire \indvar_flatten_reg_370_reg[12]_i_3_n_3 ;
  wire \indvar_flatten_reg_370_reg[12]_i_5_n_0 ;
  wire \indvar_flatten_reg_370_reg[12]_i_5_n_1 ;
  wire \indvar_flatten_reg_370_reg[12]_i_5_n_2 ;
  wire \indvar_flatten_reg_370_reg[12]_i_5_n_3 ;
  wire \indvar_flatten_reg_370_reg[4]_i_1_n_0 ;
  wire \indvar_flatten_reg_370_reg[4]_i_1_n_1 ;
  wire \indvar_flatten_reg_370_reg[4]_i_1_n_2 ;
  wire \indvar_flatten_reg_370_reg[4]_i_1_n_3 ;
  wire \indvar_flatten_reg_370_reg[8]_i_1_n_0 ;
  wire \indvar_flatten_reg_370_reg[8]_i_1_n_1 ;
  wire \indvar_flatten_reg_370_reg[8]_i_1_n_2 ;
  wire \indvar_flatten_reg_370_reg[8]_i_1_n_3 ;
  wire \indvar_flatten_reg_370_reg_n_0_[0] ;
  wire \indvar_flatten_reg_370_reg_n_0_[10] ;
  wire \indvar_flatten_reg_370_reg_n_0_[11] ;
  wire \indvar_flatten_reg_370_reg_n_0_[12] ;
  wire \indvar_flatten_reg_370_reg_n_0_[1] ;
  wire \indvar_flatten_reg_370_reg_n_0_[2] ;
  wire \indvar_flatten_reg_370_reg_n_0_[3] ;
  wire \indvar_flatten_reg_370_reg_n_0_[4] ;
  wire \indvar_flatten_reg_370_reg_n_0_[5] ;
  wire \indvar_flatten_reg_370_reg_n_0_[6] ;
  wire \indvar_flatten_reg_370_reg_n_0_[7] ;
  wire \indvar_flatten_reg_370_reg_n_0_[8] ;
  wire \indvar_flatten_reg_370_reg_n_0_[9] ;
  wire [3:0]input_ch_idx_fu_1186_p2;
  wire [8:0]input_h_V;
  wire [8:0]input_h_V_read_reg_1255;
  wire [8:0]input_w_V;
  wire [8:0]input_w_V_read_reg_1249;
  wire interrupt;
  wire kernel_bias_fp_0_V_U_n_30;
  wire kernel_bias_fp_0_V_U_n_31;
  wire kernel_bias_fp_0_V_U_n_32;
  wire kernel_bias_fp_0_V_U_n_33;
  wire kernel_bias_fp_0_V_U_n_34;
  wire kernel_bias_fp_0_V_U_n_35;
  wire kernel_bias_fp_0_V_U_n_36;
  wire kernel_bias_fp_0_V_U_n_37;
  wire kernel_bias_fp_0_V_U_n_38;
  wire kernel_bias_fp_0_V_U_n_39;
  wire kernel_bias_fp_0_V_U_n_40;
  wire kernel_bias_fp_0_V_U_n_41;
  wire kernel_bias_fp_0_V_U_n_42;
  wire kernel_bias_fp_0_V_U_n_43;
  wire kernel_bias_fp_0_V_U_n_44;
  wire kernel_bias_fp_0_V_U_n_60;
  wire kernel_bias_fp_0_V_U_n_61;
  wire kernel_bias_fp_0_V_U_n_62;
  wire kernel_bias_fp_0_V_U_n_63;
  wire kernel_bias_fp_0_V_U_n_64;
  wire kernel_bias_fp_0_V_U_n_65;
  wire kernel_bias_fp_0_V_U_n_66;
  wire kernel_bias_fp_0_V_U_n_67;
  wire kernel_bias_fp_0_V_U_n_68;
  wire kernel_bias_fp_0_V_U_n_69;
  wire kernel_bias_fp_0_V_U_n_70;
  wire kernel_bias_fp_0_V_U_n_71;
  wire kernel_bias_fp_0_V_U_n_72;
  wire kernel_bias_fp_0_V_U_n_73;
  wire kernel_bias_fp_0_V_U_n_74;
  wire kernel_bias_fp_0_V_U_n_75;
  wire kernel_bias_fp_0_V_U_n_76;
  wire kernel_bias_fp_0_V_U_n_77;
  wire kernel_bias_fp_0_V_U_n_78;
  wire kernel_bias_fp_0_V_U_n_79;
  wire kernel_bias_fp_0_V_U_n_80;
  wire kernel_bias_fp_0_V_U_n_81;
  wire kernel_bias_fp_0_V_U_n_82;
  wire kernel_bias_fp_0_V_U_n_83;
  wire kernel_bias_fp_0_V_U_n_84;
  wire kernel_bias_fp_0_V_U_n_85;
  wire kernel_bias_fp_0_V_U_n_86;
  wire kernel_bias_fp_0_V_U_n_87;
  wire kernel_bias_fp_0_V_U_n_88;
  wire kernel_bias_fp_0_V_U_n_89;
  wire kernel_bias_fp_0_V_U_n_90;
  wire kernel_bias_fp_0_V_U_n_91;
  wire kernel_bias_fp_0_V_U_n_92;
  wire kernel_bias_fp_0_V_U_n_93;
  wire kernel_bias_fp_0_V_U_n_94;
  wire kernel_bias_fp_0_V_U_n_95;
  wire [3:1]kernel_bias_fp_0_V_address0;
  wire kernel_bias_fp_0_V_ce0;
  wire kernel_bias_fp_0_V_we0;
  wire kernel_bias_fp_1_V_U_n_100;
  wire kernel_bias_fp_1_V_U_n_101;
  wire kernel_bias_fp_1_V_U_n_102;
  wire kernel_bias_fp_1_V_U_n_103;
  wire kernel_bias_fp_1_V_U_n_104;
  wire kernel_bias_fp_1_V_U_n_65;
  wire kernel_bias_fp_1_V_U_n_66;
  wire kernel_bias_fp_1_V_U_n_67;
  wire kernel_bias_fp_1_V_U_n_68;
  wire kernel_bias_fp_1_V_U_n_69;
  wire kernel_bias_fp_1_V_U_n_70;
  wire kernel_bias_fp_1_V_U_n_71;
  wire kernel_bias_fp_1_V_U_n_72;
  wire kernel_bias_fp_1_V_U_n_73;
  wire kernel_bias_fp_1_V_U_n_74;
  wire kernel_bias_fp_1_V_U_n_75;
  wire kernel_bias_fp_1_V_U_n_76;
  wire kernel_bias_fp_1_V_U_n_77;
  wire kernel_bias_fp_1_V_U_n_78;
  wire kernel_bias_fp_1_V_U_n_79;
  wire kernel_bias_fp_1_V_U_n_80;
  wire kernel_bias_fp_1_V_U_n_81;
  wire kernel_bias_fp_1_V_U_n_82;
  wire kernel_bias_fp_1_V_U_n_83;
  wire kernel_bias_fp_1_V_U_n_84;
  wire kernel_bias_fp_1_V_U_n_85;
  wire kernel_bias_fp_1_V_U_n_86;
  wire kernel_bias_fp_1_V_U_n_87;
  wire kernel_bias_fp_1_V_U_n_88;
  wire kernel_bias_fp_1_V_U_n_89;
  wire kernel_bias_fp_1_V_U_n_90;
  wire kernel_bias_fp_1_V_U_n_91;
  wire kernel_bias_fp_1_V_U_n_92;
  wire kernel_bias_fp_1_V_U_n_93;
  wire kernel_bias_fp_1_V_U_n_94;
  wire kernel_bias_fp_1_V_U_n_95;
  wire kernel_bias_fp_1_V_U_n_96;
  wire kernel_bias_fp_1_V_U_n_97;
  wire kernel_bias_fp_1_V_U_n_98;
  wire kernel_bias_fp_1_V_U_n_99;
  wire leaky_V;
  wire leaky_V_read_reg_1233;
  wire leaky_V_read_reg_364_pp0_iter1_reg;
  wire mul_ln1354_1_reg_1287_reg_i_10_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_11_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_12_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_13_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_14_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_15_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_16_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_17_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_18_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_19_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_20_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_21_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_22_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_23_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_24_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_25_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_26_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_27_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_28_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_29_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_2_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_2_n_1;
  wire mul_ln1354_1_reg_1287_reg_i_2_n_2;
  wire mul_ln1354_1_reg_1287_reg_i_2_n_3;
  wire mul_ln1354_1_reg_1287_reg_i_30_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_31_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_32_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_33_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_34_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_35_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_36_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_37_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_38_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_39_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_3_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_3_n_1;
  wire mul_ln1354_1_reg_1287_reg_i_3_n_2;
  wire mul_ln1354_1_reg_1287_reg_i_3_n_3;
  wire mul_ln1354_1_reg_1287_reg_i_40_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_41_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_4_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_4_n_1;
  wire mul_ln1354_1_reg_1287_reg_i_4_n_2;
  wire mul_ln1354_1_reg_1287_reg_i_4_n_3;
  wire mul_ln1354_1_reg_1287_reg_i_5_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_6_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_7_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_8_n_0;
  wire mul_ln1354_1_reg_1287_reg_i_9_n_0;
  wire mul_ln1354_1_reg_1287_reg_n_100;
  wire mul_ln1354_1_reg_1287_reg_n_101;
  wire mul_ln1354_1_reg_1287_reg_n_102;
  wire mul_ln1354_1_reg_1287_reg_n_103;
  wire mul_ln1354_1_reg_1287_reg_n_104;
  wire mul_ln1354_1_reg_1287_reg_n_105;
  wire mul_ln1354_1_reg_1287_reg_n_84;
  wire mul_ln1354_1_reg_1287_reg_n_85;
  wire mul_ln1354_1_reg_1287_reg_n_86;
  wire mul_ln1354_1_reg_1287_reg_n_87;
  wire mul_ln1354_1_reg_1287_reg_n_88;
  wire mul_ln1354_1_reg_1287_reg_n_89;
  wire mul_ln1354_1_reg_1287_reg_n_90;
  wire mul_ln1354_1_reg_1287_reg_n_91;
  wire mul_ln1354_1_reg_1287_reg_n_92;
  wire mul_ln1354_1_reg_1287_reg_n_93;
  wire mul_ln1354_1_reg_1287_reg_n_94;
  wire mul_ln1354_1_reg_1287_reg_n_95;
  wire mul_ln1354_1_reg_1287_reg_n_96;
  wire mul_ln1354_1_reg_1287_reg_n_97;
  wire mul_ln1354_1_reg_1287_reg_n_98;
  wire mul_ln1354_1_reg_1287_reg_n_99;
  wire [12:0]mul_ln1354_fu_524_p2;
  wire [12:0]mul_ln1354_reg_1269;
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
  wire \outStream_V_data_1_state[0]_i_1_n_0 ;
  wire \outStream_V_data_1_state[1]_i_1_n_0 ;
  wire \outStream_V_data_1_state_reg_n_0_[0] ;
  wire outStream_V_dest_V_1_load_A;
  wire outStream_V_dest_V_1_load_B;
  wire [5:0]outStream_V_dest_V_1_payload_A;
  wire [5:0]outStream_V_dest_V_1_payload_B;
  wire outStream_V_dest_V_1_sel;
  wire outStream_V_dest_V_1_sel_rd_i_1_n_0;
  wire outStream_V_dest_V_1_sel_wr;
  wire outStream_V_dest_V_1_sel_wr_i_1_n_0;
  wire [1:1]outStream_V_dest_V_1_state;
  wire \outStream_V_dest_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_dest_V_1_state[1]_i_1_n_0 ;
  wire outStream_V_id_V_1_load_A;
  wire outStream_V_id_V_1_load_B;
  wire [4:0]outStream_V_id_V_1_payload_A;
  wire [4:0]outStream_V_id_V_1_payload_B;
  wire outStream_V_id_V_1_sel;
  wire outStream_V_id_V_1_sel_rd_i_1_n_0;
  wire outStream_V_id_V_1_sel_wr;
  wire outStream_V_id_V_1_sel_wr_i_1_n_0;
  wire [1:0]outStream_V_id_V_1_state;
  wire \outStream_V_id_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_id_V_1_state[1]_i_1_n_0 ;
  wire outStream_V_keep_V_1_load_A;
  wire outStream_V_keep_V_1_load_B;
  wire [7:0]outStream_V_keep_V_1_payload_A;
  wire [7:0]outStream_V_keep_V_1_payload_B;
  wire outStream_V_keep_V_1_sel;
  wire outStream_V_keep_V_1_sel_rd_i_1_n_0;
  wire outStream_V_keep_V_1_sel_wr;
  wire outStream_V_keep_V_1_sel_wr_i_1_n_0;
  wire [1:0]outStream_V_keep_V_1_state;
  wire \outStream_V_keep_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_keep_V_1_state[1]_i_1_n_0 ;
  wire outStream_V_last_V_1_payload_A;
  wire \outStream_V_last_V_1_payload_A[0]_i_1_n_0 ;
  wire outStream_V_last_V_1_payload_B;
  wire \outStream_V_last_V_1_payload_B[0]_i_1_n_0 ;
  wire outStream_V_last_V_1_sel;
  wire outStream_V_last_V_1_sel_rd_i_1_n_0;
  wire outStream_V_last_V_1_sel_wr;
  wire outStream_V_last_V_1_sel_wr_i_1_n_0;
  wire [1:0]outStream_V_last_V_1_state;
  wire \outStream_V_last_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_last_V_1_state[1]_i_1_n_0 ;
  wire outStream_V_strb_V_1_load_A;
  wire outStream_V_strb_V_1_load_B;
  wire [7:0]outStream_V_strb_V_1_payload_A;
  wire [7:0]outStream_V_strb_V_1_payload_B;
  wire outStream_V_strb_V_1_sel;
  wire outStream_V_strb_V_1_sel_rd_i_1_n_0;
  wire outStream_V_strb_V_1_sel_wr;
  wire outStream_V_strb_V_1_sel_wr_i_1_n_0;
  wire [1:0]outStream_V_strb_V_1_state;
  wire \outStream_V_strb_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_strb_V_1_state[1]_i_1_n_0 ;
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
  wire [1:0]outStream_V_user_V_1_state;
  wire \outStream_V_user_V_1_state[0]_i_1_n_0 ;
  wire \outStream_V_user_V_1_state[1]_i_1_n_0 ;
  wire output_acc_0_V_reg_1346;
  wire output_acc_0_V_reg_13460;
  wire \output_acc_0_V_reg_1346[0]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346[10]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346[11]_i_10_n_0 ;
  wire \output_acc_0_V_reg_1346[11]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346[11]_i_3_n_0 ;
  wire \output_acc_0_V_reg_1346[11]_i_4_n_0 ;
  wire \output_acc_0_V_reg_1346[11]_i_5_n_0 ;
  wire \output_acc_0_V_reg_1346[11]_i_6_n_0 ;
  wire \output_acc_0_V_reg_1346[11]_i_7_n_0 ;
  wire \output_acc_0_V_reg_1346[11]_i_8_n_0 ;
  wire \output_acc_0_V_reg_1346[11]_i_9_n_0 ;
  wire \output_acc_0_V_reg_1346[12]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346[13]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346[14]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_10_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_11_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_13_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_14_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_15_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_16_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_17_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_19_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_20_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_21_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_22_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_24_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_25_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_26_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_27_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_28_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_29_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_2_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_30_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_31_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_5_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_6_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_7_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_8_n_0 ;
  wire \output_acc_0_V_reg_1346[15]_i_9_n_0 ;
  wire \output_acc_0_V_reg_1346[1]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346[2]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346[3]_i_10_n_0 ;
  wire \output_acc_0_V_reg_1346[3]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346[3]_i_3_n_0 ;
  wire \output_acc_0_V_reg_1346[3]_i_4_n_0 ;
  wire \output_acc_0_V_reg_1346[3]_i_5_n_0 ;
  wire \output_acc_0_V_reg_1346[3]_i_6_n_0 ;
  wire \output_acc_0_V_reg_1346[3]_i_7_n_0 ;
  wire \output_acc_0_V_reg_1346[3]_i_8_n_0 ;
  wire \output_acc_0_V_reg_1346[3]_i_9_n_0 ;
  wire \output_acc_0_V_reg_1346[4]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346[5]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346[6]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346[7]_i_10_n_0 ;
  wire \output_acc_0_V_reg_1346[7]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346[7]_i_3_n_0 ;
  wire \output_acc_0_V_reg_1346[7]_i_4_n_0 ;
  wire \output_acc_0_V_reg_1346[7]_i_5_n_0 ;
  wire \output_acc_0_V_reg_1346[7]_i_6_n_0 ;
  wire \output_acc_0_V_reg_1346[7]_i_7_n_0 ;
  wire \output_acc_0_V_reg_1346[7]_i_8_n_0 ;
  wire \output_acc_0_V_reg_1346[7]_i_9_n_0 ;
  wire \output_acc_0_V_reg_1346[8]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346[9]_i_1_n_0 ;
  wire \output_acc_0_V_reg_1346_reg[11]_i_2_n_0 ;
  wire \output_acc_0_V_reg_1346_reg[11]_i_2_n_1 ;
  wire \output_acc_0_V_reg_1346_reg[11]_i_2_n_2 ;
  wire \output_acc_0_V_reg_1346_reg[11]_i_2_n_3 ;
  wire \output_acc_0_V_reg_1346_reg[11]_i_2_n_4 ;
  wire \output_acc_0_V_reg_1346_reg[11]_i_2_n_5 ;
  wire \output_acc_0_V_reg_1346_reg[11]_i_2_n_6 ;
  wire \output_acc_0_V_reg_1346_reg[11]_i_2_n_7 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_12_n_0 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_12_n_1 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_12_n_2 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_12_n_3 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_18_n_0 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_18_n_1 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_18_n_2 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_18_n_3 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_23_n_0 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_23_n_1 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_23_n_2 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_23_n_3 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_3_n_1 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_3_n_2 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_3_n_3 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_3_n_5 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_3_n_6 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_3_n_7 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_4_n_1 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_4_n_2 ;
  wire \output_acc_0_V_reg_1346_reg[15]_i_4_n_3 ;
  wire \output_acc_0_V_reg_1346_reg[3]_i_2_n_0 ;
  wire \output_acc_0_V_reg_1346_reg[3]_i_2_n_1 ;
  wire \output_acc_0_V_reg_1346_reg[3]_i_2_n_2 ;
  wire \output_acc_0_V_reg_1346_reg[3]_i_2_n_3 ;
  wire \output_acc_0_V_reg_1346_reg[3]_i_2_n_4 ;
  wire \output_acc_0_V_reg_1346_reg[3]_i_2_n_5 ;
  wire \output_acc_0_V_reg_1346_reg[3]_i_2_n_6 ;
  wire \output_acc_0_V_reg_1346_reg[3]_i_2_n_7 ;
  wire \output_acc_0_V_reg_1346_reg[7]_i_2_n_0 ;
  wire \output_acc_0_V_reg_1346_reg[7]_i_2_n_1 ;
  wire \output_acc_0_V_reg_1346_reg[7]_i_2_n_2 ;
  wire \output_acc_0_V_reg_1346_reg[7]_i_2_n_3 ;
  wire \output_acc_0_V_reg_1346_reg[7]_i_2_n_4 ;
  wire \output_acc_0_V_reg_1346_reg[7]_i_2_n_5 ;
  wire \output_acc_0_V_reg_1346_reg[7]_i_2_n_6 ;
  wire \output_acc_0_V_reg_1346_reg[7]_i_2_n_7 ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[0] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[10] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[11] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[12] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[13] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[14] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[15] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[1] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[2] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[3] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[4] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[5] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[6] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[7] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[8] ;
  wire \output_acc_0_V_reg_1346_reg_n_0_[9] ;
  wire output_acc_1_V_reg_1351;
  wire \output_acc_1_V_reg_1351[0]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351[10]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351[11]_i_10_n_0 ;
  wire \output_acc_1_V_reg_1351[11]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351[11]_i_7_n_0 ;
  wire \output_acc_1_V_reg_1351[11]_i_8_n_0 ;
  wire \output_acc_1_V_reg_1351[11]_i_9_n_0 ;
  wire \output_acc_1_V_reg_1351[12]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351[13]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351[14]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_10_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_11_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_13_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_14_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_15_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_16_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_17_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_19_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_20_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_21_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_22_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_24_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_25_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_26_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_27_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_28_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_29_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_2_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_30_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_31_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_8_n_0 ;
  wire \output_acc_1_V_reg_1351[15]_i_9_n_0 ;
  wire \output_acc_1_V_reg_1351[1]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351[2]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351[3]_i_10_n_0 ;
  wire \output_acc_1_V_reg_1351[3]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351[3]_i_7_n_0 ;
  wire \output_acc_1_V_reg_1351[3]_i_8_n_0 ;
  wire \output_acc_1_V_reg_1351[3]_i_9_n_0 ;
  wire \output_acc_1_V_reg_1351[4]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351[5]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351[6]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351[7]_i_10_n_0 ;
  wire \output_acc_1_V_reg_1351[7]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351[7]_i_7_n_0 ;
  wire \output_acc_1_V_reg_1351[7]_i_8_n_0 ;
  wire \output_acc_1_V_reg_1351[7]_i_9_n_0 ;
  wire \output_acc_1_V_reg_1351[8]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351[9]_i_1_n_0 ;
  wire \output_acc_1_V_reg_1351_reg[11]_i_2_n_0 ;
  wire \output_acc_1_V_reg_1351_reg[11]_i_2_n_1 ;
  wire \output_acc_1_V_reg_1351_reg[11]_i_2_n_2 ;
  wire \output_acc_1_V_reg_1351_reg[11]_i_2_n_3 ;
  wire \output_acc_1_V_reg_1351_reg[11]_i_2_n_4 ;
  wire \output_acc_1_V_reg_1351_reg[11]_i_2_n_5 ;
  wire \output_acc_1_V_reg_1351_reg[11]_i_2_n_6 ;
  wire \output_acc_1_V_reg_1351_reg[11]_i_2_n_7 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_12_n_0 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_12_n_1 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_12_n_2 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_12_n_3 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_18_n_0 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_18_n_1 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_18_n_2 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_18_n_3 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_23_n_0 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_23_n_1 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_23_n_2 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_23_n_3 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_3_n_1 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_3_n_2 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_3_n_3 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_3_n_5 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_3_n_6 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_3_n_7 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_4_n_1 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_4_n_2 ;
  wire \output_acc_1_V_reg_1351_reg[15]_i_4_n_3 ;
  wire \output_acc_1_V_reg_1351_reg[3]_i_2_n_0 ;
  wire \output_acc_1_V_reg_1351_reg[3]_i_2_n_1 ;
  wire \output_acc_1_V_reg_1351_reg[3]_i_2_n_2 ;
  wire \output_acc_1_V_reg_1351_reg[3]_i_2_n_3 ;
  wire \output_acc_1_V_reg_1351_reg[3]_i_2_n_4 ;
  wire \output_acc_1_V_reg_1351_reg[3]_i_2_n_5 ;
  wire \output_acc_1_V_reg_1351_reg[3]_i_2_n_6 ;
  wire \output_acc_1_V_reg_1351_reg[3]_i_2_n_7 ;
  wire \output_acc_1_V_reg_1351_reg[7]_i_2_n_0 ;
  wire \output_acc_1_V_reg_1351_reg[7]_i_2_n_1 ;
  wire \output_acc_1_V_reg_1351_reg[7]_i_2_n_2 ;
  wire \output_acc_1_V_reg_1351_reg[7]_i_2_n_3 ;
  wire \output_acc_1_V_reg_1351_reg[7]_i_2_n_4 ;
  wire \output_acc_1_V_reg_1351_reg[7]_i_2_n_5 ;
  wire \output_acc_1_V_reg_1351_reg[7]_i_2_n_6 ;
  wire \output_acc_1_V_reg_1351_reg[7]_i_2_n_7 ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[0] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[10] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[11] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[12] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[13] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[14] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[15] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[1] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[2] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[3] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[4] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[5] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[6] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[7] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[8] ;
  wire \output_acc_1_V_reg_1351_reg_n_0_[9] ;
  wire output_acc_2_V_reg_1356;
  wire \output_acc_2_V_reg_1356[0]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356[10]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356[11]_i_10_n_0 ;
  wire \output_acc_2_V_reg_1356[11]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356[11]_i_7_n_0 ;
  wire \output_acc_2_V_reg_1356[11]_i_8_n_0 ;
  wire \output_acc_2_V_reg_1356[11]_i_9_n_0 ;
  wire \output_acc_2_V_reg_1356[12]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356[13]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356[14]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_10_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_11_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_13_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_14_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_15_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_16_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_17_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_19_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_20_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_21_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_22_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_24_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_25_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_26_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_27_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_28_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_29_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_2_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_30_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_31_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_8_n_0 ;
  wire \output_acc_2_V_reg_1356[15]_i_9_n_0 ;
  wire \output_acc_2_V_reg_1356[1]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356[2]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356[3]_i_10_n_0 ;
  wire \output_acc_2_V_reg_1356[3]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356[3]_i_7_n_0 ;
  wire \output_acc_2_V_reg_1356[3]_i_8_n_0 ;
  wire \output_acc_2_V_reg_1356[3]_i_9_n_0 ;
  wire \output_acc_2_V_reg_1356[4]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356[5]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356[6]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356[7]_i_10_n_0 ;
  wire \output_acc_2_V_reg_1356[7]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356[7]_i_7_n_0 ;
  wire \output_acc_2_V_reg_1356[7]_i_8_n_0 ;
  wire \output_acc_2_V_reg_1356[7]_i_9_n_0 ;
  wire \output_acc_2_V_reg_1356[8]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356[9]_i_1_n_0 ;
  wire \output_acc_2_V_reg_1356_reg[11]_i_2_n_0 ;
  wire \output_acc_2_V_reg_1356_reg[11]_i_2_n_1 ;
  wire \output_acc_2_V_reg_1356_reg[11]_i_2_n_2 ;
  wire \output_acc_2_V_reg_1356_reg[11]_i_2_n_3 ;
  wire \output_acc_2_V_reg_1356_reg[11]_i_2_n_4 ;
  wire \output_acc_2_V_reg_1356_reg[11]_i_2_n_5 ;
  wire \output_acc_2_V_reg_1356_reg[11]_i_2_n_6 ;
  wire \output_acc_2_V_reg_1356_reg[11]_i_2_n_7 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_12_n_0 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_12_n_1 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_12_n_2 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_12_n_3 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_18_n_0 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_18_n_1 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_18_n_2 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_18_n_3 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_23_n_0 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_23_n_1 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_23_n_2 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_23_n_3 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_3_n_1 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_3_n_2 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_3_n_3 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_3_n_5 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_3_n_6 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_3_n_7 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_4_n_1 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_4_n_2 ;
  wire \output_acc_2_V_reg_1356_reg[15]_i_4_n_3 ;
  wire \output_acc_2_V_reg_1356_reg[3]_i_2_n_0 ;
  wire \output_acc_2_V_reg_1356_reg[3]_i_2_n_1 ;
  wire \output_acc_2_V_reg_1356_reg[3]_i_2_n_2 ;
  wire \output_acc_2_V_reg_1356_reg[3]_i_2_n_3 ;
  wire \output_acc_2_V_reg_1356_reg[3]_i_2_n_4 ;
  wire \output_acc_2_V_reg_1356_reg[3]_i_2_n_5 ;
  wire \output_acc_2_V_reg_1356_reg[3]_i_2_n_6 ;
  wire \output_acc_2_V_reg_1356_reg[3]_i_2_n_7 ;
  wire \output_acc_2_V_reg_1356_reg[7]_i_2_n_0 ;
  wire \output_acc_2_V_reg_1356_reg[7]_i_2_n_1 ;
  wire \output_acc_2_V_reg_1356_reg[7]_i_2_n_2 ;
  wire \output_acc_2_V_reg_1356_reg[7]_i_2_n_3 ;
  wire \output_acc_2_V_reg_1356_reg[7]_i_2_n_4 ;
  wire \output_acc_2_V_reg_1356_reg[7]_i_2_n_5 ;
  wire \output_acc_2_V_reg_1356_reg[7]_i_2_n_6 ;
  wire \output_acc_2_V_reg_1356_reg[7]_i_2_n_7 ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[0] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[10] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[11] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[12] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[13] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[14] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[15] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[1] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[2] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[3] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[4] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[5] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[6] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[7] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[8] ;
  wire \output_acc_2_V_reg_1356_reg_n_0_[9] ;
  wire output_acc_3_V_reg_1361;
  wire \output_acc_3_V_reg_1361[0]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361[10]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361[11]_i_10_n_0 ;
  wire \output_acc_3_V_reg_1361[11]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361[11]_i_7_n_0 ;
  wire \output_acc_3_V_reg_1361[11]_i_8_n_0 ;
  wire \output_acc_3_V_reg_1361[11]_i_9_n_0 ;
  wire \output_acc_3_V_reg_1361[12]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361[13]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361[14]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_10_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_11_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_13_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_14_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_15_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_16_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_17_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_19_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_20_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_21_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_22_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_24_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_25_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_26_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_27_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_28_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_29_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_2_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_30_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_31_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_8_n_0 ;
  wire \output_acc_3_V_reg_1361[15]_i_9_n_0 ;
  wire \output_acc_3_V_reg_1361[1]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361[2]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361[3]_i_10_n_0 ;
  wire \output_acc_3_V_reg_1361[3]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361[3]_i_7_n_0 ;
  wire \output_acc_3_V_reg_1361[3]_i_8_n_0 ;
  wire \output_acc_3_V_reg_1361[3]_i_9_n_0 ;
  wire \output_acc_3_V_reg_1361[4]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361[5]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361[6]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361[7]_i_10_n_0 ;
  wire \output_acc_3_V_reg_1361[7]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361[7]_i_7_n_0 ;
  wire \output_acc_3_V_reg_1361[7]_i_8_n_0 ;
  wire \output_acc_3_V_reg_1361[7]_i_9_n_0 ;
  wire \output_acc_3_V_reg_1361[8]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361[9]_i_1_n_0 ;
  wire \output_acc_3_V_reg_1361_reg[11]_i_2_n_0 ;
  wire \output_acc_3_V_reg_1361_reg[11]_i_2_n_1 ;
  wire \output_acc_3_V_reg_1361_reg[11]_i_2_n_2 ;
  wire \output_acc_3_V_reg_1361_reg[11]_i_2_n_3 ;
  wire \output_acc_3_V_reg_1361_reg[11]_i_2_n_4 ;
  wire \output_acc_3_V_reg_1361_reg[11]_i_2_n_5 ;
  wire \output_acc_3_V_reg_1361_reg[11]_i_2_n_6 ;
  wire \output_acc_3_V_reg_1361_reg[11]_i_2_n_7 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_12_n_0 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_12_n_1 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_12_n_2 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_12_n_3 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_18_n_0 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_18_n_1 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_18_n_2 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_18_n_3 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_23_n_0 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_23_n_1 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_23_n_2 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_23_n_3 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_3_n_1 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_3_n_2 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_3_n_3 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_3_n_5 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_3_n_6 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_3_n_7 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_4_n_1 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_4_n_2 ;
  wire \output_acc_3_V_reg_1361_reg[15]_i_4_n_3 ;
  wire \output_acc_3_V_reg_1361_reg[3]_i_2_n_0 ;
  wire \output_acc_3_V_reg_1361_reg[3]_i_2_n_1 ;
  wire \output_acc_3_V_reg_1361_reg[3]_i_2_n_2 ;
  wire \output_acc_3_V_reg_1361_reg[3]_i_2_n_3 ;
  wire \output_acc_3_V_reg_1361_reg[3]_i_2_n_4 ;
  wire \output_acc_3_V_reg_1361_reg[3]_i_2_n_5 ;
  wire \output_acc_3_V_reg_1361_reg[3]_i_2_n_6 ;
  wire \output_acc_3_V_reg_1361_reg[3]_i_2_n_7 ;
  wire \output_acc_3_V_reg_1361_reg[7]_i_2_n_0 ;
  wire \output_acc_3_V_reg_1361_reg[7]_i_2_n_1 ;
  wire \output_acc_3_V_reg_1361_reg[7]_i_2_n_2 ;
  wire \output_acc_3_V_reg_1361_reg[7]_i_2_n_3 ;
  wire \output_acc_3_V_reg_1361_reg[7]_i_2_n_4 ;
  wire \output_acc_3_V_reg_1361_reg[7]_i_2_n_5 ;
  wire \output_acc_3_V_reg_1361_reg[7]_i_2_n_6 ;
  wire \output_acc_3_V_reg_1361_reg[7]_i_2_n_7 ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[0] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[10] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[11] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[12] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[13] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[14] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[15] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[1] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[2] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[3] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[4] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[5] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[6] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[7] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[8] ;
  wire \output_acc_3_V_reg_1361_reg_n_0_[9] ;
  wire p_0_in4_in;
  wire p_172_in;
  wire [8:0]p_1_in;
  wire p_1_in26_in;
  wire p_228_in;
  wire p_Result_1_fu_810_p3;
  wire p_Result_3_fu_900_p3;
  wire p_Result_5_fu_990_p3;
  wire p_Result_7_fu_1080_p3;
  wire p_Result_8_fu_98_p3;
  wire p_Result_8_fu_98_p3_0;
  wire p_Result_8_fu_98_p3_2;
  wire p_Result_8_fu_98_p3_4;
  wire [14:0]p_Val2_13_fu_768_p4;
  wire [14:0]p_Val2_4_fu_748_p4;
  wire [14:0]p_Val2_8_fu_758_p4;
  wire [14:0]rhs_V_1_fu_876_p1;
  wire [14:0]rhs_V_2_fu_966_p1;
  wire [14:0]rhs_V_3_fu_1056_p1;
  wire [5:0]s_axi_CTRL_BUS_ARADDR;
  wire s_axi_CTRL_BUS_ARREADY;
  wire s_axi_CTRL_BUS_ARVALID;
  wire [5:0]s_axi_CTRL_BUS_AWADDR;
  wire s_axi_CTRL_BUS_AWREADY;
  wire s_axi_CTRL_BUS_AWVALID;
  wire s_axi_CTRL_BUS_BREADY;
  wire s_axi_CTRL_BUS_BVALID;
  wire [8:0]\^s_axi_CTRL_BUS_RDATA ;
  wire s_axi_CTRL_BUS_RREADY;
  wire s_axi_CTRL_BUS_RVALID;
  wire [31:0]s_axi_CTRL_BUS_WDATA;
  wire s_axi_CTRL_BUS_WREADY;
  wire [3:0]s_axi_CTRL_BUS_WSTRB;
  wire s_axi_CTRL_BUS_WVALID;
  wire t_V_reg_337;
  wire [3:0]t_V_reg_337_reg;
  wire [5:0]tmp_dest_V_reg_1341;
  wire [5:0]tmp_dest_V_reg_1341_pp1_iter1_reg;
  wire [5:0]tmp_dest_V_reg_1341_pp1_iter2_reg;
  wire [5:0]tmp_dest_V_reg_1341_pp1_iter3_reg;
  wire [4:0]tmp_id_V_reg_1336;
  wire [4:0]tmp_id_V_reg_1336_pp1_iter1_reg;
  wire [4:0]tmp_id_V_reg_1336_pp1_iter2_reg;
  wire [4:0]tmp_id_V_reg_1336_pp1_iter3_reg;
  wire [7:0]tmp_keep_V_reg_1321;
  wire \tmp_keep_V_reg_1321[7]_i_4_n_0 ;
  wire [7:0]tmp_keep_V_reg_1321_pp1_iter1_reg;
  wire [7:0]tmp_keep_V_reg_1321_pp1_iter2_reg;
  wire [7:0]tmp_keep_V_reg_1321_pp1_iter3_reg;
  wire tmp_last_V_fu_1180_p2;
  wire tmp_last_V_reg_1386;
  wire \tmp_last_V_reg_1386[0]_i_10_n_0 ;
  wire \tmp_last_V_reg_1386[0]_i_4_n_0 ;
  wire \tmp_last_V_reg_1386[0]_i_5_n_0 ;
  wire \tmp_last_V_reg_1386[0]_i_6_n_0 ;
  wire \tmp_last_V_reg_1386[0]_i_7_n_0 ;
  wire \tmp_last_V_reg_1386[0]_i_8_n_0 ;
  wire \tmp_last_V_reg_1386[0]_i_9_n_0 ;
  wire tmp_last_V_reg_1386_pp1_iter1_reg;
  wire tmp_last_V_reg_1386_pp1_iter2_reg;
  wire tmp_last_V_reg_1386_pp1_iter3_reg;
  wire \tmp_last_V_reg_1386_reg[0]_i_2_n_1 ;
  wire \tmp_last_V_reg_1386_reg[0]_i_2_n_2 ;
  wire \tmp_last_V_reg_1386_reg[0]_i_2_n_3 ;
  wire \tmp_last_V_reg_1386_reg[0]_i_3_n_1 ;
  wire \tmp_last_V_reg_1386_reg[0]_i_3_n_2 ;
  wire \tmp_last_V_reg_1386_reg[0]_i_3_n_3 ;
  wire [7:0]tmp_strb_V_reg_1326;
  wire [7:0]tmp_strb_V_reg_1326_pp1_iter1_reg;
  wire [7:0]tmp_strb_V_reg_1326_pp1_iter2_reg;
  wire [7:0]tmp_strb_V_reg_1326_pp1_iter3_reg;
  wire [1:0]tmp_user_V_reg_1331;
  wire [1:0]tmp_user_V_reg_1331_pp1_iter1_reg;
  wire [1:0]tmp_user_V_reg_1331_pp1_iter2_reg;
  wire [1:0]tmp_user_V_reg_1331_pp1_iter3_reg;
  wire yolo_acc_top_CTRL_BUS_s_axi_U_n_29;
  wire yolo_acc_top_CTRL_BUS_s_axi_U_n_31;
  wire [8:3]zext_ln43_1_fu_619_p1;
  wire [2:0]zext_ln43_1_fu_619_p1__0;
  wire [3:1]\NLW_indvar_flatten17_reg_348_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_indvar_flatten17_reg_348_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_indvar_flatten_reg_370_reg[12]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_indvar_flatten_reg_370_reg[12]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_indvar_flatten_reg_370_reg[12]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_indvar_flatten_reg_370_reg[12]_i_5_O_UNCONNECTED ;
  wire NLW_mul_ln1354_1_reg_1287_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln1354_1_reg_1287_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln1354_1_reg_1287_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln1354_1_reg_1287_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln1354_1_reg_1287_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln1354_1_reg_1287_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln1354_1_reg_1287_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln1354_1_reg_1287_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln1354_1_reg_1287_reg_CARRYOUT_UNCONNECTED;
  wire [47:22]NLW_mul_ln1354_1_reg_1287_reg_P_UNCONNECTED;
  wire [47:0]NLW_mul_ln1354_1_reg_1287_reg_PCOUT_UNCONNECTED;
  wire [3:1]NLW_mul_ln1354_1_reg_1287_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_mul_ln1354_1_reg_1287_reg_i_1_O_UNCONNECTED;
  wire [3:0]\NLW_output_acc_0_V_reg_1346_reg[15]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_0_V_reg_1346_reg[15]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_0_V_reg_1346_reg[15]_i_23_O_UNCONNECTED ;
  wire [3:3]\NLW_output_acc_0_V_reg_1346_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_0_V_reg_1346_reg[15]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_1_V_reg_1351_reg[15]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_1_V_reg_1351_reg[15]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_1_V_reg_1351_reg[15]_i_23_O_UNCONNECTED ;
  wire [3:3]\NLW_output_acc_1_V_reg_1351_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_1_V_reg_1351_reg[15]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_2_V_reg_1356_reg[15]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_2_V_reg_1356_reg[15]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_2_V_reg_1356_reg[15]_i_23_O_UNCONNECTED ;
  wire [3:3]\NLW_output_acc_2_V_reg_1356_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_2_V_reg_1356_reg[15]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_3_V_reg_1361_reg[15]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_3_V_reg_1361_reg[15]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_3_V_reg_1361_reg[15]_i_23_O_UNCONNECTED ;
  wire [3:3]\NLW_output_acc_3_V_reg_1361_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_output_acc_3_V_reg_1361_reg[15]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_last_V_reg_1386_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_last_V_reg_1386_reg[0]_i_3_O_UNCONNECTED ;

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
  assign s_axi_CTRL_BUS_RDATA[8:0] = \^s_axi_CTRL_BUS_RDATA [8:0];
  assign s_axi_CTRL_BUS_RRESP[1] = \<const0> ;
  assign s_axi_CTRL_BUS_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln1354_1_reg_1281[0]_i_1 
       (.I0(input_h_V_read_reg_1255[0]),
        .O(add_ln1354_1_fu_542_p2));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \add_ln1354_1_reg_1281[1]_i_1 
       (.I0(input_h_V_read_reg_1255[0]),
        .I1(input_h_V_read_reg_1255[1]),
        .O(\add_ln1354_1_reg_1281[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \add_ln1354_1_reg_1281[2]_i_1 
       (.I0(input_h_V_read_reg_1255[1]),
        .I1(input_h_V_read_reg_1255[0]),
        .I2(input_h_V_read_reg_1255[2]),
        .O(\add_ln1354_1_reg_1281[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \add_ln1354_1_reg_1281[3]_i_1 
       (.I0(input_h_V_read_reg_1255[2]),
        .I1(input_h_V_read_reg_1255[0]),
        .I2(input_h_V_read_reg_1255[1]),
        .I3(input_h_V_read_reg_1255[3]),
        .O(\add_ln1354_1_reg_1281[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \add_ln1354_1_reg_1281[4]_i_1 
       (.I0(input_h_V_read_reg_1255[3]),
        .I1(input_h_V_read_reg_1255[1]),
        .I2(input_h_V_read_reg_1255[0]),
        .I3(input_h_V_read_reg_1255[2]),
        .I4(input_h_V_read_reg_1255[4]),
        .O(\add_ln1354_1_reg_1281[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \add_ln1354_1_reg_1281[5]_i_1 
       (.I0(input_h_V_read_reg_1255[4]),
        .I1(input_h_V_read_reg_1255[2]),
        .I2(input_h_V_read_reg_1255[0]),
        .I3(input_h_V_read_reg_1255[1]),
        .I4(input_h_V_read_reg_1255[3]),
        .I5(input_h_V_read_reg_1255[5]),
        .O(\add_ln1354_1_reg_1281[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \add_ln1354_1_reg_1281[6]_i_1 
       (.I0(\add_ln1354_1_reg_1281[9]_inv_i_2_n_0 ),
        .I1(input_h_V_read_reg_1255[6]),
        .O(\add_ln1354_1_reg_1281[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \add_ln1354_1_reg_1281[7]_i_1 
       (.I0(input_h_V_read_reg_1255[6]),
        .I1(\add_ln1354_1_reg_1281[9]_inv_i_2_n_0 ),
        .I2(input_h_V_read_reg_1255[7]),
        .O(\add_ln1354_1_reg_1281[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \add_ln1354_1_reg_1281[8]_i_1 
       (.I0(input_h_V_read_reg_1255[7]),
        .I1(\add_ln1354_1_reg_1281[9]_inv_i_2_n_0 ),
        .I2(input_h_V_read_reg_1255[6]),
        .I3(input_h_V_read_reg_1255[8]),
        .O(\add_ln1354_1_reg_1281[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \add_ln1354_1_reg_1281[9]_inv_i_1 
       (.I0(input_h_V_read_reg_1255[7]),
        .I1(\add_ln1354_1_reg_1281[9]_inv_i_2_n_0 ),
        .I2(input_h_V_read_reg_1255[6]),
        .I3(input_h_V_read_reg_1255[8]),
        .O(\add_ln1354_1_reg_1281[9]_inv_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \add_ln1354_1_reg_1281[9]_inv_i_2 
       (.I0(input_h_V_read_reg_1255[4]),
        .I1(input_h_V_read_reg_1255[2]),
        .I2(input_h_V_read_reg_1255[0]),
        .I3(input_h_V_read_reg_1255[1]),
        .I4(input_h_V_read_reg_1255[3]),
        .I5(input_h_V_read_reg_1255[5]),
        .O(\add_ln1354_1_reg_1281[9]_inv_i_2_n_0 ));
  FDRE \add_ln1354_1_reg_1281_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1354_1_fu_542_p2),
        .Q(add_ln1354_1_reg_1281[0]),
        .R(1'b0));
  FDRE \add_ln1354_1_reg_1281_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\add_ln1354_1_reg_1281[1]_i_1_n_0 ),
        .Q(add_ln1354_1_reg_1281[1]),
        .R(1'b0));
  FDRE \add_ln1354_1_reg_1281_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\add_ln1354_1_reg_1281[2]_i_1_n_0 ),
        .Q(add_ln1354_1_reg_1281[2]),
        .R(1'b0));
  FDRE \add_ln1354_1_reg_1281_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\add_ln1354_1_reg_1281[3]_i_1_n_0 ),
        .Q(add_ln1354_1_reg_1281[3]),
        .R(1'b0));
  FDRE \add_ln1354_1_reg_1281_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\add_ln1354_1_reg_1281[4]_i_1_n_0 ),
        .Q(add_ln1354_1_reg_1281[4]),
        .R(1'b0));
  FDRE \add_ln1354_1_reg_1281_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\add_ln1354_1_reg_1281[5]_i_1_n_0 ),
        .Q(add_ln1354_1_reg_1281[5]),
        .R(1'b0));
  FDRE \add_ln1354_1_reg_1281_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\add_ln1354_1_reg_1281[6]_i_1_n_0 ),
        .Q(add_ln1354_1_reg_1281[6]),
        .R(1'b0));
  FDRE \add_ln1354_1_reg_1281_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\add_ln1354_1_reg_1281[7]_i_1_n_0 ),
        .Q(add_ln1354_1_reg_1281[7]),
        .R(1'b0));
  FDRE \add_ln1354_1_reg_1281_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\add_ln1354_1_reg_1281[8]_i_1_n_0 ),
        .Q(add_ln1354_1_reg_1281[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \add_ln1354_1_reg_1281_reg[9]_inv 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(\add_ln1354_1_reg_1281[9]_inv_i_1_n_0 ),
        .Q(\add_ln1354_1_reg_1281_reg[9]_inv_n_0 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln1354_reg_1275[0]_i_1 
       (.I0(input_w_V_read_reg_1249[0]),
        .O(add_ln1354_fu_533_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \add_ln1354_reg_1275[1]_i_1 
       (.I0(input_w_V_read_reg_1249[1]),
        .I1(input_w_V_read_reg_1249[0]),
        .O(add_ln1354_fu_533_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \add_ln1354_reg_1275[2]_i_1 
       (.I0(input_w_V_read_reg_1249[2]),
        .I1(input_w_V_read_reg_1249[0]),
        .I2(input_w_V_read_reg_1249[1]),
        .O(add_ln1354_fu_533_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \add_ln1354_reg_1275[3]_i_1 
       (.I0(input_w_V_read_reg_1249[3]),
        .I1(input_w_V_read_reg_1249[1]),
        .I2(input_w_V_read_reg_1249[0]),
        .I3(input_w_V_read_reg_1249[2]),
        .O(add_ln1354_fu_533_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \add_ln1354_reg_1275[4]_i_1 
       (.I0(input_w_V_read_reg_1249[3]),
        .I1(input_w_V_read_reg_1249[1]),
        .I2(input_w_V_read_reg_1249[0]),
        .I3(input_w_V_read_reg_1249[2]),
        .I4(input_w_V_read_reg_1249[4]),
        .O(add_ln1354_fu_533_p2[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \add_ln1354_reg_1275[5]_i_1 
       (.I0(input_w_V_read_reg_1249[5]),
        .I1(input_w_V_read_reg_1249[3]),
        .I2(input_w_V_read_reg_1249[1]),
        .I3(input_w_V_read_reg_1249[0]),
        .I4(input_w_V_read_reg_1249[2]),
        .I5(input_w_V_read_reg_1249[4]),
        .O(add_ln1354_fu_533_p2[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \add_ln1354_reg_1275[6]_i_1 
       (.I0(input_w_V_read_reg_1249[6]),
        .I1(\add_ln1354_reg_1275[9]_inv_i_2_n_0 ),
        .O(add_ln1354_fu_533_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \add_ln1354_reg_1275[7]_i_1 
       (.I0(input_w_V_read_reg_1249[7]),
        .I1(\add_ln1354_reg_1275[9]_inv_i_2_n_0 ),
        .I2(input_w_V_read_reg_1249[6]),
        .O(add_ln1354_fu_533_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \add_ln1354_reg_1275[8]_i_1 
       (.I0(input_w_V_read_reg_1249[7]),
        .I1(\add_ln1354_reg_1275[9]_inv_i_2_n_0 ),
        .I2(input_w_V_read_reg_1249[6]),
        .I3(input_w_V_read_reg_1249[8]),
        .O(add_ln1354_fu_533_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \add_ln1354_reg_1275[9]_inv_i_1 
       (.I0(input_w_V_read_reg_1249[7]),
        .I1(\add_ln1354_reg_1275[9]_inv_i_2_n_0 ),
        .I2(input_w_V_read_reg_1249[6]),
        .I3(input_w_V_read_reg_1249[8]),
        .O(add_ln1354_fu_533_p2[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \add_ln1354_reg_1275[9]_inv_i_2 
       (.I0(input_w_V_read_reg_1249[4]),
        .I1(input_w_V_read_reg_1249[2]),
        .I2(input_w_V_read_reg_1249[0]),
        .I3(input_w_V_read_reg_1249[1]),
        .I4(input_w_V_read_reg_1249[3]),
        .I5(input_w_V_read_reg_1249[5]),
        .O(\add_ln1354_reg_1275[9]_inv_i_2_n_0 ));
  FDRE \add_ln1354_reg_1275_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1354_fu_533_p2[0]),
        .Q(add_ln1354_reg_1275[0]),
        .R(1'b0));
  FDRE \add_ln1354_reg_1275_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1354_fu_533_p2[1]),
        .Q(add_ln1354_reg_1275[1]),
        .R(1'b0));
  FDRE \add_ln1354_reg_1275_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1354_fu_533_p2[2]),
        .Q(add_ln1354_reg_1275[2]),
        .R(1'b0));
  FDRE \add_ln1354_reg_1275_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1354_fu_533_p2[3]),
        .Q(add_ln1354_reg_1275[3]),
        .R(1'b0));
  FDRE \add_ln1354_reg_1275_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1354_fu_533_p2[4]),
        .Q(add_ln1354_reg_1275[4]),
        .R(1'b0));
  FDRE \add_ln1354_reg_1275_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1354_fu_533_p2[5]),
        .Q(add_ln1354_reg_1275[5]),
        .R(1'b0));
  FDRE \add_ln1354_reg_1275_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1354_fu_533_p2[6]),
        .Q(add_ln1354_reg_1275[6]),
        .R(1'b0));
  FDRE \add_ln1354_reg_1275_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1354_fu_533_p2[7]),
        .Q(add_ln1354_reg_1275[7]),
        .R(1'b0));
  FDRE \add_ln1354_reg_1275_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1354_fu_533_p2[8]),
        .Q(add_ln1354_reg_1275[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \add_ln1354_reg_1275_reg[9]_inv 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(add_ln1354_fu_533_p2[9]),
        .Q(\add_ln1354_reg_1275_reg[9]_inv_n_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(kernel_bias_fp_1_V_U_n_68),
        .I1(\ap_CS_fsm_reg_n_0_[1] ),
        .O(ap_NS_fsm[2]));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(\ap_CS_fsm[5]_i_2_n_0 ),
        .I2(ap_block_pp1_stage0_11001),
        .I3(ap_CS_fsm_pp1_stage0),
        .O(ap_NS_fsm[4]));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(ap_block_pp1_stage0_11001),
        .I1(ap_CS_fsm_pp1_stage0),
        .I2(\ap_CS_fsm[5]_i_2_n_0 ),
        .I3(ap_done2),
        .I4(\ap_CS_fsm_reg_n_0_[5] ),
        .O(ap_NS_fsm[5]));
  LUT5 #(
    .INIT(32'h4040FF40)) 
    \ap_CS_fsm[5]_i_2 
       (.I0(ap_enable_reg_pp1_iter1_reg_n_0),
        .I1(ap_enable_reg_pp1_iter0),
        .I2(ap_condition_pp1_exit_iter0_state5),
        .I3(ap_enable_reg_pp1_iter5_reg_n_0),
        .I4(ap_enable_reg_pp1_iter4),
        .O(\ap_CS_fsm[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAFFAAEA)) 
    \ap_CS_fsm[5]_i_3 
       (.I0(yolo_acc_top_CTRL_BUS_s_axi_U_n_31),
        .I1(outStream_V_strb_V_1_state[0]),
        .I2(outStream_V_strb_V_1_state[1]),
        .I3(outStream_TREADY),
        .I4(p_1_in26_in),
        .I5(yolo_acc_top_CTRL_BUS_s_axi_U_n_29),
        .O(ap_done2));
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
        .Q(\ap_CS_fsm_reg_n_0_[1] ),
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
        .D(ap_CS_fsm_state3),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_pp1_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(\ap_CS_fsm_reg_n_0_[5] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hA8A800A8A8A8A8A8)) 
    ap_enable_reg_pp1_iter0_i_1
       (.I0(ap_rst_n),
        .I1(ap_CS_fsm_state4),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(ap_condition_pp1_exit_iter0_state5),
        .I4(ap_block_pp1_stage0_11001),
        .I5(ap_CS_fsm_pp1_stage0),
        .O(ap_enable_reg_pp1_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp1_iter0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h888800A0)) 
    ap_enable_reg_pp1_iter1_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp1_iter1_reg_n_0),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(ap_condition_pp1_exit_iter0_state5),
        .I4(ap_block_pp1_stage0_11001),
        .O(ap_enable_reg_pp1_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp1_iter1_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    ap_enable_reg_pp1_iter2_i_1
       (.I0(ap_block_pp1_stage0_11001),
        .O(ap_block_pp1_stage0_subdone));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter2_reg
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(ap_enable_reg_pp1_iter1_reg_n_0),
        .Q(ap_enable_reg_pp1_iter2),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter3_reg
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(ap_enable_reg_pp1_iter2),
        .Q(ap_enable_reg_pp1_iter3),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter4_reg
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(ap_enable_reg_pp1_iter3),
        .Q(ap_enable_reg_pp1_iter4),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h00A088A0)) 
    ap_enable_reg_pp1_iter5_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp1_iter5_reg_n_0),
        .I2(ap_enable_reg_pp1_iter4),
        .I3(ap_block_pp1_stage0_11001),
        .I4(ap_CS_fsm_state4),
        .O(ap_enable_reg_pp1_iter5_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter5_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter5_i_1_n_0),
        .Q(ap_enable_reg_pp1_iter5_reg_n_0),
        .R(1'b0));
  FDRE \bias_en_V_read_reg_1225_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(bias_en_V),
        .Q(bias_en_V_read_reg_1225),
        .R(1'b0));
  FDRE \fold_input_ch_V_read_reg_1241_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(fold_input_ch_V[0]),
        .Q(fold_input_ch_V_read_reg_1241[0]),
        .R(1'b0));
  FDRE \fold_input_ch_V_read_reg_1241_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(fold_input_ch_V[1]),
        .Q(fold_input_ch_V_read_reg_1241[1]),
        .R(1'b0));
  FDRE \fold_input_ch_V_read_reg_1241_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(fold_input_ch_V[2]),
        .Q(fold_input_ch_V_read_reg_1241[2]),
        .R(1'b0));
  FDRE \fold_input_ch_V_read_reg_1241_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(fold_input_ch_V[3]),
        .Q(fold_input_ch_V_read_reg_1241[3]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_post_process_unit grp_post_process_unit_fu_403
       (.CO(grp_post_process_unit_fu_403_n_17),
        .D(grp_post_process_unit_fu_403_ap_return),
        .DOADO(bias_V_int_reg_6),
        .O(p_Result_8_fu_98_p3),
        .Q(data_in_V_int_reg),
        .Range2_all_ones_reg_4060(Range2_all_ones_reg_4060),
        .S(kernel_bias_fp_0_V_U_n_94),
        .\activated_output_V_reg_380_reg[15]_0 (kernel_bias_fp_0_V_U_n_60),
        .\activated_output_V_reg_380_reg[15]_1 ({kernel_bias_fp_0_V_U_n_74,kernel_bias_fp_0_V_U_n_75,kernel_bias_fp_0_V_U_n_76,kernel_bias_fp_0_V_U_n_77}),
        .ap_ce_reg(ap_ce_reg),
        .ap_clk(ap_clk),
        .bias_en_V_read_reg_369_pp0_iter1_reg(bias_en_V_read_reg_369_pp0_iter1_reg),
        .\data_in_V_int_reg_reg[15]_0 ({\output_acc_0_V_reg_1346_reg_n_0_[15] ,\output_acc_0_V_reg_1346_reg_n_0_[14] ,\output_acc_0_V_reg_1346_reg_n_0_[13] ,\output_acc_0_V_reg_1346_reg_n_0_[12] ,\output_acc_0_V_reg_1346_reg_n_0_[11] ,\output_acc_0_V_reg_1346_reg_n_0_[10] ,\output_acc_0_V_reg_1346_reg_n_0_[9] ,\output_acc_0_V_reg_1346_reg_n_0_[8] ,\output_acc_0_V_reg_1346_reg_n_0_[7] ,\output_acc_0_V_reg_1346_reg_n_0_[6] ,\output_acc_0_V_reg_1346_reg_n_0_[5] ,\output_acc_0_V_reg_1346_reg_n_0_[4] ,\output_acc_0_V_reg_1346_reg_n_0_[3] ,\output_acc_0_V_reg_1346_reg_n_0_[2] ,\output_acc_0_V_reg_1346_reg_n_0_[1] ,\output_acc_0_V_reg_1346_reg_n_0_[0] }),
        .grp_post_process_unit_fu_403_ap_ce(grp_post_process_unit_fu_403_ap_ce),
        .leaky_V_read_reg_364_pp0_iter1_reg(leaky_V_read_reg_364_pp0_iter1_reg),
        .ret_V_fu_78_p2_carry__0_0({kernel_bias_fp_0_V_U_n_62,kernel_bias_fp_0_V_U_n_63,kernel_bias_fp_0_V_U_n_64,kernel_bias_fp_0_V_U_n_65}),
        .ret_V_fu_78_p2_carry__1_0({kernel_bias_fp_0_V_U_n_66,kernel_bias_fp_0_V_U_n_67,kernel_bias_fp_0_V_U_n_68,kernel_bias_fp_0_V_U_n_69}),
        .ret_V_fu_78_p2_carry__2_0({kernel_bias_fp_0_V_U_n_70,kernel_bias_fp_0_V_U_n_71,kernel_bias_fp_0_V_U_n_72,kernel_bias_fp_0_V_U_n_73}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_post_process_unit_0 grp_post_process_unit_fu_412
       (.CO(grp_post_process_unit_fu_412_n_17),
        .D(grp_post_process_unit_fu_412_ap_return),
        .DOADO(bias_V_int_reg_8),
        .O(p_Result_8_fu_98_p3_0),
        .Q(data_in_V_int_reg_1),
        .Range2_all_ones_reg_4060(Range2_all_ones_reg_4060),
        .S(kernel_bias_fp_1_V_U_n_103),
        .\activated_output_V_reg_380_reg[15]_0 (kernel_bias_fp_1_V_U_n_65),
        .\activated_output_V_reg_380_reg[15]_1 ({kernel_bias_fp_1_V_U_n_83,kernel_bias_fp_1_V_U_n_84,kernel_bias_fp_1_V_U_n_85,kernel_bias_fp_1_V_U_n_86}),
        .ap_ce_reg(ap_ce_reg),
        .ap_clk(ap_clk),
        .bias_en_V_read_reg_369_pp0_iter1_reg(bias_en_V_read_reg_369_pp0_iter1_reg),
        .\data_in_V_int_reg_reg[15]_0 ({\output_acc_1_V_reg_1351_reg_n_0_[15] ,\output_acc_1_V_reg_1351_reg_n_0_[14] ,\output_acc_1_V_reg_1351_reg_n_0_[13] ,\output_acc_1_V_reg_1351_reg_n_0_[12] ,\output_acc_1_V_reg_1351_reg_n_0_[11] ,\output_acc_1_V_reg_1351_reg_n_0_[10] ,\output_acc_1_V_reg_1351_reg_n_0_[9] ,\output_acc_1_V_reg_1351_reg_n_0_[8] ,\output_acc_1_V_reg_1351_reg_n_0_[7] ,\output_acc_1_V_reg_1351_reg_n_0_[6] ,\output_acc_1_V_reg_1351_reg_n_0_[5] ,\output_acc_1_V_reg_1351_reg_n_0_[4] ,\output_acc_1_V_reg_1351_reg_n_0_[3] ,\output_acc_1_V_reg_1351_reg_n_0_[2] ,\output_acc_1_V_reg_1351_reg_n_0_[1] ,\output_acc_1_V_reg_1351_reg_n_0_[0] }),
        .grp_post_process_unit_fu_403_ap_ce(grp_post_process_unit_fu_403_ap_ce),
        .leaky_V_read_reg_364_pp0_iter1_reg(leaky_V_read_reg_364_pp0_iter1_reg),
        .ret_V_fu_78_p2_carry__0_0({kernel_bias_fp_1_V_U_n_71,kernel_bias_fp_1_V_U_n_72,kernel_bias_fp_1_V_U_n_73,kernel_bias_fp_1_V_U_n_74}),
        .ret_V_fu_78_p2_carry__1_0({kernel_bias_fp_1_V_U_n_75,kernel_bias_fp_1_V_U_n_76,kernel_bias_fp_1_V_U_n_77,kernel_bias_fp_1_V_U_n_78}),
        .ret_V_fu_78_p2_carry__2_0({kernel_bias_fp_1_V_U_n_79,kernel_bias_fp_1_V_U_n_80,kernel_bias_fp_1_V_U_n_81,kernel_bias_fp_1_V_U_n_82}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_post_process_unit_1 grp_post_process_unit_fu_421
       (.CO(grp_post_process_unit_fu_421_n_17),
        .D(grp_post_process_unit_fu_421_ap_return),
        .DOBDO(bias_V_int_reg),
        .O(p_Result_8_fu_98_p3_2),
        .Q(data_in_V_int_reg_3),
        .Range2_all_ones_reg_4060(Range2_all_ones_reg_4060),
        .S(kernel_bias_fp_0_V_U_n_95),
        .\activated_output_V_reg_380_reg[15]_0 (kernel_bias_fp_0_V_U_n_61),
        .\activated_output_V_reg_380_reg[15]_1 ({kernel_bias_fp_0_V_U_n_90,kernel_bias_fp_0_V_U_n_91,kernel_bias_fp_0_V_U_n_92,kernel_bias_fp_0_V_U_n_93}),
        .ap_ce_reg(ap_ce_reg),
        .ap_clk(ap_clk),
        .bias_en_V_read_reg_369_pp0_iter1_reg(bias_en_V_read_reg_369_pp0_iter1_reg),
        .\data_in_V_int_reg_reg[15]_0 ({\output_acc_2_V_reg_1356_reg_n_0_[15] ,\output_acc_2_V_reg_1356_reg_n_0_[14] ,\output_acc_2_V_reg_1356_reg_n_0_[13] ,\output_acc_2_V_reg_1356_reg_n_0_[12] ,\output_acc_2_V_reg_1356_reg_n_0_[11] ,\output_acc_2_V_reg_1356_reg_n_0_[10] ,\output_acc_2_V_reg_1356_reg_n_0_[9] ,\output_acc_2_V_reg_1356_reg_n_0_[8] ,\output_acc_2_V_reg_1356_reg_n_0_[7] ,\output_acc_2_V_reg_1356_reg_n_0_[6] ,\output_acc_2_V_reg_1356_reg_n_0_[5] ,\output_acc_2_V_reg_1356_reg_n_0_[4] ,\output_acc_2_V_reg_1356_reg_n_0_[3] ,\output_acc_2_V_reg_1356_reg_n_0_[2] ,\output_acc_2_V_reg_1356_reg_n_0_[1] ,\output_acc_2_V_reg_1356_reg_n_0_[0] }),
        .grp_post_process_unit_fu_403_ap_ce(grp_post_process_unit_fu_403_ap_ce),
        .leaky_V_read_reg_364_pp0_iter1_reg(leaky_V_read_reg_364_pp0_iter1_reg),
        .ret_V_fu_78_p2_carry__0_0({kernel_bias_fp_0_V_U_n_78,kernel_bias_fp_0_V_U_n_79,kernel_bias_fp_0_V_U_n_80,kernel_bias_fp_0_V_U_n_81}),
        .ret_V_fu_78_p2_carry__1_0({kernel_bias_fp_0_V_U_n_82,kernel_bias_fp_0_V_U_n_83,kernel_bias_fp_0_V_U_n_84,kernel_bias_fp_0_V_U_n_85}),
        .ret_V_fu_78_p2_carry__2_0({kernel_bias_fp_0_V_U_n_86,kernel_bias_fp_0_V_U_n_87,kernel_bias_fp_0_V_U_n_88,kernel_bias_fp_0_V_U_n_89}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_post_process_unit_2 grp_post_process_unit_fu_430
       (.CO(grp_post_process_unit_fu_430_n_22),
        .D(grp_post_process_unit_fu_430_ap_return),
        .DOBDO(bias_V_int_reg_7),
        .O(p_Result_8_fu_98_p3_4),
        .P({mul_ln1354_1_reg_1287_reg_n_84,mul_ln1354_1_reg_1287_reg_n_85,mul_ln1354_1_reg_1287_reg_n_86,mul_ln1354_1_reg_1287_reg_n_87,mul_ln1354_1_reg_1287_reg_n_88,mul_ln1354_1_reg_1287_reg_n_89,mul_ln1354_1_reg_1287_reg_n_90,mul_ln1354_1_reg_1287_reg_n_91,mul_ln1354_1_reg_1287_reg_n_92,mul_ln1354_1_reg_1287_reg_n_93,mul_ln1354_1_reg_1287_reg_n_94,mul_ln1354_1_reg_1287_reg_n_95,mul_ln1354_1_reg_1287_reg_n_96,mul_ln1354_1_reg_1287_reg_n_97,mul_ln1354_1_reg_1287_reg_n_98,mul_ln1354_1_reg_1287_reg_n_99,mul_ln1354_1_reg_1287_reg_n_100,mul_ln1354_1_reg_1287_reg_n_101,mul_ln1354_1_reg_1287_reg_n_102,mul_ln1354_1_reg_1287_reg_n_103,mul_ln1354_1_reg_1287_reg_n_104,mul_ln1354_1_reg_1287_reg_n_105}),
        .Q(data_in_V_int_reg_5),
        .Range2_all_ones_reg_4060(Range2_all_ones_reg_4060),
        .S(kernel_bias_fp_1_V_U_n_104),
        .\activated_output_V_reg_380_reg[15]_0 (kernel_bias_fp_1_V_U_n_66),
        .\activated_output_V_reg_380_reg[15]_1 ({kernel_bias_fp_1_V_U_n_99,kernel_bias_fp_1_V_U_n_100,kernel_bias_fp_1_V_U_n_101,kernel_bias_fp_1_V_U_n_102}),
        .ap_block_pp1_stage0_11001(ap_block_pp1_stage0_11001),
        .ap_ce_reg(ap_ce_reg),
        .ap_ce_reg_reg_0(ap_CS_fsm_pp1_stage0),
        .ap_ce_reg_reg_1(\inStream_b_V_data_0_state_reg_n_0_[0] ),
        .ap_ce_reg_reg_2(\inStream_a_V_data_0_state_reg_n_0_[0] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp1_iter0(ap_enable_reg_pp1_iter0),
        .ap_enable_reg_pp1_iter4(ap_enable_reg_pp1_iter4),
        .bias_en_V_read_reg_1225(bias_en_V_read_reg_1225),
        .bias_en_V_read_reg_369_pp0_iter1_reg(bias_en_V_read_reg_369_pp0_iter1_reg),
        .\data_in_V_int_reg_reg[15]_0 ({\output_acc_3_V_reg_1361_reg_n_0_[15] ,\output_acc_3_V_reg_1361_reg_n_0_[14] ,\output_acc_3_V_reg_1361_reg_n_0_[13] ,\output_acc_3_V_reg_1361_reg_n_0_[12] ,\output_acc_3_V_reg_1361_reg_n_0_[11] ,\output_acc_3_V_reg_1361_reg_n_0_[10] ,\output_acc_3_V_reg_1361_reg_n_0_[9] ,\output_acc_3_V_reg_1361_reg_n_0_[8] ,\output_acc_3_V_reg_1361_reg_n_0_[7] ,\output_acc_3_V_reg_1361_reg_n_0_[6] ,\output_acc_3_V_reg_1361_reg_n_0_[5] ,\output_acc_3_V_reg_1361_reg_n_0_[4] ,\output_acc_3_V_reg_1361_reg_n_0_[3] ,\output_acc_3_V_reg_1361_reg_n_0_[2] ,\output_acc_3_V_reg_1361_reg_n_0_[1] ,\output_acc_3_V_reg_1361_reg_n_0_[0] }),
        .grp_post_process_unit_fu_403_ap_ce(grp_post_process_unit_fu_403_ap_ce),
        .\icmp_ln40_reg_1302_pp1_iter3_reg_reg[0] (grp_post_process_unit_fu_430_n_26),
        .icmp_ln40_reg_1302_pp1_iter4_reg(icmp_ln40_reg_1302_pp1_iter4_reg),
        .\icmp_ln40_reg_1302_pp1_iter4_reg_reg[0] (grp_post_process_unit_fu_430_n_24),
        .indvar_flatten17_reg_348_reg(indvar_flatten17_reg_348_reg),
        .leaky_V_read_reg_1233(leaky_V_read_reg_1233),
        .leaky_V_read_reg_364_pp0_iter1_reg(leaky_V_read_reg_364_pp0_iter1_reg),
        .mul_ln1354_1_reg_1287_reg(ap_condition_pp1_exit_iter0_state5),
        .outStream_V_data_1_ack_in(outStream_V_data_1_ack_in),
        .\output_acc_3_V_reg_1361_reg[15] (\icmp_ln40_reg_1302_pp1_iter3_reg_reg_n_0_[0] ),
        .\output_acc_3_V_reg_1361_reg[15]_0 (ap_enable_reg_pp1_iter5_reg_n_0),
        .ret_V_fu_78_p2_carry__0_0({kernel_bias_fp_1_V_U_n_87,kernel_bias_fp_1_V_U_n_88,kernel_bias_fp_1_V_U_n_89,kernel_bias_fp_1_V_U_n_90}),
        .ret_V_fu_78_p2_carry__1_0({kernel_bias_fp_1_V_U_n_91,kernel_bias_fp_1_V_U_n_92,kernel_bias_fp_1_V_U_n_93,kernel_bias_fp_1_V_U_n_94}),
        .ret_V_fu_78_p2_carry__2_0({kernel_bias_fp_1_V_U_n_95,kernel_bias_fp_1_V_U_n_96,kernel_bias_fp_1_V_U_n_97,kernel_bias_fp_1_V_U_n_98}));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hFA8A)) 
    \i_op_assign_1_reg_381[0]_i_1 
       (.I0(\i_op_assign_1_reg_381[8]_i_4_n_0 ),
        .I1(p_0_in4_in),
        .I2(i_op_assign_1_reg_381[0]),
        .I3(\i_op_assign_1_reg_381[8]_i_5_n_0 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'hFF201020)) 
    \i_op_assign_1_reg_381[1]_i_1 
       (.I0(i_op_assign_1_reg_381[0]),
        .I1(p_0_in4_in),
        .I2(\i_op_assign_1_reg_381[8]_i_4_n_0 ),
        .I3(i_op_assign_1_reg_381[1]),
        .I4(\i_op_assign_1_reg_381[8]_i_5_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFF400015004000)) 
    \i_op_assign_1_reg_381[2]_i_1 
       (.I0(p_0_in4_in),
        .I1(i_op_assign_1_reg_381[0]),
        .I2(i_op_assign_1_reg_381[1]),
        .I3(\i_op_assign_1_reg_381[8]_i_4_n_0 ),
        .I4(i_op_assign_1_reg_381[2]),
        .I5(\i_op_assign_1_reg_381[8]_i_5_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFAAAF000AAEEF000)) 
    \i_op_assign_1_reg_381[3]_i_1 
       (.I0(\i_op_assign_1_reg_381[8]_i_5_n_0 ),
        .I1(p_228_in),
        .I2(\i_op_assign_1_reg_381[8]_i_4_n_0 ),
        .I3(\i_op_assign_1_reg_381[4]_i_2_n_0 ),
        .I4(i_op_assign_1_reg_381[3]),
        .I5(p_0_in4_in),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFF080007000800)) 
    \i_op_assign_1_reg_381[4]_i_1 
       (.I0(\i_op_assign_1_reg_381[4]_i_2_n_0 ),
        .I1(i_op_assign_1_reg_381[3]),
        .I2(p_0_in4_in),
        .I3(\i_op_assign_1_reg_381[8]_i_4_n_0 ),
        .I4(i_op_assign_1_reg_381[4]),
        .I5(\i_op_assign_1_reg_381[8]_i_5_n_0 ),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'h0080)) 
    \i_op_assign_1_reg_381[4]_i_2 
       (.I0(i_op_assign_1_reg_381[2]),
        .I1(i_op_assign_1_reg_381[1]),
        .I2(i_op_assign_1_reg_381[0]),
        .I3(p_0_in4_in),
        .O(\i_op_assign_1_reg_381[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFC090C0)) 
    \i_op_assign_1_reg_381[5]_i_1 
       (.I0(p_0_in4_in),
        .I1(\i_op_assign_1_reg_381[5]_i_2_n_0 ),
        .I2(\i_op_assign_1_reg_381[8]_i_4_n_0 ),
        .I3(i_op_assign_1_reg_381[5]),
        .I4(\i_op_assign_1_reg_381[8]_i_5_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \i_op_assign_1_reg_381[5]_i_2 
       (.I0(i_op_assign_1_reg_381[3]),
        .I1(i_op_assign_1_reg_381[4]),
        .I2(p_0_in4_in),
        .I3(i_op_assign_1_reg_381[0]),
        .I4(i_op_assign_1_reg_381[1]),
        .I5(i_op_assign_1_reg_381[2]),
        .O(\i_op_assign_1_reg_381[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC0000CCCC00AA)) 
    \i_op_assign_1_reg_381[6]_i_1 
       (.I0(\i_op_assign_1_reg_381[8]_i_4_n_0 ),
        .I1(\i_op_assign_1_reg_381[8]_i_5_n_0 ),
        .I2(p_228_in),
        .I3(p_0_in4_in),
        .I4(i_op_assign_1_reg_381[6]),
        .I5(\i_op_assign_1_reg_381[6]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \i_op_assign_1_reg_381[6]_i_2 
       (.I0(\i_op_assign_1_reg_381[4]_i_2_n_0 ),
        .I1(i_op_assign_1_reg_381[4]),
        .I2(i_op_assign_1_reg_381[3]),
        .I3(p_0_in4_in),
        .I4(i_op_assign_1_reg_381[5]),
        .O(\i_op_assign_1_reg_381[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF102010)) 
    \i_op_assign_1_reg_381[7]_i_1 
       (.I0(\i_op_assign_1_reg_381[8]_i_3_n_0 ),
        .I1(p_0_in4_in),
        .I2(\i_op_assign_1_reg_381[8]_i_4_n_0 ),
        .I3(i_op_assign_1_reg_381[7]),
        .I4(\i_op_assign_1_reg_381[8]_i_5_n_0 ),
        .O(p_1_in[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \i_op_assign_1_reg_381[8]_i_1 
       (.I0(p_228_in),
        .I1(ap_CS_fsm_state4),
        .O(\i_op_assign_1_reg_381[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF020031000200)) 
    \i_op_assign_1_reg_381[8]_i_2 
       (.I0(i_op_assign_1_reg_381[7]),
        .I1(p_0_in4_in),
        .I2(\i_op_assign_1_reg_381[8]_i_3_n_0 ),
        .I3(\i_op_assign_1_reg_381[8]_i_4_n_0 ),
        .I4(i_op_assign_1_reg_381[8]),
        .I5(\i_op_assign_1_reg_381[8]_i_5_n_0 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \i_op_assign_1_reg_381[8]_i_3 
       (.I0(i_op_assign_1_reg_381[5]),
        .I1(p_0_in4_in),
        .I2(i_op_assign_1_reg_381[3]),
        .I3(i_op_assign_1_reg_381[4]),
        .I4(\i_op_assign_1_reg_381[4]_i_2_n_0 ),
        .I5(i_op_assign_1_reg_381[6]),
        .O(\i_op_assign_1_reg_381[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAC3AA0000000000)) 
    \i_op_assign_1_reg_381[8]_i_4 
       (.I0(\icmp_ln46_reg_1297_reg_n_0_[0] ),
        .I1(\i_op_assign_2_reg_392_reg_n_0_[3] ),
        .I2(fold_input_ch_V_read_reg_1241[3]),
        .I3(p_0_in4_in),
        .I4(kernel_bias_fp_1_V_U_n_70),
        .I5(p_228_in),
        .O(\i_op_assign_1_reg_381[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i_op_assign_1_reg_381[8]_i_5 
       (.I0(p_228_in),
        .I1(kernel_bias_fp_1_V_U_n_69),
        .O(\i_op_assign_1_reg_381[8]_i_5_n_0 ));
  FDRE \i_op_assign_1_reg_381_reg[0] 
       (.C(ap_clk),
        .CE(\i_op_assign_1_reg_381[8]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(i_op_assign_1_reg_381[0]),
        .R(1'b0));
  FDRE \i_op_assign_1_reg_381_reg[1] 
       (.C(ap_clk),
        .CE(\i_op_assign_1_reg_381[8]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(i_op_assign_1_reg_381[1]),
        .R(1'b0));
  FDRE \i_op_assign_1_reg_381_reg[2] 
       (.C(ap_clk),
        .CE(\i_op_assign_1_reg_381[8]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(i_op_assign_1_reg_381[2]),
        .R(1'b0));
  FDRE \i_op_assign_1_reg_381_reg[3] 
       (.C(ap_clk),
        .CE(\i_op_assign_1_reg_381[8]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(i_op_assign_1_reg_381[3]),
        .R(1'b0));
  FDRE \i_op_assign_1_reg_381_reg[4] 
       (.C(ap_clk),
        .CE(\i_op_assign_1_reg_381[8]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(i_op_assign_1_reg_381[4]),
        .R(1'b0));
  FDRE \i_op_assign_1_reg_381_reg[5] 
       (.C(ap_clk),
        .CE(\i_op_assign_1_reg_381[8]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(i_op_assign_1_reg_381[5]),
        .R(1'b0));
  FDRE \i_op_assign_1_reg_381_reg[6] 
       (.C(ap_clk),
        .CE(\i_op_assign_1_reg_381[8]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(i_op_assign_1_reg_381[6]),
        .R(1'b0));
  FDRE \i_op_assign_1_reg_381_reg[7] 
       (.C(ap_clk),
        .CE(\i_op_assign_1_reg_381[8]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(i_op_assign_1_reg_381[7]),
        .R(1'b0));
  FDRE \i_op_assign_1_reg_381_reg[8] 
       (.C(ap_clk),
        .CE(\i_op_assign_1_reg_381[8]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(i_op_assign_1_reg_381[8]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \i_op_assign_2_reg_392[0]_i_1 
       (.I0(kernel_bias_fp_1_V_U_n_69),
        .I1(\i_op_assign_2_reg_392_reg_n_0_[0] ),
        .O(input_ch_idx_fu_1186_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_op_assign_2_reg_392[1]_i_1 
       (.I0(\i_op_assign_2_reg_392_reg_n_0_[1] ),
        .I1(kernel_bias_fp_1_V_U_n_69),
        .I2(\i_op_assign_2_reg_392_reg_n_0_[0] ),
        .O(input_ch_idx_fu_1186_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \i_op_assign_2_reg_392[2]_i_1 
       (.I0(kernel_bias_fp_1_V_U_n_69),
        .I1(\i_op_assign_2_reg_392_reg_n_0_[0] ),
        .I2(\i_op_assign_2_reg_392_reg_n_0_[1] ),
        .I3(\i_op_assign_2_reg_392_reg_n_0_[2] ),
        .O(input_ch_idx_fu_1186_p2[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \i_op_assign_2_reg_392[3]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(p_228_in),
        .O(i_op_assign_2_reg_392));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h070F0800)) 
    \i_op_assign_2_reg_392[3]_i_2 
       (.I0(\i_op_assign_2_reg_392_reg_n_0_[1] ),
        .I1(\i_op_assign_2_reg_392_reg_n_0_[0] ),
        .I2(kernel_bias_fp_1_V_U_n_69),
        .I3(\i_op_assign_2_reg_392_reg_n_0_[2] ),
        .I4(\i_op_assign_2_reg_392_reg_n_0_[3] ),
        .O(input_ch_idx_fu_1186_p2[3]));
  FDRE \i_op_assign_2_reg_392_reg[0] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(input_ch_idx_fu_1186_p2[0]),
        .Q(\i_op_assign_2_reg_392_reg_n_0_[0] ),
        .R(i_op_assign_2_reg_392));
  FDRE \i_op_assign_2_reg_392_reg[1] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(input_ch_idx_fu_1186_p2[1]),
        .Q(\i_op_assign_2_reg_392_reg_n_0_[1] ),
        .R(i_op_assign_2_reg_392));
  FDRE \i_op_assign_2_reg_392_reg[2] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(input_ch_idx_fu_1186_p2[2]),
        .Q(\i_op_assign_2_reg_392_reg_n_0_[2] ),
        .R(i_op_assign_2_reg_392));
  FDRE \i_op_assign_2_reg_392_reg[3] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(input_ch_idx_fu_1186_p2[3]),
        .Q(\i_op_assign_2_reg_392_reg_n_0_[3] ),
        .R(i_op_assign_2_reg_392));
  LUT1 #(
    .INIT(2'h1)) 
    \i_op_assign_reg_359[0]_i_1 
       (.I0(i_op_assign_reg_359_reg[0]),
        .O(zext_ln43_1_fu_619_p1__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_op_assign_reg_359[1]_i_1 
       (.I0(i_op_assign_reg_359_reg[0]),
        .I1(i_op_assign_reg_359_reg[1]),
        .O(zext_ln43_1_fu_619_p1__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i_op_assign_reg_359[2]_i_1 
       (.I0(i_op_assign_reg_359_reg[0]),
        .I1(i_op_assign_reg_359_reg[1]),
        .I2(i_op_assign_reg_359_reg[2]),
        .O(zext_ln43_1_fu_619_p1__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i_op_assign_reg_359[3]_i_1 
       (.I0(i_op_assign_reg_359_reg[1]),
        .I1(i_op_assign_reg_359_reg[0]),
        .I2(i_op_assign_reg_359_reg[2]),
        .I3(i_op_assign_reg_359_reg[3]),
        .O(zext_ln43_1_fu_619_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \i_op_assign_reg_359[4]_i_1 
       (.I0(i_op_assign_reg_359_reg[3]),
        .I1(i_op_assign_reg_359_reg[2]),
        .I2(i_op_assign_reg_359_reg[0]),
        .I3(i_op_assign_reg_359_reg[1]),
        .I4(i_op_assign_reg_359_reg[4]),
        .O(zext_ln43_1_fu_619_p1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \i_op_assign_reg_359[5]_i_1 
       (.I0(i_op_assign_reg_359_reg[4]),
        .I1(i_op_assign_reg_359_reg[1]),
        .I2(i_op_assign_reg_359_reg[0]),
        .I3(i_op_assign_reg_359_reg[2]),
        .I4(i_op_assign_reg_359_reg[3]),
        .I5(i_op_assign_reg_359_reg[5]),
        .O(zext_ln43_1_fu_619_p1[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \i_op_assign_reg_359[6]_i_1 
       (.I0(\i_op_assign_reg_359[8]_i_3_n_0 ),
        .I1(i_op_assign_reg_359_reg[6]),
        .O(zext_ln43_1_fu_619_p1[6]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \i_op_assign_reg_359[7]_i_1 
       (.I0(\i_op_assign_reg_359[8]_i_3_n_0 ),
        .I1(i_op_assign_reg_359_reg[6]),
        .I2(i_op_assign_reg_359_reg[7]),
        .O(zext_ln43_1_fu_619_p1[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \i_op_assign_reg_359[8]_i_1 
       (.I0(p_228_in),
        .I1(p_0_in4_in),
        .O(i_op_assign_reg_359));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \i_op_assign_reg_359[8]_i_2 
       (.I0(i_op_assign_reg_359_reg[7]),
        .I1(i_op_assign_reg_359_reg[6]),
        .I2(\i_op_assign_reg_359[8]_i_3_n_0 ),
        .I3(i_op_assign_reg_359_reg[8]),
        .O(zext_ln43_1_fu_619_p1[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \i_op_assign_reg_359[8]_i_3 
       (.I0(i_op_assign_reg_359_reg[4]),
        .I1(i_op_assign_reg_359_reg[1]),
        .I2(i_op_assign_reg_359_reg[0]),
        .I3(i_op_assign_reg_359_reg[2]),
        .I4(i_op_assign_reg_359_reg[3]),
        .I5(i_op_assign_reg_359_reg[5]),
        .O(\i_op_assign_reg_359[8]_i_3_n_0 ));
  FDRE \i_op_assign_reg_359_reg[0] 
       (.C(ap_clk),
        .CE(i_op_assign_reg_359),
        .D(zext_ln43_1_fu_619_p1__0[0]),
        .Q(i_op_assign_reg_359_reg[0]),
        .R(i_op_assign_2_reg_392));
  FDRE \i_op_assign_reg_359_reg[1] 
       (.C(ap_clk),
        .CE(i_op_assign_reg_359),
        .D(zext_ln43_1_fu_619_p1__0[1]),
        .Q(i_op_assign_reg_359_reg[1]),
        .R(i_op_assign_2_reg_392));
  FDRE \i_op_assign_reg_359_reg[2] 
       (.C(ap_clk),
        .CE(i_op_assign_reg_359),
        .D(zext_ln43_1_fu_619_p1__0[2]),
        .Q(i_op_assign_reg_359_reg[2]),
        .R(i_op_assign_2_reg_392));
  FDRE \i_op_assign_reg_359_reg[3] 
       (.C(ap_clk),
        .CE(i_op_assign_reg_359),
        .D(zext_ln43_1_fu_619_p1[3]),
        .Q(i_op_assign_reg_359_reg[3]),
        .R(i_op_assign_2_reg_392));
  FDRE \i_op_assign_reg_359_reg[4] 
       (.C(ap_clk),
        .CE(i_op_assign_reg_359),
        .D(zext_ln43_1_fu_619_p1[4]),
        .Q(i_op_assign_reg_359_reg[4]),
        .R(i_op_assign_2_reg_392));
  FDRE \i_op_assign_reg_359_reg[5] 
       (.C(ap_clk),
        .CE(i_op_assign_reg_359),
        .D(zext_ln43_1_fu_619_p1[5]),
        .Q(i_op_assign_reg_359_reg[5]),
        .R(i_op_assign_2_reg_392));
  FDRE \i_op_assign_reg_359_reg[6] 
       (.C(ap_clk),
        .CE(i_op_assign_reg_359),
        .D(zext_ln43_1_fu_619_p1[6]),
        .Q(i_op_assign_reg_359_reg[6]),
        .R(i_op_assign_2_reg_392));
  FDRE \i_op_assign_reg_359_reg[7] 
       (.C(ap_clk),
        .CE(i_op_assign_reg_359),
        .D(zext_ln43_1_fu_619_p1[7]),
        .Q(i_op_assign_reg_359_reg[7]),
        .R(i_op_assign_2_reg_392));
  FDRE \i_op_assign_reg_359_reg[8] 
       (.C(ap_clk),
        .CE(i_op_assign_reg_359),
        .D(zext_ln43_1_fu_619_p1[8]),
        .Q(i_op_assign_reg_359_reg[8]),
        .R(i_op_assign_2_reg_392));
  FDRE \icmp_ln40_reg_1302_pp1_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(icmp_ln40_reg_1302),
        .Q(icmp_ln40_reg_1302_pp1_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln40_reg_1302_pp1_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(icmp_ln40_reg_1302_pp1_iter1_reg),
        .Q(icmp_ln40_reg_1302_pp1_iter2_reg),
        .R(1'b0));
  FDRE \icmp_ln40_reg_1302_pp1_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(icmp_ln40_reg_1302_pp1_iter2_reg),
        .Q(\icmp_ln40_reg_1302_pp1_iter3_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \icmp_ln40_reg_1302_pp1_iter4_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(\icmp_ln40_reg_1302_pp1_iter3_reg_reg_n_0_[0] ),
        .Q(icmp_ln40_reg_1302_pp1_iter4_reg),
        .R(1'b0));
  FDRE \icmp_ln40_reg_1302_reg[0] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(ap_condition_pp1_exit_iter0_state5),
        .Q(icmp_ln40_reg_1302),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \icmp_ln46_reg_1297[0]_i_1 
       (.I0(fold_input_ch_V_read_reg_1241[3]),
        .I1(fold_input_ch_V_read_reg_1241[2]),
        .I2(fold_input_ch_V_read_reg_1241[1]),
        .I3(fold_input_ch_V_read_reg_1241[0]),
        .I4(ap_CS_fsm_state4),
        .I5(\icmp_ln46_reg_1297_reg_n_0_[0] ),
        .O(\icmp_ln46_reg_1297[0]_i_1_n_0 ));
  FDRE \icmp_ln46_reg_1297_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln46_reg_1297[0]_i_1_n_0 ),
        .Q(\icmp_ln46_reg_1297_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0D)) 
    \inStream_a_V_data_0_payload_A[63]_i_1 
       (.I0(\inStream_a_V_data_0_state_reg_n_0_[0] ),
        .I1(\inStream_a_V_data_0_state_reg_n_0_[1] ),
        .I2(inStream_a_V_data_0_sel_wr),
        .O(inStream_a_V_data_0_load_A));
  FDRE \inStream_a_V_data_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[0]),
        .Q(inStream_a_V_data_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[10]),
        .Q(inStream_a_V_data_0_payload_A[10]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[11]),
        .Q(inStream_a_V_data_0_payload_A[11]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[12]),
        .Q(inStream_a_V_data_0_payload_A[12]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[13]),
        .Q(inStream_a_V_data_0_payload_A[13]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[14]),
        .Q(inStream_a_V_data_0_payload_A[14]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[15]),
        .Q(inStream_a_V_data_0_payload_A[15]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[16]),
        .Q(inStream_a_V_data_0_payload_A[16]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[17]),
        .Q(inStream_a_V_data_0_payload_A[17]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[18]),
        .Q(inStream_a_V_data_0_payload_A[18]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[19]),
        .Q(inStream_a_V_data_0_payload_A[19]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[1]),
        .Q(inStream_a_V_data_0_payload_A[1]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[20]),
        .Q(inStream_a_V_data_0_payload_A[20]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[21]),
        .Q(inStream_a_V_data_0_payload_A[21]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[22]),
        .Q(inStream_a_V_data_0_payload_A[22]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[23]),
        .Q(inStream_a_V_data_0_payload_A[23]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[24]),
        .Q(inStream_a_V_data_0_payload_A[24]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[25]),
        .Q(inStream_a_V_data_0_payload_A[25]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[26]),
        .Q(inStream_a_V_data_0_payload_A[26]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[27]),
        .Q(inStream_a_V_data_0_payload_A[27]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[28]),
        .Q(inStream_a_V_data_0_payload_A[28]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[29]),
        .Q(inStream_a_V_data_0_payload_A[29]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[2]),
        .Q(inStream_a_V_data_0_payload_A[2]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[30]),
        .Q(inStream_a_V_data_0_payload_A[30]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[31]),
        .Q(inStream_a_V_data_0_payload_A[31]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[32]),
        .Q(inStream_a_V_data_0_payload_A[32]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[33]),
        .Q(inStream_a_V_data_0_payload_A[33]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[34]),
        .Q(inStream_a_V_data_0_payload_A[34]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[35]),
        .Q(inStream_a_V_data_0_payload_A[35]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[36]),
        .Q(inStream_a_V_data_0_payload_A[36]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[37]),
        .Q(inStream_a_V_data_0_payload_A[37]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[38]),
        .Q(inStream_a_V_data_0_payload_A[38]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[39]),
        .Q(inStream_a_V_data_0_payload_A[39]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[3]),
        .Q(inStream_a_V_data_0_payload_A[3]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[40]),
        .Q(inStream_a_V_data_0_payload_A[40]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[41]),
        .Q(inStream_a_V_data_0_payload_A[41]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[42]),
        .Q(inStream_a_V_data_0_payload_A[42]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[43]),
        .Q(inStream_a_V_data_0_payload_A[43]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[44]),
        .Q(inStream_a_V_data_0_payload_A[44]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[45]),
        .Q(inStream_a_V_data_0_payload_A[45]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[46]),
        .Q(inStream_a_V_data_0_payload_A[46]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[47]),
        .Q(inStream_a_V_data_0_payload_A[47]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[48]),
        .Q(inStream_a_V_data_0_payload_A[48]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[49]),
        .Q(inStream_a_V_data_0_payload_A[49]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[4]),
        .Q(inStream_a_V_data_0_payload_A[4]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[50]),
        .Q(inStream_a_V_data_0_payload_A[50]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[51]),
        .Q(inStream_a_V_data_0_payload_A[51]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[52]),
        .Q(inStream_a_V_data_0_payload_A[52]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[53]),
        .Q(inStream_a_V_data_0_payload_A[53]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[54]),
        .Q(inStream_a_V_data_0_payload_A[54]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[55]),
        .Q(inStream_a_V_data_0_payload_A[55]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[56]),
        .Q(inStream_a_V_data_0_payload_A[56]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[57]),
        .Q(inStream_a_V_data_0_payload_A[57]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[58]),
        .Q(inStream_a_V_data_0_payload_A[58]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[59]),
        .Q(inStream_a_V_data_0_payload_A[59]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[5]),
        .Q(inStream_a_V_data_0_payload_A[5]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[60]),
        .Q(inStream_a_V_data_0_payload_A[60]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[61]),
        .Q(inStream_a_V_data_0_payload_A[61]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[62]),
        .Q(inStream_a_V_data_0_payload_A[62]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[63]),
        .Q(inStream_a_V_data_0_payload_A[63]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[6]),
        .Q(inStream_a_V_data_0_payload_A[6]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[7]),
        .Q(inStream_a_V_data_0_payload_A[7]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[8]),
        .Q(inStream_a_V_data_0_payload_A[8]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_A),
        .D(inStream_a_TDATA[9]),
        .Q(inStream_a_V_data_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \inStream_a_V_data_0_payload_B[63]_i_1 
       (.I0(\inStream_a_V_data_0_state_reg_n_0_[0] ),
        .I1(\inStream_a_V_data_0_state_reg_n_0_[1] ),
        .I2(inStream_a_V_data_0_sel_wr),
        .O(inStream_a_V_data_0_load_B));
  FDRE \inStream_a_V_data_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[0]),
        .Q(inStream_a_V_data_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[10]),
        .Q(inStream_a_V_data_0_payload_B[10]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[11]),
        .Q(inStream_a_V_data_0_payload_B[11]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[12]),
        .Q(inStream_a_V_data_0_payload_B[12]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[13]),
        .Q(inStream_a_V_data_0_payload_B[13]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[14]),
        .Q(inStream_a_V_data_0_payload_B[14]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[15]),
        .Q(inStream_a_V_data_0_payload_B[15]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[16]),
        .Q(inStream_a_V_data_0_payload_B[16]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[17]),
        .Q(inStream_a_V_data_0_payload_B[17]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[18]),
        .Q(inStream_a_V_data_0_payload_B[18]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[19]),
        .Q(inStream_a_V_data_0_payload_B[19]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[1]),
        .Q(inStream_a_V_data_0_payload_B[1]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[20]),
        .Q(inStream_a_V_data_0_payload_B[20]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[21]),
        .Q(inStream_a_V_data_0_payload_B[21]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[22]),
        .Q(inStream_a_V_data_0_payload_B[22]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[23]),
        .Q(inStream_a_V_data_0_payload_B[23]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[24]),
        .Q(inStream_a_V_data_0_payload_B[24]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[25]),
        .Q(inStream_a_V_data_0_payload_B[25]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[26]),
        .Q(inStream_a_V_data_0_payload_B[26]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[27]),
        .Q(inStream_a_V_data_0_payload_B[27]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[28]),
        .Q(inStream_a_V_data_0_payload_B[28]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[29]),
        .Q(inStream_a_V_data_0_payload_B[29]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[2]),
        .Q(inStream_a_V_data_0_payload_B[2]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[30]),
        .Q(inStream_a_V_data_0_payload_B[30]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[31]),
        .Q(inStream_a_V_data_0_payload_B[31]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[32]),
        .Q(inStream_a_V_data_0_payload_B[32]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[33]),
        .Q(inStream_a_V_data_0_payload_B[33]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[34]),
        .Q(inStream_a_V_data_0_payload_B[34]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[35]),
        .Q(inStream_a_V_data_0_payload_B[35]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[36]),
        .Q(inStream_a_V_data_0_payload_B[36]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[37]),
        .Q(inStream_a_V_data_0_payload_B[37]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[38]),
        .Q(inStream_a_V_data_0_payload_B[38]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[39]),
        .Q(inStream_a_V_data_0_payload_B[39]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[3]),
        .Q(inStream_a_V_data_0_payload_B[3]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[40]),
        .Q(inStream_a_V_data_0_payload_B[40]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[41]),
        .Q(inStream_a_V_data_0_payload_B[41]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[42]),
        .Q(inStream_a_V_data_0_payload_B[42]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[43]),
        .Q(inStream_a_V_data_0_payload_B[43]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[44]),
        .Q(inStream_a_V_data_0_payload_B[44]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[45]),
        .Q(inStream_a_V_data_0_payload_B[45]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[46]),
        .Q(inStream_a_V_data_0_payload_B[46]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[47]),
        .Q(inStream_a_V_data_0_payload_B[47]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[48]),
        .Q(inStream_a_V_data_0_payload_B[48]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[49]),
        .Q(inStream_a_V_data_0_payload_B[49]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[4]),
        .Q(inStream_a_V_data_0_payload_B[4]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[50]),
        .Q(inStream_a_V_data_0_payload_B[50]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[51]),
        .Q(inStream_a_V_data_0_payload_B[51]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[52]),
        .Q(inStream_a_V_data_0_payload_B[52]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[53]),
        .Q(inStream_a_V_data_0_payload_B[53]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[54]),
        .Q(inStream_a_V_data_0_payload_B[54]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[55]),
        .Q(inStream_a_V_data_0_payload_B[55]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[56]),
        .Q(inStream_a_V_data_0_payload_B[56]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[57]),
        .Q(inStream_a_V_data_0_payload_B[57]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[58]),
        .Q(inStream_a_V_data_0_payload_B[58]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[59]),
        .Q(inStream_a_V_data_0_payload_B[59]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[5]),
        .Q(inStream_a_V_data_0_payload_B[5]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[60]),
        .Q(inStream_a_V_data_0_payload_B[60]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[61]),
        .Q(inStream_a_V_data_0_payload_B[61]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[62]),
        .Q(inStream_a_V_data_0_payload_B[62]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[63]),
        .Q(inStream_a_V_data_0_payload_B[63]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[6]),
        .Q(inStream_a_V_data_0_payload_B[6]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[7]),
        .Q(inStream_a_V_data_0_payload_B[7]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[8]),
        .Q(inStream_a_V_data_0_payload_B[8]),
        .R(1'b0));
  FDRE \inStream_a_V_data_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(inStream_a_V_data_0_load_B),
        .D(inStream_a_TDATA[9]),
        .Q(inStream_a_V_data_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_a_V_data_0_sel_rd_i_1
       (.I0(p_228_in),
        .I1(\inStream_a_V_data_0_state_reg_n_0_[0] ),
        .I2(inStream_a_V_data_0_sel),
        .O(inStream_a_V_data_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_a_V_data_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_data_0_sel_rd_i_1_n_0),
        .Q(inStream_a_V_data_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_a_V_data_0_sel_wr_i_1
       (.I0(inStream_a_TVALID),
        .I1(\inStream_a_V_data_0_state_reg_n_0_[1] ),
        .I2(inStream_a_V_data_0_sel_wr),
        .O(inStream_a_V_data_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_a_V_data_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_data_0_sel_wr_i_1_n_0),
        .Q(inStream_a_V_data_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hD800F800)) 
    \inStream_a_V_data_0_state[0]_i_1 
       (.I0(\inStream_a_V_data_0_state_reg_n_0_[1] ),
        .I1(inStream_a_TVALID),
        .I2(\inStream_a_V_data_0_state_reg_n_0_[0] ),
        .I3(ap_rst_n),
        .I4(p_228_in),
        .O(\inStream_a_V_data_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    \inStream_a_V_data_0_state[1]_i_1 
       (.I0(\inStream_a_V_data_0_state_reg_n_0_[0] ),
        .I1(\inStream_a_V_data_0_state_reg_n_0_[1] ),
        .I2(inStream_a_TVALID),
        .I3(p_228_in),
        .O(inStream_a_V_data_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_a_V_data_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_a_V_data_0_state[0]_i_1_n_0 ),
        .Q(\inStream_a_V_data_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_a_V_data_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_data_0_state),
        .Q(\inStream_a_V_data_0_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \inStream_a_V_dest_V_0_payload_A[5]_i_1 
       (.I0(\inStream_a_V_dest_V_0_state_reg_n_0_[0] ),
        .I1(inStream_a_TREADY),
        .I2(inStream_a_V_dest_V_0_sel_wr),
        .O(inStream_a_V_dest_V_0_load_A));
  FDRE \inStream_a_V_dest_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(inStream_a_V_dest_V_0_load_A),
        .D(inStream_a_TDEST[0]),
        .Q(inStream_a_V_dest_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_a_V_dest_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(inStream_a_V_dest_V_0_load_A),
        .D(inStream_a_TDEST[1]),
        .Q(inStream_a_V_dest_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \inStream_a_V_dest_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(inStream_a_V_dest_V_0_load_A),
        .D(inStream_a_TDEST[2]),
        .Q(inStream_a_V_dest_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \inStream_a_V_dest_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(inStream_a_V_dest_V_0_load_A),
        .D(inStream_a_TDEST[3]),
        .Q(inStream_a_V_dest_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \inStream_a_V_dest_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(inStream_a_V_dest_V_0_load_A),
        .D(inStream_a_TDEST[4]),
        .Q(inStream_a_V_dest_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \inStream_a_V_dest_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(inStream_a_V_dest_V_0_load_A),
        .D(inStream_a_TDEST[5]),
        .Q(inStream_a_V_dest_V_0_payload_A[5]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \inStream_a_V_dest_V_0_payload_B[5]_i_1 
       (.I0(\inStream_a_V_dest_V_0_state_reg_n_0_[0] ),
        .I1(inStream_a_TREADY),
        .I2(inStream_a_V_dest_V_0_sel_wr),
        .O(inStream_a_V_dest_V_0_load_B));
  FDRE \inStream_a_V_dest_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(inStream_a_V_dest_V_0_load_B),
        .D(inStream_a_TDEST[0]),
        .Q(inStream_a_V_dest_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_a_V_dest_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(inStream_a_V_dest_V_0_load_B),
        .D(inStream_a_TDEST[1]),
        .Q(inStream_a_V_dest_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \inStream_a_V_dest_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(inStream_a_V_dest_V_0_load_B),
        .D(inStream_a_TDEST[2]),
        .Q(inStream_a_V_dest_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \inStream_a_V_dest_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(inStream_a_V_dest_V_0_load_B),
        .D(inStream_a_TDEST[3]),
        .Q(inStream_a_V_dest_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \inStream_a_V_dest_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(inStream_a_V_dest_V_0_load_B),
        .D(inStream_a_TDEST[4]),
        .Q(inStream_a_V_dest_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \inStream_a_V_dest_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(inStream_a_V_dest_V_0_load_B),
        .D(inStream_a_TDEST[5]),
        .Q(inStream_a_V_dest_V_0_payload_B[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_a_V_dest_V_0_sel_rd_i_1
       (.I0(p_228_in),
        .I1(\inStream_a_V_dest_V_0_state_reg_n_0_[0] ),
        .I2(inStream_a_V_dest_V_0_sel),
        .O(inStream_a_V_dest_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_a_V_dest_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_dest_V_0_sel_rd_i_1_n_0),
        .Q(inStream_a_V_dest_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_a_V_dest_V_0_sel_wr_i_1
       (.I0(inStream_a_TVALID),
        .I1(inStream_a_TREADY),
        .I2(inStream_a_V_dest_V_0_sel_wr),
        .O(inStream_a_V_dest_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_a_V_dest_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_dest_V_0_sel_wr_i_1_n_0),
        .Q(inStream_a_V_dest_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hD800F800)) 
    \inStream_a_V_dest_V_0_state[0]_i_1 
       (.I0(inStream_a_TREADY),
        .I1(inStream_a_TVALID),
        .I2(\inStream_a_V_dest_V_0_state_reg_n_0_[0] ),
        .I3(ap_rst_n),
        .I4(p_228_in),
        .O(\inStream_a_V_dest_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    \inStream_a_V_dest_V_0_state[1]_i_2 
       (.I0(\inStream_a_V_dest_V_0_state_reg_n_0_[0] ),
        .I1(inStream_a_TREADY),
        .I2(inStream_a_TVALID),
        .I3(p_228_in),
        .O(inStream_a_V_dest_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_a_V_dest_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_a_V_dest_V_0_state[0]_i_1_n_0 ),
        .Q(\inStream_a_V_dest_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_a_V_dest_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_dest_V_0_state),
        .Q(inStream_a_TREADY),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \inStream_a_V_id_V_0_payload_A[4]_i_1 
       (.I0(\inStream_a_V_id_V_0_state_reg_n_0_[0] ),
        .I1(\inStream_a_V_id_V_0_state_reg_n_0_[1] ),
        .I2(inStream_a_V_id_V_0_sel_wr),
        .O(inStream_a_V_id_V_0_load_A));
  FDRE \inStream_a_V_id_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(inStream_a_V_id_V_0_load_A),
        .D(inStream_a_TID[0]),
        .Q(inStream_a_V_id_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_a_V_id_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(inStream_a_V_id_V_0_load_A),
        .D(inStream_a_TID[1]),
        .Q(inStream_a_V_id_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \inStream_a_V_id_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(inStream_a_V_id_V_0_load_A),
        .D(inStream_a_TID[2]),
        .Q(inStream_a_V_id_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \inStream_a_V_id_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(inStream_a_V_id_V_0_load_A),
        .D(inStream_a_TID[3]),
        .Q(inStream_a_V_id_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \inStream_a_V_id_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(inStream_a_V_id_V_0_load_A),
        .D(inStream_a_TID[4]),
        .Q(inStream_a_V_id_V_0_payload_A[4]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \inStream_a_V_id_V_0_payload_B[4]_i_1 
       (.I0(\inStream_a_V_id_V_0_state_reg_n_0_[0] ),
        .I1(\inStream_a_V_id_V_0_state_reg_n_0_[1] ),
        .I2(inStream_a_V_id_V_0_sel_wr),
        .O(inStream_a_V_id_V_0_load_B));
  FDRE \inStream_a_V_id_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(inStream_a_V_id_V_0_load_B),
        .D(inStream_a_TID[0]),
        .Q(inStream_a_V_id_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_a_V_id_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(inStream_a_V_id_V_0_load_B),
        .D(inStream_a_TID[1]),
        .Q(inStream_a_V_id_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \inStream_a_V_id_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(inStream_a_V_id_V_0_load_B),
        .D(inStream_a_TID[2]),
        .Q(inStream_a_V_id_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \inStream_a_V_id_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(inStream_a_V_id_V_0_load_B),
        .D(inStream_a_TID[3]),
        .Q(inStream_a_V_id_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \inStream_a_V_id_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(inStream_a_V_id_V_0_load_B),
        .D(inStream_a_TID[4]),
        .Q(inStream_a_V_id_V_0_payload_B[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_a_V_id_V_0_sel_rd_i_1
       (.I0(p_228_in),
        .I1(\inStream_a_V_id_V_0_state_reg_n_0_[0] ),
        .I2(inStream_a_V_id_V_0_sel),
        .O(inStream_a_V_id_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_a_V_id_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_id_V_0_sel_rd_i_1_n_0),
        .Q(inStream_a_V_id_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_a_V_id_V_0_sel_wr_i_1
       (.I0(inStream_a_TVALID),
        .I1(\inStream_a_V_id_V_0_state_reg_n_0_[1] ),
        .I2(inStream_a_V_id_V_0_sel_wr),
        .O(inStream_a_V_id_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_a_V_id_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_id_V_0_sel_wr_i_1_n_0),
        .Q(inStream_a_V_id_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hD800F800)) 
    \inStream_a_V_id_V_0_state[0]_i_1 
       (.I0(\inStream_a_V_id_V_0_state_reg_n_0_[1] ),
        .I1(inStream_a_TVALID),
        .I2(\inStream_a_V_id_V_0_state_reg_n_0_[0] ),
        .I3(ap_rst_n),
        .I4(p_228_in),
        .O(\inStream_a_V_id_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    \inStream_a_V_id_V_0_state[1]_i_1 
       (.I0(\inStream_a_V_id_V_0_state_reg_n_0_[0] ),
        .I1(\inStream_a_V_id_V_0_state_reg_n_0_[1] ),
        .I2(inStream_a_TVALID),
        .I3(p_228_in),
        .O(inStream_a_V_id_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_a_V_id_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_a_V_id_V_0_state[0]_i_1_n_0 ),
        .Q(\inStream_a_V_id_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_a_V_id_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_id_V_0_state),
        .Q(\inStream_a_V_id_V_0_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \inStream_a_V_keep_V_0_payload_A[7]_i_1 
       (.I0(\inStream_a_V_keep_V_0_state_reg_n_0_[0] ),
        .I1(\inStream_a_V_keep_V_0_state_reg_n_0_[1] ),
        .I2(inStream_a_V_keep_V_0_sel_wr),
        .O(inStream_a_V_keep_V_0_load_A));
  FDRE \inStream_a_V_keep_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_A),
        .D(inStream_a_TKEEP[0]),
        .Q(inStream_a_V_keep_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_a_V_keep_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_A),
        .D(inStream_a_TKEEP[1]),
        .Q(inStream_a_V_keep_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \inStream_a_V_keep_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_A),
        .D(inStream_a_TKEEP[2]),
        .Q(inStream_a_V_keep_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \inStream_a_V_keep_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_A),
        .D(inStream_a_TKEEP[3]),
        .Q(inStream_a_V_keep_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \inStream_a_V_keep_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_A),
        .D(inStream_a_TKEEP[4]),
        .Q(inStream_a_V_keep_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \inStream_a_V_keep_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_A),
        .D(inStream_a_TKEEP[5]),
        .Q(inStream_a_V_keep_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \inStream_a_V_keep_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_A),
        .D(inStream_a_TKEEP[6]),
        .Q(inStream_a_V_keep_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \inStream_a_V_keep_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_A),
        .D(inStream_a_TKEEP[7]),
        .Q(inStream_a_V_keep_V_0_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \inStream_a_V_keep_V_0_payload_B[7]_i_1 
       (.I0(\inStream_a_V_keep_V_0_state_reg_n_0_[0] ),
        .I1(\inStream_a_V_keep_V_0_state_reg_n_0_[1] ),
        .I2(inStream_a_V_keep_V_0_sel_wr),
        .O(inStream_a_V_keep_V_0_load_B));
  FDRE \inStream_a_V_keep_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_B),
        .D(inStream_a_TKEEP[0]),
        .Q(inStream_a_V_keep_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_a_V_keep_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_B),
        .D(inStream_a_TKEEP[1]),
        .Q(inStream_a_V_keep_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \inStream_a_V_keep_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_B),
        .D(inStream_a_TKEEP[2]),
        .Q(inStream_a_V_keep_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \inStream_a_V_keep_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_B),
        .D(inStream_a_TKEEP[3]),
        .Q(inStream_a_V_keep_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \inStream_a_V_keep_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_B),
        .D(inStream_a_TKEEP[4]),
        .Q(inStream_a_V_keep_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \inStream_a_V_keep_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_B),
        .D(inStream_a_TKEEP[5]),
        .Q(inStream_a_V_keep_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \inStream_a_V_keep_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_B),
        .D(inStream_a_TKEEP[6]),
        .Q(inStream_a_V_keep_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \inStream_a_V_keep_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(inStream_a_V_keep_V_0_load_B),
        .D(inStream_a_TKEEP[7]),
        .Q(inStream_a_V_keep_V_0_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_a_V_keep_V_0_sel_rd_i_1
       (.I0(p_228_in),
        .I1(\inStream_a_V_keep_V_0_state_reg_n_0_[0] ),
        .I2(inStream_a_V_keep_V_0_sel),
        .O(inStream_a_V_keep_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_a_V_keep_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_keep_V_0_sel_rd_i_1_n_0),
        .Q(inStream_a_V_keep_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_a_V_keep_V_0_sel_wr_i_1
       (.I0(inStream_a_TVALID),
        .I1(\inStream_a_V_keep_V_0_state_reg_n_0_[1] ),
        .I2(inStream_a_V_keep_V_0_sel_wr),
        .O(inStream_a_V_keep_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_a_V_keep_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_keep_V_0_sel_wr_i_1_n_0),
        .Q(inStream_a_V_keep_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hD800F800)) 
    \inStream_a_V_keep_V_0_state[0]_i_1 
       (.I0(\inStream_a_V_keep_V_0_state_reg_n_0_[1] ),
        .I1(inStream_a_TVALID),
        .I2(\inStream_a_V_keep_V_0_state_reg_n_0_[0] ),
        .I3(ap_rst_n),
        .I4(p_228_in),
        .O(\inStream_a_V_keep_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    \inStream_a_V_keep_V_0_state[1]_i_1 
       (.I0(\inStream_a_V_keep_V_0_state_reg_n_0_[0] ),
        .I1(\inStream_a_V_keep_V_0_state_reg_n_0_[1] ),
        .I2(inStream_a_TVALID),
        .I3(p_228_in),
        .O(inStream_a_V_keep_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_a_V_keep_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_a_V_keep_V_0_state[0]_i_1_n_0 ),
        .Q(\inStream_a_V_keep_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_a_V_keep_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_keep_V_0_state),
        .Q(\inStream_a_V_keep_V_0_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \inStream_a_V_strb_V_0_payload_A[7]_i_1 
       (.I0(\inStream_a_V_strb_V_0_state_reg_n_0_[0] ),
        .I1(\inStream_a_V_strb_V_0_state_reg_n_0_[1] ),
        .I2(inStream_a_V_strb_V_0_sel_wr),
        .O(inStream_a_V_strb_V_0_load_A));
  FDRE \inStream_a_V_strb_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_A),
        .D(inStream_a_TSTRB[0]),
        .Q(inStream_a_V_strb_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_a_V_strb_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_A),
        .D(inStream_a_TSTRB[1]),
        .Q(inStream_a_V_strb_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \inStream_a_V_strb_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_A),
        .D(inStream_a_TSTRB[2]),
        .Q(inStream_a_V_strb_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \inStream_a_V_strb_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_A),
        .D(inStream_a_TSTRB[3]),
        .Q(inStream_a_V_strb_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \inStream_a_V_strb_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_A),
        .D(inStream_a_TSTRB[4]),
        .Q(inStream_a_V_strb_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \inStream_a_V_strb_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_A),
        .D(inStream_a_TSTRB[5]),
        .Q(inStream_a_V_strb_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \inStream_a_V_strb_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_A),
        .D(inStream_a_TSTRB[6]),
        .Q(inStream_a_V_strb_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \inStream_a_V_strb_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_A),
        .D(inStream_a_TSTRB[7]),
        .Q(inStream_a_V_strb_V_0_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \inStream_a_V_strb_V_0_payload_B[7]_i_1 
       (.I0(\inStream_a_V_strb_V_0_state_reg_n_0_[0] ),
        .I1(\inStream_a_V_strb_V_0_state_reg_n_0_[1] ),
        .I2(inStream_a_V_strb_V_0_sel_wr),
        .O(inStream_a_V_strb_V_0_load_B));
  FDRE \inStream_a_V_strb_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_B),
        .D(inStream_a_TSTRB[0]),
        .Q(inStream_a_V_strb_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_a_V_strb_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_B),
        .D(inStream_a_TSTRB[1]),
        .Q(inStream_a_V_strb_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \inStream_a_V_strb_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_B),
        .D(inStream_a_TSTRB[2]),
        .Q(inStream_a_V_strb_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \inStream_a_V_strb_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_B),
        .D(inStream_a_TSTRB[3]),
        .Q(inStream_a_V_strb_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \inStream_a_V_strb_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_B),
        .D(inStream_a_TSTRB[4]),
        .Q(inStream_a_V_strb_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \inStream_a_V_strb_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_B),
        .D(inStream_a_TSTRB[5]),
        .Q(inStream_a_V_strb_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \inStream_a_V_strb_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_B),
        .D(inStream_a_TSTRB[6]),
        .Q(inStream_a_V_strb_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \inStream_a_V_strb_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(inStream_a_V_strb_V_0_load_B),
        .D(inStream_a_TSTRB[7]),
        .Q(inStream_a_V_strb_V_0_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_a_V_strb_V_0_sel_rd_i_1
       (.I0(p_228_in),
        .I1(\inStream_a_V_strb_V_0_state_reg_n_0_[0] ),
        .I2(inStream_a_V_strb_V_0_sel),
        .O(inStream_a_V_strb_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_a_V_strb_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_strb_V_0_sel_rd_i_1_n_0),
        .Q(inStream_a_V_strb_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_a_V_strb_V_0_sel_wr_i_1
       (.I0(inStream_a_TVALID),
        .I1(\inStream_a_V_strb_V_0_state_reg_n_0_[1] ),
        .I2(inStream_a_V_strb_V_0_sel_wr),
        .O(inStream_a_V_strb_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_a_V_strb_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_strb_V_0_sel_wr_i_1_n_0),
        .Q(inStream_a_V_strb_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hD800F800)) 
    \inStream_a_V_strb_V_0_state[0]_i_1 
       (.I0(\inStream_a_V_strb_V_0_state_reg_n_0_[1] ),
        .I1(inStream_a_TVALID),
        .I2(\inStream_a_V_strb_V_0_state_reg_n_0_[0] ),
        .I3(ap_rst_n),
        .I4(p_228_in),
        .O(\inStream_a_V_strb_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    \inStream_a_V_strb_V_0_state[1]_i_1 
       (.I0(\inStream_a_V_strb_V_0_state_reg_n_0_[0] ),
        .I1(\inStream_a_V_strb_V_0_state_reg_n_0_[1] ),
        .I2(inStream_a_TVALID),
        .I3(p_228_in),
        .O(inStream_a_V_strb_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_a_V_strb_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_a_V_strb_V_0_state[0]_i_1_n_0 ),
        .Q(\inStream_a_V_strb_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_a_V_strb_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_strb_V_0_state),
        .Q(\inStream_a_V_strb_V_0_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \inStream_a_V_user_V_0_payload_A[0]_i_1 
       (.I0(inStream_a_TUSER[0]),
        .I1(\inStream_a_V_user_V_0_state_reg_n_0_[0] ),
        .I2(\inStream_a_V_user_V_0_state_reg_n_0_[1] ),
        .I3(inStream_a_V_user_V_0_sel_wr),
        .I4(inStream_a_V_user_V_0_payload_A[0]),
        .O(\inStream_a_V_user_V_0_payload_A[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \inStream_a_V_user_V_0_payload_A[1]_i_1 
       (.I0(inStream_a_TUSER[1]),
        .I1(\inStream_a_V_user_V_0_state_reg_n_0_[0] ),
        .I2(\inStream_a_V_user_V_0_state_reg_n_0_[1] ),
        .I3(inStream_a_V_user_V_0_sel_wr),
        .I4(inStream_a_V_user_V_0_payload_A[1]),
        .O(\inStream_a_V_user_V_0_payload_A[1]_i_1_n_0 ));
  FDRE \inStream_a_V_user_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_a_V_user_V_0_payload_A[0]_i_1_n_0 ),
        .Q(inStream_a_V_user_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_a_V_user_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_a_V_user_V_0_payload_A[1]_i_1_n_0 ),
        .Q(inStream_a_V_user_V_0_payload_A[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \inStream_a_V_user_V_0_payload_B[0]_i_1 
       (.I0(inStream_a_TUSER[0]),
        .I1(\inStream_a_V_user_V_0_state_reg_n_0_[0] ),
        .I2(\inStream_a_V_user_V_0_state_reg_n_0_[1] ),
        .I3(inStream_a_V_user_V_0_sel_wr),
        .I4(inStream_a_V_user_V_0_payload_B[0]),
        .O(\inStream_a_V_user_V_0_payload_B[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \inStream_a_V_user_V_0_payload_B[1]_i_1 
       (.I0(inStream_a_TUSER[1]),
        .I1(\inStream_a_V_user_V_0_state_reg_n_0_[0] ),
        .I2(\inStream_a_V_user_V_0_state_reg_n_0_[1] ),
        .I3(inStream_a_V_user_V_0_sel_wr),
        .I4(inStream_a_V_user_V_0_payload_B[1]),
        .O(\inStream_a_V_user_V_0_payload_B[1]_i_1_n_0 ));
  FDRE \inStream_a_V_user_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_a_V_user_V_0_payload_B[0]_i_1_n_0 ),
        .Q(inStream_a_V_user_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_a_V_user_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_a_V_user_V_0_payload_B[1]_i_1_n_0 ),
        .Q(inStream_a_V_user_V_0_payload_B[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_a_V_user_V_0_sel_rd_i_1
       (.I0(p_228_in),
        .I1(\inStream_a_V_user_V_0_state_reg_n_0_[0] ),
        .I2(inStream_a_V_user_V_0_sel),
        .O(inStream_a_V_user_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_a_V_user_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_user_V_0_sel_rd_i_1_n_0),
        .Q(inStream_a_V_user_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h78)) 
    inStream_a_V_user_V_0_sel_wr_i_1
       (.I0(inStream_a_TVALID),
        .I1(\inStream_a_V_user_V_0_state_reg_n_0_[1] ),
        .I2(inStream_a_V_user_V_0_sel_wr),
        .O(inStream_a_V_user_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_a_V_user_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_user_V_0_sel_wr_i_1_n_0),
        .Q(inStream_a_V_user_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hD800F800)) 
    \inStream_a_V_user_V_0_state[0]_i_1 
       (.I0(\inStream_a_V_user_V_0_state_reg_n_0_[1] ),
        .I1(inStream_a_TVALID),
        .I2(\inStream_a_V_user_V_0_state_reg_n_0_[0] ),
        .I3(ap_rst_n),
        .I4(p_228_in),
        .O(\inStream_a_V_user_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    \inStream_a_V_user_V_0_state[1]_i_1 
       (.I0(\inStream_a_V_user_V_0_state_reg_n_0_[0] ),
        .I1(\inStream_a_V_user_V_0_state_reg_n_0_[1] ),
        .I2(inStream_a_TVALID),
        .I3(p_228_in),
        .O(inStream_a_V_user_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_a_V_user_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_a_V_user_V_0_state[0]_i_1_n_0 ),
        .Q(\inStream_a_V_user_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_a_V_user_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_a_V_user_V_0_state),
        .Q(\inStream_a_V_user_V_0_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \inStream_b_V_data_0_payload_A[63]_i_1 
       (.I0(\inStream_b_V_data_0_state_reg_n_0_[0] ),
        .I1(\inStream_b_V_data_0_state_reg_n_0_[1] ),
        .I2(inStream_b_V_data_0_sel_wr),
        .O(inStream_b_V_data_0_load_A));
  FDRE \inStream_b_V_data_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[0]),
        .Q(inStream_b_V_data_0_payload_A[0]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[10]),
        .Q(inStream_b_V_data_0_payload_A[10]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[11]),
        .Q(inStream_b_V_data_0_payload_A[11]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[12]),
        .Q(inStream_b_V_data_0_payload_A[12]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[13]),
        .Q(inStream_b_V_data_0_payload_A[13]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[14]),
        .Q(inStream_b_V_data_0_payload_A[14]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[15]),
        .Q(inStream_b_V_data_0_payload_A[15]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[16]),
        .Q(inStream_b_V_data_0_payload_A[16]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[17]),
        .Q(inStream_b_V_data_0_payload_A[17]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[18]),
        .Q(inStream_b_V_data_0_payload_A[18]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[19]),
        .Q(inStream_b_V_data_0_payload_A[19]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[1]),
        .Q(inStream_b_V_data_0_payload_A[1]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[20]),
        .Q(inStream_b_V_data_0_payload_A[20]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[21]),
        .Q(inStream_b_V_data_0_payload_A[21]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[22]),
        .Q(inStream_b_V_data_0_payload_A[22]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[23]),
        .Q(inStream_b_V_data_0_payload_A[23]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[24]),
        .Q(inStream_b_V_data_0_payload_A[24]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[25]),
        .Q(inStream_b_V_data_0_payload_A[25]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[26]),
        .Q(inStream_b_V_data_0_payload_A[26]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[27]),
        .Q(inStream_b_V_data_0_payload_A[27]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[28]),
        .Q(inStream_b_V_data_0_payload_A[28]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[29]),
        .Q(inStream_b_V_data_0_payload_A[29]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[2]),
        .Q(inStream_b_V_data_0_payload_A[2]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[30]),
        .Q(inStream_b_V_data_0_payload_A[30]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[31]),
        .Q(inStream_b_V_data_0_payload_A[31]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[32]),
        .Q(inStream_b_V_data_0_payload_A[32]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[33]),
        .Q(inStream_b_V_data_0_payload_A[33]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[34]),
        .Q(inStream_b_V_data_0_payload_A[34]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[35]),
        .Q(inStream_b_V_data_0_payload_A[35]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[36]),
        .Q(inStream_b_V_data_0_payload_A[36]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[37]),
        .Q(inStream_b_V_data_0_payload_A[37]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[38]),
        .Q(inStream_b_V_data_0_payload_A[38]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[39]),
        .Q(inStream_b_V_data_0_payload_A[39]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[3]),
        .Q(inStream_b_V_data_0_payload_A[3]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[40]),
        .Q(inStream_b_V_data_0_payload_A[40]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[41]),
        .Q(inStream_b_V_data_0_payload_A[41]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[42]),
        .Q(inStream_b_V_data_0_payload_A[42]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[43]),
        .Q(inStream_b_V_data_0_payload_A[43]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[44]),
        .Q(inStream_b_V_data_0_payload_A[44]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[45]),
        .Q(inStream_b_V_data_0_payload_A[45]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[46]),
        .Q(inStream_b_V_data_0_payload_A[46]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[47]),
        .Q(inStream_b_V_data_0_payload_A[47]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[48]),
        .Q(inStream_b_V_data_0_payload_A[48]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[49]),
        .Q(inStream_b_V_data_0_payload_A[49]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[4]),
        .Q(inStream_b_V_data_0_payload_A[4]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[50]),
        .Q(inStream_b_V_data_0_payload_A[50]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[51]),
        .Q(inStream_b_V_data_0_payload_A[51]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[52]),
        .Q(inStream_b_V_data_0_payload_A[52]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[53]),
        .Q(inStream_b_V_data_0_payload_A[53]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[54]),
        .Q(inStream_b_V_data_0_payload_A[54]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[55]),
        .Q(inStream_b_V_data_0_payload_A[55]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[56]),
        .Q(inStream_b_V_data_0_payload_A[56]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[57]),
        .Q(inStream_b_V_data_0_payload_A[57]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[58]),
        .Q(inStream_b_V_data_0_payload_A[58]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[59]),
        .Q(inStream_b_V_data_0_payload_A[59]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[5]),
        .Q(inStream_b_V_data_0_payload_A[5]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[60]),
        .Q(inStream_b_V_data_0_payload_A[60]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[61]),
        .Q(inStream_b_V_data_0_payload_A[61]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[62]),
        .Q(inStream_b_V_data_0_payload_A[62]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[63]),
        .Q(inStream_b_V_data_0_payload_A[63]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[6]),
        .Q(inStream_b_V_data_0_payload_A[6]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[7]),
        .Q(inStream_b_V_data_0_payload_A[7]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[8]),
        .Q(inStream_b_V_data_0_payload_A[8]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_A),
        .D(inStream_b_TDATA[9]),
        .Q(inStream_b_V_data_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \inStream_b_V_data_0_payload_B[63]_i_1 
       (.I0(\inStream_b_V_data_0_state_reg_n_0_[0] ),
        .I1(\inStream_b_V_data_0_state_reg_n_0_[1] ),
        .I2(inStream_b_V_data_0_sel_wr),
        .O(inStream_b_V_data_0_load_B));
  FDRE \inStream_b_V_data_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[0]),
        .Q(inStream_b_V_data_0_payload_B[0]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[10]),
        .Q(inStream_b_V_data_0_payload_B[10]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[11]),
        .Q(inStream_b_V_data_0_payload_B[11]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[12]),
        .Q(inStream_b_V_data_0_payload_B[12]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[13]),
        .Q(inStream_b_V_data_0_payload_B[13]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[14]),
        .Q(inStream_b_V_data_0_payload_B[14]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[15]),
        .Q(inStream_b_V_data_0_payload_B[15]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[16]),
        .Q(inStream_b_V_data_0_payload_B[16]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[17]),
        .Q(inStream_b_V_data_0_payload_B[17]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[18]),
        .Q(inStream_b_V_data_0_payload_B[18]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[19]),
        .Q(inStream_b_V_data_0_payload_B[19]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[1]),
        .Q(inStream_b_V_data_0_payload_B[1]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[20]),
        .Q(inStream_b_V_data_0_payload_B[20]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[21]),
        .Q(inStream_b_V_data_0_payload_B[21]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[22]),
        .Q(inStream_b_V_data_0_payload_B[22]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[23]),
        .Q(inStream_b_V_data_0_payload_B[23]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[24]),
        .Q(inStream_b_V_data_0_payload_B[24]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[25]),
        .Q(inStream_b_V_data_0_payload_B[25]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[26]),
        .Q(inStream_b_V_data_0_payload_B[26]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[27]),
        .Q(inStream_b_V_data_0_payload_B[27]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[28]),
        .Q(inStream_b_V_data_0_payload_B[28]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[29]),
        .Q(inStream_b_V_data_0_payload_B[29]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[2]),
        .Q(inStream_b_V_data_0_payload_B[2]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[30]),
        .Q(inStream_b_V_data_0_payload_B[30]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[31]),
        .Q(inStream_b_V_data_0_payload_B[31]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[32]),
        .Q(inStream_b_V_data_0_payload_B[32]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[33]),
        .Q(inStream_b_V_data_0_payload_B[33]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[34]),
        .Q(inStream_b_V_data_0_payload_B[34]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[35]),
        .Q(inStream_b_V_data_0_payload_B[35]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[36]),
        .Q(inStream_b_V_data_0_payload_B[36]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[37]),
        .Q(inStream_b_V_data_0_payload_B[37]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[38]),
        .Q(inStream_b_V_data_0_payload_B[38]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[39]),
        .Q(inStream_b_V_data_0_payload_B[39]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[3]),
        .Q(inStream_b_V_data_0_payload_B[3]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[40]),
        .Q(inStream_b_V_data_0_payload_B[40]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[41]),
        .Q(inStream_b_V_data_0_payload_B[41]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[42]),
        .Q(inStream_b_V_data_0_payload_B[42]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[43]),
        .Q(inStream_b_V_data_0_payload_B[43]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[44]),
        .Q(inStream_b_V_data_0_payload_B[44]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[45]),
        .Q(inStream_b_V_data_0_payload_B[45]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[46]),
        .Q(inStream_b_V_data_0_payload_B[46]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[47]),
        .Q(inStream_b_V_data_0_payload_B[47]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[48]),
        .Q(inStream_b_V_data_0_payload_B[48]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[49]),
        .Q(inStream_b_V_data_0_payload_B[49]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[4]),
        .Q(inStream_b_V_data_0_payload_B[4]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[50]),
        .Q(inStream_b_V_data_0_payload_B[50]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[51]),
        .Q(inStream_b_V_data_0_payload_B[51]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[52]),
        .Q(inStream_b_V_data_0_payload_B[52]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[53]),
        .Q(inStream_b_V_data_0_payload_B[53]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[54]),
        .Q(inStream_b_V_data_0_payload_B[54]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[55]),
        .Q(inStream_b_V_data_0_payload_B[55]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[56]),
        .Q(inStream_b_V_data_0_payload_B[56]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[57]),
        .Q(inStream_b_V_data_0_payload_B[57]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[58]),
        .Q(inStream_b_V_data_0_payload_B[58]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[59]),
        .Q(inStream_b_V_data_0_payload_B[59]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[5]),
        .Q(inStream_b_V_data_0_payload_B[5]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[60]),
        .Q(inStream_b_V_data_0_payload_B[60]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[61]),
        .Q(inStream_b_V_data_0_payload_B[61]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[62]),
        .Q(inStream_b_V_data_0_payload_B[62]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[63]),
        .Q(inStream_b_V_data_0_payload_B[63]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[6]),
        .Q(inStream_b_V_data_0_payload_B[6]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[7]),
        .Q(inStream_b_V_data_0_payload_B[7]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[8]),
        .Q(inStream_b_V_data_0_payload_B[8]),
        .R(1'b0));
  FDRE \inStream_b_V_data_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(inStream_b_V_data_0_load_B),
        .D(inStream_b_TDATA[9]),
        .Q(inStream_b_V_data_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h758A)) 
    inStream_b_V_data_0_sel_rd_i_1
       (.I0(\inStream_b_V_data_0_state_reg_n_0_[0] ),
        .I1(p_228_in),
        .I2(kernel_bias_fp_1_V_U_n_67),
        .I3(inStream_b_V_data_0_sel),
        .O(inStream_b_V_data_0_sel_rd_i_1_n_0));
  (* ORIG_CELL_NAME = "inStream_b_V_data_0_sel_rd_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    inStream_b_V_data_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_b_V_data_0_sel_rd_i_1_n_0),
        .Q(inStream_b_V_data_0_sel),
        .R(ap_rst_n_inv));
  (* ORIG_CELL_NAME = "inStream_b_V_data_0_sel_rd_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    inStream_b_V_data_0_sel_rd_reg_rep
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_b_V_data_0_sel_rd_rep_i_1_n_0),
        .Q(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .R(ap_rst_n_inv));
  (* ORIG_CELL_NAME = "inStream_b_V_data_0_sel_rd_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    inStream_b_V_data_0_sel_rd_reg_rep__0
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_b_V_data_0_sel_rd_rep_i_1__0_n_0),
        .Q(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h758A)) 
    inStream_b_V_data_0_sel_rd_rep_i_1
       (.I0(\inStream_b_V_data_0_state_reg_n_0_[0] ),
        .I1(p_228_in),
        .I2(kernel_bias_fp_1_V_U_n_67),
        .I3(inStream_b_V_data_0_sel),
        .O(inStream_b_V_data_0_sel_rd_rep_i_1_n_0));
  LUT4 #(
    .INIT(16'h758A)) 
    inStream_b_V_data_0_sel_rd_rep_i_1__0
       (.I0(\inStream_b_V_data_0_state_reg_n_0_[0] ),
        .I1(p_228_in),
        .I2(kernel_bias_fp_1_V_U_n_67),
        .I3(inStream_b_V_data_0_sel),
        .O(inStream_b_V_data_0_sel_rd_rep_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    inStream_b_V_data_0_sel_wr_i_1
       (.I0(inStream_b_TVALID),
        .I1(\inStream_b_V_data_0_state_reg_n_0_[1] ),
        .I2(inStream_b_V_data_0_sel_wr),
        .O(inStream_b_V_data_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inStream_b_V_data_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_b_V_data_0_sel_wr_i_1_n_0),
        .Q(inStream_b_V_data_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hD0F0D0D080808080)) 
    \inStream_b_V_data_0_state[0]_i_1 
       (.I0(\inStream_b_V_data_0_state_reg_n_0_[1] ),
        .I1(inStream_b_TVALID),
        .I2(ap_rst_n),
        .I3(p_228_in),
        .I4(kernel_bias_fp_1_V_U_n_67),
        .I5(\inStream_b_V_data_0_state_reg_n_0_[0] ),
        .O(\inStream_b_V_data_0_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFDFDF)) 
    \inStream_b_V_data_0_state[1]_i_1 
       (.I0(\inStream_b_V_data_0_state_reg_n_0_[0] ),
        .I1(p_228_in),
        .I2(kernel_bias_fp_1_V_U_n_67),
        .I3(inStream_b_TVALID),
        .I4(\inStream_b_V_data_0_state_reg_n_0_[1] ),
        .O(inStream_b_V_data_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_b_V_data_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_b_V_data_0_state[0]_i_1_n_0 ),
        .Q(\inStream_b_V_data_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_b_V_data_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_b_V_data_0_state),
        .Q(\inStream_b_V_data_0_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hD0F0D0D080808080)) 
    \inStream_b_V_dest_V_0_state[0]_i_1 
       (.I0(inStream_b_TREADY),
        .I1(inStream_b_TVALID),
        .I2(ap_rst_n),
        .I3(p_228_in),
        .I4(kernel_bias_fp_1_V_U_n_67),
        .I5(\inStream_b_V_dest_V_0_state_reg_n_0_[0] ),
        .O(\inStream_b_V_dest_V_0_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFDFDF)) 
    \inStream_b_V_dest_V_0_state[1]_i_1 
       (.I0(\inStream_b_V_dest_V_0_state_reg_n_0_[0] ),
        .I1(p_228_in),
        .I2(kernel_bias_fp_1_V_U_n_67),
        .I3(inStream_b_TVALID),
        .I4(inStream_b_TREADY),
        .O(inStream_b_V_dest_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_b_V_dest_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inStream_b_V_dest_V_0_state[0]_i_1_n_0 ),
        .Q(\inStream_b_V_dest_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inStream_b_V_dest_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inStream_b_V_dest_V_0_state),
        .Q(inStream_b_TREADY),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten17_reg_348[0]_i_2 
       (.I0(indvar_flatten17_reg_348_reg[0]),
        .O(\indvar_flatten17_reg_348[0]_i_2_n_0 ));
  FDRE \indvar_flatten17_reg_348_reg[0] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[0]_i_1_n_7 ),
        .Q(indvar_flatten17_reg_348_reg[0]),
        .R(i_op_assign_2_reg_392));
  CARRY4 \indvar_flatten17_reg_348_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\indvar_flatten17_reg_348_reg[0]_i_1_n_0 ,\indvar_flatten17_reg_348_reg[0]_i_1_n_1 ,\indvar_flatten17_reg_348_reg[0]_i_1_n_2 ,\indvar_flatten17_reg_348_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\indvar_flatten17_reg_348_reg[0]_i_1_n_4 ,\indvar_flatten17_reg_348_reg[0]_i_1_n_5 ,\indvar_flatten17_reg_348_reg[0]_i_1_n_6 ,\indvar_flatten17_reg_348_reg[0]_i_1_n_7 }),
        .S({indvar_flatten17_reg_348_reg[3:1],\indvar_flatten17_reg_348[0]_i_2_n_0 }));
  FDRE \indvar_flatten17_reg_348_reg[10] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[8]_i_1_n_5 ),
        .Q(indvar_flatten17_reg_348_reg[10]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[11] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[8]_i_1_n_4 ),
        .Q(indvar_flatten17_reg_348_reg[11]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[12] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[12]_i_1_n_7 ),
        .Q(indvar_flatten17_reg_348_reg[12]),
        .R(i_op_assign_2_reg_392));
  CARRY4 \indvar_flatten17_reg_348_reg[12]_i_1 
       (.CI(\indvar_flatten17_reg_348_reg[8]_i_1_n_0 ),
        .CO({\indvar_flatten17_reg_348_reg[12]_i_1_n_0 ,\indvar_flatten17_reg_348_reg[12]_i_1_n_1 ,\indvar_flatten17_reg_348_reg[12]_i_1_n_2 ,\indvar_flatten17_reg_348_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten17_reg_348_reg[12]_i_1_n_4 ,\indvar_flatten17_reg_348_reg[12]_i_1_n_5 ,\indvar_flatten17_reg_348_reg[12]_i_1_n_6 ,\indvar_flatten17_reg_348_reg[12]_i_1_n_7 }),
        .S(indvar_flatten17_reg_348_reg[15:12]));
  FDRE \indvar_flatten17_reg_348_reg[13] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[12]_i_1_n_6 ),
        .Q(indvar_flatten17_reg_348_reg[13]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[14] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[12]_i_1_n_5 ),
        .Q(indvar_flatten17_reg_348_reg[14]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[15] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[12]_i_1_n_4 ),
        .Q(indvar_flatten17_reg_348_reg[15]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[16] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[16]_i_1_n_7 ),
        .Q(indvar_flatten17_reg_348_reg[16]),
        .R(i_op_assign_2_reg_392));
  CARRY4 \indvar_flatten17_reg_348_reg[16]_i_1 
       (.CI(\indvar_flatten17_reg_348_reg[12]_i_1_n_0 ),
        .CO({\indvar_flatten17_reg_348_reg[16]_i_1_n_0 ,\indvar_flatten17_reg_348_reg[16]_i_1_n_1 ,\indvar_flatten17_reg_348_reg[16]_i_1_n_2 ,\indvar_flatten17_reg_348_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten17_reg_348_reg[16]_i_1_n_4 ,\indvar_flatten17_reg_348_reg[16]_i_1_n_5 ,\indvar_flatten17_reg_348_reg[16]_i_1_n_6 ,\indvar_flatten17_reg_348_reg[16]_i_1_n_7 }),
        .S(indvar_flatten17_reg_348_reg[19:16]));
  FDRE \indvar_flatten17_reg_348_reg[17] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[16]_i_1_n_6 ),
        .Q(indvar_flatten17_reg_348_reg[17]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[18] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[16]_i_1_n_5 ),
        .Q(indvar_flatten17_reg_348_reg[18]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[19] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[16]_i_1_n_4 ),
        .Q(indvar_flatten17_reg_348_reg[19]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[1] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[0]_i_1_n_6 ),
        .Q(indvar_flatten17_reg_348_reg[1]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[20] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[20]_i_1_n_7 ),
        .Q(indvar_flatten17_reg_348_reg[20]),
        .R(i_op_assign_2_reg_392));
  CARRY4 \indvar_flatten17_reg_348_reg[20]_i_1 
       (.CI(\indvar_flatten17_reg_348_reg[16]_i_1_n_0 ),
        .CO({\NLW_indvar_flatten17_reg_348_reg[20]_i_1_CO_UNCONNECTED [3:1],\indvar_flatten17_reg_348_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_indvar_flatten17_reg_348_reg[20]_i_1_O_UNCONNECTED [3:2],\indvar_flatten17_reg_348_reg[20]_i_1_n_6 ,\indvar_flatten17_reg_348_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,indvar_flatten17_reg_348_reg[21:20]}));
  FDRE \indvar_flatten17_reg_348_reg[21] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[20]_i_1_n_6 ),
        .Q(indvar_flatten17_reg_348_reg[21]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[2] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[0]_i_1_n_5 ),
        .Q(indvar_flatten17_reg_348_reg[2]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[3] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[0]_i_1_n_4 ),
        .Q(indvar_flatten17_reg_348_reg[3]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[4] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[4]_i_1_n_7 ),
        .Q(indvar_flatten17_reg_348_reg[4]),
        .R(i_op_assign_2_reg_392));
  CARRY4 \indvar_flatten17_reg_348_reg[4]_i_1 
       (.CI(\indvar_flatten17_reg_348_reg[0]_i_1_n_0 ),
        .CO({\indvar_flatten17_reg_348_reg[4]_i_1_n_0 ,\indvar_flatten17_reg_348_reg[4]_i_1_n_1 ,\indvar_flatten17_reg_348_reg[4]_i_1_n_2 ,\indvar_flatten17_reg_348_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten17_reg_348_reg[4]_i_1_n_4 ,\indvar_flatten17_reg_348_reg[4]_i_1_n_5 ,\indvar_flatten17_reg_348_reg[4]_i_1_n_6 ,\indvar_flatten17_reg_348_reg[4]_i_1_n_7 }),
        .S(indvar_flatten17_reg_348_reg[7:4]));
  FDRE \indvar_flatten17_reg_348_reg[5] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[4]_i_1_n_6 ),
        .Q(indvar_flatten17_reg_348_reg[5]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[6] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[4]_i_1_n_5 ),
        .Q(indvar_flatten17_reg_348_reg[6]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[7] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[4]_i_1_n_4 ),
        .Q(indvar_flatten17_reg_348_reg[7]),
        .R(i_op_assign_2_reg_392));
  FDRE \indvar_flatten17_reg_348_reg[8] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[8]_i_1_n_7 ),
        .Q(indvar_flatten17_reg_348_reg[8]),
        .R(i_op_assign_2_reg_392));
  CARRY4 \indvar_flatten17_reg_348_reg[8]_i_1 
       (.CI(\indvar_flatten17_reg_348_reg[4]_i_1_n_0 ),
        .CO({\indvar_flatten17_reg_348_reg[8]_i_1_n_0 ,\indvar_flatten17_reg_348_reg[8]_i_1_n_1 ,\indvar_flatten17_reg_348_reg[8]_i_1_n_2 ,\indvar_flatten17_reg_348_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten17_reg_348_reg[8]_i_1_n_4 ,\indvar_flatten17_reg_348_reg[8]_i_1_n_5 ,\indvar_flatten17_reg_348_reg[8]_i_1_n_6 ,\indvar_flatten17_reg_348_reg[8]_i_1_n_7 }),
        .S(indvar_flatten17_reg_348_reg[11:8]));
  FDRE \indvar_flatten17_reg_348_reg[9] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(\indvar_flatten17_reg_348_reg[8]_i_1_n_6 ),
        .Q(indvar_flatten17_reg_348_reg[9]),
        .R(i_op_assign_2_reg_392));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'hBB0C)) 
    \indvar_flatten_reg_370[0]_i_1 
       (.I0(p_0_in4_in),
        .I1(\indvar_flatten_reg_370_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state4),
        .I3(p_228_in),
        .O(\indvar_flatten_reg_370[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \indvar_flatten_reg_370[12]_i_1 
       (.I0(p_0_in4_in),
        .I1(p_228_in),
        .I2(ap_CS_fsm_state4),
        .O(indvar_flatten_reg_370));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_370[12]_i_10 
       (.I0(mul_ln1354_reg_1269[0]),
        .I1(\indvar_flatten_reg_370_reg_n_0_[0] ),
        .I2(\indvar_flatten_reg_370_reg_n_0_[1] ),
        .I3(mul_ln1354_reg_1269[1]),
        .I4(mul_ln1354_reg_1269[2]),
        .I5(\indvar_flatten_reg_370_reg_n_0_[2] ),
        .O(\indvar_flatten_reg_370[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \indvar_flatten_reg_370[12]_i_2 
       (.I0(ap_condition_pp1_exit_iter0_state5),
        .I1(grp_post_process_unit_fu_430_n_26),
        .I2(\tmp_keep_V_reg_1321[7]_i_4_n_0 ),
        .I3(grp_post_process_unit_fu_430_n_24),
        .I4(ap_CS_fsm_pp1_stage0),
        .I5(ap_enable_reg_pp1_iter0),
        .O(p_228_in));
  LUT2 #(
    .INIT(4'h9)) 
    \indvar_flatten_reg_370[12]_i_6 
       (.I0(mul_ln1354_reg_1269[12]),
        .I1(\indvar_flatten_reg_370_reg_n_0_[12] ),
        .O(\indvar_flatten_reg_370[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_370[12]_i_7 
       (.I0(\indvar_flatten_reg_370_reg_n_0_[9] ),
        .I1(mul_ln1354_reg_1269[9]),
        .I2(\indvar_flatten_reg_370_reg_n_0_[10] ),
        .I3(mul_ln1354_reg_1269[10]),
        .I4(mul_ln1354_reg_1269[11]),
        .I5(\indvar_flatten_reg_370_reg_n_0_[11] ),
        .O(\indvar_flatten_reg_370[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_370[12]_i_8 
       (.I0(\indvar_flatten_reg_370_reg_n_0_[6] ),
        .I1(mul_ln1354_reg_1269[6]),
        .I2(\indvar_flatten_reg_370_reg_n_0_[7] ),
        .I3(mul_ln1354_reg_1269[7]),
        .I4(mul_ln1354_reg_1269[8]),
        .I5(\indvar_flatten_reg_370_reg_n_0_[8] ),
        .O(\indvar_flatten_reg_370[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \indvar_flatten_reg_370[12]_i_9 
       (.I0(\indvar_flatten_reg_370_reg_n_0_[3] ),
        .I1(mul_ln1354_reg_1269[3]),
        .I2(\indvar_flatten_reg_370_reg_n_0_[4] ),
        .I3(mul_ln1354_reg_1269[4]),
        .I4(mul_ln1354_reg_1269[5]),
        .I5(\indvar_flatten_reg_370_reg_n_0_[5] ),
        .O(\indvar_flatten_reg_370[12]_i_9_n_0 ));
  FDRE \indvar_flatten_reg_370_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\indvar_flatten_reg_370[0]_i_1_n_0 ),
        .Q(\indvar_flatten_reg_370_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \indvar_flatten_reg_370_reg[10] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(add_ln43_1_fu_1192_p2[10]),
        .Q(\indvar_flatten_reg_370_reg_n_0_[10] ),
        .R(indvar_flatten_reg_370));
  FDRE \indvar_flatten_reg_370_reg[11] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(add_ln43_1_fu_1192_p2[11]),
        .Q(\indvar_flatten_reg_370_reg_n_0_[11] ),
        .R(indvar_flatten_reg_370));
  FDRE \indvar_flatten_reg_370_reg[12] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(add_ln43_1_fu_1192_p2[12]),
        .Q(\indvar_flatten_reg_370_reg_n_0_[12] ),
        .R(indvar_flatten_reg_370));
  CARRY4 \indvar_flatten_reg_370_reg[12]_i_3 
       (.CI(\indvar_flatten_reg_370_reg[8]_i_1_n_0 ),
        .CO({\NLW_indvar_flatten_reg_370_reg[12]_i_3_CO_UNCONNECTED [3],\indvar_flatten_reg_370_reg[12]_i_3_n_1 ,\indvar_flatten_reg_370_reg[12]_i_3_n_2 ,\indvar_flatten_reg_370_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln43_1_fu_1192_p2[12:9]),
        .S({\indvar_flatten_reg_370_reg_n_0_[12] ,\indvar_flatten_reg_370_reg_n_0_[11] ,\indvar_flatten_reg_370_reg_n_0_[10] ,\indvar_flatten_reg_370_reg_n_0_[9] }));
  CARRY4 \indvar_flatten_reg_370_reg[12]_i_4 
       (.CI(\indvar_flatten_reg_370_reg[12]_i_5_n_0 ),
        .CO({\NLW_indvar_flatten_reg_370_reg[12]_i_4_CO_UNCONNECTED [3:1],p_0_in4_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_indvar_flatten_reg_370_reg[12]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\indvar_flatten_reg_370[12]_i_6_n_0 }));
  CARRY4 \indvar_flatten_reg_370_reg[12]_i_5 
       (.CI(1'b0),
        .CO({\indvar_flatten_reg_370_reg[12]_i_5_n_0 ,\indvar_flatten_reg_370_reg[12]_i_5_n_1 ,\indvar_flatten_reg_370_reg[12]_i_5_n_2 ,\indvar_flatten_reg_370_reg[12]_i_5_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_indvar_flatten_reg_370_reg[12]_i_5_O_UNCONNECTED [3:0]),
        .S({\indvar_flatten_reg_370[12]_i_7_n_0 ,\indvar_flatten_reg_370[12]_i_8_n_0 ,\indvar_flatten_reg_370[12]_i_9_n_0 ,\indvar_flatten_reg_370[12]_i_10_n_0 }));
  FDRE \indvar_flatten_reg_370_reg[1] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(add_ln43_1_fu_1192_p2[1]),
        .Q(\indvar_flatten_reg_370_reg_n_0_[1] ),
        .R(indvar_flatten_reg_370));
  FDRE \indvar_flatten_reg_370_reg[2] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(add_ln43_1_fu_1192_p2[2]),
        .Q(\indvar_flatten_reg_370_reg_n_0_[2] ),
        .R(indvar_flatten_reg_370));
  FDRE \indvar_flatten_reg_370_reg[3] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(add_ln43_1_fu_1192_p2[3]),
        .Q(\indvar_flatten_reg_370_reg_n_0_[3] ),
        .R(indvar_flatten_reg_370));
  FDRE \indvar_flatten_reg_370_reg[4] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(add_ln43_1_fu_1192_p2[4]),
        .Q(\indvar_flatten_reg_370_reg_n_0_[4] ),
        .R(indvar_flatten_reg_370));
  CARRY4 \indvar_flatten_reg_370_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\indvar_flatten_reg_370_reg[4]_i_1_n_0 ,\indvar_flatten_reg_370_reg[4]_i_1_n_1 ,\indvar_flatten_reg_370_reg[4]_i_1_n_2 ,\indvar_flatten_reg_370_reg[4]_i_1_n_3 }),
        .CYINIT(\indvar_flatten_reg_370_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln43_1_fu_1192_p2[4:1]),
        .S({\indvar_flatten_reg_370_reg_n_0_[4] ,\indvar_flatten_reg_370_reg_n_0_[3] ,\indvar_flatten_reg_370_reg_n_0_[2] ,\indvar_flatten_reg_370_reg_n_0_[1] }));
  FDRE \indvar_flatten_reg_370_reg[5] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(add_ln43_1_fu_1192_p2[5]),
        .Q(\indvar_flatten_reg_370_reg_n_0_[5] ),
        .R(indvar_flatten_reg_370));
  FDRE \indvar_flatten_reg_370_reg[6] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(add_ln43_1_fu_1192_p2[6]),
        .Q(\indvar_flatten_reg_370_reg_n_0_[6] ),
        .R(indvar_flatten_reg_370));
  FDRE \indvar_flatten_reg_370_reg[7] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(add_ln43_1_fu_1192_p2[7]),
        .Q(\indvar_flatten_reg_370_reg_n_0_[7] ),
        .R(indvar_flatten_reg_370));
  FDRE \indvar_flatten_reg_370_reg[8] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(add_ln43_1_fu_1192_p2[8]),
        .Q(\indvar_flatten_reg_370_reg_n_0_[8] ),
        .R(indvar_flatten_reg_370));
  CARRY4 \indvar_flatten_reg_370_reg[8]_i_1 
       (.CI(\indvar_flatten_reg_370_reg[4]_i_1_n_0 ),
        .CO({\indvar_flatten_reg_370_reg[8]_i_1_n_0 ,\indvar_flatten_reg_370_reg[8]_i_1_n_1 ,\indvar_flatten_reg_370_reg[8]_i_1_n_2 ,\indvar_flatten_reg_370_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln43_1_fu_1192_p2[8:5]),
        .S({\indvar_flatten_reg_370_reg_n_0_[8] ,\indvar_flatten_reg_370_reg_n_0_[7] ,\indvar_flatten_reg_370_reg_n_0_[6] ,\indvar_flatten_reg_370_reg_n_0_[5] }));
  FDRE \indvar_flatten_reg_370_reg[9] 
       (.C(ap_clk),
        .CE(p_228_in),
        .D(add_ln43_1_fu_1192_p2[9]),
        .Q(\indvar_flatten_reg_370_reg_n_0_[9] ),
        .R(indvar_flatten_reg_370));
  FDRE \input_h_V_read_reg_1255_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_h_V[0]),
        .Q(input_h_V_read_reg_1255[0]),
        .R(1'b0));
  FDRE \input_h_V_read_reg_1255_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_h_V[1]),
        .Q(input_h_V_read_reg_1255[1]),
        .R(1'b0));
  FDRE \input_h_V_read_reg_1255_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_h_V[2]),
        .Q(input_h_V_read_reg_1255[2]),
        .R(1'b0));
  FDRE \input_h_V_read_reg_1255_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_h_V[3]),
        .Q(input_h_V_read_reg_1255[3]),
        .R(1'b0));
  FDRE \input_h_V_read_reg_1255_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_h_V[4]),
        .Q(input_h_V_read_reg_1255[4]),
        .R(1'b0));
  FDRE \input_h_V_read_reg_1255_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_h_V[5]),
        .Q(input_h_V_read_reg_1255[5]),
        .R(1'b0));
  FDRE \input_h_V_read_reg_1255_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_h_V[6]),
        .Q(input_h_V_read_reg_1255[6]),
        .R(1'b0));
  FDRE \input_h_V_read_reg_1255_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_h_V[7]),
        .Q(input_h_V_read_reg_1255[7]),
        .R(1'b0));
  FDRE \input_h_V_read_reg_1255_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_h_V[8]),
        .Q(input_h_V_read_reg_1255[8]),
        .R(1'b0));
  FDRE \input_w_V_read_reg_1249_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_w_V[0]),
        .Q(input_w_V_read_reg_1249[0]),
        .R(1'b0));
  FDRE \input_w_V_read_reg_1249_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_w_V[1]),
        .Q(input_w_V_read_reg_1249[1]),
        .R(1'b0));
  FDRE \input_w_V_read_reg_1249_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_w_V[2]),
        .Q(input_w_V_read_reg_1249[2]),
        .R(1'b0));
  FDRE \input_w_V_read_reg_1249_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_w_V[3]),
        .Q(input_w_V_read_reg_1249[3]),
        .R(1'b0));
  FDRE \input_w_V_read_reg_1249_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_w_V[4]),
        .Q(input_w_V_read_reg_1249[4]),
        .R(1'b0));
  FDRE \input_w_V_read_reg_1249_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_w_V[5]),
        .Q(input_w_V_read_reg_1249[5]),
        .R(1'b0));
  FDRE \input_w_V_read_reg_1249_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_w_V[6]),
        .Q(input_w_V_read_reg_1249[6]),
        .R(1'b0));
  FDRE \input_w_V_read_reg_1249_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_w_V[7]),
        .Q(input_w_V_read_reg_1249[7]),
        .R(1'b0));
  FDRE \input_w_V_read_reg_1249_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(input_w_V[8]),
        .Q(input_w_V_read_reg_1249[8]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_kernel_bias_fp_0_V kernel_bias_fp_0_V_U
       (.ADDRARDADDR(kernel_bias_fp_0_V_address0),
        .CO(grp_post_process_unit_fu_403_n_17),
        .DIADI({kernel_bias_fp_0_V_U_n_30,kernel_bias_fp_0_V_U_n_31,kernel_bias_fp_0_V_U_n_32,kernel_bias_fp_0_V_U_n_33,kernel_bias_fp_0_V_U_n_34,kernel_bias_fp_0_V_U_n_35,kernel_bias_fp_0_V_U_n_36,kernel_bias_fp_0_V_U_n_37,kernel_bias_fp_0_V_U_n_38,kernel_bias_fp_0_V_U_n_39,kernel_bias_fp_0_V_U_n_40,kernel_bias_fp_0_V_U_n_41,kernel_bias_fp_0_V_U_n_42,kernel_bias_fp_0_V_U_n_43,kernel_bias_fp_0_V_U_n_44}),
        .DIBDI(rhs_V_2_fu_966_p1),
        .DOADO(bias_V_int_reg_6),
        .DOBDO(bias_V_int_reg),
        .O(p_Result_8_fu_98_p3),
        .Q({inStream_b_V_data_0_payload_A[47:32],inStream_b_V_data_0_payload_A[15:0]}),
        .S(kernel_bias_fp_0_V_U_n_94),
        .WEA(kernel_bias_fp_0_V_we0),
        .\activated_output_V_reg_380_reg[15] (grp_post_process_unit_fu_421_n_17),
        .\activated_output_V_reg_380_reg[15]_0 (p_Result_8_fu_98_p3_2),
        .ap_clk(ap_clk),
        .grp_post_process_unit_fu_403_ap_ce(grp_post_process_unit_fu_403_ap_ce),
        .kernel_bias_fp_0_V_ce0(kernel_bias_fp_0_V_ce0),
        .ram_reg(kernel_bias_fp_0_V_U_n_60),
        .ram_reg_0(kernel_bias_fp_0_V_U_n_61),
        .ram_reg_1({kernel_bias_fp_0_V_U_n_62,kernel_bias_fp_0_V_U_n_63,kernel_bias_fp_0_V_U_n_64,kernel_bias_fp_0_V_U_n_65}),
        .ram_reg_10(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .ram_reg_11({inStream_b_V_data_0_payload_B[47:32],inStream_b_V_data_0_payload_B[15:0]}),
        .ram_reg_2({kernel_bias_fp_0_V_U_n_66,kernel_bias_fp_0_V_U_n_67,kernel_bias_fp_0_V_U_n_68,kernel_bias_fp_0_V_U_n_69}),
        .ram_reg_3({kernel_bias_fp_0_V_U_n_70,kernel_bias_fp_0_V_U_n_71,kernel_bias_fp_0_V_U_n_72,kernel_bias_fp_0_V_U_n_73}),
        .ram_reg_4({kernel_bias_fp_0_V_U_n_74,kernel_bias_fp_0_V_U_n_75,kernel_bias_fp_0_V_U_n_76,kernel_bias_fp_0_V_U_n_77}),
        .ram_reg_5({kernel_bias_fp_0_V_U_n_78,kernel_bias_fp_0_V_U_n_79,kernel_bias_fp_0_V_U_n_80,kernel_bias_fp_0_V_U_n_81}),
        .ram_reg_6({kernel_bias_fp_0_V_U_n_82,kernel_bias_fp_0_V_U_n_83,kernel_bias_fp_0_V_U_n_84,kernel_bias_fp_0_V_U_n_85}),
        .ram_reg_7({kernel_bias_fp_0_V_U_n_86,kernel_bias_fp_0_V_U_n_87,kernel_bias_fp_0_V_U_n_88,kernel_bias_fp_0_V_U_n_89}),
        .ram_reg_8({kernel_bias_fp_0_V_U_n_90,kernel_bias_fp_0_V_U_n_91,kernel_bias_fp_0_V_U_n_92,kernel_bias_fp_0_V_U_n_93}),
        .ram_reg_9(kernel_bias_fp_0_V_U_n_95),
        .ret_V_fu_78_p2_carry__2(data_in_V_int_reg),
        .ret_V_fu_78_p2_carry__2_0(data_in_V_int_reg_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_kernel_bias_fp_0_V_3 kernel_bias_fp_1_V_U
       (.ADDRARDADDR(kernel_bias_fp_0_V_address0),
        .CO(grp_post_process_unit_fu_412_n_17),
        .DIADI(rhs_V_1_fu_876_p1),
        .DIBDI(rhs_V_3_fu_1056_p1),
        .DOADO(bias_V_int_reg_8),
        .DOBDO(bias_V_int_reg_7),
        .O(p_Result_8_fu_98_p3_0),
        .Q({ap_CS_fsm_pp1_stage0,\ap_CS_fsm_reg_n_0_[1] }),
        .S(kernel_bias_fp_1_V_U_n_103),
        .WEA(kernel_bias_fp_0_V_we0),
        .\activated_output_V_reg_380_reg[15] (grp_post_process_unit_fu_430_n_22),
        .\activated_output_V_reg_380_reg[15]_0 (p_Result_8_fu_98_p3_4),
        .\ap_CS_fsm[2]_i_2 (t_V_reg_337_reg),
        .\ap_CS_fsm_reg[1] (kernel_bias_fp_1_V_U_n_67),
        .ap_block_pp1_stage0_11001(ap_block_pp1_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp1_iter0(ap_enable_reg_pp1_iter0),
        .bias_en_V_read_reg_1225(bias_en_V_read_reg_1225),
        .\fold_input_ch_V_read_reg_1241_reg[1] (kernel_bias_fp_1_V_U_n_68),
        .\fold_input_ch_V_read_reg_1241_reg[3] (kernel_bias_fp_1_V_U_n_69),
        .grp_post_process_unit_fu_403_ap_ce(grp_post_process_unit_fu_403_ap_ce),
        .\i_op_assign_2_reg_392_reg[0] (kernel_bias_fp_1_V_U_n_70),
        .kernel_bias_fp_0_V_ce0(kernel_bias_fp_0_V_ce0),
        .ram_reg(kernel_bias_fp_1_V_U_n_65),
        .ram_reg_0(kernel_bias_fp_1_V_U_n_66),
        .ram_reg_1({kernel_bias_fp_1_V_U_n_71,kernel_bias_fp_1_V_U_n_72,kernel_bias_fp_1_V_U_n_73,kernel_bias_fp_1_V_U_n_74}),
        .ram_reg_10(\inStream_b_V_data_0_state_reg_n_0_[0] ),
        .ram_reg_11(fold_input_ch_V_read_reg_1241),
        .ram_reg_12({\i_op_assign_2_reg_392_reg_n_0_[3] ,\i_op_assign_2_reg_392_reg_n_0_[2] ,\i_op_assign_2_reg_392_reg_n_0_[1] ,\i_op_assign_2_reg_392_reg_n_0_[0] }),
        .ram_reg_13({inStream_b_V_data_0_payload_B[63:48],inStream_b_V_data_0_payload_B[31:16]}),
        .ram_reg_14(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .ram_reg_15({inStream_b_V_data_0_payload_A[63:48],inStream_b_V_data_0_payload_A[31:16]}),
        .ram_reg_16(p_0_in4_in),
        .ram_reg_2({kernel_bias_fp_1_V_U_n_75,kernel_bias_fp_1_V_U_n_76,kernel_bias_fp_1_V_U_n_77,kernel_bias_fp_1_V_U_n_78}),
        .ram_reg_3({kernel_bias_fp_1_V_U_n_79,kernel_bias_fp_1_V_U_n_80,kernel_bias_fp_1_V_U_n_81,kernel_bias_fp_1_V_U_n_82}),
        .ram_reg_4({kernel_bias_fp_1_V_U_n_83,kernel_bias_fp_1_V_U_n_84,kernel_bias_fp_1_V_U_n_85,kernel_bias_fp_1_V_U_n_86}),
        .ram_reg_5({kernel_bias_fp_1_V_U_n_87,kernel_bias_fp_1_V_U_n_88,kernel_bias_fp_1_V_U_n_89,kernel_bias_fp_1_V_U_n_90}),
        .ram_reg_6({kernel_bias_fp_1_V_U_n_91,kernel_bias_fp_1_V_U_n_92,kernel_bias_fp_1_V_U_n_93,kernel_bias_fp_1_V_U_n_94}),
        .ram_reg_7({kernel_bias_fp_1_V_U_n_95,kernel_bias_fp_1_V_U_n_96,kernel_bias_fp_1_V_U_n_97,kernel_bias_fp_1_V_U_n_98}),
        .ram_reg_8({kernel_bias_fp_1_V_U_n_99,kernel_bias_fp_1_V_U_n_100,kernel_bias_fp_1_V_U_n_101,kernel_bias_fp_1_V_U_n_102}),
        .ram_reg_9(kernel_bias_fp_1_V_U_n_104),
        .ret_V_fu_78_p2_carry__2(data_in_V_int_reg_1),
        .ret_V_fu_78_p2_carry__2_0(data_in_V_int_reg_5));
  FDRE \leaky_V_read_reg_1233_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1111_out),
        .D(leaky_V),
        .Q(leaky_V_read_reg_1233),
        .R(1'b0));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mul_ln1354_1_reg_1287_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mul_ln1354_fu_524_p2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln1354_1_reg_1287_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,input_h_V}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln1354_1_reg_1287_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln1354_1_reg_1287_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln1354_1_reg_1287_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ap_CS_fsm_state3),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_NS_fsm1111_out),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_CS_fsm_state4),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln1354_1_reg_1287_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln1354_1_reg_1287_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_ln1354_1_reg_1287_reg_P_UNCONNECTED[47:22],mul_ln1354_1_reg_1287_reg_n_84,mul_ln1354_1_reg_1287_reg_n_85,mul_ln1354_1_reg_1287_reg_n_86,mul_ln1354_1_reg_1287_reg_n_87,mul_ln1354_1_reg_1287_reg_n_88,mul_ln1354_1_reg_1287_reg_n_89,mul_ln1354_1_reg_1287_reg_n_90,mul_ln1354_1_reg_1287_reg_n_91,mul_ln1354_1_reg_1287_reg_n_92,mul_ln1354_1_reg_1287_reg_n_93,mul_ln1354_1_reg_1287_reg_n_94,mul_ln1354_1_reg_1287_reg_n_95,mul_ln1354_1_reg_1287_reg_n_96,mul_ln1354_1_reg_1287_reg_n_97,mul_ln1354_1_reg_1287_reg_n_98,mul_ln1354_1_reg_1287_reg_n_99,mul_ln1354_1_reg_1287_reg_n_100,mul_ln1354_1_reg_1287_reg_n_101,mul_ln1354_1_reg_1287_reg_n_102,mul_ln1354_1_reg_1287_reg_n_103,mul_ln1354_1_reg_1287_reg_n_104,mul_ln1354_1_reg_1287_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln1354_1_reg_1287_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln1354_1_reg_1287_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_ln1354_1_reg_1287_reg_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_ln1354_1_reg_1287_reg_UNDERFLOW_UNCONNECTED));
  CARRY4 mul_ln1354_1_reg_1287_reg_i_1
       (.CI(mul_ln1354_1_reg_1287_reg_i_2_n_0),
        .CO({NLW_mul_ln1354_1_reg_1287_reg_i_1_CO_UNCONNECTED[3:1],mul_ln1354_fu_524_p2[12]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_mul_ln1354_1_reg_1287_reg_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    mul_ln1354_1_reg_1287_reg_i_10
       (.I0(mul_ln1354_1_reg_1287_reg_i_6_n_0),
        .I1(mul_ln1354_1_reg_1287_reg_i_34_n_0),
        .I2(fold_input_ch_V_read_reg_1241[2]),
        .I3(input_w_V_read_reg_1249[8]),
        .I4(fold_input_ch_V_read_reg_1241[3]),
        .I5(input_w_V_read_reg_1249[7]),
        .O(mul_ln1354_1_reg_1287_reg_i_10_n_0));
  LUT5 #(
    .INIT(32'h6A95956A)) 
    mul_ln1354_1_reg_1287_reg_i_11
       (.I0(mul_ln1354_1_reg_1287_reg_i_7_n_0),
        .I1(input_w_V_read_reg_1249[8]),
        .I2(fold_input_ch_V_read_reg_1241[1]),
        .I3(mul_ln1354_1_reg_1287_reg_i_28_n_0),
        .I4(mul_ln1354_1_reg_1287_reg_i_29_n_0),
        .O(mul_ln1354_1_reg_1287_reg_i_11_n_0));
  LUT5 #(
    .INIT(32'h6A95956A)) 
    mul_ln1354_1_reg_1287_reg_i_12
       (.I0(mul_ln1354_1_reg_1287_reg_i_8_n_0),
        .I1(input_w_V_read_reg_1249[8]),
        .I2(fold_input_ch_V_read_reg_1241[0]),
        .I3(mul_ln1354_1_reg_1287_reg_i_31_n_0),
        .I4(mul_ln1354_1_reg_1287_reg_i_30_n_0),
        .O(mul_ln1354_1_reg_1287_reg_i_12_n_0));
  LUT4 #(
    .INIT(16'hF880)) 
    mul_ln1354_1_reg_1287_reg_i_13
       (.I0(input_w_V_read_reg_1249[6]),
        .I1(fold_input_ch_V_read_reg_1241[0]),
        .I2(mul_ln1354_1_reg_1287_reg_i_35_n_0),
        .I3(mul_ln1354_1_reg_1287_reg_i_36_n_0),
        .O(mul_ln1354_1_reg_1287_reg_i_13_n_0));
  LUT4 #(
    .INIT(16'hF880)) 
    mul_ln1354_1_reg_1287_reg_i_14
       (.I0(input_w_V_read_reg_1249[5]),
        .I1(fold_input_ch_V_read_reg_1241[0]),
        .I2(mul_ln1354_1_reg_1287_reg_i_37_n_0),
        .I3(mul_ln1354_1_reg_1287_reg_i_38_n_0),
        .O(mul_ln1354_1_reg_1287_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'hABAA000002000000)) 
    mul_ln1354_1_reg_1287_reg_i_15
       (.I0(input_w_V_read_reg_1249[4]),
        .I1(mul_ln1354_1_reg_1287_reg_i_39_n_0),
        .I2(mul_ln1354_1_reg_1287_reg_i_40_n_0),
        .I3(input_w_V_read_reg_1249[0]),
        .I4(fold_input_ch_V_read_reg_1241[0]),
        .I5(mul_ln1354_1_reg_1287_reg_i_41_n_0),
        .O(mul_ln1354_1_reg_1287_reg_i_15_n_0));
  LUT6 #(
    .INIT(64'h02FDFD02FF00FF00)) 
    mul_ln1354_1_reg_1287_reg_i_16
       (.I0(input_w_V_read_reg_1249[0]),
        .I1(mul_ln1354_1_reg_1287_reg_i_40_n_0),
        .I2(mul_ln1354_1_reg_1287_reg_i_39_n_0),
        .I3(mul_ln1354_1_reg_1287_reg_i_41_n_0),
        .I4(input_w_V_read_reg_1249[4]),
        .I5(fold_input_ch_V_read_reg_1241[0]),
        .O(mul_ln1354_1_reg_1287_reg_i_16_n_0));
  LUT5 #(
    .INIT(32'h6A95956A)) 
    mul_ln1354_1_reg_1287_reg_i_17
       (.I0(mul_ln1354_1_reg_1287_reg_i_13_n_0),
        .I1(input_w_V_read_reg_1249[7]),
        .I2(fold_input_ch_V_read_reg_1241[0]),
        .I3(mul_ln1354_1_reg_1287_reg_i_33_n_0),
        .I4(mul_ln1354_1_reg_1287_reg_i_32_n_0),
        .O(mul_ln1354_1_reg_1287_reg_i_17_n_0));
  LUT5 #(
    .INIT(32'h6A95956A)) 
    mul_ln1354_1_reg_1287_reg_i_18
       (.I0(mul_ln1354_1_reg_1287_reg_i_14_n_0),
        .I1(input_w_V_read_reg_1249[6]),
        .I2(fold_input_ch_V_read_reg_1241[0]),
        .I3(mul_ln1354_1_reg_1287_reg_i_36_n_0),
        .I4(mul_ln1354_1_reg_1287_reg_i_35_n_0),
        .O(mul_ln1354_1_reg_1287_reg_i_18_n_0));
  LUT5 #(
    .INIT(32'h6A95956A)) 
    mul_ln1354_1_reg_1287_reg_i_19
       (.I0(mul_ln1354_1_reg_1287_reg_i_15_n_0),
        .I1(input_w_V_read_reg_1249[5]),
        .I2(fold_input_ch_V_read_reg_1241[0]),
        .I3(mul_ln1354_1_reg_1287_reg_i_38_n_0),
        .I4(mul_ln1354_1_reg_1287_reg_i_37_n_0),
        .O(mul_ln1354_1_reg_1287_reg_i_19_n_0));
  CARRY4 mul_ln1354_1_reg_1287_reg_i_2
       (.CI(mul_ln1354_1_reg_1287_reg_i_3_n_0),
        .CO({mul_ln1354_1_reg_1287_reg_i_2_n_0,mul_ln1354_1_reg_1287_reg_i_2_n_1,mul_ln1354_1_reg_1287_reg_i_2_n_2,mul_ln1354_1_reg_1287_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({mul_ln1354_1_reg_1287_reg_i_5_n_0,mul_ln1354_1_reg_1287_reg_i_6_n_0,mul_ln1354_1_reg_1287_reg_i_7_n_0,mul_ln1354_1_reg_1287_reg_i_8_n_0}),
        .O(mul_ln1354_fu_524_p2[11:8]),
        .S({mul_ln1354_1_reg_1287_reg_i_9_n_0,mul_ln1354_1_reg_1287_reg_i_10_n_0,mul_ln1354_1_reg_1287_reg_i_11_n_0,mul_ln1354_1_reg_1287_reg_i_12_n_0}));
  LUT6 #(
    .INIT(64'h6AAAAAAA556A6A6A)) 
    mul_ln1354_1_reg_1287_reg_i_20
       (.I0(mul_ln1354_1_reg_1287_reg_i_16_n_0),
        .I1(input_w_V_read_reg_1249[0]),
        .I2(fold_input_ch_V_read_reg_1241[3]),
        .I3(input_w_V_read_reg_1249[2]),
        .I4(fold_input_ch_V_read_reg_1241[1]),
        .I5(mul_ln1354_1_reg_1287_reg_i_40_n_0),
        .O(mul_ln1354_1_reg_1287_reg_i_20_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    mul_ln1354_1_reg_1287_reg_i_21
       (.I0(input_w_V_read_reg_1249[2]),
        .I1(fold_input_ch_V_read_reg_1241[1]),
        .I2(input_w_V_read_reg_1249[0]),
        .I3(fold_input_ch_V_read_reg_1241[3]),
        .I4(fold_input_ch_V_read_reg_1241[2]),
        .I5(input_w_V_read_reg_1249[1]),
        .O(mul_ln1354_1_reg_1287_reg_i_21_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    mul_ln1354_1_reg_1287_reg_i_22
       (.I0(fold_input_ch_V_read_reg_1241[1]),
        .I1(input_w_V_read_reg_1249[1]),
        .I2(fold_input_ch_V_read_reg_1241[2]),
        .I3(input_w_V_read_reg_1249[0]),
        .O(mul_ln1354_1_reg_1287_reg_i_22_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln1354_1_reg_1287_reg_i_23
       (.I0(input_w_V_read_reg_1249[1]),
        .I1(fold_input_ch_V_read_reg_1241[0]),
        .O(mul_ln1354_1_reg_1287_reg_i_23_n_0));
  LUT6 #(
    .INIT(64'h5955A6AAA6AAA6AA)) 
    mul_ln1354_1_reg_1287_reg_i_24
       (.I0(mul_ln1354_1_reg_1287_reg_i_21_n_0),
        .I1(input_w_V_read_reg_1249[0]),
        .I2(mul_ln1354_1_reg_1287_reg_i_40_n_0),
        .I3(fold_input_ch_V_read_reg_1241[1]),
        .I4(input_w_V_read_reg_1249[3]),
        .I5(fold_input_ch_V_read_reg_1241[0]),
        .O(mul_ln1354_1_reg_1287_reg_i_24_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    mul_ln1354_1_reg_1287_reg_i_25
       (.I0(input_w_V_read_reg_1249[0]),
        .I1(fold_input_ch_V_read_reg_1241[2]),
        .I2(input_w_V_read_reg_1249[1]),
        .I3(fold_input_ch_V_read_reg_1241[1]),
        .I4(fold_input_ch_V_read_reg_1241[0]),
        .I5(input_w_V_read_reg_1249[2]),
        .O(mul_ln1354_1_reg_1287_reg_i_25_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    mul_ln1354_1_reg_1287_reg_i_26
       (.I0(fold_input_ch_V_read_reg_1241[0]),
        .I1(input_w_V_read_reg_1249[1]),
        .I2(fold_input_ch_V_read_reg_1241[1]),
        .I3(input_w_V_read_reg_1249[0]),
        .O(mul_ln1354_1_reg_1287_reg_i_26_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln1354_1_reg_1287_reg_i_27
       (.I0(input_w_V_read_reg_1249[0]),
        .I1(fold_input_ch_V_read_reg_1241[0]),
        .O(mul_ln1354_1_reg_1287_reg_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    mul_ln1354_1_reg_1287_reg_i_28
       (.I0(fold_input_ch_V_read_reg_1241[3]),
        .I1(input_w_V_read_reg_1249[6]),
        .I2(fold_input_ch_V_read_reg_1241[2]),
        .I3(input_w_V_read_reg_1249[7]),
        .O(mul_ln1354_1_reg_1287_reg_i_28_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    mul_ln1354_1_reg_1287_reg_i_29
       (.I0(fold_input_ch_V_read_reg_1241[2]),
        .I1(input_w_V_read_reg_1249[6]),
        .I2(input_w_V_read_reg_1249[5]),
        .I3(fold_input_ch_V_read_reg_1241[3]),
        .I4(input_w_V_read_reg_1249[7]),
        .I5(fold_input_ch_V_read_reg_1241[1]),
        .O(mul_ln1354_1_reg_1287_reg_i_29_n_0));
  CARRY4 mul_ln1354_1_reg_1287_reg_i_3
       (.CI(mul_ln1354_1_reg_1287_reg_i_4_n_0),
        .CO({mul_ln1354_1_reg_1287_reg_i_3_n_0,mul_ln1354_1_reg_1287_reg_i_3_n_1,mul_ln1354_1_reg_1287_reg_i_3_n_2,mul_ln1354_1_reg_1287_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({mul_ln1354_1_reg_1287_reg_i_13_n_0,mul_ln1354_1_reg_1287_reg_i_14_n_0,mul_ln1354_1_reg_1287_reg_i_15_n_0,mul_ln1354_1_reg_1287_reg_i_16_n_0}),
        .O(mul_ln1354_fu_524_p2[7:4]),
        .S({mul_ln1354_1_reg_1287_reg_i_17_n_0,mul_ln1354_1_reg_1287_reg_i_18_n_0,mul_ln1354_1_reg_1287_reg_i_19_n_0,mul_ln1354_1_reg_1287_reg_i_20_n_0}));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    mul_ln1354_1_reg_1287_reg_i_30
       (.I0(input_w_V_read_reg_1249[7]),
        .I1(fold_input_ch_V_read_reg_1241[1]),
        .I2(input_w_V_read_reg_1249[6]),
        .I3(fold_input_ch_V_read_reg_1241[2]),
        .I4(fold_input_ch_V_read_reg_1241[3]),
        .I5(input_w_V_read_reg_1249[5]),
        .O(mul_ln1354_1_reg_1287_reg_i_30_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    mul_ln1354_1_reg_1287_reg_i_31
       (.I0(fold_input_ch_V_read_reg_1241[2]),
        .I1(input_w_V_read_reg_1249[5]),
        .I2(input_w_V_read_reg_1249[6]),
        .I3(fold_input_ch_V_read_reg_1241[1]),
        .I4(input_w_V_read_reg_1249[4]),
        .I5(fold_input_ch_V_read_reg_1241[3]),
        .O(mul_ln1354_1_reg_1287_reg_i_31_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    mul_ln1354_1_reg_1287_reg_i_32
       (.I0(input_w_V_read_reg_1249[4]),
        .I1(fold_input_ch_V_read_reg_1241[3]),
        .I2(input_w_V_read_reg_1249[5]),
        .I3(fold_input_ch_V_read_reg_1241[2]),
        .I4(fold_input_ch_V_read_reg_1241[1]),
        .I5(input_w_V_read_reg_1249[6]),
        .O(mul_ln1354_1_reg_1287_reg_i_32_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    mul_ln1354_1_reg_1287_reg_i_33
       (.I0(input_w_V_read_reg_1249[4]),
        .I1(fold_input_ch_V_read_reg_1241[2]),
        .I2(fold_input_ch_V_read_reg_1241[1]),
        .I3(input_w_V_read_reg_1249[5]),
        .I4(fold_input_ch_V_read_reg_1241[3]),
        .I5(input_w_V_read_reg_1249[3]),
        .O(mul_ln1354_1_reg_1287_reg_i_33_n_0));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    mul_ln1354_1_reg_1287_reg_i_34
       (.I0(fold_input_ch_V_read_reg_1241[2]),
        .I1(input_w_V_read_reg_1249[7]),
        .I2(input_w_V_read_reg_1249[6]),
        .I3(fold_input_ch_V_read_reg_1241[1]),
        .I4(input_w_V_read_reg_1249[8]),
        .I5(fold_input_ch_V_read_reg_1241[3]),
        .O(mul_ln1354_1_reg_1287_reg_i_34_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    mul_ln1354_1_reg_1287_reg_i_35
       (.I0(input_w_V_read_reg_1249[5]),
        .I1(fold_input_ch_V_read_reg_1241[1]),
        .I2(input_w_V_read_reg_1249[3]),
        .I3(fold_input_ch_V_read_reg_1241[3]),
        .I4(fold_input_ch_V_read_reg_1241[2]),
        .I5(input_w_V_read_reg_1249[4]),
        .O(mul_ln1354_1_reg_1287_reg_i_35_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    mul_ln1354_1_reg_1287_reg_i_36
       (.I0(fold_input_ch_V_read_reg_1241[2]),
        .I1(input_w_V_read_reg_1249[3]),
        .I2(input_w_V_read_reg_1249[2]),
        .I3(fold_input_ch_V_read_reg_1241[3]),
        .I4(input_w_V_read_reg_1249[4]),
        .I5(fold_input_ch_V_read_reg_1241[1]),
        .O(mul_ln1354_1_reg_1287_reg_i_36_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    mul_ln1354_1_reg_1287_reg_i_37
       (.I0(input_w_V_read_reg_1249[4]),
        .I1(fold_input_ch_V_read_reg_1241[1]),
        .I2(input_w_V_read_reg_1249[3]),
        .I3(fold_input_ch_V_read_reg_1241[2]),
        .I4(fold_input_ch_V_read_reg_1241[3]),
        .I5(input_w_V_read_reg_1249[2]),
        .O(mul_ln1354_1_reg_1287_reg_i_37_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    mul_ln1354_1_reg_1287_reg_i_38
       (.I0(fold_input_ch_V_read_reg_1241[2]),
        .I1(input_w_V_read_reg_1249[2]),
        .I2(input_w_V_read_reg_1249[3]),
        .I3(fold_input_ch_V_read_reg_1241[1]),
        .I4(input_w_V_read_reg_1249[1]),
        .I5(fold_input_ch_V_read_reg_1241[3]),
        .O(mul_ln1354_1_reg_1287_reg_i_38_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    mul_ln1354_1_reg_1287_reg_i_39
       (.I0(input_w_V_read_reg_1249[3]),
        .I1(fold_input_ch_V_read_reg_1241[1]),
        .O(mul_ln1354_1_reg_1287_reg_i_39_n_0));
  CARRY4 mul_ln1354_1_reg_1287_reg_i_4
       (.CI(1'b0),
        .CO({mul_ln1354_1_reg_1287_reg_i_4_n_0,mul_ln1354_1_reg_1287_reg_i_4_n_1,mul_ln1354_1_reg_1287_reg_i_4_n_2,mul_ln1354_1_reg_1287_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({mul_ln1354_1_reg_1287_reg_i_21_n_0,mul_ln1354_1_reg_1287_reg_i_22_n_0,mul_ln1354_1_reg_1287_reg_i_23_n_0,1'b0}),
        .O(mul_ln1354_fu_524_p2[3:0]),
        .S({mul_ln1354_1_reg_1287_reg_i_24_n_0,mul_ln1354_1_reg_1287_reg_i_25_n_0,mul_ln1354_1_reg_1287_reg_i_26_n_0,mul_ln1354_1_reg_1287_reg_i_27_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    mul_ln1354_1_reg_1287_reg_i_40
       (.I0(input_w_V_read_reg_1249[1]),
        .I1(fold_input_ch_V_read_reg_1241[2]),
        .O(mul_ln1354_1_reg_1287_reg_i_40_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    mul_ln1354_1_reg_1287_reg_i_41
       (.I0(input_w_V_read_reg_1249[1]),
        .I1(fold_input_ch_V_read_reg_1241[3]),
        .I2(input_w_V_read_reg_1249[2]),
        .I3(fold_input_ch_V_read_reg_1241[2]),
        .I4(fold_input_ch_V_read_reg_1241[1]),
        .I5(input_w_V_read_reg_1249[3]),
        .O(mul_ln1354_1_reg_1287_reg_i_41_n_0));
  LUT6 #(
    .INIT(64'hE8A0808080008000)) 
    mul_ln1354_1_reg_1287_reg_i_5
       (.I0(input_w_V_read_reg_1249[7]),
        .I1(fold_input_ch_V_read_reg_1241[3]),
        .I2(fold_input_ch_V_read_reg_1241[2]),
        .I3(input_w_V_read_reg_1249[6]),
        .I4(fold_input_ch_V_read_reg_1241[1]),
        .I5(input_w_V_read_reg_1249[8]),
        .O(mul_ln1354_1_reg_1287_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'h6A00)) 
    mul_ln1354_1_reg_1287_reg_i_6
       (.I0(mul_ln1354_1_reg_1287_reg_i_28_n_0),
        .I1(input_w_V_read_reg_1249[8]),
        .I2(fold_input_ch_V_read_reg_1241[1]),
        .I3(mul_ln1354_1_reg_1287_reg_i_29_n_0),
        .O(mul_ln1354_1_reg_1287_reg_i_6_n_0));
  LUT4 #(
    .INIT(16'hF880)) 
    mul_ln1354_1_reg_1287_reg_i_7
       (.I0(input_w_V_read_reg_1249[8]),
        .I1(fold_input_ch_V_read_reg_1241[0]),
        .I2(mul_ln1354_1_reg_1287_reg_i_30_n_0),
        .I3(mul_ln1354_1_reg_1287_reg_i_31_n_0),
        .O(mul_ln1354_1_reg_1287_reg_i_7_n_0));
  LUT4 #(
    .INIT(16'hF880)) 
    mul_ln1354_1_reg_1287_reg_i_8
       (.I0(input_w_V_read_reg_1249[7]),
        .I1(fold_input_ch_V_read_reg_1241[0]),
        .I2(mul_ln1354_1_reg_1287_reg_i_32_n_0),
        .I3(mul_ln1354_1_reg_1287_reg_i_33_n_0),
        .O(mul_ln1354_1_reg_1287_reg_i_8_n_0));
  LUT6 #(
    .INIT(64'h077FA000C0000000)) 
    mul_ln1354_1_reg_1287_reg_i_9
       (.I0(fold_input_ch_V_read_reg_1241[1]),
        .I1(input_w_V_read_reg_1249[6]),
        .I2(fold_input_ch_V_read_reg_1241[2]),
        .I3(input_w_V_read_reg_1249[7]),
        .I4(fold_input_ch_V_read_reg_1241[3]),
        .I5(input_w_V_read_reg_1249[8]),
        .O(mul_ln1354_1_reg_1287_reg_i_9_n_0));
  FDRE \mul_ln1354_reg_1269_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(mul_ln1354_fu_524_p2[0]),
        .Q(mul_ln1354_reg_1269[0]),
        .R(1'b0));
  FDRE \mul_ln1354_reg_1269_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(mul_ln1354_fu_524_p2[10]),
        .Q(mul_ln1354_reg_1269[10]),
        .R(1'b0));
  FDRE \mul_ln1354_reg_1269_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(mul_ln1354_fu_524_p2[11]),
        .Q(mul_ln1354_reg_1269[11]),
        .R(1'b0));
  FDRE \mul_ln1354_reg_1269_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(mul_ln1354_fu_524_p2[12]),
        .Q(mul_ln1354_reg_1269[12]),
        .R(1'b0));
  FDRE \mul_ln1354_reg_1269_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(mul_ln1354_fu_524_p2[1]),
        .Q(mul_ln1354_reg_1269[1]),
        .R(1'b0));
  FDRE \mul_ln1354_reg_1269_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(mul_ln1354_fu_524_p2[2]),
        .Q(mul_ln1354_reg_1269[2]),
        .R(1'b0));
  FDRE \mul_ln1354_reg_1269_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(mul_ln1354_fu_524_p2[3]),
        .Q(mul_ln1354_reg_1269[3]),
        .R(1'b0));
  FDRE \mul_ln1354_reg_1269_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(mul_ln1354_fu_524_p2[4]),
        .Q(mul_ln1354_reg_1269[4]),
        .R(1'b0));
  FDRE \mul_ln1354_reg_1269_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(mul_ln1354_fu_524_p2[5]),
        .Q(mul_ln1354_reg_1269[5]),
        .R(1'b0));
  FDRE \mul_ln1354_reg_1269_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(mul_ln1354_fu_524_p2[6]),
        .Q(mul_ln1354_reg_1269[6]),
        .R(1'b0));
  FDRE \mul_ln1354_reg_1269_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(mul_ln1354_fu_524_p2[7]),
        .Q(mul_ln1354_reg_1269[7]),
        .R(1'b0));
  FDRE \mul_ln1354_reg_1269_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(mul_ln1354_fu_524_p2[8]),
        .Q(mul_ln1354_reg_1269[8]),
        .R(1'b0));
  FDRE \mul_ln1354_reg_1269_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(mul_ln1354_fu_524_p2[9]),
        .Q(mul_ln1354_reg_1269[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[0]_INST_0 
       (.I0(outStream_V_data_1_payload_B[0]),
        .I1(outStream_V_data_1_payload_A[0]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[10]_INST_0 
       (.I0(outStream_V_data_1_payload_B[10]),
        .I1(outStream_V_data_1_payload_A[10]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[11]_INST_0 
       (.I0(outStream_V_data_1_payload_B[11]),
        .I1(outStream_V_data_1_payload_A[11]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[12]_INST_0 
       (.I0(outStream_V_data_1_payload_B[12]),
        .I1(outStream_V_data_1_payload_A[12]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[13]_INST_0 
       (.I0(outStream_V_data_1_payload_B[13]),
        .I1(outStream_V_data_1_payload_A[13]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[14]_INST_0 
       (.I0(outStream_V_data_1_payload_B[14]),
        .I1(outStream_V_data_1_payload_A[14]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[15]_INST_0 
       (.I0(outStream_V_data_1_payload_B[15]),
        .I1(outStream_V_data_1_payload_A[15]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[16]_INST_0 
       (.I0(outStream_V_data_1_payload_B[16]),
        .I1(outStream_V_data_1_payload_A[16]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[17]_INST_0 
       (.I0(outStream_V_data_1_payload_B[17]),
        .I1(outStream_V_data_1_payload_A[17]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[18]_INST_0 
       (.I0(outStream_V_data_1_payload_B[18]),
        .I1(outStream_V_data_1_payload_A[18]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[19]_INST_0 
       (.I0(outStream_V_data_1_payload_B[19]),
        .I1(outStream_V_data_1_payload_A[19]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[1]_INST_0 
       (.I0(outStream_V_data_1_payload_B[1]),
        .I1(outStream_V_data_1_payload_A[1]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[20]_INST_0 
       (.I0(outStream_V_data_1_payload_B[20]),
        .I1(outStream_V_data_1_payload_A[20]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[21]_INST_0 
       (.I0(outStream_V_data_1_payload_B[21]),
        .I1(outStream_V_data_1_payload_A[21]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[22]_INST_0 
       (.I0(outStream_V_data_1_payload_B[22]),
        .I1(outStream_V_data_1_payload_A[22]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[23]_INST_0 
       (.I0(outStream_V_data_1_payload_B[23]),
        .I1(outStream_V_data_1_payload_A[23]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[24]_INST_0 
       (.I0(outStream_V_data_1_payload_B[24]),
        .I1(outStream_V_data_1_payload_A[24]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[25]_INST_0 
       (.I0(outStream_V_data_1_payload_B[25]),
        .I1(outStream_V_data_1_payload_A[25]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[26]_INST_0 
       (.I0(outStream_V_data_1_payload_B[26]),
        .I1(outStream_V_data_1_payload_A[26]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[27]_INST_0 
       (.I0(outStream_V_data_1_payload_B[27]),
        .I1(outStream_V_data_1_payload_A[27]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[28]_INST_0 
       (.I0(outStream_V_data_1_payload_B[28]),
        .I1(outStream_V_data_1_payload_A[28]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[29]_INST_0 
       (.I0(outStream_V_data_1_payload_B[29]),
        .I1(outStream_V_data_1_payload_A[29]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[2]_INST_0 
       (.I0(outStream_V_data_1_payload_B[2]),
        .I1(outStream_V_data_1_payload_A[2]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[30]_INST_0 
       (.I0(outStream_V_data_1_payload_B[30]),
        .I1(outStream_V_data_1_payload_A[30]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[31]_INST_0 
       (.I0(outStream_V_data_1_payload_B[31]),
        .I1(outStream_V_data_1_payload_A[31]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[32]_INST_0 
       (.I0(outStream_V_data_1_payload_B[32]),
        .I1(outStream_V_data_1_payload_A[32]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[32]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[33]_INST_0 
       (.I0(outStream_V_data_1_payload_B[33]),
        .I1(outStream_V_data_1_payload_A[33]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[33]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[34]_INST_0 
       (.I0(outStream_V_data_1_payload_B[34]),
        .I1(outStream_V_data_1_payload_A[34]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[34]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[35]_INST_0 
       (.I0(outStream_V_data_1_payload_B[35]),
        .I1(outStream_V_data_1_payload_A[35]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[35]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[36]_INST_0 
       (.I0(outStream_V_data_1_payload_B[36]),
        .I1(outStream_V_data_1_payload_A[36]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[36]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[37]_INST_0 
       (.I0(outStream_V_data_1_payload_B[37]),
        .I1(outStream_V_data_1_payload_A[37]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[37]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[38]_INST_0 
       (.I0(outStream_V_data_1_payload_B[38]),
        .I1(outStream_V_data_1_payload_A[38]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[38]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[39]_INST_0 
       (.I0(outStream_V_data_1_payload_B[39]),
        .I1(outStream_V_data_1_payload_A[39]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[39]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[3]_INST_0 
       (.I0(outStream_V_data_1_payload_B[3]),
        .I1(outStream_V_data_1_payload_A[3]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[40]_INST_0 
       (.I0(outStream_V_data_1_payload_B[40]),
        .I1(outStream_V_data_1_payload_A[40]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[40]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[41]_INST_0 
       (.I0(outStream_V_data_1_payload_B[41]),
        .I1(outStream_V_data_1_payload_A[41]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[41]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[42]_INST_0 
       (.I0(outStream_V_data_1_payload_B[42]),
        .I1(outStream_V_data_1_payload_A[42]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[42]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[43]_INST_0 
       (.I0(outStream_V_data_1_payload_B[43]),
        .I1(outStream_V_data_1_payload_A[43]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[43]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[44]_INST_0 
       (.I0(outStream_V_data_1_payload_B[44]),
        .I1(outStream_V_data_1_payload_A[44]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[44]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[45]_INST_0 
       (.I0(outStream_V_data_1_payload_B[45]),
        .I1(outStream_V_data_1_payload_A[45]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[45]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[46]_INST_0 
       (.I0(outStream_V_data_1_payload_B[46]),
        .I1(outStream_V_data_1_payload_A[46]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[46]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[47]_INST_0 
       (.I0(outStream_V_data_1_payload_B[47]),
        .I1(outStream_V_data_1_payload_A[47]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[47]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[48]_INST_0 
       (.I0(outStream_V_data_1_payload_B[48]),
        .I1(outStream_V_data_1_payload_A[48]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[48]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[49]_INST_0 
       (.I0(outStream_V_data_1_payload_B[49]),
        .I1(outStream_V_data_1_payload_A[49]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[49]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[4]_INST_0 
       (.I0(outStream_V_data_1_payload_B[4]),
        .I1(outStream_V_data_1_payload_A[4]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[50]_INST_0 
       (.I0(outStream_V_data_1_payload_B[50]),
        .I1(outStream_V_data_1_payload_A[50]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[50]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[51]_INST_0 
       (.I0(outStream_V_data_1_payload_B[51]),
        .I1(outStream_V_data_1_payload_A[51]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[51]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[52]_INST_0 
       (.I0(outStream_V_data_1_payload_B[52]),
        .I1(outStream_V_data_1_payload_A[52]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[52]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[53]_INST_0 
       (.I0(outStream_V_data_1_payload_B[53]),
        .I1(outStream_V_data_1_payload_A[53]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[53]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[54]_INST_0 
       (.I0(outStream_V_data_1_payload_B[54]),
        .I1(outStream_V_data_1_payload_A[54]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[54]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[55]_INST_0 
       (.I0(outStream_V_data_1_payload_B[55]),
        .I1(outStream_V_data_1_payload_A[55]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[55]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[56]_INST_0 
       (.I0(outStream_V_data_1_payload_B[56]),
        .I1(outStream_V_data_1_payload_A[56]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[56]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[57]_INST_0 
       (.I0(outStream_V_data_1_payload_B[57]),
        .I1(outStream_V_data_1_payload_A[57]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[57]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[58]_INST_0 
       (.I0(outStream_V_data_1_payload_B[58]),
        .I1(outStream_V_data_1_payload_A[58]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[58]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[59]_INST_0 
       (.I0(outStream_V_data_1_payload_B[59]),
        .I1(outStream_V_data_1_payload_A[59]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[59]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[5]_INST_0 
       (.I0(outStream_V_data_1_payload_B[5]),
        .I1(outStream_V_data_1_payload_A[5]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[60]_INST_0 
       (.I0(outStream_V_data_1_payload_B[60]),
        .I1(outStream_V_data_1_payload_A[60]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[60]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[61]_INST_0 
       (.I0(outStream_V_data_1_payload_B[61]),
        .I1(outStream_V_data_1_payload_A[61]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[61]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[62]_INST_0 
       (.I0(outStream_V_data_1_payload_B[62]),
        .I1(outStream_V_data_1_payload_A[62]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[62]));
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[63]_INST_0 
       (.I0(outStream_V_data_1_payload_B[63]),
        .I1(outStream_V_data_1_payload_A[63]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[63]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[6]_INST_0 
       (.I0(outStream_V_data_1_payload_B[6]),
        .I1(outStream_V_data_1_payload_A[6]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[7]_INST_0 
       (.I0(outStream_V_data_1_payload_B[7]),
        .I1(outStream_V_data_1_payload_A[7]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[8]_INST_0 
       (.I0(outStream_V_data_1_payload_B[8]),
        .I1(outStream_V_data_1_payload_A[8]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TDATA[9]_INST_0 
       (.I0(outStream_V_data_1_payload_B[9]),
        .I1(outStream_V_data_1_payload_A[9]),
        .I2(outStream_V_data_1_sel),
        .O(outStream_TDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TDEST[0]_INST_0 
       (.I0(outStream_V_dest_V_1_payload_B[0]),
        .I1(outStream_V_dest_V_1_sel),
        .I2(outStream_V_dest_V_1_payload_A[0]),
        .O(outStream_TDEST[0]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TDEST[1]_INST_0 
       (.I0(outStream_V_dest_V_1_payload_B[1]),
        .I1(outStream_V_dest_V_1_sel),
        .I2(outStream_V_dest_V_1_payload_A[1]),
        .O(outStream_TDEST[1]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TDEST[2]_INST_0 
       (.I0(outStream_V_dest_V_1_payload_B[2]),
        .I1(outStream_V_dest_V_1_sel),
        .I2(outStream_V_dest_V_1_payload_A[2]),
        .O(outStream_TDEST[2]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TDEST[3]_INST_0 
       (.I0(outStream_V_dest_V_1_payload_B[3]),
        .I1(outStream_V_dest_V_1_sel),
        .I2(outStream_V_dest_V_1_payload_A[3]),
        .O(outStream_TDEST[3]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TDEST[4]_INST_0 
       (.I0(outStream_V_dest_V_1_payload_B[4]),
        .I1(outStream_V_dest_V_1_sel),
        .I2(outStream_V_dest_V_1_payload_A[4]),
        .O(outStream_TDEST[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TDEST[5]_INST_0 
       (.I0(outStream_V_dest_V_1_payload_B[5]),
        .I1(outStream_V_dest_V_1_sel),
        .I2(outStream_V_dest_V_1_payload_A[5]),
        .O(outStream_TDEST[5]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TID[0]_INST_0 
       (.I0(outStream_V_id_V_1_payload_B[0]),
        .I1(outStream_V_id_V_1_sel),
        .I2(outStream_V_id_V_1_payload_A[0]),
        .O(outStream_TID[0]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TID[1]_INST_0 
       (.I0(outStream_V_id_V_1_payload_B[1]),
        .I1(outStream_V_id_V_1_sel),
        .I2(outStream_V_id_V_1_payload_A[1]),
        .O(outStream_TID[1]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TID[2]_INST_0 
       (.I0(outStream_V_id_V_1_payload_B[2]),
        .I1(outStream_V_id_V_1_sel),
        .I2(outStream_V_id_V_1_payload_A[2]),
        .O(outStream_TID[2]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TID[3]_INST_0 
       (.I0(outStream_V_id_V_1_payload_B[3]),
        .I1(outStream_V_id_V_1_sel),
        .I2(outStream_V_id_V_1_payload_A[3]),
        .O(outStream_TID[3]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TID[4]_INST_0 
       (.I0(outStream_V_id_V_1_payload_B[4]),
        .I1(outStream_V_id_V_1_sel),
        .I2(outStream_V_id_V_1_payload_A[4]),
        .O(outStream_TID[4]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[0]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[0]),
        .I1(outStream_V_keep_V_1_payload_A[0]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[0]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[1]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[1]),
        .I1(outStream_V_keep_V_1_payload_A[1]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[1]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[2]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[2]),
        .I1(outStream_V_keep_V_1_payload_A[2]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[2]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[3]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[3]),
        .I1(outStream_V_keep_V_1_payload_A[3]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[3]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[4]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[4]),
        .I1(outStream_V_keep_V_1_payload_A[4]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[4]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[5]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[5]),
        .I1(outStream_V_keep_V_1_payload_A[5]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[5]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[6]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[6]),
        .I1(outStream_V_keep_V_1_payload_A[6]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[6]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TKEEP[7]_INST_0 
       (.I0(outStream_V_keep_V_1_payload_B[7]),
        .I1(outStream_V_keep_V_1_payload_A[7]),
        .I2(outStream_V_keep_V_1_sel),
        .O(outStream_TKEEP[7]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TLAST[0]_INST_0 
       (.I0(outStream_V_last_V_1_payload_B),
        .I1(outStream_V_last_V_1_sel),
        .I2(outStream_V_last_V_1_payload_A),
        .O(outStream_TLAST));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[0]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[0]),
        .I1(outStream_V_strb_V_1_payload_A[0]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[0]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[1]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[1]),
        .I1(outStream_V_strb_V_1_payload_A[1]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[1]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[2]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[2]),
        .I1(outStream_V_strb_V_1_payload_A[2]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[3]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[3]),
        .I1(outStream_V_strb_V_1_payload_A[3]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[3]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[4]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[4]),
        .I1(outStream_V_strb_V_1_payload_A[4]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[4]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[5]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[5]),
        .I1(outStream_V_strb_V_1_payload_A[5]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[5]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[6]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[6]),
        .I1(outStream_V_strb_V_1_payload_A[6]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[6]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \outStream_TSTRB[7]_INST_0 
       (.I0(outStream_V_strb_V_1_payload_B[7]),
        .I1(outStream_V_strb_V_1_payload_A[7]),
        .I2(outStream_V_strb_V_1_sel),
        .O(outStream_TSTRB[7]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TUSER[0]_INST_0 
       (.I0(outStream_V_user_V_1_payload_B[0]),
        .I1(outStream_V_user_V_1_sel),
        .I2(outStream_V_user_V_1_payload_A[0]),
        .O(outStream_TUSER[0]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_TUSER[1]_INST_0 
       (.I0(outStream_V_user_V_1_payload_B[1]),
        .I1(outStream_V_user_V_1_sel),
        .I2(outStream_V_user_V_1_payload_A[1]),
        .O(outStream_TUSER[1]));
  LUT3 #(
    .INIT(8'h0D)) 
    \outStream_V_data_1_payload_A[63]_i_1 
       (.I0(\outStream_V_data_1_state_reg_n_0_[0] ),
        .I1(outStream_V_data_1_ack_in),
        .I2(outStream_V_data_1_sel_wr),
        .O(outStream_V_data_1_load_A));
  FDRE \outStream_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[0]),
        .Q(outStream_V_data_1_payload_A[0]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[10]),
        .Q(outStream_V_data_1_payload_A[10]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[11]),
        .Q(outStream_V_data_1_payload_A[11]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[12]),
        .Q(outStream_V_data_1_payload_A[12]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[13]),
        .Q(outStream_V_data_1_payload_A[13]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[14]),
        .Q(outStream_V_data_1_payload_A[14]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[15]),
        .Q(outStream_V_data_1_payload_A[15]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[0]),
        .Q(outStream_V_data_1_payload_A[16]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[1]),
        .Q(outStream_V_data_1_payload_A[17]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[2]),
        .Q(outStream_V_data_1_payload_A[18]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[3]),
        .Q(outStream_V_data_1_payload_A[19]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[1]),
        .Q(outStream_V_data_1_payload_A[1]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[4]),
        .Q(outStream_V_data_1_payload_A[20]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[5]),
        .Q(outStream_V_data_1_payload_A[21]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[6]),
        .Q(outStream_V_data_1_payload_A[22]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[7]),
        .Q(outStream_V_data_1_payload_A[23]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[8]),
        .Q(outStream_V_data_1_payload_A[24]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[9]),
        .Q(outStream_V_data_1_payload_A[25]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[10]),
        .Q(outStream_V_data_1_payload_A[26]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[11]),
        .Q(outStream_V_data_1_payload_A[27]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[12]),
        .Q(outStream_V_data_1_payload_A[28]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[13]),
        .Q(outStream_V_data_1_payload_A[29]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[2]),
        .Q(outStream_V_data_1_payload_A[2]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[14]),
        .Q(outStream_V_data_1_payload_A[30]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_412_ap_return[15]),
        .Q(outStream_V_data_1_payload_A[31]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[0]),
        .Q(outStream_V_data_1_payload_A[32]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[1]),
        .Q(outStream_V_data_1_payload_A[33]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[2]),
        .Q(outStream_V_data_1_payload_A[34]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[3]),
        .Q(outStream_V_data_1_payload_A[35]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[4]),
        .Q(outStream_V_data_1_payload_A[36]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[5]),
        .Q(outStream_V_data_1_payload_A[37]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[6]),
        .Q(outStream_V_data_1_payload_A[38]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[7]),
        .Q(outStream_V_data_1_payload_A[39]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[3]),
        .Q(outStream_V_data_1_payload_A[3]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[8]),
        .Q(outStream_V_data_1_payload_A[40]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[9]),
        .Q(outStream_V_data_1_payload_A[41]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[10]),
        .Q(outStream_V_data_1_payload_A[42]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[11]),
        .Q(outStream_V_data_1_payload_A[43]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[12]),
        .Q(outStream_V_data_1_payload_A[44]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[13]),
        .Q(outStream_V_data_1_payload_A[45]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[14]),
        .Q(outStream_V_data_1_payload_A[46]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_421_ap_return[15]),
        .Q(outStream_V_data_1_payload_A[47]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[0]),
        .Q(outStream_V_data_1_payload_A[48]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[1]),
        .Q(outStream_V_data_1_payload_A[49]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[4]),
        .Q(outStream_V_data_1_payload_A[4]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[2]),
        .Q(outStream_V_data_1_payload_A[50]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[3]),
        .Q(outStream_V_data_1_payload_A[51]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[4]),
        .Q(outStream_V_data_1_payload_A[52]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[5]),
        .Q(outStream_V_data_1_payload_A[53]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[6]),
        .Q(outStream_V_data_1_payload_A[54]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[7]),
        .Q(outStream_V_data_1_payload_A[55]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[8]),
        .Q(outStream_V_data_1_payload_A[56]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[9]),
        .Q(outStream_V_data_1_payload_A[57]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[10]),
        .Q(outStream_V_data_1_payload_A[58]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[11]),
        .Q(outStream_V_data_1_payload_A[59]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[5]),
        .Q(outStream_V_data_1_payload_A[5]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[12]),
        .Q(outStream_V_data_1_payload_A[60]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[13]),
        .Q(outStream_V_data_1_payload_A[61]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[14]),
        .Q(outStream_V_data_1_payload_A[62]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_430_ap_return[15]),
        .Q(outStream_V_data_1_payload_A[63]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[6]),
        .Q(outStream_V_data_1_payload_A[6]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[7]),
        .Q(outStream_V_data_1_payload_A[7]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[8]),
        .Q(outStream_V_data_1_payload_A[8]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_A),
        .D(grp_post_process_unit_fu_403_ap_return[9]),
        .Q(outStream_V_data_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \outStream_V_data_1_payload_B[63]_i_1 
       (.I0(\outStream_V_data_1_state_reg_n_0_[0] ),
        .I1(outStream_V_data_1_ack_in),
        .I2(outStream_V_data_1_sel_wr),
        .O(outStream_V_data_1_load_B));
  FDRE \outStream_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[0]),
        .Q(outStream_V_data_1_payload_B[0]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[10]),
        .Q(outStream_V_data_1_payload_B[10]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[11]),
        .Q(outStream_V_data_1_payload_B[11]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[12]),
        .Q(outStream_V_data_1_payload_B[12]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[13]),
        .Q(outStream_V_data_1_payload_B[13]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[14]),
        .Q(outStream_V_data_1_payload_B[14]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[15]),
        .Q(outStream_V_data_1_payload_B[15]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[0]),
        .Q(outStream_V_data_1_payload_B[16]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[1]),
        .Q(outStream_V_data_1_payload_B[17]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[2]),
        .Q(outStream_V_data_1_payload_B[18]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[3]),
        .Q(outStream_V_data_1_payload_B[19]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[1]),
        .Q(outStream_V_data_1_payload_B[1]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[4]),
        .Q(outStream_V_data_1_payload_B[20]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[5]),
        .Q(outStream_V_data_1_payload_B[21]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[6]),
        .Q(outStream_V_data_1_payload_B[22]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[7]),
        .Q(outStream_V_data_1_payload_B[23]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[8]),
        .Q(outStream_V_data_1_payload_B[24]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[9]),
        .Q(outStream_V_data_1_payload_B[25]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[10]),
        .Q(outStream_V_data_1_payload_B[26]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[11]),
        .Q(outStream_V_data_1_payload_B[27]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[12]),
        .Q(outStream_V_data_1_payload_B[28]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[13]),
        .Q(outStream_V_data_1_payload_B[29]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[2]),
        .Q(outStream_V_data_1_payload_B[2]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[14]),
        .Q(outStream_V_data_1_payload_B[30]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_412_ap_return[15]),
        .Q(outStream_V_data_1_payload_B[31]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[0]),
        .Q(outStream_V_data_1_payload_B[32]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[1]),
        .Q(outStream_V_data_1_payload_B[33]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[2]),
        .Q(outStream_V_data_1_payload_B[34]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[3]),
        .Q(outStream_V_data_1_payload_B[35]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[4]),
        .Q(outStream_V_data_1_payload_B[36]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[5]),
        .Q(outStream_V_data_1_payload_B[37]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[6]),
        .Q(outStream_V_data_1_payload_B[38]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[7]),
        .Q(outStream_V_data_1_payload_B[39]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[3]),
        .Q(outStream_V_data_1_payload_B[3]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[8]),
        .Q(outStream_V_data_1_payload_B[40]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[9]),
        .Q(outStream_V_data_1_payload_B[41]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[10]),
        .Q(outStream_V_data_1_payload_B[42]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[11]),
        .Q(outStream_V_data_1_payload_B[43]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[12]),
        .Q(outStream_V_data_1_payload_B[44]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[13]),
        .Q(outStream_V_data_1_payload_B[45]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[14]),
        .Q(outStream_V_data_1_payload_B[46]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_421_ap_return[15]),
        .Q(outStream_V_data_1_payload_B[47]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[0]),
        .Q(outStream_V_data_1_payload_B[48]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[1]),
        .Q(outStream_V_data_1_payload_B[49]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[4]),
        .Q(outStream_V_data_1_payload_B[4]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[2]),
        .Q(outStream_V_data_1_payload_B[50]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[3]),
        .Q(outStream_V_data_1_payload_B[51]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[4]),
        .Q(outStream_V_data_1_payload_B[52]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[5]),
        .Q(outStream_V_data_1_payload_B[53]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[6]),
        .Q(outStream_V_data_1_payload_B[54]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[7]),
        .Q(outStream_V_data_1_payload_B[55]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[8]),
        .Q(outStream_V_data_1_payload_B[56]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[9]),
        .Q(outStream_V_data_1_payload_B[57]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[10]),
        .Q(outStream_V_data_1_payload_B[58]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[11]),
        .Q(outStream_V_data_1_payload_B[59]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[5]),
        .Q(outStream_V_data_1_payload_B[5]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[12]),
        .Q(outStream_V_data_1_payload_B[60]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[13]),
        .Q(outStream_V_data_1_payload_B[61]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[14]),
        .Q(outStream_V_data_1_payload_B[62]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_430_ap_return[15]),
        .Q(outStream_V_data_1_payload_B[63]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[6]),
        .Q(outStream_V_data_1_payload_B[6]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[7]),
        .Q(outStream_V_data_1_payload_B[7]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[8]),
        .Q(outStream_V_data_1_payload_B[8]),
        .R(1'b0));
  FDRE \outStream_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(outStream_V_data_1_load_B),
        .D(grp_post_process_unit_fu_403_ap_return[9]),
        .Q(outStream_V_data_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_data_1_sel_rd_i_1
       (.I0(outStream_TREADY),
        .I1(\outStream_V_data_1_state_reg_n_0_[0] ),
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
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_data_1_sel_wr_i_1
       (.I0(outStream_V_data_1_ack_in),
        .I1(p_172_in),
        .I2(outStream_V_data_1_sel_wr),
        .O(outStream_V_data_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_data_1_sel_wr_i_1_n_0),
        .Q(outStream_V_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \outStream_V_data_1_state[0]_i_1 
       (.I0(outStream_TREADY),
        .I1(p_172_in),
        .I2(outStream_V_data_1_ack_in),
        .I3(\outStream_V_data_1_state_reg_n_0_[0] ),
        .I4(ap_rst_n),
        .O(\outStream_V_data_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'hDCFF)) 
    \outStream_V_data_1_state[1]_i_1 
       (.I0(p_172_in),
        .I1(outStream_TREADY),
        .I2(outStream_V_data_1_ack_in),
        .I3(\outStream_V_data_1_state_reg_n_0_[0] ),
        .O(\outStream_V_data_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_data_1_state[0]_i_1_n_0 ),
        .Q(\outStream_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_data_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_data_1_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \outStream_V_dest_V_1_payload_A[5]_i_1 
       (.I0(outStream_TVALID),
        .I1(outStream_V_dest_V_1_state),
        .I2(outStream_V_dest_V_1_sel_wr),
        .O(outStream_V_dest_V_1_load_A));
  FDRE \outStream_V_dest_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_A),
        .D(tmp_dest_V_reg_1341_pp1_iter3_reg[0]),
        .Q(outStream_V_dest_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_A),
        .D(tmp_dest_V_reg_1341_pp1_iter3_reg[1]),
        .Q(outStream_V_dest_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_A),
        .D(tmp_dest_V_reg_1341_pp1_iter3_reg[2]),
        .Q(outStream_V_dest_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_A),
        .D(tmp_dest_V_reg_1341_pp1_iter3_reg[3]),
        .Q(outStream_V_dest_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_A),
        .D(tmp_dest_V_reg_1341_pp1_iter3_reg[4]),
        .Q(outStream_V_dest_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_A),
        .D(tmp_dest_V_reg_1341_pp1_iter3_reg[5]),
        .Q(outStream_V_dest_V_1_payload_A[5]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \outStream_V_dest_V_1_payload_B[5]_i_1 
       (.I0(outStream_TVALID),
        .I1(outStream_V_dest_V_1_state),
        .I2(outStream_V_dest_V_1_sel_wr),
        .O(outStream_V_dest_V_1_load_B));
  FDRE \outStream_V_dest_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_B),
        .D(tmp_dest_V_reg_1341_pp1_iter3_reg[0]),
        .Q(outStream_V_dest_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_B),
        .D(tmp_dest_V_reg_1341_pp1_iter3_reg[1]),
        .Q(outStream_V_dest_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_B),
        .D(tmp_dest_V_reg_1341_pp1_iter3_reg[2]),
        .Q(outStream_V_dest_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_B),
        .D(tmp_dest_V_reg_1341_pp1_iter3_reg[3]),
        .Q(outStream_V_dest_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_B),
        .D(tmp_dest_V_reg_1341_pp1_iter3_reg[4]),
        .Q(outStream_V_dest_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \outStream_V_dest_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_dest_V_1_load_B),
        .D(tmp_dest_V_reg_1341_pp1_iter3_reg[5]),
        .Q(outStream_V_dest_V_1_payload_B[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_dest_V_1_sel_wr_i_1
       (.I0(outStream_V_dest_V_1_state),
        .I1(p_172_in),
        .I2(outStream_V_dest_V_1_sel_wr),
        .O(outStream_V_dest_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_dest_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_dest_V_1_sel_wr_i_1_n_0),
        .Q(outStream_V_dest_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \outStream_V_dest_V_1_state[0]_i_1 
       (.I0(outStream_TREADY),
        .I1(p_172_in),
        .I2(outStream_V_dest_V_1_state),
        .I3(outStream_TVALID),
        .I4(ap_rst_n),
        .O(\outStream_V_dest_V_1_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \outStream_V_dest_V_1_state[0]_i_2 
       (.I0(\icmp_ln40_reg_1302_pp1_iter3_reg_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp1_iter4),
        .I2(ap_block_pp1_stage0_11001),
        .O(p_172_in));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'hDCFF)) 
    \outStream_V_dest_V_1_state[1]_i_1 
       (.I0(p_172_in),
        .I1(outStream_TREADY),
        .I2(outStream_V_dest_V_1_state),
        .I3(outStream_TVALID),
        .O(\outStream_V_dest_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_dest_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_dest_V_1_state[0]_i_1_n_0 ),
        .Q(outStream_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_dest_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_dest_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_dest_V_1_state),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \outStream_V_id_V_1_payload_A[4]_i_1 
       (.I0(outStream_V_id_V_1_state[0]),
        .I1(outStream_V_id_V_1_state[1]),
        .I2(outStream_V_id_V_1_sel_wr),
        .O(outStream_V_id_V_1_load_A));
  FDRE \outStream_V_id_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_A),
        .D(tmp_id_V_reg_1336_pp1_iter3_reg[0]),
        .Q(outStream_V_id_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_A),
        .D(tmp_id_V_reg_1336_pp1_iter3_reg[1]),
        .Q(outStream_V_id_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_A),
        .D(tmp_id_V_reg_1336_pp1_iter3_reg[2]),
        .Q(outStream_V_id_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_A),
        .D(tmp_id_V_reg_1336_pp1_iter3_reg[3]),
        .Q(outStream_V_id_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_A),
        .D(tmp_id_V_reg_1336_pp1_iter3_reg[4]),
        .Q(outStream_V_id_V_1_payload_A[4]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \outStream_V_id_V_1_payload_B[4]_i_1 
       (.I0(outStream_V_id_V_1_state[0]),
        .I1(outStream_V_id_V_1_state[1]),
        .I2(outStream_V_id_V_1_sel_wr),
        .O(outStream_V_id_V_1_load_B));
  FDRE \outStream_V_id_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_B),
        .D(tmp_id_V_reg_1336_pp1_iter3_reg[0]),
        .Q(outStream_V_id_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_B),
        .D(tmp_id_V_reg_1336_pp1_iter3_reg[1]),
        .Q(outStream_V_id_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_B),
        .D(tmp_id_V_reg_1336_pp1_iter3_reg[2]),
        .Q(outStream_V_id_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_B),
        .D(tmp_id_V_reg_1336_pp1_iter3_reg[3]),
        .Q(outStream_V_id_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \outStream_V_id_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_id_V_1_load_B),
        .D(tmp_id_V_reg_1336_pp1_iter3_reg[4]),
        .Q(outStream_V_id_V_1_payload_B[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_id_V_1_sel_rd_i_1
       (.I0(outStream_V_id_V_1_state[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_id_V_1_sel_wr_i_1
       (.I0(outStream_V_id_V_1_state[1]),
        .I1(p_172_in),
        .I2(outStream_V_id_V_1_sel_wr),
        .O(outStream_V_id_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_id_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_id_V_1_sel_wr_i_1_n_0),
        .Q(outStream_V_id_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \outStream_V_id_V_1_state[0]_i_1 
       (.I0(outStream_TREADY),
        .I1(p_172_in),
        .I2(outStream_V_id_V_1_state[1]),
        .I3(outStream_V_id_V_1_state[0]),
        .I4(ap_rst_n),
        .O(\outStream_V_id_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'hDCFF)) 
    \outStream_V_id_V_1_state[1]_i_1 
       (.I0(p_172_in),
        .I1(outStream_TREADY),
        .I2(outStream_V_id_V_1_state[1]),
        .I3(outStream_V_id_V_1_state[0]),
        .O(\outStream_V_id_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_id_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_id_V_1_state[0]_i_1_n_0 ),
        .Q(outStream_V_id_V_1_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_id_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_id_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_id_V_1_state[1]),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \outStream_V_keep_V_1_payload_A[7]_i_1 
       (.I0(outStream_V_keep_V_1_state[0]),
        .I1(outStream_V_keep_V_1_state[1]),
        .I2(outStream_V_keep_V_1_sel_wr),
        .O(outStream_V_keep_V_1_load_A));
  FDRE \outStream_V_keep_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[0]),
        .Q(outStream_V_keep_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[1]),
        .Q(outStream_V_keep_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[2]),
        .Q(outStream_V_keep_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[3]),
        .Q(outStream_V_keep_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[4]),
        .Q(outStream_V_keep_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[5]),
        .Q(outStream_V_keep_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[6]),
        .Q(outStream_V_keep_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_A),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[7]),
        .Q(outStream_V_keep_V_1_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \outStream_V_keep_V_1_payload_B[7]_i_1 
       (.I0(outStream_V_keep_V_1_state[0]),
        .I1(outStream_V_keep_V_1_state[1]),
        .I2(outStream_V_keep_V_1_sel_wr),
        .O(outStream_V_keep_V_1_load_B));
  FDRE \outStream_V_keep_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[0]),
        .Q(outStream_V_keep_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[1]),
        .Q(outStream_V_keep_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[2]),
        .Q(outStream_V_keep_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[3]),
        .Q(outStream_V_keep_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[4]),
        .Q(outStream_V_keep_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[5]),
        .Q(outStream_V_keep_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[6]),
        .Q(outStream_V_keep_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \outStream_V_keep_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_keep_V_1_load_B),
        .D(tmp_keep_V_reg_1321_pp1_iter3_reg[7]),
        .Q(outStream_V_keep_V_1_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_keep_V_1_sel_rd_i_1
       (.I0(outStream_V_keep_V_1_state[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_keep_V_1_sel_wr_i_1
       (.I0(outStream_V_keep_V_1_state[1]),
        .I1(p_172_in),
        .I2(outStream_V_keep_V_1_sel_wr),
        .O(outStream_V_keep_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_keep_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_keep_V_1_sel_wr_i_1_n_0),
        .Q(outStream_V_keep_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \outStream_V_keep_V_1_state[0]_i_1 
       (.I0(outStream_TREADY),
        .I1(p_172_in),
        .I2(outStream_V_keep_V_1_state[1]),
        .I3(outStream_V_keep_V_1_state[0]),
        .I4(ap_rst_n),
        .O(\outStream_V_keep_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'hDCFF)) 
    \outStream_V_keep_V_1_state[1]_i_1 
       (.I0(p_172_in),
        .I1(outStream_TREADY),
        .I2(outStream_V_keep_V_1_state[1]),
        .I3(outStream_V_keep_V_1_state[0]),
        .O(\outStream_V_keep_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_keep_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_keep_V_1_state[0]_i_1_n_0 ),
        .Q(outStream_V_keep_V_1_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_keep_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_keep_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_keep_V_1_state[1]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \outStream_V_last_V_1_payload_A[0]_i_1 
       (.I0(tmp_last_V_reg_1386_pp1_iter3_reg),
        .I1(outStream_V_last_V_1_state[0]),
        .I2(outStream_V_last_V_1_state[1]),
        .I3(outStream_V_last_V_1_sel_wr),
        .I4(outStream_V_last_V_1_payload_A),
        .O(\outStream_V_last_V_1_payload_A[0]_i_1_n_0 ));
  FDRE \outStream_V_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_last_V_1_payload_A[0]_i_1_n_0 ),
        .Q(outStream_V_last_V_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \outStream_V_last_V_1_payload_B[0]_i_1 
       (.I0(tmp_last_V_reg_1386_pp1_iter3_reg),
        .I1(outStream_V_last_V_1_state[0]),
        .I2(outStream_V_last_V_1_state[1]),
        .I3(outStream_V_last_V_1_sel_wr),
        .I4(outStream_V_last_V_1_payload_B),
        .O(\outStream_V_last_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \outStream_V_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_last_V_1_payload_B[0]_i_1_n_0 ),
        .Q(outStream_V_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_last_V_1_sel_rd_i_1
       (.I0(outStream_V_last_V_1_state[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_last_V_1_sel_wr_i_1
       (.I0(outStream_V_last_V_1_state[1]),
        .I1(p_172_in),
        .I2(outStream_V_last_V_1_sel_wr),
        .O(outStream_V_last_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_last_V_1_sel_wr_i_1_n_0),
        .Q(outStream_V_last_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \outStream_V_last_V_1_state[0]_i_1 
       (.I0(outStream_TREADY),
        .I1(p_172_in),
        .I2(outStream_V_last_V_1_state[1]),
        .I3(outStream_V_last_V_1_state[0]),
        .I4(ap_rst_n),
        .O(\outStream_V_last_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'hDCFF)) 
    \outStream_V_last_V_1_state[1]_i_1 
       (.I0(p_172_in),
        .I1(outStream_TREADY),
        .I2(outStream_V_last_V_1_state[1]),
        .I3(outStream_V_last_V_1_state[0]),
        .O(\outStream_V_last_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_last_V_1_state[0]_i_1_n_0 ),
        .Q(outStream_V_last_V_1_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_last_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_last_V_1_state[1]),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \outStream_V_strb_V_1_payload_A[7]_i_1 
       (.I0(outStream_V_strb_V_1_state[0]),
        .I1(outStream_V_strb_V_1_state[1]),
        .I2(outStream_V_strb_V_1_sel_wr),
        .O(outStream_V_strb_V_1_load_A));
  FDRE \outStream_V_strb_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[0]),
        .Q(outStream_V_strb_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[1]),
        .Q(outStream_V_strb_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[2]),
        .Q(outStream_V_strb_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[3]),
        .Q(outStream_V_strb_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[4]),
        .Q(outStream_V_strb_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[5]),
        .Q(outStream_V_strb_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[6]),
        .Q(outStream_V_strb_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_A),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[7]),
        .Q(outStream_V_strb_V_1_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \outStream_V_strb_V_1_payload_B[7]_i_1 
       (.I0(outStream_V_strb_V_1_state[0]),
        .I1(outStream_V_strb_V_1_state[1]),
        .I2(outStream_V_strb_V_1_sel_wr),
        .O(outStream_V_strb_V_1_load_B));
  FDRE \outStream_V_strb_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[0]),
        .Q(outStream_V_strb_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[1]),
        .Q(outStream_V_strb_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[2]),
        .Q(outStream_V_strb_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[3]),
        .Q(outStream_V_strb_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[4]),
        .Q(outStream_V_strb_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[5]),
        .Q(outStream_V_strb_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[6]),
        .Q(outStream_V_strb_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \outStream_V_strb_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(outStream_V_strb_V_1_load_B),
        .D(tmp_strb_V_reg_1326_pp1_iter3_reg[7]),
        .Q(outStream_V_strb_V_1_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_strb_V_1_sel_rd_i_1
       (.I0(outStream_V_strb_V_1_state[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_strb_V_1_sel_wr_i_1
       (.I0(outStream_V_strb_V_1_state[1]),
        .I1(p_172_in),
        .I2(outStream_V_strb_V_1_sel_wr),
        .O(outStream_V_strb_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_strb_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_strb_V_1_sel_wr_i_1_n_0),
        .Q(outStream_V_strb_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \outStream_V_strb_V_1_state[0]_i_1 
       (.I0(outStream_TREADY),
        .I1(p_172_in),
        .I2(outStream_V_strb_V_1_state[1]),
        .I3(outStream_V_strb_V_1_state[0]),
        .I4(ap_rst_n),
        .O(\outStream_V_strb_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'hDCFF)) 
    \outStream_V_strb_V_1_state[1]_i_1 
       (.I0(p_172_in),
        .I1(outStream_TREADY),
        .I2(outStream_V_strb_V_1_state[1]),
        .I3(outStream_V_strb_V_1_state[0]),
        .O(\outStream_V_strb_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_strb_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_strb_V_1_state[0]_i_1_n_0 ),
        .Q(outStream_V_strb_V_1_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_strb_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_strb_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_strb_V_1_state[1]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \outStream_V_user_V_1_payload_A[0]_i_1 
       (.I0(tmp_user_V_reg_1331_pp1_iter3_reg[0]),
        .I1(outStream_V_user_V_1_state[0]),
        .I2(outStream_V_user_V_1_state[1]),
        .I3(outStream_V_user_V_1_sel_wr),
        .I4(outStream_V_user_V_1_payload_A[0]),
        .O(\outStream_V_user_V_1_payload_A[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \outStream_V_user_V_1_payload_A[1]_i_1 
       (.I0(tmp_user_V_reg_1331_pp1_iter3_reg[1]),
        .I1(outStream_V_user_V_1_state[0]),
        .I2(outStream_V_user_V_1_state[1]),
        .I3(outStream_V_user_V_1_sel_wr),
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
    .INIT(32'hAEFFA200)) 
    \outStream_V_user_V_1_payload_B[0]_i_1 
       (.I0(tmp_user_V_reg_1331_pp1_iter3_reg[0]),
        .I1(outStream_V_user_V_1_state[0]),
        .I2(outStream_V_user_V_1_state[1]),
        .I3(outStream_V_user_V_1_sel_wr),
        .I4(outStream_V_user_V_1_payload_B[0]),
        .O(\outStream_V_user_V_1_payload_B[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \outStream_V_user_V_1_payload_B[1]_i_1 
       (.I0(tmp_user_V_reg_1331_pp1_iter3_reg[1]),
        .I1(outStream_V_user_V_1_state[0]),
        .I2(outStream_V_user_V_1_state[1]),
        .I3(outStream_V_user_V_1_sel_wr),
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
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_user_V_1_sel_rd_i_1
       (.I0(outStream_V_user_V_1_state[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h78)) 
    outStream_V_user_V_1_sel_wr_i_1
       (.I0(outStream_V_user_V_1_state[1]),
        .I1(p_172_in),
        .I2(outStream_V_user_V_1_sel_wr),
        .O(outStream_V_user_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outStream_V_user_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(outStream_V_user_V_1_sel_wr_i_1_n_0),
        .Q(outStream_V_user_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hDFC00000)) 
    \outStream_V_user_V_1_state[0]_i_1 
       (.I0(outStream_TREADY),
        .I1(p_172_in),
        .I2(outStream_V_user_V_1_state[1]),
        .I3(outStream_V_user_V_1_state[0]),
        .I4(ap_rst_n),
        .O(\outStream_V_user_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'hDCFF)) 
    \outStream_V_user_V_1_state[1]_i_1 
       (.I0(p_172_in),
        .I1(outStream_TREADY),
        .I2(outStream_V_user_V_1_state[1]),
        .I3(outStream_V_user_V_1_state[0]),
        .O(\outStream_V_user_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_user_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_user_V_1_state[0]_i_1_n_0 ),
        .Q(outStream_V_user_V_1_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outStream_V_user_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\outStream_V_user_V_1_state[1]_i_1_n_0 ),
        .Q(outStream_V_user_V_1_state[1]),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[0]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[3]_i_2_n_7 ),
        .O(\output_acc_0_V_reg_1346[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[10]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[11]_i_2_n_5 ),
        .O(\output_acc_0_V_reg_1346[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[11]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[11]_i_2_n_4 ),
        .O(\output_acc_0_V_reg_1346[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[11]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[8]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[8]),
        .I3(inStream_b_V_data_0_payload_A[8]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[8]),
        .O(\output_acc_0_V_reg_1346[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[11]_i_3 
       (.I0(inStream_a_V_data_0_payload_B[11]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[11]),
        .O(\output_acc_0_V_reg_1346[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[11]_i_4 
       (.I0(inStream_a_V_data_0_payload_B[10]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[10]),
        .O(\output_acc_0_V_reg_1346[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[11]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[9]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[9]),
        .O(\output_acc_0_V_reg_1346[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[11]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[8]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[8]),
        .O(\output_acc_0_V_reg_1346[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[11]_i_7 
       (.I0(inStream_a_V_data_0_payload_A[11]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[11]),
        .I3(inStream_b_V_data_0_payload_A[11]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[11]),
        .O(\output_acc_0_V_reg_1346[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[11]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[10]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[10]),
        .I3(inStream_b_V_data_0_payload_A[10]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[10]),
        .O(\output_acc_0_V_reg_1346[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[11]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[9]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[9]),
        .I3(inStream_b_V_data_0_payload_A[9]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[9]),
        .O(\output_acc_0_V_reg_1346[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[12]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[15]_i_3_n_7 ),
        .O(\output_acc_0_V_reg_1346[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[13]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[15]_i_3_n_6 ),
        .O(\output_acc_0_V_reg_1346[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[14]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[15]_i_3_n_5 ),
        .O(\output_acc_0_V_reg_1346[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \output_acc_0_V_reg_1346[15]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .O(output_acc_0_V_reg_1346));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[13]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[13]),
        .I3(inStream_b_V_data_0_payload_A[13]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[13]),
        .O(\output_acc_0_V_reg_1346[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_11 
       (.I0(inStream_a_V_data_0_payload_A[12]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[12]),
        .I3(inStream_b_V_data_0_payload_A[12]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[12]),
        .O(\output_acc_0_V_reg_1346[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \output_acc_0_V_reg_1346[15]_i_13 
       (.I0(inStream_b_V_data_0_payload_B[15]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_A[15]),
        .O(\output_acc_0_V_reg_1346[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_14 
       (.I0(inStream_b_V_data_0_payload_A[15]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[15]),
        .I3(inStream_a_V_data_0_payload_A[15]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[15]),
        .O(\output_acc_0_V_reg_1346[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_15 
       (.I0(inStream_b_V_data_0_payload_A[14]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[14]),
        .I3(inStream_a_V_data_0_payload_A[14]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[14]),
        .O(\output_acc_0_V_reg_1346[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_16 
       (.I0(inStream_b_V_data_0_payload_A[13]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[13]),
        .I3(inStream_a_V_data_0_payload_A[13]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[13]),
        .O(\output_acc_0_V_reg_1346[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_17 
       (.I0(inStream_b_V_data_0_payload_A[12]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[12]),
        .I3(inStream_a_V_data_0_payload_A[12]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[12]),
        .O(\output_acc_0_V_reg_1346[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_19 
       (.I0(inStream_b_V_data_0_payload_A[11]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[11]),
        .I3(inStream_a_V_data_0_payload_A[11]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[11]),
        .O(\output_acc_0_V_reg_1346[15]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \output_acc_0_V_reg_1346[15]_i_2 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .O(\output_acc_0_V_reg_1346[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_20 
       (.I0(inStream_b_V_data_0_payload_A[10]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[10]),
        .I3(inStream_a_V_data_0_payload_A[10]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[10]),
        .O(\output_acc_0_V_reg_1346[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_21 
       (.I0(inStream_b_V_data_0_payload_A[9]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[9]),
        .I3(inStream_a_V_data_0_payload_A[9]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[9]),
        .O(\output_acc_0_V_reg_1346[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_22 
       (.I0(inStream_b_V_data_0_payload_A[8]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[8]),
        .I3(inStream_a_V_data_0_payload_A[8]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[8]),
        .O(\output_acc_0_V_reg_1346[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_24 
       (.I0(inStream_b_V_data_0_payload_A[7]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[7]),
        .I3(inStream_a_V_data_0_payload_A[7]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[7]),
        .O(\output_acc_0_V_reg_1346[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_25 
       (.I0(inStream_b_V_data_0_payload_A[6]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[6]),
        .I3(inStream_a_V_data_0_payload_A[6]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[6]),
        .O(\output_acc_0_V_reg_1346[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_26 
       (.I0(inStream_b_V_data_0_payload_A[5]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[5]),
        .I3(inStream_a_V_data_0_payload_A[5]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[5]),
        .O(\output_acc_0_V_reg_1346[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_27 
       (.I0(inStream_b_V_data_0_payload_A[4]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[4]),
        .I3(inStream_a_V_data_0_payload_A[4]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[4]),
        .O(\output_acc_0_V_reg_1346[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_28 
       (.I0(inStream_b_V_data_0_payload_A[3]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[3]),
        .I3(inStream_a_V_data_0_payload_A[3]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[3]),
        .O(\output_acc_0_V_reg_1346[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_29 
       (.I0(inStream_b_V_data_0_payload_A[2]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[2]),
        .I3(inStream_a_V_data_0_payload_A[2]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[2]),
        .O(\output_acc_0_V_reg_1346[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_30 
       (.I0(inStream_b_V_data_0_payload_A[1]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[1]),
        .I3(inStream_a_V_data_0_payload_A[1]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[1]),
        .O(\output_acc_0_V_reg_1346[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_31 
       (.I0(inStream_b_V_data_0_payload_A[0]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[0]),
        .I3(inStream_a_V_data_0_payload_A[0]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[0]),
        .O(\output_acc_0_V_reg_1346[15]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[15]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[14]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[14]),
        .O(\output_acc_0_V_reg_1346[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[15]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[13]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[13]),
        .O(\output_acc_0_V_reg_1346[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[15]_i_7 
       (.I0(inStream_a_V_data_0_payload_B[12]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[12]),
        .O(\output_acc_0_V_reg_1346[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[15]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[15]),
        .I3(inStream_b_V_data_0_payload_A[15]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[15]),
        .O(\output_acc_0_V_reg_1346[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[15]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[14]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[14]),
        .I3(inStream_b_V_data_0_payload_A[14]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[14]),
        .O(\output_acc_0_V_reg_1346[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[1]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[3]_i_2_n_6 ),
        .O(\output_acc_0_V_reg_1346[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[2]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[3]_i_2_n_5 ),
        .O(\output_acc_0_V_reg_1346[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[3]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[3]_i_2_n_4 ),
        .O(\output_acc_0_V_reg_1346[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[3]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[0]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[0]),
        .I3(inStream_b_V_data_0_payload_A[0]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[0]),
        .O(\output_acc_0_V_reg_1346[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[3]_i_3 
       (.I0(inStream_a_V_data_0_payload_B[3]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[3]),
        .O(\output_acc_0_V_reg_1346[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[3]_i_4 
       (.I0(inStream_a_V_data_0_payload_B[2]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[2]),
        .O(\output_acc_0_V_reg_1346[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[3]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[1]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[1]),
        .O(\output_acc_0_V_reg_1346[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[3]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[0]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[0]),
        .O(\output_acc_0_V_reg_1346[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[3]_i_7 
       (.I0(inStream_a_V_data_0_payload_A[3]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[3]),
        .I3(inStream_b_V_data_0_payload_A[3]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[3]),
        .O(\output_acc_0_V_reg_1346[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[3]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[2]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[2]),
        .I3(inStream_b_V_data_0_payload_A[2]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[2]),
        .O(\output_acc_0_V_reg_1346[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[3]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[1]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[1]),
        .I3(inStream_b_V_data_0_payload_A[1]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[1]),
        .O(\output_acc_0_V_reg_1346[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[4]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[7]_i_2_n_7 ),
        .O(\output_acc_0_V_reg_1346[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[5]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[7]_i_2_n_6 ),
        .O(\output_acc_0_V_reg_1346[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[6]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[7]_i_2_n_5 ),
        .O(\output_acc_0_V_reg_1346[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[7]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[7]_i_2_n_4 ),
        .O(\output_acc_0_V_reg_1346[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[7]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[4]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[4]),
        .I3(inStream_b_V_data_0_payload_A[4]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[4]),
        .O(\output_acc_0_V_reg_1346[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[7]_i_3 
       (.I0(inStream_a_V_data_0_payload_B[7]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[7]),
        .O(\output_acc_0_V_reg_1346[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[7]_i_4 
       (.I0(inStream_a_V_data_0_payload_B[6]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[6]),
        .O(\output_acc_0_V_reg_1346[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[7]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[5]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[5]),
        .O(\output_acc_0_V_reg_1346[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_0_V_reg_1346[7]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[4]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[4]),
        .O(\output_acc_0_V_reg_1346[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[7]_i_7 
       (.I0(inStream_a_V_data_0_payload_A[7]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[7]),
        .I3(inStream_b_V_data_0_payload_A[7]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[7]),
        .O(\output_acc_0_V_reg_1346[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[7]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[6]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[6]),
        .I3(inStream_b_V_data_0_payload_A[6]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[6]),
        .O(\output_acc_0_V_reg_1346[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_0_V_reg_1346[7]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[5]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[5]),
        .I3(inStream_b_V_data_0_payload_A[5]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[5]),
        .O(\output_acc_0_V_reg_1346[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[8]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[11]_i_2_n_7 ),
        .O(\output_acc_0_V_reg_1346[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_0_V_reg_1346[9]_i_1 
       (.I0(p_Result_1_fu_810_p3),
        .I1(\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_0_V_reg_1346_reg[11]_i_2_n_6 ),
        .O(\output_acc_0_V_reg_1346[9]_i_1_n_0 ));
  FDSE \output_acc_0_V_reg_1346_reg[0] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[0]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[0] ),
        .S(output_acc_0_V_reg_1346));
  FDSE \output_acc_0_V_reg_1346_reg[10] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[10]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[10] ),
        .S(output_acc_0_V_reg_1346));
  FDSE \output_acc_0_V_reg_1346_reg[11] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[11]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[11] ),
        .S(output_acc_0_V_reg_1346));
  CARRY4 \output_acc_0_V_reg_1346_reg[11]_i_2 
       (.CI(\output_acc_0_V_reg_1346_reg[7]_i_2_n_0 ),
        .CO({\output_acc_0_V_reg_1346_reg[11]_i_2_n_0 ,\output_acc_0_V_reg_1346_reg[11]_i_2_n_1 ,\output_acc_0_V_reg_1346_reg[11]_i_2_n_2 ,\output_acc_0_V_reg_1346_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\output_acc_0_V_reg_1346[11]_i_3_n_0 ,\output_acc_0_V_reg_1346[11]_i_4_n_0 ,\output_acc_0_V_reg_1346[11]_i_5_n_0 ,\output_acc_0_V_reg_1346[11]_i_6_n_0 }),
        .O({\output_acc_0_V_reg_1346_reg[11]_i_2_n_4 ,\output_acc_0_V_reg_1346_reg[11]_i_2_n_5 ,\output_acc_0_V_reg_1346_reg[11]_i_2_n_6 ,\output_acc_0_V_reg_1346_reg[11]_i_2_n_7 }),
        .S({\output_acc_0_V_reg_1346[11]_i_7_n_0 ,\output_acc_0_V_reg_1346[11]_i_8_n_0 ,\output_acc_0_V_reg_1346[11]_i_9_n_0 ,\output_acc_0_V_reg_1346[11]_i_10_n_0 }));
  FDSE \output_acc_0_V_reg_1346_reg[12] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[12]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[12] ),
        .S(output_acc_0_V_reg_1346));
  FDSE \output_acc_0_V_reg_1346_reg[13] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[13]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[13] ),
        .S(output_acc_0_V_reg_1346));
  FDSE \output_acc_0_V_reg_1346_reg[14] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[14]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[14] ),
        .S(output_acc_0_V_reg_1346));
  FDRE \output_acc_0_V_reg_1346_reg[15] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[15]_i_2_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[15] ),
        .R(output_acc_0_V_reg_1346));
  CARRY4 \output_acc_0_V_reg_1346_reg[15]_i_12 
       (.CI(\output_acc_0_V_reg_1346_reg[15]_i_18_n_0 ),
        .CO({\output_acc_0_V_reg_1346_reg[15]_i_12_n_0 ,\output_acc_0_V_reg_1346_reg[15]_i_12_n_1 ,\output_acc_0_V_reg_1346_reg[15]_i_12_n_2 ,\output_acc_0_V_reg_1346_reg[15]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({kernel_bias_fp_0_V_U_n_33,kernel_bias_fp_0_V_U_n_34,kernel_bias_fp_0_V_U_n_35,kernel_bias_fp_0_V_U_n_36}),
        .O(\NLW_output_acc_0_V_reg_1346_reg[15]_i_12_O_UNCONNECTED [3:0]),
        .S({\output_acc_0_V_reg_1346[15]_i_19_n_0 ,\output_acc_0_V_reg_1346[15]_i_20_n_0 ,\output_acc_0_V_reg_1346[15]_i_21_n_0 ,\output_acc_0_V_reg_1346[15]_i_22_n_0 }));
  CARRY4 \output_acc_0_V_reg_1346_reg[15]_i_18 
       (.CI(\output_acc_0_V_reg_1346_reg[15]_i_23_n_0 ),
        .CO({\output_acc_0_V_reg_1346_reg[15]_i_18_n_0 ,\output_acc_0_V_reg_1346_reg[15]_i_18_n_1 ,\output_acc_0_V_reg_1346_reg[15]_i_18_n_2 ,\output_acc_0_V_reg_1346_reg[15]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({kernel_bias_fp_0_V_U_n_37,kernel_bias_fp_0_V_U_n_38,kernel_bias_fp_0_V_U_n_39,kernel_bias_fp_0_V_U_n_40}),
        .O(\NLW_output_acc_0_V_reg_1346_reg[15]_i_18_O_UNCONNECTED [3:0]),
        .S({\output_acc_0_V_reg_1346[15]_i_24_n_0 ,\output_acc_0_V_reg_1346[15]_i_25_n_0 ,\output_acc_0_V_reg_1346[15]_i_26_n_0 ,\output_acc_0_V_reg_1346[15]_i_27_n_0 }));
  CARRY4 \output_acc_0_V_reg_1346_reg[15]_i_23 
       (.CI(1'b0),
        .CO({\output_acc_0_V_reg_1346_reg[15]_i_23_n_0 ,\output_acc_0_V_reg_1346_reg[15]_i_23_n_1 ,\output_acc_0_V_reg_1346_reg[15]_i_23_n_2 ,\output_acc_0_V_reg_1346_reg[15]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({kernel_bias_fp_0_V_U_n_41,kernel_bias_fp_0_V_U_n_42,kernel_bias_fp_0_V_U_n_43,kernel_bias_fp_0_V_U_n_44}),
        .O(\NLW_output_acc_0_V_reg_1346_reg[15]_i_23_O_UNCONNECTED [3:0]),
        .S({\output_acc_0_V_reg_1346[15]_i_28_n_0 ,\output_acc_0_V_reg_1346[15]_i_29_n_0 ,\output_acc_0_V_reg_1346[15]_i_30_n_0 ,\output_acc_0_V_reg_1346[15]_i_31_n_0 }));
  CARRY4 \output_acc_0_V_reg_1346_reg[15]_i_3 
       (.CI(\output_acc_0_V_reg_1346_reg[11]_i_2_n_0 ),
        .CO({\NLW_output_acc_0_V_reg_1346_reg[15]_i_3_CO_UNCONNECTED [3],\output_acc_0_V_reg_1346_reg[15]_i_3_n_1 ,\output_acc_0_V_reg_1346_reg[15]_i_3_n_2 ,\output_acc_0_V_reg_1346_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\output_acc_0_V_reg_1346[15]_i_5_n_0 ,\output_acc_0_V_reg_1346[15]_i_6_n_0 ,\output_acc_0_V_reg_1346[15]_i_7_n_0 }),
        .O({p_Result_1_fu_810_p3,\output_acc_0_V_reg_1346_reg[15]_i_3_n_5 ,\output_acc_0_V_reg_1346_reg[15]_i_3_n_6 ,\output_acc_0_V_reg_1346_reg[15]_i_3_n_7 }),
        .S({\output_acc_0_V_reg_1346[15]_i_8_n_0 ,\output_acc_0_V_reg_1346[15]_i_9_n_0 ,\output_acc_0_V_reg_1346[15]_i_10_n_0 ,\output_acc_0_V_reg_1346[15]_i_11_n_0 }));
  CARRY4 \output_acc_0_V_reg_1346_reg[15]_i_4 
       (.CI(\output_acc_0_V_reg_1346_reg[15]_i_12_n_0 ),
        .CO({\output_acc_0_V_reg_1346_reg[15]_i_4_n_0 ,\output_acc_0_V_reg_1346_reg[15]_i_4_n_1 ,\output_acc_0_V_reg_1346_reg[15]_i_4_n_2 ,\output_acc_0_V_reg_1346_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\output_acc_0_V_reg_1346[15]_i_13_n_0 ,kernel_bias_fp_0_V_U_n_30,kernel_bias_fp_0_V_U_n_31,kernel_bias_fp_0_V_U_n_32}),
        .O(\NLW_output_acc_0_V_reg_1346_reg[15]_i_4_O_UNCONNECTED [3:0]),
        .S({\output_acc_0_V_reg_1346[15]_i_14_n_0 ,\output_acc_0_V_reg_1346[15]_i_15_n_0 ,\output_acc_0_V_reg_1346[15]_i_16_n_0 ,\output_acc_0_V_reg_1346[15]_i_17_n_0 }));
  FDSE \output_acc_0_V_reg_1346_reg[1] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[1]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[1] ),
        .S(output_acc_0_V_reg_1346));
  FDSE \output_acc_0_V_reg_1346_reg[2] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[2]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[2] ),
        .S(output_acc_0_V_reg_1346));
  FDSE \output_acc_0_V_reg_1346_reg[3] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[3]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[3] ),
        .S(output_acc_0_V_reg_1346));
  CARRY4 \output_acc_0_V_reg_1346_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\output_acc_0_V_reg_1346_reg[3]_i_2_n_0 ,\output_acc_0_V_reg_1346_reg[3]_i_2_n_1 ,\output_acc_0_V_reg_1346_reg[3]_i_2_n_2 ,\output_acc_0_V_reg_1346_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\output_acc_0_V_reg_1346[3]_i_3_n_0 ,\output_acc_0_V_reg_1346[3]_i_4_n_0 ,\output_acc_0_V_reg_1346[3]_i_5_n_0 ,\output_acc_0_V_reg_1346[3]_i_6_n_0 }),
        .O({\output_acc_0_V_reg_1346_reg[3]_i_2_n_4 ,\output_acc_0_V_reg_1346_reg[3]_i_2_n_5 ,\output_acc_0_V_reg_1346_reg[3]_i_2_n_6 ,\output_acc_0_V_reg_1346_reg[3]_i_2_n_7 }),
        .S({\output_acc_0_V_reg_1346[3]_i_7_n_0 ,\output_acc_0_V_reg_1346[3]_i_8_n_0 ,\output_acc_0_V_reg_1346[3]_i_9_n_0 ,\output_acc_0_V_reg_1346[3]_i_10_n_0 }));
  FDSE \output_acc_0_V_reg_1346_reg[4] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[4]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[4] ),
        .S(output_acc_0_V_reg_1346));
  FDSE \output_acc_0_V_reg_1346_reg[5] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[5]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[5] ),
        .S(output_acc_0_V_reg_1346));
  FDSE \output_acc_0_V_reg_1346_reg[6] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[6]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[6] ),
        .S(output_acc_0_V_reg_1346));
  FDSE \output_acc_0_V_reg_1346_reg[7] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[7]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[7] ),
        .S(output_acc_0_V_reg_1346));
  CARRY4 \output_acc_0_V_reg_1346_reg[7]_i_2 
       (.CI(\output_acc_0_V_reg_1346_reg[3]_i_2_n_0 ),
        .CO({\output_acc_0_V_reg_1346_reg[7]_i_2_n_0 ,\output_acc_0_V_reg_1346_reg[7]_i_2_n_1 ,\output_acc_0_V_reg_1346_reg[7]_i_2_n_2 ,\output_acc_0_V_reg_1346_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\output_acc_0_V_reg_1346[7]_i_3_n_0 ,\output_acc_0_V_reg_1346[7]_i_4_n_0 ,\output_acc_0_V_reg_1346[7]_i_5_n_0 ,\output_acc_0_V_reg_1346[7]_i_6_n_0 }),
        .O({\output_acc_0_V_reg_1346_reg[7]_i_2_n_4 ,\output_acc_0_V_reg_1346_reg[7]_i_2_n_5 ,\output_acc_0_V_reg_1346_reg[7]_i_2_n_6 ,\output_acc_0_V_reg_1346_reg[7]_i_2_n_7 }),
        .S({\output_acc_0_V_reg_1346[7]_i_7_n_0 ,\output_acc_0_V_reg_1346[7]_i_8_n_0 ,\output_acc_0_V_reg_1346[7]_i_9_n_0 ,\output_acc_0_V_reg_1346[7]_i_10_n_0 }));
  FDSE \output_acc_0_V_reg_1346_reg[8] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[8]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[8] ),
        .S(output_acc_0_V_reg_1346));
  FDSE \output_acc_0_V_reg_1346_reg[9] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_0_V_reg_1346[9]_i_1_n_0 ),
        .Q(\output_acc_0_V_reg_1346_reg_n_0_[9] ),
        .S(output_acc_0_V_reg_1346));
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[0]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[3]_i_2_n_7 ),
        .O(\output_acc_1_V_reg_1351[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[10]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[11]_i_2_n_5 ),
        .O(\output_acc_1_V_reg_1351[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[11]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[11]_i_2_n_4 ),
        .O(\output_acc_1_V_reg_1351[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[11]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[24]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[24]),
        .I3(inStream_b_V_data_0_payload_A[24]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[24]),
        .O(\output_acc_1_V_reg_1351[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[11]_i_3 
       (.I0(inStream_a_V_data_0_payload_B[27]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[27]),
        .O(p_Val2_4_fu_748_p4[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[11]_i_4 
       (.I0(inStream_a_V_data_0_payload_B[26]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[26]),
        .O(p_Val2_4_fu_748_p4[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[11]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[25]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[25]),
        .O(p_Val2_4_fu_748_p4[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[11]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[24]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[24]),
        .O(p_Val2_4_fu_748_p4[8]));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[11]_i_7 
       (.I0(inStream_a_V_data_0_payload_A[27]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[27]),
        .I3(inStream_b_V_data_0_payload_A[27]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[27]),
        .O(\output_acc_1_V_reg_1351[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[11]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[26]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[26]),
        .I3(inStream_b_V_data_0_payload_A[26]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[26]),
        .O(\output_acc_1_V_reg_1351[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[11]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[25]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[25]),
        .I3(inStream_b_V_data_0_payload_A[25]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[25]),
        .O(\output_acc_1_V_reg_1351[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[12]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[15]_i_3_n_7 ),
        .O(\output_acc_1_V_reg_1351[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[13]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[15]_i_3_n_6 ),
        .O(\output_acc_1_V_reg_1351[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[14]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[15]_i_3_n_5 ),
        .O(\output_acc_1_V_reg_1351[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \output_acc_1_V_reg_1351[15]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .O(output_acc_1_V_reg_1351));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[29]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[29]),
        .I3(inStream_b_V_data_0_payload_A[29]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[29]),
        .O(\output_acc_1_V_reg_1351[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_11 
       (.I0(inStream_a_V_data_0_payload_A[28]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[28]),
        .I3(inStream_b_V_data_0_payload_A[28]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[28]),
        .O(\output_acc_1_V_reg_1351[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \output_acc_1_V_reg_1351[15]_i_13 
       (.I0(inStream_a_V_data_0_payload_B[31]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[31]),
        .O(\output_acc_1_V_reg_1351[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_14 
       (.I0(inStream_b_V_data_0_payload_A[31]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[31]),
        .I3(inStream_a_V_data_0_payload_A[31]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[31]),
        .O(\output_acc_1_V_reg_1351[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_15 
       (.I0(inStream_b_V_data_0_payload_A[30]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[30]),
        .I3(inStream_a_V_data_0_payload_A[30]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[30]),
        .O(\output_acc_1_V_reg_1351[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_16 
       (.I0(inStream_b_V_data_0_payload_A[29]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[29]),
        .I3(inStream_a_V_data_0_payload_A[29]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[29]),
        .O(\output_acc_1_V_reg_1351[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_17 
       (.I0(inStream_b_V_data_0_payload_A[28]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[28]),
        .I3(inStream_a_V_data_0_payload_A[28]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[28]),
        .O(\output_acc_1_V_reg_1351[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_19 
       (.I0(inStream_b_V_data_0_payload_A[27]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[27]),
        .I3(inStream_a_V_data_0_payload_A[27]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[27]),
        .O(\output_acc_1_V_reg_1351[15]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \output_acc_1_V_reg_1351[15]_i_2 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .O(\output_acc_1_V_reg_1351[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_20 
       (.I0(inStream_b_V_data_0_payload_A[26]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[26]),
        .I3(inStream_a_V_data_0_payload_A[26]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[26]),
        .O(\output_acc_1_V_reg_1351[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_21 
       (.I0(inStream_b_V_data_0_payload_A[25]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[25]),
        .I3(inStream_a_V_data_0_payload_A[25]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[25]),
        .O(\output_acc_1_V_reg_1351[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_22 
       (.I0(inStream_b_V_data_0_payload_A[24]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[24]),
        .I3(inStream_a_V_data_0_payload_A[24]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[24]),
        .O(\output_acc_1_V_reg_1351[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_24 
       (.I0(inStream_b_V_data_0_payload_A[23]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[23]),
        .I3(inStream_a_V_data_0_payload_A[23]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[23]),
        .O(\output_acc_1_V_reg_1351[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_25 
       (.I0(inStream_b_V_data_0_payload_A[22]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[22]),
        .I3(inStream_a_V_data_0_payload_A[22]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[22]),
        .O(\output_acc_1_V_reg_1351[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_26 
       (.I0(inStream_b_V_data_0_payload_A[21]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[21]),
        .I3(inStream_a_V_data_0_payload_A[21]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[21]),
        .O(\output_acc_1_V_reg_1351[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_27 
       (.I0(inStream_b_V_data_0_payload_A[20]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[20]),
        .I3(inStream_a_V_data_0_payload_A[20]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[20]),
        .O(\output_acc_1_V_reg_1351[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_28 
       (.I0(inStream_b_V_data_0_payload_A[19]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[19]),
        .I3(inStream_a_V_data_0_payload_A[19]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[19]),
        .O(\output_acc_1_V_reg_1351[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_29 
       (.I0(inStream_b_V_data_0_payload_A[18]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[18]),
        .I3(inStream_a_V_data_0_payload_A[18]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[18]),
        .O(\output_acc_1_V_reg_1351[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_30 
       (.I0(inStream_b_V_data_0_payload_A[17]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[17]),
        .I3(inStream_a_V_data_0_payload_A[17]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[17]),
        .O(\output_acc_1_V_reg_1351[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_31 
       (.I0(inStream_b_V_data_0_payload_A[16]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[16]),
        .I3(inStream_a_V_data_0_payload_A[16]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[16]),
        .O(\output_acc_1_V_reg_1351[15]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[15]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[30]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[30]),
        .O(p_Val2_4_fu_748_p4[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[15]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[29]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[29]),
        .O(p_Val2_4_fu_748_p4[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[15]_i_7 
       (.I0(inStream_a_V_data_0_payload_B[28]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[28]),
        .O(p_Val2_4_fu_748_p4[12]));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[31]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[31]),
        .I3(inStream_b_V_data_0_payload_A[31]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[31]),
        .O(\output_acc_1_V_reg_1351[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[15]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[30]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[30]),
        .I3(inStream_b_V_data_0_payload_A[30]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[30]),
        .O(\output_acc_1_V_reg_1351[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[1]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[3]_i_2_n_6 ),
        .O(\output_acc_1_V_reg_1351[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[2]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[3]_i_2_n_5 ),
        .O(\output_acc_1_V_reg_1351[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[3]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[3]_i_2_n_4 ),
        .O(\output_acc_1_V_reg_1351[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[3]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[16]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[16]),
        .I3(inStream_b_V_data_0_payload_A[16]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[16]),
        .O(\output_acc_1_V_reg_1351[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[3]_i_3 
       (.I0(inStream_a_V_data_0_payload_B[19]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[19]),
        .O(p_Val2_4_fu_748_p4[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[3]_i_4 
       (.I0(inStream_a_V_data_0_payload_B[18]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[18]),
        .O(p_Val2_4_fu_748_p4[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[3]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[17]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[17]),
        .O(p_Val2_4_fu_748_p4[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[3]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[16]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[16]),
        .O(p_Val2_4_fu_748_p4[0]));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[3]_i_7 
       (.I0(inStream_a_V_data_0_payload_A[19]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[19]),
        .I3(inStream_b_V_data_0_payload_A[19]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[19]),
        .O(\output_acc_1_V_reg_1351[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[3]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[18]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[18]),
        .I3(inStream_b_V_data_0_payload_A[18]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[18]),
        .O(\output_acc_1_V_reg_1351[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[3]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[17]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[17]),
        .I3(inStream_b_V_data_0_payload_A[17]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[17]),
        .O(\output_acc_1_V_reg_1351[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[4]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[7]_i_2_n_7 ),
        .O(\output_acc_1_V_reg_1351[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[5]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[7]_i_2_n_6 ),
        .O(\output_acc_1_V_reg_1351[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[6]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[7]_i_2_n_5 ),
        .O(\output_acc_1_V_reg_1351[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[7]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[7]_i_2_n_4 ),
        .O(\output_acc_1_V_reg_1351[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[7]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[20]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[20]),
        .I3(inStream_b_V_data_0_payload_A[20]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[20]),
        .O(\output_acc_1_V_reg_1351[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[7]_i_3 
       (.I0(inStream_a_V_data_0_payload_B[23]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[23]),
        .O(p_Val2_4_fu_748_p4[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[7]_i_4 
       (.I0(inStream_a_V_data_0_payload_B[22]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[22]),
        .O(p_Val2_4_fu_748_p4[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[7]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[21]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[21]),
        .O(p_Val2_4_fu_748_p4[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_1_V_reg_1351[7]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[20]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[20]),
        .O(p_Val2_4_fu_748_p4[4]));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[7]_i_7 
       (.I0(inStream_a_V_data_0_payload_A[23]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[23]),
        .I3(inStream_b_V_data_0_payload_A[23]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[23]),
        .O(\output_acc_1_V_reg_1351[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[7]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[22]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[22]),
        .I3(inStream_b_V_data_0_payload_A[22]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[22]),
        .O(\output_acc_1_V_reg_1351[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_1_V_reg_1351[7]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[21]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[21]),
        .I3(inStream_b_V_data_0_payload_A[21]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[21]),
        .O(\output_acc_1_V_reg_1351[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[8]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[11]_i_2_n_7 ),
        .O(\output_acc_1_V_reg_1351[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_1_V_reg_1351[9]_i_1 
       (.I0(p_Result_3_fu_900_p3),
        .I1(\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_1_V_reg_1351_reg[11]_i_2_n_6 ),
        .O(\output_acc_1_V_reg_1351[9]_i_1_n_0 ));
  FDSE \output_acc_1_V_reg_1351_reg[0] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[0]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[0] ),
        .S(output_acc_1_V_reg_1351));
  FDSE \output_acc_1_V_reg_1351_reg[10] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[10]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[10] ),
        .S(output_acc_1_V_reg_1351));
  FDSE \output_acc_1_V_reg_1351_reg[11] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[11]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[11] ),
        .S(output_acc_1_V_reg_1351));
  CARRY4 \output_acc_1_V_reg_1351_reg[11]_i_2 
       (.CI(\output_acc_1_V_reg_1351_reg[7]_i_2_n_0 ),
        .CO({\output_acc_1_V_reg_1351_reg[11]_i_2_n_0 ,\output_acc_1_V_reg_1351_reg[11]_i_2_n_1 ,\output_acc_1_V_reg_1351_reg[11]_i_2_n_2 ,\output_acc_1_V_reg_1351_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Val2_4_fu_748_p4[11:8]),
        .O({\output_acc_1_V_reg_1351_reg[11]_i_2_n_4 ,\output_acc_1_V_reg_1351_reg[11]_i_2_n_5 ,\output_acc_1_V_reg_1351_reg[11]_i_2_n_6 ,\output_acc_1_V_reg_1351_reg[11]_i_2_n_7 }),
        .S({\output_acc_1_V_reg_1351[11]_i_7_n_0 ,\output_acc_1_V_reg_1351[11]_i_8_n_0 ,\output_acc_1_V_reg_1351[11]_i_9_n_0 ,\output_acc_1_V_reg_1351[11]_i_10_n_0 }));
  FDSE \output_acc_1_V_reg_1351_reg[12] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[12]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[12] ),
        .S(output_acc_1_V_reg_1351));
  FDSE \output_acc_1_V_reg_1351_reg[13] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[13]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[13] ),
        .S(output_acc_1_V_reg_1351));
  FDSE \output_acc_1_V_reg_1351_reg[14] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[14]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[14] ),
        .S(output_acc_1_V_reg_1351));
  FDRE \output_acc_1_V_reg_1351_reg[15] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[15]_i_2_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[15] ),
        .R(output_acc_1_V_reg_1351));
  CARRY4 \output_acc_1_V_reg_1351_reg[15]_i_12 
       (.CI(\output_acc_1_V_reg_1351_reg[15]_i_18_n_0 ),
        .CO({\output_acc_1_V_reg_1351_reg[15]_i_12_n_0 ,\output_acc_1_V_reg_1351_reg[15]_i_12_n_1 ,\output_acc_1_V_reg_1351_reg[15]_i_12_n_2 ,\output_acc_1_V_reg_1351_reg[15]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(rhs_V_1_fu_876_p1[11:8]),
        .O(\NLW_output_acc_1_V_reg_1351_reg[15]_i_12_O_UNCONNECTED [3:0]),
        .S({\output_acc_1_V_reg_1351[15]_i_19_n_0 ,\output_acc_1_V_reg_1351[15]_i_20_n_0 ,\output_acc_1_V_reg_1351[15]_i_21_n_0 ,\output_acc_1_V_reg_1351[15]_i_22_n_0 }));
  CARRY4 \output_acc_1_V_reg_1351_reg[15]_i_18 
       (.CI(\output_acc_1_V_reg_1351_reg[15]_i_23_n_0 ),
        .CO({\output_acc_1_V_reg_1351_reg[15]_i_18_n_0 ,\output_acc_1_V_reg_1351_reg[15]_i_18_n_1 ,\output_acc_1_V_reg_1351_reg[15]_i_18_n_2 ,\output_acc_1_V_reg_1351_reg[15]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI(rhs_V_1_fu_876_p1[7:4]),
        .O(\NLW_output_acc_1_V_reg_1351_reg[15]_i_18_O_UNCONNECTED [3:0]),
        .S({\output_acc_1_V_reg_1351[15]_i_24_n_0 ,\output_acc_1_V_reg_1351[15]_i_25_n_0 ,\output_acc_1_V_reg_1351[15]_i_26_n_0 ,\output_acc_1_V_reg_1351[15]_i_27_n_0 }));
  CARRY4 \output_acc_1_V_reg_1351_reg[15]_i_23 
       (.CI(1'b0),
        .CO({\output_acc_1_V_reg_1351_reg[15]_i_23_n_0 ,\output_acc_1_V_reg_1351_reg[15]_i_23_n_1 ,\output_acc_1_V_reg_1351_reg[15]_i_23_n_2 ,\output_acc_1_V_reg_1351_reg[15]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI(rhs_V_1_fu_876_p1[3:0]),
        .O(\NLW_output_acc_1_V_reg_1351_reg[15]_i_23_O_UNCONNECTED [3:0]),
        .S({\output_acc_1_V_reg_1351[15]_i_28_n_0 ,\output_acc_1_V_reg_1351[15]_i_29_n_0 ,\output_acc_1_V_reg_1351[15]_i_30_n_0 ,\output_acc_1_V_reg_1351[15]_i_31_n_0 }));
  CARRY4 \output_acc_1_V_reg_1351_reg[15]_i_3 
       (.CI(\output_acc_1_V_reg_1351_reg[11]_i_2_n_0 ),
        .CO({\NLW_output_acc_1_V_reg_1351_reg[15]_i_3_CO_UNCONNECTED [3],\output_acc_1_V_reg_1351_reg[15]_i_3_n_1 ,\output_acc_1_V_reg_1351_reg[15]_i_3_n_2 ,\output_acc_1_V_reg_1351_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_Val2_4_fu_748_p4[14:12]}),
        .O({p_Result_3_fu_900_p3,\output_acc_1_V_reg_1351_reg[15]_i_3_n_5 ,\output_acc_1_V_reg_1351_reg[15]_i_3_n_6 ,\output_acc_1_V_reg_1351_reg[15]_i_3_n_7 }),
        .S({\output_acc_1_V_reg_1351[15]_i_8_n_0 ,\output_acc_1_V_reg_1351[15]_i_9_n_0 ,\output_acc_1_V_reg_1351[15]_i_10_n_0 ,\output_acc_1_V_reg_1351[15]_i_11_n_0 }));
  CARRY4 \output_acc_1_V_reg_1351_reg[15]_i_4 
       (.CI(\output_acc_1_V_reg_1351_reg[15]_i_12_n_0 ),
        .CO({\output_acc_1_V_reg_1351_reg[15]_i_4_n_0 ,\output_acc_1_V_reg_1351_reg[15]_i_4_n_1 ,\output_acc_1_V_reg_1351_reg[15]_i_4_n_2 ,\output_acc_1_V_reg_1351_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\output_acc_1_V_reg_1351[15]_i_13_n_0 ,rhs_V_1_fu_876_p1[14:12]}),
        .O(\NLW_output_acc_1_V_reg_1351_reg[15]_i_4_O_UNCONNECTED [3:0]),
        .S({\output_acc_1_V_reg_1351[15]_i_14_n_0 ,\output_acc_1_V_reg_1351[15]_i_15_n_0 ,\output_acc_1_V_reg_1351[15]_i_16_n_0 ,\output_acc_1_V_reg_1351[15]_i_17_n_0 }));
  FDSE \output_acc_1_V_reg_1351_reg[1] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[1]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[1] ),
        .S(output_acc_1_V_reg_1351));
  FDSE \output_acc_1_V_reg_1351_reg[2] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[2]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[2] ),
        .S(output_acc_1_V_reg_1351));
  FDSE \output_acc_1_V_reg_1351_reg[3] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[3]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[3] ),
        .S(output_acc_1_V_reg_1351));
  CARRY4 \output_acc_1_V_reg_1351_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\output_acc_1_V_reg_1351_reg[3]_i_2_n_0 ,\output_acc_1_V_reg_1351_reg[3]_i_2_n_1 ,\output_acc_1_V_reg_1351_reg[3]_i_2_n_2 ,\output_acc_1_V_reg_1351_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Val2_4_fu_748_p4[3:0]),
        .O({\output_acc_1_V_reg_1351_reg[3]_i_2_n_4 ,\output_acc_1_V_reg_1351_reg[3]_i_2_n_5 ,\output_acc_1_V_reg_1351_reg[3]_i_2_n_6 ,\output_acc_1_V_reg_1351_reg[3]_i_2_n_7 }),
        .S({\output_acc_1_V_reg_1351[3]_i_7_n_0 ,\output_acc_1_V_reg_1351[3]_i_8_n_0 ,\output_acc_1_V_reg_1351[3]_i_9_n_0 ,\output_acc_1_V_reg_1351[3]_i_10_n_0 }));
  FDSE \output_acc_1_V_reg_1351_reg[4] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[4]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[4] ),
        .S(output_acc_1_V_reg_1351));
  FDSE \output_acc_1_V_reg_1351_reg[5] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[5]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[5] ),
        .S(output_acc_1_V_reg_1351));
  FDSE \output_acc_1_V_reg_1351_reg[6] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[6]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[6] ),
        .S(output_acc_1_V_reg_1351));
  FDSE \output_acc_1_V_reg_1351_reg[7] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[7]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[7] ),
        .S(output_acc_1_V_reg_1351));
  CARRY4 \output_acc_1_V_reg_1351_reg[7]_i_2 
       (.CI(\output_acc_1_V_reg_1351_reg[3]_i_2_n_0 ),
        .CO({\output_acc_1_V_reg_1351_reg[7]_i_2_n_0 ,\output_acc_1_V_reg_1351_reg[7]_i_2_n_1 ,\output_acc_1_V_reg_1351_reg[7]_i_2_n_2 ,\output_acc_1_V_reg_1351_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Val2_4_fu_748_p4[7:4]),
        .O({\output_acc_1_V_reg_1351_reg[7]_i_2_n_4 ,\output_acc_1_V_reg_1351_reg[7]_i_2_n_5 ,\output_acc_1_V_reg_1351_reg[7]_i_2_n_6 ,\output_acc_1_V_reg_1351_reg[7]_i_2_n_7 }),
        .S({\output_acc_1_V_reg_1351[7]_i_7_n_0 ,\output_acc_1_V_reg_1351[7]_i_8_n_0 ,\output_acc_1_V_reg_1351[7]_i_9_n_0 ,\output_acc_1_V_reg_1351[7]_i_10_n_0 }));
  FDSE \output_acc_1_V_reg_1351_reg[8] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[8]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[8] ),
        .S(output_acc_1_V_reg_1351));
  FDSE \output_acc_1_V_reg_1351_reg[9] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_1_V_reg_1351[9]_i_1_n_0 ),
        .Q(\output_acc_1_V_reg_1351_reg_n_0_[9] ),
        .S(output_acc_1_V_reg_1351));
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[0]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[3]_i_2_n_7 ),
        .O(\output_acc_2_V_reg_1356[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[10]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[11]_i_2_n_5 ),
        .O(\output_acc_2_V_reg_1356[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[11]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[11]_i_2_n_4 ),
        .O(\output_acc_2_V_reg_1356[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[11]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[40]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[40]),
        .I3(inStream_b_V_data_0_payload_A[40]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[40]),
        .O(\output_acc_2_V_reg_1356[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[11]_i_3 
       (.I0(inStream_a_V_data_0_payload_B[43]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[43]),
        .O(p_Val2_8_fu_758_p4[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[11]_i_4 
       (.I0(inStream_a_V_data_0_payload_B[42]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[42]),
        .O(p_Val2_8_fu_758_p4[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[11]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[41]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[41]),
        .O(p_Val2_8_fu_758_p4[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[11]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[40]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[40]),
        .O(p_Val2_8_fu_758_p4[8]));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[11]_i_7 
       (.I0(inStream_a_V_data_0_payload_A[43]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[43]),
        .I3(inStream_b_V_data_0_payload_A[43]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[43]),
        .O(\output_acc_2_V_reg_1356[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[11]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[42]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[42]),
        .I3(inStream_b_V_data_0_payload_A[42]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[42]),
        .O(\output_acc_2_V_reg_1356[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[11]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[41]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[41]),
        .I3(inStream_b_V_data_0_payload_A[41]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[41]),
        .O(\output_acc_2_V_reg_1356[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[12]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[15]_i_3_n_7 ),
        .O(\output_acc_2_V_reg_1356[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[13]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[15]_i_3_n_6 ),
        .O(\output_acc_2_V_reg_1356[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[14]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[15]_i_3_n_5 ),
        .O(\output_acc_2_V_reg_1356[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \output_acc_2_V_reg_1356[15]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .O(output_acc_2_V_reg_1356));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[45]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[45]),
        .I3(inStream_b_V_data_0_payload_A[45]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[45]),
        .O(\output_acc_2_V_reg_1356[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_11 
       (.I0(inStream_a_V_data_0_payload_A[44]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[44]),
        .I3(inStream_b_V_data_0_payload_A[44]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[44]),
        .O(\output_acc_2_V_reg_1356[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \output_acc_2_V_reg_1356[15]_i_13 
       (.I0(inStream_a_V_data_0_payload_B[47]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[47]),
        .O(\output_acc_2_V_reg_1356[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_14 
       (.I0(inStream_b_V_data_0_payload_A[47]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[47]),
        .I3(inStream_a_V_data_0_payload_A[47]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[47]),
        .O(\output_acc_2_V_reg_1356[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_15 
       (.I0(inStream_b_V_data_0_payload_A[46]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[46]),
        .I3(inStream_a_V_data_0_payload_A[46]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[46]),
        .O(\output_acc_2_V_reg_1356[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_16 
       (.I0(inStream_b_V_data_0_payload_A[45]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[45]),
        .I3(inStream_a_V_data_0_payload_A[45]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[45]),
        .O(\output_acc_2_V_reg_1356[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_17 
       (.I0(inStream_b_V_data_0_payload_A[44]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[44]),
        .I3(inStream_a_V_data_0_payload_A[44]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[44]),
        .O(\output_acc_2_V_reg_1356[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_19 
       (.I0(inStream_b_V_data_0_payload_A[43]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[43]),
        .I3(inStream_a_V_data_0_payload_A[43]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[43]),
        .O(\output_acc_2_V_reg_1356[15]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \output_acc_2_V_reg_1356[15]_i_2 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .O(\output_acc_2_V_reg_1356[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_20 
       (.I0(inStream_b_V_data_0_payload_A[42]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[42]),
        .I3(inStream_a_V_data_0_payload_A[42]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[42]),
        .O(\output_acc_2_V_reg_1356[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_21 
       (.I0(inStream_b_V_data_0_payload_A[41]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[41]),
        .I3(inStream_a_V_data_0_payload_A[41]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[41]),
        .O(\output_acc_2_V_reg_1356[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_22 
       (.I0(inStream_b_V_data_0_payload_A[40]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[40]),
        .I3(inStream_a_V_data_0_payload_A[40]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[40]),
        .O(\output_acc_2_V_reg_1356[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_24 
       (.I0(inStream_b_V_data_0_payload_A[39]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[39]),
        .I3(inStream_a_V_data_0_payload_A[39]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[39]),
        .O(\output_acc_2_V_reg_1356[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_25 
       (.I0(inStream_b_V_data_0_payload_A[38]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[38]),
        .I3(inStream_a_V_data_0_payload_A[38]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[38]),
        .O(\output_acc_2_V_reg_1356[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_26 
       (.I0(inStream_b_V_data_0_payload_A[37]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[37]),
        .I3(inStream_a_V_data_0_payload_A[37]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[37]),
        .O(\output_acc_2_V_reg_1356[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_27 
       (.I0(inStream_b_V_data_0_payload_A[36]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[36]),
        .I3(inStream_a_V_data_0_payload_A[36]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[36]),
        .O(\output_acc_2_V_reg_1356[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_28 
       (.I0(inStream_b_V_data_0_payload_A[35]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[35]),
        .I3(inStream_a_V_data_0_payload_A[35]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[35]),
        .O(\output_acc_2_V_reg_1356[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_29 
       (.I0(inStream_b_V_data_0_payload_A[34]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[34]),
        .I3(inStream_a_V_data_0_payload_A[34]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[34]),
        .O(\output_acc_2_V_reg_1356[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_30 
       (.I0(inStream_b_V_data_0_payload_A[33]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[33]),
        .I3(inStream_a_V_data_0_payload_A[33]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[33]),
        .O(\output_acc_2_V_reg_1356[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_31 
       (.I0(inStream_b_V_data_0_payload_A[32]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep__0_n_0),
        .I2(inStream_b_V_data_0_payload_B[32]),
        .I3(inStream_a_V_data_0_payload_A[32]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[32]),
        .O(\output_acc_2_V_reg_1356[15]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[15]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[46]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[46]),
        .O(p_Val2_8_fu_758_p4[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[15]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[45]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[45]),
        .O(p_Val2_8_fu_758_p4[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[15]_i_7 
       (.I0(inStream_a_V_data_0_payload_B[44]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[44]),
        .O(p_Val2_8_fu_758_p4[12]));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[47]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[47]),
        .I3(inStream_b_V_data_0_payload_A[47]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[47]),
        .O(\output_acc_2_V_reg_1356[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[15]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[46]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[46]),
        .I3(inStream_b_V_data_0_payload_A[46]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[46]),
        .O(\output_acc_2_V_reg_1356[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[1]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[3]_i_2_n_6 ),
        .O(\output_acc_2_V_reg_1356[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[2]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[3]_i_2_n_5 ),
        .O(\output_acc_2_V_reg_1356[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[3]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[3]_i_2_n_4 ),
        .O(\output_acc_2_V_reg_1356[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[3]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[32]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[32]),
        .I3(inStream_b_V_data_0_payload_A[32]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[32]),
        .O(\output_acc_2_V_reg_1356[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[3]_i_3 
       (.I0(inStream_a_V_data_0_payload_B[35]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[35]),
        .O(p_Val2_8_fu_758_p4[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[3]_i_4 
       (.I0(inStream_a_V_data_0_payload_B[34]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[34]),
        .O(p_Val2_8_fu_758_p4[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[3]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[33]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[33]),
        .O(p_Val2_8_fu_758_p4[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[3]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[32]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[32]),
        .O(p_Val2_8_fu_758_p4[0]));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[3]_i_7 
       (.I0(inStream_a_V_data_0_payload_A[35]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[35]),
        .I3(inStream_b_V_data_0_payload_A[35]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[35]),
        .O(\output_acc_2_V_reg_1356[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[3]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[34]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[34]),
        .I3(inStream_b_V_data_0_payload_A[34]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[34]),
        .O(\output_acc_2_V_reg_1356[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[3]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[33]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[33]),
        .I3(inStream_b_V_data_0_payload_A[33]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[33]),
        .O(\output_acc_2_V_reg_1356[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[4]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[7]_i_2_n_7 ),
        .O(\output_acc_2_V_reg_1356[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[5]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[7]_i_2_n_6 ),
        .O(\output_acc_2_V_reg_1356[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[6]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[7]_i_2_n_5 ),
        .O(\output_acc_2_V_reg_1356[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[7]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[7]_i_2_n_4 ),
        .O(\output_acc_2_V_reg_1356[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[7]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[36]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[36]),
        .I3(inStream_b_V_data_0_payload_A[36]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[36]),
        .O(\output_acc_2_V_reg_1356[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[7]_i_3 
       (.I0(inStream_a_V_data_0_payload_B[39]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[39]),
        .O(p_Val2_8_fu_758_p4[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[7]_i_4 
       (.I0(inStream_a_V_data_0_payload_B[38]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[38]),
        .O(p_Val2_8_fu_758_p4[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[7]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[37]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[37]),
        .O(p_Val2_8_fu_758_p4[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_2_V_reg_1356[7]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[36]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[36]),
        .O(p_Val2_8_fu_758_p4[4]));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[7]_i_7 
       (.I0(inStream_a_V_data_0_payload_A[39]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[39]),
        .I3(inStream_b_V_data_0_payload_A[39]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[39]),
        .O(\output_acc_2_V_reg_1356[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[7]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[38]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[38]),
        .I3(inStream_b_V_data_0_payload_A[38]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[38]),
        .O(\output_acc_2_V_reg_1356[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_2_V_reg_1356[7]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[37]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[37]),
        .I3(inStream_b_V_data_0_payload_A[37]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[37]),
        .O(\output_acc_2_V_reg_1356[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[8]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[11]_i_2_n_7 ),
        .O(\output_acc_2_V_reg_1356[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_2_V_reg_1356[9]_i_1 
       (.I0(p_Result_5_fu_990_p3),
        .I1(\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_2_V_reg_1356_reg[11]_i_2_n_6 ),
        .O(\output_acc_2_V_reg_1356[9]_i_1_n_0 ));
  FDSE \output_acc_2_V_reg_1356_reg[0] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[0]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[0] ),
        .S(output_acc_2_V_reg_1356));
  FDSE \output_acc_2_V_reg_1356_reg[10] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[10]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[10] ),
        .S(output_acc_2_V_reg_1356));
  FDSE \output_acc_2_V_reg_1356_reg[11] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[11]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[11] ),
        .S(output_acc_2_V_reg_1356));
  CARRY4 \output_acc_2_V_reg_1356_reg[11]_i_2 
       (.CI(\output_acc_2_V_reg_1356_reg[7]_i_2_n_0 ),
        .CO({\output_acc_2_V_reg_1356_reg[11]_i_2_n_0 ,\output_acc_2_V_reg_1356_reg[11]_i_2_n_1 ,\output_acc_2_V_reg_1356_reg[11]_i_2_n_2 ,\output_acc_2_V_reg_1356_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Val2_8_fu_758_p4[11:8]),
        .O({\output_acc_2_V_reg_1356_reg[11]_i_2_n_4 ,\output_acc_2_V_reg_1356_reg[11]_i_2_n_5 ,\output_acc_2_V_reg_1356_reg[11]_i_2_n_6 ,\output_acc_2_V_reg_1356_reg[11]_i_2_n_7 }),
        .S({\output_acc_2_V_reg_1356[11]_i_7_n_0 ,\output_acc_2_V_reg_1356[11]_i_8_n_0 ,\output_acc_2_V_reg_1356[11]_i_9_n_0 ,\output_acc_2_V_reg_1356[11]_i_10_n_0 }));
  FDSE \output_acc_2_V_reg_1356_reg[12] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[12]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[12] ),
        .S(output_acc_2_V_reg_1356));
  FDSE \output_acc_2_V_reg_1356_reg[13] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[13]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[13] ),
        .S(output_acc_2_V_reg_1356));
  FDSE \output_acc_2_V_reg_1356_reg[14] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[14]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[14] ),
        .S(output_acc_2_V_reg_1356));
  FDRE \output_acc_2_V_reg_1356_reg[15] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[15]_i_2_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[15] ),
        .R(output_acc_2_V_reg_1356));
  CARRY4 \output_acc_2_V_reg_1356_reg[15]_i_12 
       (.CI(\output_acc_2_V_reg_1356_reg[15]_i_18_n_0 ),
        .CO({\output_acc_2_V_reg_1356_reg[15]_i_12_n_0 ,\output_acc_2_V_reg_1356_reg[15]_i_12_n_1 ,\output_acc_2_V_reg_1356_reg[15]_i_12_n_2 ,\output_acc_2_V_reg_1356_reg[15]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(rhs_V_2_fu_966_p1[11:8]),
        .O(\NLW_output_acc_2_V_reg_1356_reg[15]_i_12_O_UNCONNECTED [3:0]),
        .S({\output_acc_2_V_reg_1356[15]_i_19_n_0 ,\output_acc_2_V_reg_1356[15]_i_20_n_0 ,\output_acc_2_V_reg_1356[15]_i_21_n_0 ,\output_acc_2_V_reg_1356[15]_i_22_n_0 }));
  CARRY4 \output_acc_2_V_reg_1356_reg[15]_i_18 
       (.CI(\output_acc_2_V_reg_1356_reg[15]_i_23_n_0 ),
        .CO({\output_acc_2_V_reg_1356_reg[15]_i_18_n_0 ,\output_acc_2_V_reg_1356_reg[15]_i_18_n_1 ,\output_acc_2_V_reg_1356_reg[15]_i_18_n_2 ,\output_acc_2_V_reg_1356_reg[15]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI(rhs_V_2_fu_966_p1[7:4]),
        .O(\NLW_output_acc_2_V_reg_1356_reg[15]_i_18_O_UNCONNECTED [3:0]),
        .S({\output_acc_2_V_reg_1356[15]_i_24_n_0 ,\output_acc_2_V_reg_1356[15]_i_25_n_0 ,\output_acc_2_V_reg_1356[15]_i_26_n_0 ,\output_acc_2_V_reg_1356[15]_i_27_n_0 }));
  CARRY4 \output_acc_2_V_reg_1356_reg[15]_i_23 
       (.CI(1'b0),
        .CO({\output_acc_2_V_reg_1356_reg[15]_i_23_n_0 ,\output_acc_2_V_reg_1356_reg[15]_i_23_n_1 ,\output_acc_2_V_reg_1356_reg[15]_i_23_n_2 ,\output_acc_2_V_reg_1356_reg[15]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI(rhs_V_2_fu_966_p1[3:0]),
        .O(\NLW_output_acc_2_V_reg_1356_reg[15]_i_23_O_UNCONNECTED [3:0]),
        .S({\output_acc_2_V_reg_1356[15]_i_28_n_0 ,\output_acc_2_V_reg_1356[15]_i_29_n_0 ,\output_acc_2_V_reg_1356[15]_i_30_n_0 ,\output_acc_2_V_reg_1356[15]_i_31_n_0 }));
  CARRY4 \output_acc_2_V_reg_1356_reg[15]_i_3 
       (.CI(\output_acc_2_V_reg_1356_reg[11]_i_2_n_0 ),
        .CO({\NLW_output_acc_2_V_reg_1356_reg[15]_i_3_CO_UNCONNECTED [3],\output_acc_2_V_reg_1356_reg[15]_i_3_n_1 ,\output_acc_2_V_reg_1356_reg[15]_i_3_n_2 ,\output_acc_2_V_reg_1356_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_Val2_8_fu_758_p4[14:12]}),
        .O({p_Result_5_fu_990_p3,\output_acc_2_V_reg_1356_reg[15]_i_3_n_5 ,\output_acc_2_V_reg_1356_reg[15]_i_3_n_6 ,\output_acc_2_V_reg_1356_reg[15]_i_3_n_7 }),
        .S({\output_acc_2_V_reg_1356[15]_i_8_n_0 ,\output_acc_2_V_reg_1356[15]_i_9_n_0 ,\output_acc_2_V_reg_1356[15]_i_10_n_0 ,\output_acc_2_V_reg_1356[15]_i_11_n_0 }));
  CARRY4 \output_acc_2_V_reg_1356_reg[15]_i_4 
       (.CI(\output_acc_2_V_reg_1356_reg[15]_i_12_n_0 ),
        .CO({\output_acc_2_V_reg_1356_reg[15]_i_4_n_0 ,\output_acc_2_V_reg_1356_reg[15]_i_4_n_1 ,\output_acc_2_V_reg_1356_reg[15]_i_4_n_2 ,\output_acc_2_V_reg_1356_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\output_acc_2_V_reg_1356[15]_i_13_n_0 ,rhs_V_2_fu_966_p1[14:12]}),
        .O(\NLW_output_acc_2_V_reg_1356_reg[15]_i_4_O_UNCONNECTED [3:0]),
        .S({\output_acc_2_V_reg_1356[15]_i_14_n_0 ,\output_acc_2_V_reg_1356[15]_i_15_n_0 ,\output_acc_2_V_reg_1356[15]_i_16_n_0 ,\output_acc_2_V_reg_1356[15]_i_17_n_0 }));
  FDSE \output_acc_2_V_reg_1356_reg[1] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[1]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[1] ),
        .S(output_acc_2_V_reg_1356));
  FDSE \output_acc_2_V_reg_1356_reg[2] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[2]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[2] ),
        .S(output_acc_2_V_reg_1356));
  FDSE \output_acc_2_V_reg_1356_reg[3] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[3]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[3] ),
        .S(output_acc_2_V_reg_1356));
  CARRY4 \output_acc_2_V_reg_1356_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\output_acc_2_V_reg_1356_reg[3]_i_2_n_0 ,\output_acc_2_V_reg_1356_reg[3]_i_2_n_1 ,\output_acc_2_V_reg_1356_reg[3]_i_2_n_2 ,\output_acc_2_V_reg_1356_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Val2_8_fu_758_p4[3:0]),
        .O({\output_acc_2_V_reg_1356_reg[3]_i_2_n_4 ,\output_acc_2_V_reg_1356_reg[3]_i_2_n_5 ,\output_acc_2_V_reg_1356_reg[3]_i_2_n_6 ,\output_acc_2_V_reg_1356_reg[3]_i_2_n_7 }),
        .S({\output_acc_2_V_reg_1356[3]_i_7_n_0 ,\output_acc_2_V_reg_1356[3]_i_8_n_0 ,\output_acc_2_V_reg_1356[3]_i_9_n_0 ,\output_acc_2_V_reg_1356[3]_i_10_n_0 }));
  FDSE \output_acc_2_V_reg_1356_reg[4] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[4]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[4] ),
        .S(output_acc_2_V_reg_1356));
  FDSE \output_acc_2_V_reg_1356_reg[5] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[5]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[5] ),
        .S(output_acc_2_V_reg_1356));
  FDSE \output_acc_2_V_reg_1356_reg[6] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[6]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[6] ),
        .S(output_acc_2_V_reg_1356));
  FDSE \output_acc_2_V_reg_1356_reg[7] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[7]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[7] ),
        .S(output_acc_2_V_reg_1356));
  CARRY4 \output_acc_2_V_reg_1356_reg[7]_i_2 
       (.CI(\output_acc_2_V_reg_1356_reg[3]_i_2_n_0 ),
        .CO({\output_acc_2_V_reg_1356_reg[7]_i_2_n_0 ,\output_acc_2_V_reg_1356_reg[7]_i_2_n_1 ,\output_acc_2_V_reg_1356_reg[7]_i_2_n_2 ,\output_acc_2_V_reg_1356_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Val2_8_fu_758_p4[7:4]),
        .O({\output_acc_2_V_reg_1356_reg[7]_i_2_n_4 ,\output_acc_2_V_reg_1356_reg[7]_i_2_n_5 ,\output_acc_2_V_reg_1356_reg[7]_i_2_n_6 ,\output_acc_2_V_reg_1356_reg[7]_i_2_n_7 }),
        .S({\output_acc_2_V_reg_1356[7]_i_7_n_0 ,\output_acc_2_V_reg_1356[7]_i_8_n_0 ,\output_acc_2_V_reg_1356[7]_i_9_n_0 ,\output_acc_2_V_reg_1356[7]_i_10_n_0 }));
  FDSE \output_acc_2_V_reg_1356_reg[8] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[8]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[8] ),
        .S(output_acc_2_V_reg_1356));
  FDSE \output_acc_2_V_reg_1356_reg[9] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_2_V_reg_1356[9]_i_1_n_0 ),
        .Q(\output_acc_2_V_reg_1356_reg_n_0_[9] ),
        .S(output_acc_2_V_reg_1356));
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[0]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[3]_i_2_n_7 ),
        .O(\output_acc_3_V_reg_1361[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[10]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[11]_i_2_n_5 ),
        .O(\output_acc_3_V_reg_1361[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[11]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[11]_i_2_n_4 ),
        .O(\output_acc_3_V_reg_1361[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[11]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[56]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[56]),
        .I3(inStream_b_V_data_0_payload_A[56]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[56]),
        .O(\output_acc_3_V_reg_1361[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[11]_i_3 
       (.I0(inStream_a_V_data_0_payload_B[59]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[59]),
        .O(p_Val2_13_fu_768_p4[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[11]_i_4 
       (.I0(inStream_a_V_data_0_payload_B[58]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[58]),
        .O(p_Val2_13_fu_768_p4[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[11]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[57]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[57]),
        .O(p_Val2_13_fu_768_p4[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[11]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[56]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[56]),
        .O(p_Val2_13_fu_768_p4[8]));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[11]_i_7 
       (.I0(inStream_a_V_data_0_payload_A[59]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[59]),
        .I3(inStream_b_V_data_0_payload_A[59]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[59]),
        .O(\output_acc_3_V_reg_1361[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[11]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[58]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[58]),
        .I3(inStream_b_V_data_0_payload_A[58]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[58]),
        .O(\output_acc_3_V_reg_1361[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[11]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[57]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[57]),
        .I3(inStream_b_V_data_0_payload_A[57]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[57]),
        .O(\output_acc_3_V_reg_1361[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[12]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[15]_i_3_n_7 ),
        .O(\output_acc_3_V_reg_1361[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[13]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[15]_i_3_n_6 ),
        .O(\output_acc_3_V_reg_1361[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[14]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[15]_i_3_n_5 ),
        .O(\output_acc_3_V_reg_1361[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \output_acc_3_V_reg_1361[15]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .O(output_acc_3_V_reg_1361));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[61]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[61]),
        .I3(inStream_b_V_data_0_payload_A[61]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[61]),
        .O(\output_acc_3_V_reg_1361[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_11 
       (.I0(inStream_a_V_data_0_payload_A[60]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[60]),
        .I3(inStream_b_V_data_0_payload_A[60]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[60]),
        .O(\output_acc_3_V_reg_1361[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \output_acc_3_V_reg_1361[15]_i_13 
       (.I0(inStream_b_V_data_0_payload_A[63]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[63]),
        .O(\output_acc_3_V_reg_1361[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_14 
       (.I0(inStream_b_V_data_0_payload_A[63]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[63]),
        .I3(inStream_a_V_data_0_payload_A[63]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[63]),
        .O(\output_acc_3_V_reg_1361[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_15 
       (.I0(inStream_b_V_data_0_payload_A[62]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[62]),
        .I3(inStream_a_V_data_0_payload_A[62]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[62]),
        .O(\output_acc_3_V_reg_1361[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_16 
       (.I0(inStream_b_V_data_0_payload_A[61]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[61]),
        .I3(inStream_a_V_data_0_payload_A[61]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[61]),
        .O(\output_acc_3_V_reg_1361[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_17 
       (.I0(inStream_b_V_data_0_payload_A[60]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[60]),
        .I3(inStream_a_V_data_0_payload_A[60]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[60]),
        .O(\output_acc_3_V_reg_1361[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_19 
       (.I0(inStream_b_V_data_0_payload_A[59]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[59]),
        .I3(inStream_a_V_data_0_payload_A[59]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[59]),
        .O(\output_acc_3_V_reg_1361[15]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \output_acc_3_V_reg_1361[15]_i_2 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .O(\output_acc_3_V_reg_1361[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_20 
       (.I0(inStream_b_V_data_0_payload_A[58]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[58]),
        .I3(inStream_a_V_data_0_payload_A[58]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[58]),
        .O(\output_acc_3_V_reg_1361[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_21 
       (.I0(inStream_b_V_data_0_payload_A[57]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[57]),
        .I3(inStream_a_V_data_0_payload_A[57]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[57]),
        .O(\output_acc_3_V_reg_1361[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_22 
       (.I0(inStream_b_V_data_0_payload_A[56]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[56]),
        .I3(inStream_a_V_data_0_payload_A[56]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[56]),
        .O(\output_acc_3_V_reg_1361[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_24 
       (.I0(inStream_b_V_data_0_payload_A[55]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[55]),
        .I3(inStream_a_V_data_0_payload_A[55]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[55]),
        .O(\output_acc_3_V_reg_1361[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_25 
       (.I0(inStream_b_V_data_0_payload_A[54]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[54]),
        .I3(inStream_a_V_data_0_payload_A[54]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[54]),
        .O(\output_acc_3_V_reg_1361[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_26 
       (.I0(inStream_b_V_data_0_payload_A[53]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[53]),
        .I3(inStream_a_V_data_0_payload_A[53]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[53]),
        .O(\output_acc_3_V_reg_1361[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_27 
       (.I0(inStream_b_V_data_0_payload_A[52]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[52]),
        .I3(inStream_a_V_data_0_payload_A[52]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[52]),
        .O(\output_acc_3_V_reg_1361[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_28 
       (.I0(inStream_b_V_data_0_payload_A[51]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[51]),
        .I3(inStream_a_V_data_0_payload_A[51]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[51]),
        .O(\output_acc_3_V_reg_1361[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_29 
       (.I0(inStream_b_V_data_0_payload_A[50]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[50]),
        .I3(inStream_a_V_data_0_payload_A[50]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[50]),
        .O(\output_acc_3_V_reg_1361[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_30 
       (.I0(inStream_b_V_data_0_payload_A[49]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[49]),
        .I3(inStream_a_V_data_0_payload_A[49]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[49]),
        .O(\output_acc_3_V_reg_1361[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_31 
       (.I0(inStream_b_V_data_0_payload_A[48]),
        .I1(inStream_b_V_data_0_sel_rd_reg_rep_n_0),
        .I2(inStream_b_V_data_0_payload_B[48]),
        .I3(inStream_a_V_data_0_payload_A[48]),
        .I4(inStream_a_V_data_0_sel),
        .I5(inStream_a_V_data_0_payload_B[48]),
        .O(\output_acc_3_V_reg_1361[15]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[15]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[62]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[62]),
        .O(p_Val2_13_fu_768_p4[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[15]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[61]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[61]),
        .O(p_Val2_13_fu_768_p4[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[15]_i_7 
       (.I0(inStream_a_V_data_0_payload_B[60]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[60]),
        .O(p_Val2_13_fu_768_p4[12]));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[63]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[63]),
        .I3(inStream_b_V_data_0_payload_A[63]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[63]),
        .O(\output_acc_3_V_reg_1361[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[15]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[62]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[62]),
        .I3(inStream_b_V_data_0_payload_A[62]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[62]),
        .O(\output_acc_3_V_reg_1361[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[1]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[3]_i_2_n_6 ),
        .O(\output_acc_3_V_reg_1361[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[2]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[3]_i_2_n_5 ),
        .O(\output_acc_3_V_reg_1361[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[3]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[3]_i_2_n_4 ),
        .O(\output_acc_3_V_reg_1361[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[3]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[48]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[48]),
        .I3(inStream_b_V_data_0_payload_A[48]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[48]),
        .O(\output_acc_3_V_reg_1361[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[3]_i_3 
       (.I0(inStream_a_V_data_0_payload_B[51]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[51]),
        .O(p_Val2_13_fu_768_p4[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[3]_i_4 
       (.I0(inStream_a_V_data_0_payload_B[50]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[50]),
        .O(p_Val2_13_fu_768_p4[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[3]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[49]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[49]),
        .O(p_Val2_13_fu_768_p4[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[3]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[48]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[48]),
        .O(p_Val2_13_fu_768_p4[0]));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[3]_i_7 
       (.I0(inStream_a_V_data_0_payload_A[51]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[51]),
        .I3(inStream_b_V_data_0_payload_A[51]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[51]),
        .O(\output_acc_3_V_reg_1361[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[3]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[50]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[50]),
        .I3(inStream_b_V_data_0_payload_A[50]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[50]),
        .O(\output_acc_3_V_reg_1361[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[3]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[49]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[49]),
        .I3(inStream_b_V_data_0_payload_A[49]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[49]),
        .O(\output_acc_3_V_reg_1361[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[4]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[7]_i_2_n_7 ),
        .O(\output_acc_3_V_reg_1361[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[5]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[7]_i_2_n_6 ),
        .O(\output_acc_3_V_reg_1361[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[6]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[7]_i_2_n_5 ),
        .O(\output_acc_3_V_reg_1361[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[7]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[7]_i_2_n_4 ),
        .O(\output_acc_3_V_reg_1361[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[7]_i_10 
       (.I0(inStream_a_V_data_0_payload_A[52]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[52]),
        .I3(inStream_b_V_data_0_payload_A[52]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[52]),
        .O(\output_acc_3_V_reg_1361[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[7]_i_3 
       (.I0(inStream_a_V_data_0_payload_B[55]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[55]),
        .O(p_Val2_13_fu_768_p4[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[7]_i_4 
       (.I0(inStream_a_V_data_0_payload_B[54]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[54]),
        .O(p_Val2_13_fu_768_p4[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[7]_i_5 
       (.I0(inStream_a_V_data_0_payload_B[53]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[53]),
        .O(p_Val2_13_fu_768_p4[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_acc_3_V_reg_1361[7]_i_6 
       (.I0(inStream_a_V_data_0_payload_B[52]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_A[52]),
        .O(p_Val2_13_fu_768_p4[4]));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[7]_i_7 
       (.I0(inStream_a_V_data_0_payload_A[55]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[55]),
        .I3(inStream_b_V_data_0_payload_A[55]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[55]),
        .O(\output_acc_3_V_reg_1361[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[7]_i_8 
       (.I0(inStream_a_V_data_0_payload_A[54]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[54]),
        .I3(inStream_b_V_data_0_payload_A[54]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[54]),
        .O(\output_acc_3_V_reg_1361[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    \output_acc_3_V_reg_1361[7]_i_9 
       (.I0(inStream_a_V_data_0_payload_A[53]),
        .I1(inStream_a_V_data_0_sel),
        .I2(inStream_a_V_data_0_payload_B[53]),
        .I3(inStream_b_V_data_0_payload_A[53]),
        .I4(inStream_b_V_data_0_sel),
        .I5(inStream_b_V_data_0_payload_B[53]),
        .O(\output_acc_3_V_reg_1361[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[8]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[11]_i_2_n_7 ),
        .O(\output_acc_3_V_reg_1361[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \output_acc_3_V_reg_1361[9]_i_1 
       (.I0(p_Result_7_fu_1080_p3),
        .I1(\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ),
        .I2(output_acc_0_V_reg_13460),
        .I3(\output_acc_3_V_reg_1361_reg[11]_i_2_n_6 ),
        .O(\output_acc_3_V_reg_1361[9]_i_1_n_0 ));
  FDSE \output_acc_3_V_reg_1361_reg[0] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[0]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[0] ),
        .S(output_acc_3_V_reg_1361));
  FDSE \output_acc_3_V_reg_1361_reg[10] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[10]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[10] ),
        .S(output_acc_3_V_reg_1361));
  FDSE \output_acc_3_V_reg_1361_reg[11] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[11]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[11] ),
        .S(output_acc_3_V_reg_1361));
  CARRY4 \output_acc_3_V_reg_1361_reg[11]_i_2 
       (.CI(\output_acc_3_V_reg_1361_reg[7]_i_2_n_0 ),
        .CO({\output_acc_3_V_reg_1361_reg[11]_i_2_n_0 ,\output_acc_3_V_reg_1361_reg[11]_i_2_n_1 ,\output_acc_3_V_reg_1361_reg[11]_i_2_n_2 ,\output_acc_3_V_reg_1361_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Val2_13_fu_768_p4[11:8]),
        .O({\output_acc_3_V_reg_1361_reg[11]_i_2_n_4 ,\output_acc_3_V_reg_1361_reg[11]_i_2_n_5 ,\output_acc_3_V_reg_1361_reg[11]_i_2_n_6 ,\output_acc_3_V_reg_1361_reg[11]_i_2_n_7 }),
        .S({\output_acc_3_V_reg_1361[11]_i_7_n_0 ,\output_acc_3_V_reg_1361[11]_i_8_n_0 ,\output_acc_3_V_reg_1361[11]_i_9_n_0 ,\output_acc_3_V_reg_1361[11]_i_10_n_0 }));
  FDSE \output_acc_3_V_reg_1361_reg[12] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[12]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[12] ),
        .S(output_acc_3_V_reg_1361));
  FDSE \output_acc_3_V_reg_1361_reg[13] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[13]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[13] ),
        .S(output_acc_3_V_reg_1361));
  FDSE \output_acc_3_V_reg_1361_reg[14] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[14]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[14] ),
        .S(output_acc_3_V_reg_1361));
  FDRE \output_acc_3_V_reg_1361_reg[15] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[15]_i_2_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[15] ),
        .R(output_acc_3_V_reg_1361));
  CARRY4 \output_acc_3_V_reg_1361_reg[15]_i_12 
       (.CI(\output_acc_3_V_reg_1361_reg[15]_i_18_n_0 ),
        .CO({\output_acc_3_V_reg_1361_reg[15]_i_12_n_0 ,\output_acc_3_V_reg_1361_reg[15]_i_12_n_1 ,\output_acc_3_V_reg_1361_reg[15]_i_12_n_2 ,\output_acc_3_V_reg_1361_reg[15]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(rhs_V_3_fu_1056_p1[11:8]),
        .O(\NLW_output_acc_3_V_reg_1361_reg[15]_i_12_O_UNCONNECTED [3:0]),
        .S({\output_acc_3_V_reg_1361[15]_i_19_n_0 ,\output_acc_3_V_reg_1361[15]_i_20_n_0 ,\output_acc_3_V_reg_1361[15]_i_21_n_0 ,\output_acc_3_V_reg_1361[15]_i_22_n_0 }));
  CARRY4 \output_acc_3_V_reg_1361_reg[15]_i_18 
       (.CI(\output_acc_3_V_reg_1361_reg[15]_i_23_n_0 ),
        .CO({\output_acc_3_V_reg_1361_reg[15]_i_18_n_0 ,\output_acc_3_V_reg_1361_reg[15]_i_18_n_1 ,\output_acc_3_V_reg_1361_reg[15]_i_18_n_2 ,\output_acc_3_V_reg_1361_reg[15]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI(rhs_V_3_fu_1056_p1[7:4]),
        .O(\NLW_output_acc_3_V_reg_1361_reg[15]_i_18_O_UNCONNECTED [3:0]),
        .S({\output_acc_3_V_reg_1361[15]_i_24_n_0 ,\output_acc_3_V_reg_1361[15]_i_25_n_0 ,\output_acc_3_V_reg_1361[15]_i_26_n_0 ,\output_acc_3_V_reg_1361[15]_i_27_n_0 }));
  CARRY4 \output_acc_3_V_reg_1361_reg[15]_i_23 
       (.CI(1'b0),
        .CO({\output_acc_3_V_reg_1361_reg[15]_i_23_n_0 ,\output_acc_3_V_reg_1361_reg[15]_i_23_n_1 ,\output_acc_3_V_reg_1361_reg[15]_i_23_n_2 ,\output_acc_3_V_reg_1361_reg[15]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI(rhs_V_3_fu_1056_p1[3:0]),
        .O(\NLW_output_acc_3_V_reg_1361_reg[15]_i_23_O_UNCONNECTED [3:0]),
        .S({\output_acc_3_V_reg_1361[15]_i_28_n_0 ,\output_acc_3_V_reg_1361[15]_i_29_n_0 ,\output_acc_3_V_reg_1361[15]_i_30_n_0 ,\output_acc_3_V_reg_1361[15]_i_31_n_0 }));
  CARRY4 \output_acc_3_V_reg_1361_reg[15]_i_3 
       (.CI(\output_acc_3_V_reg_1361_reg[11]_i_2_n_0 ),
        .CO({\NLW_output_acc_3_V_reg_1361_reg[15]_i_3_CO_UNCONNECTED [3],\output_acc_3_V_reg_1361_reg[15]_i_3_n_1 ,\output_acc_3_V_reg_1361_reg[15]_i_3_n_2 ,\output_acc_3_V_reg_1361_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_Val2_13_fu_768_p4[14:12]}),
        .O({p_Result_7_fu_1080_p3,\output_acc_3_V_reg_1361_reg[15]_i_3_n_5 ,\output_acc_3_V_reg_1361_reg[15]_i_3_n_6 ,\output_acc_3_V_reg_1361_reg[15]_i_3_n_7 }),
        .S({\output_acc_3_V_reg_1361[15]_i_8_n_0 ,\output_acc_3_V_reg_1361[15]_i_9_n_0 ,\output_acc_3_V_reg_1361[15]_i_10_n_0 ,\output_acc_3_V_reg_1361[15]_i_11_n_0 }));
  CARRY4 \output_acc_3_V_reg_1361_reg[15]_i_4 
       (.CI(\output_acc_3_V_reg_1361_reg[15]_i_12_n_0 ),
        .CO({\output_acc_3_V_reg_1361_reg[15]_i_4_n_0 ,\output_acc_3_V_reg_1361_reg[15]_i_4_n_1 ,\output_acc_3_V_reg_1361_reg[15]_i_4_n_2 ,\output_acc_3_V_reg_1361_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\output_acc_3_V_reg_1361[15]_i_13_n_0 ,rhs_V_3_fu_1056_p1[14:12]}),
        .O(\NLW_output_acc_3_V_reg_1361_reg[15]_i_4_O_UNCONNECTED [3:0]),
        .S({\output_acc_3_V_reg_1361[15]_i_14_n_0 ,\output_acc_3_V_reg_1361[15]_i_15_n_0 ,\output_acc_3_V_reg_1361[15]_i_16_n_0 ,\output_acc_3_V_reg_1361[15]_i_17_n_0 }));
  FDSE \output_acc_3_V_reg_1361_reg[1] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[1]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[1] ),
        .S(output_acc_3_V_reg_1361));
  FDSE \output_acc_3_V_reg_1361_reg[2] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[2]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[2] ),
        .S(output_acc_3_V_reg_1361));
  FDSE \output_acc_3_V_reg_1361_reg[3] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[3]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[3] ),
        .S(output_acc_3_V_reg_1361));
  CARRY4 \output_acc_3_V_reg_1361_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\output_acc_3_V_reg_1361_reg[3]_i_2_n_0 ,\output_acc_3_V_reg_1361_reg[3]_i_2_n_1 ,\output_acc_3_V_reg_1361_reg[3]_i_2_n_2 ,\output_acc_3_V_reg_1361_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Val2_13_fu_768_p4[3:0]),
        .O({\output_acc_3_V_reg_1361_reg[3]_i_2_n_4 ,\output_acc_3_V_reg_1361_reg[3]_i_2_n_5 ,\output_acc_3_V_reg_1361_reg[3]_i_2_n_6 ,\output_acc_3_V_reg_1361_reg[3]_i_2_n_7 }),
        .S({\output_acc_3_V_reg_1361[3]_i_7_n_0 ,\output_acc_3_V_reg_1361[3]_i_8_n_0 ,\output_acc_3_V_reg_1361[3]_i_9_n_0 ,\output_acc_3_V_reg_1361[3]_i_10_n_0 }));
  FDSE \output_acc_3_V_reg_1361_reg[4] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[4]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[4] ),
        .S(output_acc_3_V_reg_1361));
  FDSE \output_acc_3_V_reg_1361_reg[5] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[5]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[5] ),
        .S(output_acc_3_V_reg_1361));
  FDSE \output_acc_3_V_reg_1361_reg[6] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[6]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[6] ),
        .S(output_acc_3_V_reg_1361));
  FDSE \output_acc_3_V_reg_1361_reg[7] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[7]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[7] ),
        .S(output_acc_3_V_reg_1361));
  CARRY4 \output_acc_3_V_reg_1361_reg[7]_i_2 
       (.CI(\output_acc_3_V_reg_1361_reg[3]_i_2_n_0 ),
        .CO({\output_acc_3_V_reg_1361_reg[7]_i_2_n_0 ,\output_acc_3_V_reg_1361_reg[7]_i_2_n_1 ,\output_acc_3_V_reg_1361_reg[7]_i_2_n_2 ,\output_acc_3_V_reg_1361_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_Val2_13_fu_768_p4[7:4]),
        .O({\output_acc_3_V_reg_1361_reg[7]_i_2_n_4 ,\output_acc_3_V_reg_1361_reg[7]_i_2_n_5 ,\output_acc_3_V_reg_1361_reg[7]_i_2_n_6 ,\output_acc_3_V_reg_1361_reg[7]_i_2_n_7 }),
        .S({\output_acc_3_V_reg_1361[7]_i_7_n_0 ,\output_acc_3_V_reg_1361[7]_i_8_n_0 ,\output_acc_3_V_reg_1361[7]_i_9_n_0 ,\output_acc_3_V_reg_1361[7]_i_10_n_0 }));
  FDSE \output_acc_3_V_reg_1361_reg[8] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[8]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[8] ),
        .S(output_acc_3_V_reg_1361));
  FDSE \output_acc_3_V_reg_1361_reg[9] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(\output_acc_3_V_reg_1361[9]_i_1_n_0 ),
        .Q(\output_acc_3_V_reg_1361_reg_n_0_[9] ),
        .S(output_acc_3_V_reg_1361));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_reg_337[0]_i_1 
       (.I0(t_V_reg_337_reg[0]),
        .O(i_V_fu_481_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_reg_337[1]_i_1 
       (.I0(t_V_reg_337_reg[0]),
        .I1(t_V_reg_337_reg[1]),
        .O(i_V_fu_481_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \t_V_reg_337[2]_i_1 
       (.I0(t_V_reg_337_reg[0]),
        .I1(t_V_reg_337_reg[1]),
        .I2(t_V_reg_337_reg[2]),
        .O(i_V_fu_481_p2[2]));
  LUT4 #(
    .INIT(16'h008A)) 
    \t_V_reg_337[3]_i_2 
       (.I0(\ap_CS_fsm_reg_n_0_[1] ),
        .I1(\inStream_b_V_data_0_state_reg_n_0_[0] ),
        .I2(bias_en_V_read_reg_1225),
        .I3(kernel_bias_fp_1_V_U_n_68),
        .O(ap_NS_fsm1110_out));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \t_V_reg_337[3]_i_3 
       (.I0(t_V_reg_337_reg[2]),
        .I1(t_V_reg_337_reg[1]),
        .I2(t_V_reg_337_reg[0]),
        .I3(t_V_reg_337_reg[3]),
        .O(i_V_fu_481_p2[3]));
  FDRE \t_V_reg_337_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1110_out),
        .D(i_V_fu_481_p2[0]),
        .Q(t_V_reg_337_reg[0]),
        .R(t_V_reg_337));
  FDRE \t_V_reg_337_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1110_out),
        .D(i_V_fu_481_p2[1]),
        .Q(t_V_reg_337_reg[1]),
        .R(t_V_reg_337));
  FDRE \t_V_reg_337_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1110_out),
        .D(i_V_fu_481_p2[2]),
        .Q(t_V_reg_337_reg[2]),
        .R(t_V_reg_337));
  FDRE \t_V_reg_337_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1110_out),
        .D(i_V_fu_481_p2[3]),
        .Q(t_V_reg_337_reg[3]),
        .R(t_V_reg_337));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_reg_1341[0]_i_1 
       (.I0(inStream_a_V_dest_V_0_payload_B[0]),
        .I1(inStream_a_V_dest_V_0_sel),
        .I2(inStream_a_V_dest_V_0_payload_A[0]),
        .O(inStream_a_V_dest_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_reg_1341[1]_i_1 
       (.I0(inStream_a_V_dest_V_0_payload_B[1]),
        .I1(inStream_a_V_dest_V_0_sel),
        .I2(inStream_a_V_dest_V_0_payload_A[1]),
        .O(inStream_a_V_dest_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_reg_1341[2]_i_1 
       (.I0(inStream_a_V_dest_V_0_payload_B[2]),
        .I1(inStream_a_V_dest_V_0_sel),
        .I2(inStream_a_V_dest_V_0_payload_A[2]),
        .O(inStream_a_V_dest_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_reg_1341[3]_i_1 
       (.I0(inStream_a_V_dest_V_0_payload_B[3]),
        .I1(inStream_a_V_dest_V_0_sel),
        .I2(inStream_a_V_dest_V_0_payload_A[3]),
        .O(inStream_a_V_dest_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_reg_1341[4]_i_1 
       (.I0(inStream_a_V_dest_V_0_payload_B[4]),
        .I1(inStream_a_V_dest_V_0_sel),
        .I2(inStream_a_V_dest_V_0_payload_A[4]),
        .O(inStream_a_V_dest_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_dest_V_reg_1341[5]_i_1 
       (.I0(inStream_a_V_dest_V_0_payload_B[5]),
        .I1(inStream_a_V_dest_V_0_sel),
        .I2(inStream_a_V_dest_V_0_payload_A[5]),
        .O(inStream_a_V_dest_V_0_data_out[5]));
  FDRE \tmp_dest_V_reg_1341_pp1_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_dest_V_reg_1341[0]),
        .Q(tmp_dest_V_reg_1341_pp1_iter1_reg[0]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_dest_V_reg_1341[1]),
        .Q(tmp_dest_V_reg_1341_pp1_iter1_reg[1]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_dest_V_reg_1341[2]),
        .Q(tmp_dest_V_reg_1341_pp1_iter1_reg[2]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_dest_V_reg_1341[3]),
        .Q(tmp_dest_V_reg_1341_pp1_iter1_reg[3]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_dest_V_reg_1341[4]),
        .Q(tmp_dest_V_reg_1341_pp1_iter1_reg[4]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_dest_V_reg_1341[5]),
        .Q(tmp_dest_V_reg_1341_pp1_iter1_reg[5]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_dest_V_reg_1341_pp1_iter1_reg[0]),
        .Q(tmp_dest_V_reg_1341_pp1_iter2_reg[0]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_dest_V_reg_1341_pp1_iter1_reg[1]),
        .Q(tmp_dest_V_reg_1341_pp1_iter2_reg[1]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter2_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_dest_V_reg_1341_pp1_iter1_reg[2]),
        .Q(tmp_dest_V_reg_1341_pp1_iter2_reg[2]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter2_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_dest_V_reg_1341_pp1_iter1_reg[3]),
        .Q(tmp_dest_V_reg_1341_pp1_iter2_reg[3]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter2_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_dest_V_reg_1341_pp1_iter1_reg[4]),
        .Q(tmp_dest_V_reg_1341_pp1_iter2_reg[4]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter2_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_dest_V_reg_1341_pp1_iter1_reg[5]),
        .Q(tmp_dest_V_reg_1341_pp1_iter2_reg[5]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_dest_V_reg_1341_pp1_iter2_reg[0]),
        .Q(tmp_dest_V_reg_1341_pp1_iter3_reg[0]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter3_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_dest_V_reg_1341_pp1_iter2_reg[1]),
        .Q(tmp_dest_V_reg_1341_pp1_iter3_reg[1]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter3_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_dest_V_reg_1341_pp1_iter2_reg[2]),
        .Q(tmp_dest_V_reg_1341_pp1_iter3_reg[2]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter3_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_dest_V_reg_1341_pp1_iter2_reg[3]),
        .Q(tmp_dest_V_reg_1341_pp1_iter3_reg[3]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter3_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_dest_V_reg_1341_pp1_iter2_reg[4]),
        .Q(tmp_dest_V_reg_1341_pp1_iter3_reg[4]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_pp1_iter3_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_dest_V_reg_1341_pp1_iter2_reg[5]),
        .Q(tmp_dest_V_reg_1341_pp1_iter3_reg[5]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_reg[0] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_dest_V_0_data_out[0]),
        .Q(tmp_dest_V_reg_1341[0]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_reg[1] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_dest_V_0_data_out[1]),
        .Q(tmp_dest_V_reg_1341[1]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_reg[2] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_dest_V_0_data_out[2]),
        .Q(tmp_dest_V_reg_1341[2]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_reg[3] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_dest_V_0_data_out[3]),
        .Q(tmp_dest_V_reg_1341[3]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_reg[4] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_dest_V_0_data_out[4]),
        .Q(tmp_dest_V_reg_1341[4]),
        .R(1'b0));
  FDRE \tmp_dest_V_reg_1341_reg[5] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_dest_V_0_data_out[5]),
        .Q(tmp_dest_V_reg_1341[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_reg_1336[0]_i_1 
       (.I0(inStream_a_V_id_V_0_payload_B[0]),
        .I1(inStream_a_V_id_V_0_sel),
        .I2(inStream_a_V_id_V_0_payload_A[0]),
        .O(inStream_a_V_id_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_reg_1336[1]_i_1 
       (.I0(inStream_a_V_id_V_0_payload_B[1]),
        .I1(inStream_a_V_id_V_0_sel),
        .I2(inStream_a_V_id_V_0_payload_A[1]),
        .O(inStream_a_V_id_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_reg_1336[2]_i_1 
       (.I0(inStream_a_V_id_V_0_payload_B[2]),
        .I1(inStream_a_V_id_V_0_sel),
        .I2(inStream_a_V_id_V_0_payload_A[2]),
        .O(inStream_a_V_id_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_reg_1336[3]_i_1 
       (.I0(inStream_a_V_id_V_0_payload_B[3]),
        .I1(inStream_a_V_id_V_0_sel),
        .I2(inStream_a_V_id_V_0_payload_A[3]),
        .O(inStream_a_V_id_V_0_data_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_id_V_reg_1336[4]_i_1 
       (.I0(inStream_a_V_id_V_0_payload_B[4]),
        .I1(inStream_a_V_id_V_0_sel),
        .I2(inStream_a_V_id_V_0_payload_A[4]),
        .O(inStream_a_V_id_V_0_data_out[4]));
  FDRE \tmp_id_V_reg_1336_pp1_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_id_V_reg_1336[0]),
        .Q(tmp_id_V_reg_1336_pp1_iter1_reg[0]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_pp1_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_id_V_reg_1336[1]),
        .Q(tmp_id_V_reg_1336_pp1_iter1_reg[1]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_pp1_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_id_V_reg_1336[2]),
        .Q(tmp_id_V_reg_1336_pp1_iter1_reg[2]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_pp1_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_id_V_reg_1336[3]),
        .Q(tmp_id_V_reg_1336_pp1_iter1_reg[3]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_pp1_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_id_V_reg_1336[4]),
        .Q(tmp_id_V_reg_1336_pp1_iter1_reg[4]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_pp1_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_id_V_reg_1336_pp1_iter1_reg[0]),
        .Q(tmp_id_V_reg_1336_pp1_iter2_reg[0]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_pp1_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_id_V_reg_1336_pp1_iter1_reg[1]),
        .Q(tmp_id_V_reg_1336_pp1_iter2_reg[1]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_pp1_iter2_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_id_V_reg_1336_pp1_iter1_reg[2]),
        .Q(tmp_id_V_reg_1336_pp1_iter2_reg[2]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_pp1_iter2_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_id_V_reg_1336_pp1_iter1_reg[3]),
        .Q(tmp_id_V_reg_1336_pp1_iter2_reg[3]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_pp1_iter2_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_id_V_reg_1336_pp1_iter1_reg[4]),
        .Q(tmp_id_V_reg_1336_pp1_iter2_reg[4]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_pp1_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_id_V_reg_1336_pp1_iter2_reg[0]),
        .Q(tmp_id_V_reg_1336_pp1_iter3_reg[0]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_pp1_iter3_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_id_V_reg_1336_pp1_iter2_reg[1]),
        .Q(tmp_id_V_reg_1336_pp1_iter3_reg[1]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_pp1_iter3_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_id_V_reg_1336_pp1_iter2_reg[2]),
        .Q(tmp_id_V_reg_1336_pp1_iter3_reg[2]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_pp1_iter3_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_id_V_reg_1336_pp1_iter2_reg[3]),
        .Q(tmp_id_V_reg_1336_pp1_iter3_reg[3]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_pp1_iter3_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_id_V_reg_1336_pp1_iter2_reg[4]),
        .Q(tmp_id_V_reg_1336_pp1_iter3_reg[4]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_reg[0] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_id_V_0_data_out[0]),
        .Q(tmp_id_V_reg_1336[0]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_reg[1] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_id_V_0_data_out[1]),
        .Q(tmp_id_V_reg_1336[1]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_reg[2] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_id_V_0_data_out[2]),
        .Q(tmp_id_V_reg_1336[2]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_reg[3] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_id_V_0_data_out[3]),
        .Q(tmp_id_V_reg_1336[3]),
        .R(1'b0));
  FDRE \tmp_id_V_reg_1336_reg[4] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_id_V_0_data_out[4]),
        .Q(tmp_id_V_reg_1336[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_reg_1321[0]_i_1 
       (.I0(inStream_a_V_keep_V_0_payload_B[0]),
        .I1(inStream_a_V_keep_V_0_payload_A[0]),
        .I2(inStream_a_V_keep_V_0_sel),
        .O(inStream_a_V_keep_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_reg_1321[1]_i_1 
       (.I0(inStream_a_V_keep_V_0_payload_B[1]),
        .I1(inStream_a_V_keep_V_0_payload_A[1]),
        .I2(inStream_a_V_keep_V_0_sel),
        .O(inStream_a_V_keep_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_reg_1321[2]_i_1 
       (.I0(inStream_a_V_keep_V_0_payload_B[2]),
        .I1(inStream_a_V_keep_V_0_payload_A[2]),
        .I2(inStream_a_V_keep_V_0_sel),
        .O(inStream_a_V_keep_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_reg_1321[3]_i_1 
       (.I0(inStream_a_V_keep_V_0_payload_B[3]),
        .I1(inStream_a_V_keep_V_0_payload_A[3]),
        .I2(inStream_a_V_keep_V_0_sel),
        .O(inStream_a_V_keep_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_reg_1321[4]_i_1 
       (.I0(inStream_a_V_keep_V_0_payload_B[4]),
        .I1(inStream_a_V_keep_V_0_payload_A[4]),
        .I2(inStream_a_V_keep_V_0_sel),
        .O(inStream_a_V_keep_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_reg_1321[5]_i_1 
       (.I0(inStream_a_V_keep_V_0_payload_B[5]),
        .I1(inStream_a_V_keep_V_0_payload_A[5]),
        .I2(inStream_a_V_keep_V_0_sel),
        .O(inStream_a_V_keep_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_reg_1321[6]_i_1 
       (.I0(inStream_a_V_keep_V_0_payload_B[6]),
        .I1(inStream_a_V_keep_V_0_payload_A[6]),
        .I2(inStream_a_V_keep_V_0_sel),
        .O(inStream_a_V_keep_V_0_data_out[6]));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \tmp_keep_V_reg_1321[7]_i_1 
       (.I0(ap_CS_fsm_pp1_stage0),
        .I1(grp_post_process_unit_fu_430_n_24),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(\tmp_keep_V_reg_1321[7]_i_4_n_0 ),
        .I4(grp_post_process_unit_fu_430_n_26),
        .I5(ap_condition_pp1_exit_iter0_state5),
        .O(output_acc_0_V_reg_13460));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_keep_V_reg_1321[7]_i_2 
       (.I0(inStream_a_V_keep_V_0_payload_B[7]),
        .I1(inStream_a_V_keep_V_0_payload_A[7]),
        .I2(inStream_a_V_keep_V_0_sel),
        .O(inStream_a_V_keep_V_0_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmp_keep_V_reg_1321[7]_i_4 
       (.I0(\inStream_a_V_data_0_state_reg_n_0_[0] ),
        .I1(\inStream_b_V_data_0_state_reg_n_0_[0] ),
        .O(\tmp_keep_V_reg_1321[7]_i_4_n_0 ));
  FDRE \tmp_keep_V_reg_1321_pp1_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_keep_V_reg_1321[0]),
        .Q(tmp_keep_V_reg_1321_pp1_iter1_reg[0]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_keep_V_reg_1321[1]),
        .Q(tmp_keep_V_reg_1321_pp1_iter1_reg[1]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_keep_V_reg_1321[2]),
        .Q(tmp_keep_V_reg_1321_pp1_iter1_reg[2]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_keep_V_reg_1321[3]),
        .Q(tmp_keep_V_reg_1321_pp1_iter1_reg[3]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_keep_V_reg_1321[4]),
        .Q(tmp_keep_V_reg_1321_pp1_iter1_reg[4]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_keep_V_reg_1321[5]),
        .Q(tmp_keep_V_reg_1321_pp1_iter1_reg[5]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_keep_V_reg_1321[6]),
        .Q(tmp_keep_V_reg_1321_pp1_iter1_reg[6]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_keep_V_reg_1321[7]),
        .Q(tmp_keep_V_reg_1321_pp1_iter1_reg[7]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter1_reg[0]),
        .Q(tmp_keep_V_reg_1321_pp1_iter2_reg[0]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter1_reg[1]),
        .Q(tmp_keep_V_reg_1321_pp1_iter2_reg[1]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter2_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter1_reg[2]),
        .Q(tmp_keep_V_reg_1321_pp1_iter2_reg[2]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter2_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter1_reg[3]),
        .Q(tmp_keep_V_reg_1321_pp1_iter2_reg[3]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter2_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter1_reg[4]),
        .Q(tmp_keep_V_reg_1321_pp1_iter2_reg[4]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter2_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter1_reg[5]),
        .Q(tmp_keep_V_reg_1321_pp1_iter2_reg[5]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter2_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter1_reg[6]),
        .Q(tmp_keep_V_reg_1321_pp1_iter2_reg[6]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter2_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter1_reg[7]),
        .Q(tmp_keep_V_reg_1321_pp1_iter2_reg[7]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter2_reg[0]),
        .Q(tmp_keep_V_reg_1321_pp1_iter3_reg[0]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter3_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter2_reg[1]),
        .Q(tmp_keep_V_reg_1321_pp1_iter3_reg[1]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter3_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter2_reg[2]),
        .Q(tmp_keep_V_reg_1321_pp1_iter3_reg[2]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter3_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter2_reg[3]),
        .Q(tmp_keep_V_reg_1321_pp1_iter3_reg[3]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter3_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter2_reg[4]),
        .Q(tmp_keep_V_reg_1321_pp1_iter3_reg[4]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter3_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter2_reg[5]),
        .Q(tmp_keep_V_reg_1321_pp1_iter3_reg[5]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter3_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter2_reg[6]),
        .Q(tmp_keep_V_reg_1321_pp1_iter3_reg[6]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_pp1_iter3_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_keep_V_reg_1321_pp1_iter2_reg[7]),
        .Q(tmp_keep_V_reg_1321_pp1_iter3_reg[7]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_reg[0] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_keep_V_0_data_out[0]),
        .Q(tmp_keep_V_reg_1321[0]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_reg[1] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_keep_V_0_data_out[1]),
        .Q(tmp_keep_V_reg_1321[1]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_reg[2] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_keep_V_0_data_out[2]),
        .Q(tmp_keep_V_reg_1321[2]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_reg[3] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_keep_V_0_data_out[3]),
        .Q(tmp_keep_V_reg_1321[3]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_reg[4] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_keep_V_0_data_out[4]),
        .Q(tmp_keep_V_reg_1321[4]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_reg[5] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_keep_V_0_data_out[5]),
        .Q(tmp_keep_V_reg_1321[5]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_reg[6] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_keep_V_0_data_out[6]),
        .Q(tmp_keep_V_reg_1321[6]),
        .R(1'b0));
  FDRE \tmp_keep_V_reg_1321_reg[7] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_keep_V_0_data_out[7]),
        .Q(tmp_keep_V_reg_1321[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \tmp_last_V_reg_1386[0]_i_1 
       (.I0(kernel_bias_fp_1_V_U_n_69),
        .I1(icmp_ln73_1_fu_578_p2),
        .I2(icmp_ln73_2_fu_569_p2),
        .I3(\i_op_assign_2_reg_392_reg_n_0_[3] ),
        .I4(\tmp_last_V_reg_1386[0]_i_4_n_0 ),
        .O(tmp_last_V_fu_1180_p2));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_last_V_reg_1386[0]_i_10 
       (.I0(i_op_assign_reg_359_reg[1]),
        .I1(add_ln1354_1_reg_1281[1]),
        .I2(i_op_assign_reg_359_reg[0]),
        .I3(add_ln1354_1_reg_1281[0]),
        .I4(add_ln1354_1_reg_1281[2]),
        .I5(i_op_assign_reg_359_reg[2]),
        .O(\tmp_last_V_reg_1386[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \tmp_last_V_reg_1386[0]_i_4 
       (.I0(\i_op_assign_2_reg_392_reg_n_0_[1] ),
        .I1(\i_op_assign_2_reg_392_reg_n_0_[0] ),
        .I2(kernel_bias_fp_1_V_U_n_69),
        .I3(\i_op_assign_2_reg_392_reg_n_0_[2] ),
        .O(\tmp_last_V_reg_1386[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_last_V_reg_1386[0]_i_5 
       (.I0(i_op_assign_1_reg_381[6]),
        .I1(add_ln1354_reg_1275[6]),
        .I2(i_op_assign_1_reg_381[7]),
        .I3(add_ln1354_reg_1275[7]),
        .I4(add_ln1354_reg_1275[8]),
        .I5(i_op_assign_1_reg_381[8]),
        .O(\tmp_last_V_reg_1386[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_last_V_reg_1386[0]_i_6 
       (.I0(i_op_assign_1_reg_381[3]),
        .I1(add_ln1354_reg_1275[3]),
        .I2(i_op_assign_1_reg_381[4]),
        .I3(add_ln1354_reg_1275[4]),
        .I4(add_ln1354_reg_1275[5]),
        .I5(i_op_assign_1_reg_381[5]),
        .O(\tmp_last_V_reg_1386[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_last_V_reg_1386[0]_i_7 
       (.I0(i_op_assign_1_reg_381[0]),
        .I1(add_ln1354_reg_1275[0]),
        .I2(i_op_assign_1_reg_381[1]),
        .I3(add_ln1354_reg_1275[1]),
        .I4(add_ln1354_reg_1275[2]),
        .I5(i_op_assign_1_reg_381[2]),
        .O(\tmp_last_V_reg_1386[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_last_V_reg_1386[0]_i_8 
       (.I0(i_op_assign_reg_359_reg[7]),
        .I1(add_ln1354_1_reg_1281[7]),
        .I2(i_op_assign_reg_359_reg[6]),
        .I3(add_ln1354_1_reg_1281[6]),
        .I4(add_ln1354_1_reg_1281[8]),
        .I5(i_op_assign_reg_359_reg[8]),
        .O(\tmp_last_V_reg_1386[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tmp_last_V_reg_1386[0]_i_9 
       (.I0(i_op_assign_reg_359_reg[3]),
        .I1(add_ln1354_1_reg_1281[3]),
        .I2(i_op_assign_reg_359_reg[4]),
        .I3(add_ln1354_1_reg_1281[4]),
        .I4(add_ln1354_1_reg_1281[5]),
        .I5(i_op_assign_reg_359_reg[5]),
        .O(\tmp_last_V_reg_1386[0]_i_9_n_0 ));
  FDRE \tmp_last_V_reg_1386_pp1_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_last_V_reg_1386),
        .Q(tmp_last_V_reg_1386_pp1_iter1_reg),
        .R(1'b0));
  FDRE \tmp_last_V_reg_1386_pp1_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_last_V_reg_1386_pp1_iter1_reg),
        .Q(tmp_last_V_reg_1386_pp1_iter2_reg),
        .R(1'b0));
  FDRE \tmp_last_V_reg_1386_pp1_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_last_V_reg_1386_pp1_iter2_reg),
        .Q(tmp_last_V_reg_1386_pp1_iter3_reg),
        .R(1'b0));
  FDRE \tmp_last_V_reg_1386_reg[0] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(tmp_last_V_fu_1180_p2),
        .Q(tmp_last_V_reg_1386),
        .R(1'b0));
  CARRY4 \tmp_last_V_reg_1386_reg[0]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln73_1_fu_578_p2,\tmp_last_V_reg_1386_reg[0]_i_2_n_1 ,\tmp_last_V_reg_1386_reg[0]_i_2_n_2 ,\tmp_last_V_reg_1386_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_tmp_last_V_reg_1386_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\add_ln1354_reg_1275_reg[9]_inv_n_0 ,\tmp_last_V_reg_1386[0]_i_5_n_0 ,\tmp_last_V_reg_1386[0]_i_6_n_0 ,\tmp_last_V_reg_1386[0]_i_7_n_0 }));
  CARRY4 \tmp_last_V_reg_1386_reg[0]_i_3 
       (.CI(1'b0),
        .CO({icmp_ln73_2_fu_569_p2,\tmp_last_V_reg_1386_reg[0]_i_3_n_1 ,\tmp_last_V_reg_1386_reg[0]_i_3_n_2 ,\tmp_last_V_reg_1386_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_tmp_last_V_reg_1386_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\add_ln1354_1_reg_1281_reg[9]_inv_n_0 ,\tmp_last_V_reg_1386[0]_i_8_n_0 ,\tmp_last_V_reg_1386[0]_i_9_n_0 ,\tmp_last_V_reg_1386[0]_i_10_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_reg_1326[0]_i_1 
       (.I0(inStream_a_V_strb_V_0_payload_B[0]),
        .I1(inStream_a_V_strb_V_0_payload_A[0]),
        .I2(inStream_a_V_strb_V_0_sel),
        .O(inStream_a_V_strb_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_reg_1326[1]_i_1 
       (.I0(inStream_a_V_strb_V_0_payload_B[1]),
        .I1(inStream_a_V_strb_V_0_payload_A[1]),
        .I2(inStream_a_V_strb_V_0_sel),
        .O(inStream_a_V_strb_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_reg_1326[2]_i_1 
       (.I0(inStream_a_V_strb_V_0_payload_B[2]),
        .I1(inStream_a_V_strb_V_0_payload_A[2]),
        .I2(inStream_a_V_strb_V_0_sel),
        .O(inStream_a_V_strb_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_reg_1326[3]_i_1 
       (.I0(inStream_a_V_strb_V_0_payload_B[3]),
        .I1(inStream_a_V_strb_V_0_payload_A[3]),
        .I2(inStream_a_V_strb_V_0_sel),
        .O(inStream_a_V_strb_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_reg_1326[4]_i_1 
       (.I0(inStream_a_V_strb_V_0_payload_B[4]),
        .I1(inStream_a_V_strb_V_0_payload_A[4]),
        .I2(inStream_a_V_strb_V_0_sel),
        .O(inStream_a_V_strb_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_reg_1326[5]_i_1 
       (.I0(inStream_a_V_strb_V_0_payload_B[5]),
        .I1(inStream_a_V_strb_V_0_payload_A[5]),
        .I2(inStream_a_V_strb_V_0_sel),
        .O(inStream_a_V_strb_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_reg_1326[6]_i_1 
       (.I0(inStream_a_V_strb_V_0_payload_B[6]),
        .I1(inStream_a_V_strb_V_0_payload_A[6]),
        .I2(inStream_a_V_strb_V_0_sel),
        .O(inStream_a_V_strb_V_0_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tmp_strb_V_reg_1326[7]_i_1 
       (.I0(inStream_a_V_strb_V_0_payload_B[7]),
        .I1(inStream_a_V_strb_V_0_payload_A[7]),
        .I2(inStream_a_V_strb_V_0_sel),
        .O(inStream_a_V_strb_V_0_data_out[7]));
  FDRE \tmp_strb_V_reg_1326_pp1_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_strb_V_reg_1326[0]),
        .Q(tmp_strb_V_reg_1326_pp1_iter1_reg[0]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_strb_V_reg_1326[1]),
        .Q(tmp_strb_V_reg_1326_pp1_iter1_reg[1]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_strb_V_reg_1326[2]),
        .Q(tmp_strb_V_reg_1326_pp1_iter1_reg[2]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_strb_V_reg_1326[3]),
        .Q(tmp_strb_V_reg_1326_pp1_iter1_reg[3]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_strb_V_reg_1326[4]),
        .Q(tmp_strb_V_reg_1326_pp1_iter1_reg[4]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_strb_V_reg_1326[5]),
        .Q(tmp_strb_V_reg_1326_pp1_iter1_reg[5]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_strb_V_reg_1326[6]),
        .Q(tmp_strb_V_reg_1326_pp1_iter1_reg[6]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_strb_V_reg_1326[7]),
        .Q(tmp_strb_V_reg_1326_pp1_iter1_reg[7]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter1_reg[0]),
        .Q(tmp_strb_V_reg_1326_pp1_iter2_reg[0]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter1_reg[1]),
        .Q(tmp_strb_V_reg_1326_pp1_iter2_reg[1]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter2_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter1_reg[2]),
        .Q(tmp_strb_V_reg_1326_pp1_iter2_reg[2]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter2_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter1_reg[3]),
        .Q(tmp_strb_V_reg_1326_pp1_iter2_reg[3]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter2_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter1_reg[4]),
        .Q(tmp_strb_V_reg_1326_pp1_iter2_reg[4]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter2_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter1_reg[5]),
        .Q(tmp_strb_V_reg_1326_pp1_iter2_reg[5]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter2_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter1_reg[6]),
        .Q(tmp_strb_V_reg_1326_pp1_iter2_reg[6]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter2_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter1_reg[7]),
        .Q(tmp_strb_V_reg_1326_pp1_iter2_reg[7]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter2_reg[0]),
        .Q(tmp_strb_V_reg_1326_pp1_iter3_reg[0]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter3_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter2_reg[1]),
        .Q(tmp_strb_V_reg_1326_pp1_iter3_reg[1]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter3_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter2_reg[2]),
        .Q(tmp_strb_V_reg_1326_pp1_iter3_reg[2]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter3_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter2_reg[3]),
        .Q(tmp_strb_V_reg_1326_pp1_iter3_reg[3]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter3_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter2_reg[4]),
        .Q(tmp_strb_V_reg_1326_pp1_iter3_reg[4]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter3_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter2_reg[5]),
        .Q(tmp_strb_V_reg_1326_pp1_iter3_reg[5]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter3_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter2_reg[6]),
        .Q(tmp_strb_V_reg_1326_pp1_iter3_reg[6]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_pp1_iter3_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_strb_V_reg_1326_pp1_iter2_reg[7]),
        .Q(tmp_strb_V_reg_1326_pp1_iter3_reg[7]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_reg[0] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_strb_V_0_data_out[0]),
        .Q(tmp_strb_V_reg_1326[0]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_reg[1] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_strb_V_0_data_out[1]),
        .Q(tmp_strb_V_reg_1326[1]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_reg[2] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_strb_V_0_data_out[2]),
        .Q(tmp_strb_V_reg_1326[2]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_reg[3] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_strb_V_0_data_out[3]),
        .Q(tmp_strb_V_reg_1326[3]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_reg[4] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_strb_V_0_data_out[4]),
        .Q(tmp_strb_V_reg_1326[4]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_reg[5] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_strb_V_0_data_out[5]),
        .Q(tmp_strb_V_reg_1326[5]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_reg[6] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_strb_V_0_data_out[6]),
        .Q(tmp_strb_V_reg_1326[6]),
        .R(1'b0));
  FDRE \tmp_strb_V_reg_1326_reg[7] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_strb_V_0_data_out[7]),
        .Q(tmp_strb_V_reg_1326[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_user_V_reg_1331[0]_i_1 
       (.I0(inStream_a_V_user_V_0_payload_B[0]),
        .I1(inStream_a_V_user_V_0_sel),
        .I2(inStream_a_V_user_V_0_payload_A[0]),
        .O(inStream_a_V_user_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_user_V_reg_1331[1]_i_1 
       (.I0(inStream_a_V_user_V_0_payload_B[1]),
        .I1(inStream_a_V_user_V_0_sel),
        .I2(inStream_a_V_user_V_0_payload_A[1]),
        .O(inStream_a_V_user_V_0_data_out[1]));
  FDRE \tmp_user_V_reg_1331_pp1_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_user_V_reg_1331[0]),
        .Q(tmp_user_V_reg_1331_pp1_iter1_reg[0]),
        .R(1'b0));
  FDRE \tmp_user_V_reg_1331_pp1_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(grp_post_process_unit_fu_403_ap_ce),
        .D(tmp_user_V_reg_1331[1]),
        .Q(tmp_user_V_reg_1331_pp1_iter1_reg[1]),
        .R(1'b0));
  FDRE \tmp_user_V_reg_1331_pp1_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_user_V_reg_1331_pp1_iter1_reg[0]),
        .Q(tmp_user_V_reg_1331_pp1_iter2_reg[0]),
        .R(1'b0));
  FDRE \tmp_user_V_reg_1331_pp1_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_user_V_reg_1331_pp1_iter1_reg[1]),
        .Q(tmp_user_V_reg_1331_pp1_iter2_reg[1]),
        .R(1'b0));
  FDRE \tmp_user_V_reg_1331_pp1_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_user_V_reg_1331_pp1_iter2_reg[0]),
        .Q(tmp_user_V_reg_1331_pp1_iter3_reg[0]),
        .R(1'b0));
  FDRE \tmp_user_V_reg_1331_pp1_iter3_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp1_stage0_subdone),
        .D(tmp_user_V_reg_1331_pp1_iter2_reg[1]),
        .Q(tmp_user_V_reg_1331_pp1_iter3_reg[1]),
        .R(1'b0));
  FDRE \tmp_user_V_reg_1331_reg[0] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_user_V_0_data_out[0]),
        .Q(tmp_user_V_reg_1331[0]),
        .R(1'b0));
  FDRE \tmp_user_V_reg_1331_reg[1] 
       (.C(ap_clk),
        .CE(output_acc_0_V_reg_13460),
        .D(inStream_a_V_user_V_0_data_out[1]),
        .Q(tmp_user_V_reg_1331[1]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_CTRL_BUS_s_axi yolo_acc_top_CTRL_BUS_s_axi_U
       (.D(ap_NS_fsm[1:0]),
        .E(ap_NS_fsm1111_out),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_CTRL_BUS_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_CTRL_BUS_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_CTRL_BUS_WREADY),
        .Q(fold_input_ch_V),
        .SR(t_V_reg_337),
        .\ap_CS_fsm_reg[1] (kernel_bias_fp_1_V_U_n_68),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .bias_en_V(bias_en_V),
        .bias_en_V_read_reg_1225(bias_en_V_read_reg_1225),
        .int_ap_ready_reg_0({\ap_CS_fsm_reg_n_0_[5] ,\ap_CS_fsm_reg_n_0_[1] ,\ap_CS_fsm_reg_n_0_[0] }),
        .int_ap_ready_reg_1(\outStream_V_data_1_state_reg_n_0_[0] ),
        .int_ap_ready_reg_2(outStream_TVALID),
        .\int_input_h_V_reg[8]_0 (input_h_V),
        .\int_input_w_V_reg[8]_0 (input_w_V),
        .interrupt(interrupt),
        .leaky_V(leaky_V),
        .outStream_TREADY(outStream_TREADY),
        .outStream_V_data_1_ack_in(outStream_V_data_1_ack_in),
        .\outStream_V_data_1_state_reg[1] (yolo_acc_top_CTRL_BUS_s_axi_U_n_29),
        .outStream_V_dest_V_1_state(outStream_V_dest_V_1_state),
        .outStream_V_id_V_1_state(outStream_V_id_V_1_state),
        .outStream_V_keep_V_1_state(outStream_V_keep_V_1_state),
        .outStream_V_last_V_1_state(outStream_V_last_V_1_state),
        .outStream_V_strb_V_1_state(outStream_V_strb_V_1_state),
        .outStream_V_user_V_1_state(outStream_V_user_V_1_state),
        .\outStream_V_user_V_1_state_reg[0] (yolo_acc_top_CTRL_BUS_s_axi_U_n_31),
        .p_1_in26_in(p_1_in26_in),
        .s_axi_CTRL_BUS_ARADDR(s_axi_CTRL_BUS_ARADDR),
        .s_axi_CTRL_BUS_ARVALID(s_axi_CTRL_BUS_ARVALID),
        .s_axi_CTRL_BUS_AWADDR(s_axi_CTRL_BUS_AWADDR),
        .s_axi_CTRL_BUS_AWVALID(s_axi_CTRL_BUS_AWVALID),
        .s_axi_CTRL_BUS_BREADY(s_axi_CTRL_BUS_BREADY),
        .s_axi_CTRL_BUS_BVALID(s_axi_CTRL_BUS_BVALID),
        .s_axi_CTRL_BUS_RDATA(\^s_axi_CTRL_BUS_RDATA ),
        .s_axi_CTRL_BUS_RREADY(s_axi_CTRL_BUS_RREADY),
        .s_axi_CTRL_BUS_RVALID(s_axi_CTRL_BUS_RVALID),
        .s_axi_CTRL_BUS_WDATA(s_axi_CTRL_BUS_WDATA[8:0]),
        .s_axi_CTRL_BUS_WSTRB(s_axi_CTRL_BUS_WSTRB[1:0]),
        .s_axi_CTRL_BUS_WVALID(s_axi_CTRL_BUS_WVALID),
        .\t_V_reg_337_reg[0] (\inStream_b_V_data_0_state_reg_n_0_[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_CTRL_BUS_s_axi
   (ap_rst_n_inv,
    leaky_V,
    bias_en_V,
    s_axi_CTRL_BUS_BVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    Q,
    \int_input_w_V_reg[8]_0 ,
    \int_input_h_V_reg[8]_0 ,
    D,
    \outStream_V_data_1_state_reg[1] ,
    p_1_in26_in,
    \outStream_V_user_V_1_state_reg[0] ,
    interrupt,
    E,
    \FSM_onehot_wstate_reg[1]_0 ,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_CTRL_BUS_RVALID,
    SR,
    s_axi_CTRL_BUS_RDATA,
    ap_clk,
    s_axi_CTRL_BUS_BREADY,
    s_axi_CTRL_BUS_WVALID,
    s_axi_CTRL_BUS_WSTRB,
    s_axi_CTRL_BUS_WDATA,
    int_ap_ready_reg_0,
    outStream_TREADY,
    outStream_V_keep_V_1_state,
    outStream_V_strb_V_1_state,
    outStream_V_data_1_ack_in,
    int_ap_ready_reg_1,
    outStream_V_dest_V_1_state,
    int_ap_ready_reg_2,
    outStream_V_id_V_1_state,
    outStream_V_user_V_1_state,
    outStream_V_last_V_1_state,
    s_axi_CTRL_BUS_ARADDR,
    ap_rst_n,
    s_axi_CTRL_BUS_AWVALID,
    s_axi_CTRL_BUS_ARVALID,
    s_axi_CTRL_BUS_RREADY,
    \ap_CS_fsm_reg[1] ,
    \t_V_reg_337_reg[0] ,
    bias_en_V_read_reg_1225,
    s_axi_CTRL_BUS_AWADDR);
  output ap_rst_n_inv;
  output leaky_V;
  output bias_en_V;
  output s_axi_CTRL_BUS_BVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output [3:0]Q;
  output [8:0]\int_input_w_V_reg[8]_0 ;
  output [8:0]\int_input_h_V_reg[8]_0 ;
  output [1:0]D;
  output \outStream_V_data_1_state_reg[1] ;
  output p_1_in26_in;
  output \outStream_V_user_V_1_state_reg[0] ;
  output interrupt;
  output [0:0]E;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_CTRL_BUS_RVALID;
  output [0:0]SR;
  output [8:0]s_axi_CTRL_BUS_RDATA;
  input ap_clk;
  input s_axi_CTRL_BUS_BREADY;
  input s_axi_CTRL_BUS_WVALID;
  input [1:0]s_axi_CTRL_BUS_WSTRB;
  input [8:0]s_axi_CTRL_BUS_WDATA;
  input [2:0]int_ap_ready_reg_0;
  input outStream_TREADY;
  input [1:0]outStream_V_keep_V_1_state;
  input [1:0]outStream_V_strb_V_1_state;
  input outStream_V_data_1_ack_in;
  input int_ap_ready_reg_1;
  input [0:0]outStream_V_dest_V_1_state;
  input int_ap_ready_reg_2;
  input [1:0]outStream_V_id_V_1_state;
  input [1:0]outStream_V_user_V_1_state;
  input [1:0]outStream_V_last_V_1_state;
  input [5:0]s_axi_CTRL_BUS_ARADDR;
  input ap_rst_n;
  input s_axi_CTRL_BUS_AWVALID;
  input s_axi_CTRL_BUS_ARVALID;
  input s_axi_CTRL_BUS_RREADY;
  input \ap_CS_fsm_reg[1] ;
  input \t_V_reg_337_reg[0] ;
  input bias_en_V_read_reg_1225;
  input [5:0]s_axi_CTRL_BUS_AWADDR;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ar_hs;
  wire bias_en_V;
  wire bias_en_V_read_reg_1225;
  wire [7:1]data0;
  wire int_ap_done_i_1_n_0;
  wire int_ap_ready_i_10_n_0;
  wire int_ap_ready_i_6_n_0;
  wire int_ap_ready_i_7_n_0;
  wire int_ap_ready_i_8_n_0;
  wire int_ap_ready_i_9_n_0;
  wire [2:0]int_ap_ready_reg_0;
  wire int_ap_ready_reg_1;
  wire int_ap_ready_reg_2;
  wire int_ap_start3_out;
  wire int_ap_start_i_1_n_0;
  wire int_auto_restart_i_1_n_0;
  wire \int_bias_en_V[0]_i_1_n_0 ;
  wire \int_fold_input_ch_V[0]_i_1_n_0 ;
  wire \int_fold_input_ch_V[1]_i_1_n_0 ;
  wire \int_fold_input_ch_V[2]_i_1_n_0 ;
  wire \int_fold_input_ch_V[3]_i_1_n_0 ;
  wire \int_fold_input_ch_V[3]_i_2_n_0 ;
  wire int_gie_i_1_n_0;
  wire int_gie_i_2_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier[1]_i_3_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire [8:0]int_input_h_V0;
  wire \int_input_h_V[8]_i_3_n_0 ;
  wire [8:0]\int_input_h_V_reg[8]_0 ;
  wire [8:0]int_input_w_V0;
  wire \int_input_w_V[8]_i_1_n_0 ;
  wire [8:0]\int_input_w_V_reg[8]_0 ;
  wire int_isr6_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_leaky_V[0]_i_1_n_0 ;
  wire \int_leaky_V[0]_i_2_n_0 ;
  wire interrupt;
  wire leaky_V;
  wire outStream_TREADY;
  wire outStream_V_data_1_ack_in;
  wire \outStream_V_data_1_state_reg[1] ;
  wire [0:0]outStream_V_dest_V_1_state;
  wire [1:0]outStream_V_id_V_1_state;
  wire [1:0]outStream_V_keep_V_1_state;
  wire [1:0]outStream_V_last_V_1_state;
  wire [1:0]outStream_V_strb_V_1_state;
  wire [1:0]outStream_V_user_V_1_state;
  wire \outStream_V_user_V_1_state_reg[0] ;
  wire p_0_in;
  wire p_0_in0;
  wire p_1_in;
  wire p_1_in16_in;
  wire p_1_in21_in;
  wire p_1_in26_in;
  wire p_1_in31_in;
  wire p_1_in36_in;
  wire [8:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[0]_i_5_n_0 ;
  wire \rdata[0]_i_6_n_0 ;
  wire \rdata[0]_i_7_n_0 ;
  wire \rdata[0]_i_8_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[1]_i_5_n_0 ;
  wire \rdata[1]_i_6_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[8]_i_3_n_0 ;
  wire \rdata[8]_i_4_n_0 ;
  wire [5:0]s_axi_CTRL_BUS_ARADDR;
  wire s_axi_CTRL_BUS_ARVALID;
  wire [5:0]s_axi_CTRL_BUS_AWADDR;
  wire s_axi_CTRL_BUS_AWVALID;
  wire s_axi_CTRL_BUS_BREADY;
  wire s_axi_CTRL_BUS_BVALID;
  wire [8:0]s_axi_CTRL_BUS_RDATA;
  wire s_axi_CTRL_BUS_RREADY;
  wire s_axi_CTRL_BUS_RVALID;
  wire [8:0]s_axi_CTRL_BUS_WDATA;
  wire [1:0]s_axi_CTRL_BUS_WSTRB;
  wire s_axi_CTRL_BUS_WVALID;
  wire \t_V_reg_337_reg[0] ;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;

  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hF277)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_CTRL_BUS_ARVALID),
        .I2(s_axi_CTRL_BUS_RREADY),
        .I3(s_axi_CTRL_BUS_RVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_CTRL_BUS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_CTRL_BUS_RREADY),
        .I3(s_axi_CTRL_BUS_RVALID),
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
    .INIT(32'hFF0C1D1D)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_CTRL_BUS_AWVALID),
        .I3(s_axi_CTRL_BUS_BREADY),
        .I4(s_axi_CTRL_BUS_BVALID),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_CTRL_BUS_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_CTRL_BUS_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_CTRL_BUS_BREADY),
        .I1(s_axi_CTRL_BUS_BVALID),
        .I2(s_axi_CTRL_BUS_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(int_ap_ready_reg_0[0]),
        .I2(ap_done),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h88F8)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(int_ap_ready_reg_0[0]),
        .I1(ap_start),
        .I2(int_ap_ready_reg_0[1]),
        .I3(\ap_CS_fsm_reg[1] ),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \bias_en_V_read_reg_1225[0]_i_1 
       (.I0(ap_start),
        .I1(int_ap_ready_reg_0[0]),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    \inStream_a_V_dest_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFF7FFF00)) 
    int_ap_done_i_1
       (.I0(\rdata[1]_i_3_n_0 ),
        .I1(s_axi_CTRL_BUS_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(ap_done),
        .I4(data0[1]),
        .O(int_ap_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_0),
        .Q(data0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(int_ap_ready_reg_0[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(data0[2]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0000000022002202)) 
    int_ap_ready_i_1
       (.I0(int_ap_ready_reg_0[2]),
        .I1(\outStream_V_data_1_state_reg[1] ),
        .I2(p_1_in26_in),
        .I3(outStream_TREADY),
        .I4(p_1_in16_in),
        .I5(\outStream_V_user_V_1_state_reg[0] ),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hB)) 
    int_ap_ready_i_10
       (.I0(outStream_V_strb_V_1_state[1]),
        .I1(outStream_V_strb_V_1_state[0]),
        .O(int_ap_ready_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    int_ap_ready_i_11
       (.I0(int_ap_ready_reg_2),
        .I1(outStream_V_dest_V_1_state),
        .O(p_1_in36_in));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    int_ap_ready_i_12
       (.I0(outStream_V_last_V_1_state[0]),
        .I1(outStream_V_last_V_1_state[1]),
        .O(p_1_in21_in));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    int_ap_ready_i_13
       (.I0(outStream_V_id_V_1_state[0]),
        .I1(outStream_V_id_V_1_state[1]),
        .O(p_1_in31_in));
  LUT6 #(
    .INIT(64'h4F44FFFFFFFFFFFF)) 
    int_ap_ready_i_2
       (.I0(outStream_V_data_1_ack_in),
        .I1(int_ap_ready_reg_1),
        .I2(outStream_V_dest_V_1_state),
        .I3(int_ap_ready_reg_2),
        .I4(int_ap_ready_i_6_n_0),
        .I5(int_ap_ready_i_7_n_0),
        .O(\outStream_V_data_1_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    int_ap_ready_i_3
       (.I0(outStream_V_keep_V_1_state[0]),
        .I1(outStream_V_keep_V_1_state[1]),
        .O(p_1_in26_in));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    int_ap_ready_i_4
       (.I0(outStream_V_strb_V_1_state[0]),
        .I1(outStream_V_strb_V_1_state[1]),
        .O(p_1_in16_in));
  LUT6 #(
    .INIT(64'hBBFBFBFBFFFFFFFF)) 
    int_ap_ready_i_5
       (.I0(int_ap_ready_i_8_n_0),
        .I1(int_ap_ready_i_9_n_0),
        .I2(outStream_V_user_V_1_state[0]),
        .I3(outStream_V_user_V_1_state[1]),
        .I4(outStream_TREADY),
        .I5(int_ap_ready_i_10_n_0),
        .O(\outStream_V_user_V_1_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'hB)) 
    int_ap_ready_i_6
       (.I0(outStream_V_id_V_1_state[1]),
        .I1(outStream_V_id_V_1_state[0]),
        .O(int_ap_ready_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'hB)) 
    int_ap_ready_i_7
       (.I0(outStream_V_keep_V_1_state[1]),
        .I1(outStream_V_keep_V_1_state[0]),
        .O(int_ap_ready_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF0000FFEA)) 
    int_ap_ready_i_8
       (.I0(p_1_in36_in),
        .I1(outStream_V_data_1_ack_in),
        .I2(int_ap_ready_reg_1),
        .I3(p_1_in21_in),
        .I4(outStream_TREADY),
        .I5(p_1_in31_in),
        .O(int_ap_ready_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'hB)) 
    int_ap_ready_i_9
       (.I0(outStream_V_last_V_1_state[1]),
        .I1(outStream_V_last_V_1_state[0]),
        .O(int_ap_ready_i_9_n_0));
  FDRE int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done),
        .Q(data0[3]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(data0[7]),
        .I1(ap_done),
        .I2(int_ap_start3_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    int_ap_start_i_2
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(s_axi_CTRL_BUS_WDATA[0]),
        .I3(s_axi_CTRL_BUS_WSTRB[0]),
        .I4(\int_input_h_V[8]_i_3_n_0 ),
        .O(int_ap_start3_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    int_auto_restart_i_1
       (.I0(s_axi_CTRL_BUS_WDATA[7]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\int_input_h_V[8]_i_3_n_0 ),
        .I5(data0[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(data0[7]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hDFFFFFFF80000000)) 
    \int_bias_en_V[0]_i_1 
       (.I0(s_axi_CTRL_BUS_WSTRB[0]),
        .I1(s_axi_CTRL_BUS_WDATA[0]),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_input_h_V[8]_i_3_n_0 ),
        .I5(bias_en_V),
        .O(\int_bias_en_V[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_bias_en_V_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_bias_en_V[0]_i_1_n_0 ),
        .Q(bias_en_V),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_fold_input_ch_V[0]_i_1 
       (.I0(Q[0]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(s_axi_CTRL_BUS_WDATA[0]),
        .O(\int_fold_input_ch_V[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_fold_input_ch_V[1]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[1]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(Q[1]),
        .O(\int_fold_input_ch_V[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_fold_input_ch_V[2]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[2]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(Q[2]),
        .O(\int_fold_input_ch_V[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \int_fold_input_ch_V[3]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\int_input_h_V[8]_i_3_n_0 ),
        .O(\int_fold_input_ch_V[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_fold_input_ch_V[3]_i_2 
       (.I0(s_axi_CTRL_BUS_WDATA[3]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(Q[3]),
        .O(\int_fold_input_ch_V[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_fold_input_ch_V_reg[0] 
       (.C(ap_clk),
        .CE(\int_fold_input_ch_V[3]_i_1_n_0 ),
        .D(\int_fold_input_ch_V[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_fold_input_ch_V_reg[1] 
       (.C(ap_clk),
        .CE(\int_fold_input_ch_V[3]_i_1_n_0 ),
        .D(\int_fold_input_ch_V[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_fold_input_ch_V_reg[2] 
       (.C(ap_clk),
        .CE(\int_fold_input_ch_V[3]_i_1_n_0 ),
        .D(\int_fold_input_ch_V[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_fold_input_ch_V_reg[3] 
       (.C(ap_clk),
        .CE(\int_fold_input_ch_V[3]_i_1_n_0 ),
        .D(\int_fold_input_ch_V[3]_i_2_n_0 ),
        .Q(Q[3]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    int_gie_i_1
       (.I0(s_axi_CTRL_BUS_WDATA[0]),
        .I1(int_gie_i_2_n_0),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    int_gie_i_2
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(s_axi_CTRL_BUS_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(int_gie_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_ier[1]_i_2_n_0 ),
        .I3(\int_ier[1]_i_3_n_0 ),
        .I4(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[1]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_ier[1]_i_2_n_0 ),
        .I3(\int_ier[1]_i_3_n_0 ),
        .I4(p_0_in),
        .O(\int_ier[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \int_ier[1]_i_2 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(s_axi_CTRL_BUS_WSTRB[0]),
        .O(\int_ier[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \int_ier[1]_i_3 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_CTRL_BUS_WVALID),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(\waddr_reg_n_0_[0] ),
        .I4(\waddr_reg_n_0_[2] ),
        .O(\int_ier[1]_i_3_n_0 ));
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
        .Q(p_0_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_h_V[0]_i_1 
       (.I0(\int_input_h_V_reg[8]_0 [0]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(s_axi_CTRL_BUS_WDATA[0]),
        .O(int_input_h_V0[0]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_h_V[1]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[1]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\int_input_h_V_reg[8]_0 [1]),
        .O(int_input_h_V0[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_h_V[2]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[2]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\int_input_h_V_reg[8]_0 [2]),
        .O(int_input_h_V0[2]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_h_V[3]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[3]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\int_input_h_V_reg[8]_0 [3]),
        .O(int_input_h_V0[3]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_h_V[4]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[4]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\int_input_h_V_reg[8]_0 [4]),
        .O(int_input_h_V0[4]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_h_V[5]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[5]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\int_input_h_V_reg[8]_0 [5]),
        .O(int_input_h_V0[5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_h_V[6]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[6]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\int_input_h_V_reg[8]_0 [6]),
        .O(int_input_h_V0[6]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_h_V[7]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[7]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\int_input_h_V_reg[8]_0 [7]),
        .O(int_input_h_V0[7]));
  LUT3 #(
    .INIT(8'h40)) 
    \int_input_h_V[8]_i_1 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\int_input_h_V[8]_i_3_n_0 ),
        .O(p_0_in0));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_h_V[8]_i_2 
       (.I0(s_axi_CTRL_BUS_WDATA[8]),
        .I1(s_axi_CTRL_BUS_WSTRB[1]),
        .I2(\int_input_h_V_reg[8]_0 [8]),
        .O(int_input_h_V0[8]));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \int_input_h_V[8]_i_3 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[0] ),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(s_axi_CTRL_BUS_WVALID),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .I5(\waddr_reg_n_0_[3] ),
        .O(\int_input_h_V[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_h_V_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in0),
        .D(int_input_h_V0[0]),
        .Q(\int_input_h_V_reg[8]_0 [0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_h_V_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in0),
        .D(int_input_h_V0[1]),
        .Q(\int_input_h_V_reg[8]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_h_V_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in0),
        .D(int_input_h_V0[2]),
        .Q(\int_input_h_V_reg[8]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_h_V_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in0),
        .D(int_input_h_V0[3]),
        .Q(\int_input_h_V_reg[8]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_h_V_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in0),
        .D(int_input_h_V0[4]),
        .Q(\int_input_h_V_reg[8]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_h_V_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in0),
        .D(int_input_h_V0[5]),
        .Q(\int_input_h_V_reg[8]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_h_V_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in0),
        .D(int_input_h_V0[6]),
        .Q(\int_input_h_V_reg[8]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_h_V_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in0),
        .D(int_input_h_V0[7]),
        .Q(\int_input_h_V_reg[8]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_h_V_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in0),
        .D(int_input_h_V0[8]),
        .Q(\int_input_h_V_reg[8]_0 [8]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_input_w_V[0]_i_1 
       (.I0(\int_input_w_V_reg[8]_0 [0]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(s_axi_CTRL_BUS_WDATA[0]),
        .O(int_input_w_V0[0]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_w_V[1]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[1]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\int_input_w_V_reg[8]_0 [1]),
        .O(int_input_w_V0[1]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_w_V[2]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[2]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\int_input_w_V_reg[8]_0 [2]),
        .O(int_input_w_V0[2]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_w_V[3]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[3]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\int_input_w_V_reg[8]_0 [3]),
        .O(int_input_w_V0[3]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_w_V[4]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[4]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\int_input_w_V_reg[8]_0 [4]),
        .O(int_input_w_V0[4]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_w_V[5]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[5]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\int_input_w_V_reg[8]_0 [5]),
        .O(int_input_w_V0[5]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_w_V[6]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[6]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\int_input_w_V_reg[8]_0 [6]),
        .O(int_input_w_V0[6]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_w_V[7]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[7]),
        .I1(s_axi_CTRL_BUS_WSTRB[0]),
        .I2(\int_input_w_V_reg[8]_0 [7]),
        .O(int_input_w_V0[7]));
  LUT4 #(
    .INIT(16'h0800)) 
    \int_input_w_V[8]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\int_ier[1]_i_3_n_0 ),
        .O(\int_input_w_V[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \int_input_w_V[8]_i_2 
       (.I0(s_axi_CTRL_BUS_WDATA[8]),
        .I1(s_axi_CTRL_BUS_WSTRB[1]),
        .I2(\int_input_w_V_reg[8]_0 [8]),
        .O(int_input_w_V0[8]));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_w_V_reg[0] 
       (.C(ap_clk),
        .CE(\int_input_w_V[8]_i_1_n_0 ),
        .D(int_input_w_V0[0]),
        .Q(\int_input_w_V_reg[8]_0 [0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_w_V_reg[1] 
       (.C(ap_clk),
        .CE(\int_input_w_V[8]_i_1_n_0 ),
        .D(int_input_w_V0[1]),
        .Q(\int_input_w_V_reg[8]_0 [1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_w_V_reg[2] 
       (.C(ap_clk),
        .CE(\int_input_w_V[8]_i_1_n_0 ),
        .D(int_input_w_V0[2]),
        .Q(\int_input_w_V_reg[8]_0 [2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_w_V_reg[3] 
       (.C(ap_clk),
        .CE(\int_input_w_V[8]_i_1_n_0 ),
        .D(int_input_w_V0[3]),
        .Q(\int_input_w_V_reg[8]_0 [3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_w_V_reg[4] 
       (.C(ap_clk),
        .CE(\int_input_w_V[8]_i_1_n_0 ),
        .D(int_input_w_V0[4]),
        .Q(\int_input_w_V_reg[8]_0 [4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_w_V_reg[5] 
       (.C(ap_clk),
        .CE(\int_input_w_V[8]_i_1_n_0 ),
        .D(int_input_w_V0[5]),
        .Q(\int_input_w_V_reg[8]_0 [5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_w_V_reg[6] 
       (.C(ap_clk),
        .CE(\int_input_w_V[8]_i_1_n_0 ),
        .D(int_input_w_V0[6]),
        .Q(\int_input_w_V_reg[8]_0 [6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_w_V_reg[7] 
       (.C(ap_clk),
        .CE(\int_input_w_V[8]_i_1_n_0 ),
        .D(int_input_w_V0[7]),
        .Q(\int_input_w_V_reg[8]_0 [7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_input_w_V_reg[8] 
       (.C(ap_clk),
        .CE(\int_input_w_V[8]_i_1_n_0 ),
        .D(int_input_w_V0[8]),
        .Q(\int_input_w_V_reg[8]_0 [8]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[0]),
        .I1(int_isr6_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(ap_done),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \int_isr[0]_i_2 
       (.I0(int_gie_i_2_n_0),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(s_axi_CTRL_BUS_WSTRB[0]),
        .I4(\waddr_reg_n_0_[4] ),
        .I5(\waddr_reg_n_0_[5] ),
        .O(int_isr6_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_CTRL_BUS_WDATA[1]),
        .I1(int_isr6_out),
        .I2(p_0_in),
        .I3(ap_done),
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
  LUT6 #(
    .INIT(64'hDFFFFFFF80000000)) 
    \int_leaky_V[0]_i_1 
       (.I0(s_axi_CTRL_BUS_WSTRB[0]),
        .I1(s_axi_CTRL_BUS_WDATA[0]),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_leaky_V[0]_i_2_n_0 ),
        .I4(\int_ier[1]_i_3_n_0 ),
        .I5(leaky_V),
        .O(\int_leaky_V[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \int_leaky_V[0]_i_2 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[4] ),
        .O(\int_leaky_V[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_leaky_V_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_leaky_V[0]_i_1_n_0 ),
        .Q(leaky_V),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    interrupt_INST_0
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(int_gie_reg_n_0),
        .O(interrupt));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(\rdata[0]_i_3_n_0 ),
        .I2(\rdata[0]_i_4_n_0 ),
        .I3(ap_start),
        .I4(\rdata[1]_i_3_n_0 ),
        .I5(\rdata[0]_i_5_n_0 ),
        .O(rdata[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[0]_i_2 
       (.I0(Q[0]),
        .I1(\rdata[1]_i_2_n_0 ),
        .I2(\int_input_h_V_reg[8]_0 [0]),
        .I3(\rdata[8]_i_4_n_0 ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \rdata[0]_i_3 
       (.I0(\rdata[0]_i_6_n_0 ),
        .I1(s_axi_CTRL_BUS_ARADDR[4]),
        .I2(s_axi_CTRL_BUS_ARADDR[3]),
        .I3(leaky_V),
        .I4(\int_input_w_V_reg[8]_0 [0]),
        .I5(\rdata[8]_i_3_n_0 ),
        .O(\rdata[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \rdata[0]_i_4 
       (.I0(s_axi_CTRL_BUS_ARADDR[1]),
        .I1(s_axi_CTRL_BUS_ARADDR[0]),
        .I2(s_axi_CTRL_BUS_ARADDR[2]),
        .I3(s_axi_CTRL_BUS_ARADDR[5]),
        .I4(\rdata[0]_i_7_n_0 ),
        .O(\rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00C0080000000800)) 
    \rdata[0]_i_5 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(\rdata[0]_i_8_n_0 ),
        .I2(s_axi_CTRL_BUS_ARADDR[5]),
        .I3(s_axi_CTRL_BUS_ARADDR[3]),
        .I4(s_axi_CTRL_BUS_ARADDR[4]),
        .I5(bias_en_V),
        .O(\rdata[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \rdata[0]_i_6 
       (.I0(s_axi_CTRL_BUS_ARADDR[2]),
        .I1(s_axi_CTRL_BUS_ARADDR[1]),
        .I2(s_axi_CTRL_BUS_ARADDR[0]),
        .I3(s_axi_CTRL_BUS_ARADDR[5]),
        .O(\rdata[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \rdata[0]_i_7 
       (.I0(int_gie_reg_n_0),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(s_axi_CTRL_BUS_ARADDR[3]),
        .I3(s_axi_CTRL_BUS_ARADDR[4]),
        .O(\rdata[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rdata[0]_i_8 
       (.I0(s_axi_CTRL_BUS_ARADDR[0]),
        .I1(s_axi_CTRL_BUS_ARADDR[1]),
        .I2(s_axi_CTRL_BUS_ARADDR[2]),
        .O(\rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \rdata[1]_i_1 
       (.I0(Q[1]),
        .I1(\rdata[1]_i_2_n_0 ),
        .I2(data0[1]),
        .I3(\rdata[1]_i_3_n_0 ),
        .I4(\rdata[1]_i_4_n_0 ),
        .I5(\rdata[1]_i_5_n_0 ),
        .O(rdata[1]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \rdata[1]_i_2 
       (.I0(s_axi_CTRL_BUS_ARADDR[5]),
        .I1(s_axi_CTRL_BUS_ARADDR[0]),
        .I2(s_axi_CTRL_BUS_ARADDR[1]),
        .I3(s_axi_CTRL_BUS_ARADDR[2]),
        .I4(s_axi_CTRL_BUS_ARADDR[4]),
        .I5(s_axi_CTRL_BUS_ARADDR[3]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rdata[1]_i_3 
       (.I0(s_axi_CTRL_BUS_ARADDR[4]),
        .I1(s_axi_CTRL_BUS_ARADDR[3]),
        .I2(s_axi_CTRL_BUS_ARADDR[5]),
        .I3(s_axi_CTRL_BUS_ARADDR[0]),
        .I4(s_axi_CTRL_BUS_ARADDR[1]),
        .I5(s_axi_CTRL_BUS_ARADDR[2]),
        .O(\rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0A00C000)) 
    \rdata[1]_i_4 
       (.I0(p_0_in),
        .I1(\int_input_h_V_reg[8]_0 [1]),
        .I2(s_axi_CTRL_BUS_ARADDR[4]),
        .I3(\rdata[7]_i_2_n_0 ),
        .I4(s_axi_CTRL_BUS_ARADDR[3]),
        .O(\rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F88888888888888)) 
    \rdata[1]_i_5 
       (.I0(\int_input_w_V_reg[8]_0 [1]),
        .I1(\rdata[8]_i_3_n_0 ),
        .I2(s_axi_CTRL_BUS_ARADDR[5]),
        .I3(p_1_in),
        .I4(s_axi_CTRL_BUS_ARADDR[2]),
        .I5(\rdata[1]_i_6_n_0 ),
        .O(\rdata[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \rdata[1]_i_6 
       (.I0(s_axi_CTRL_BUS_ARADDR[4]),
        .I1(s_axi_CTRL_BUS_ARADDR[3]),
        .I2(s_axi_CTRL_BUS_ARADDR[0]),
        .I3(s_axi_CTRL_BUS_ARADDR[1]),
        .O(\rdata[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rdata[2]_i_1 
       (.I0(\rdata[8]_i_4_n_0 ),
        .I1(\int_input_h_V_reg[8]_0 [2]),
        .I2(\rdata[8]_i_3_n_0 ),
        .I3(\int_input_w_V_reg[8]_0 [2]),
        .I4(\rdata[2]_i_2_n_0 ),
        .O(rdata[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[2]_i_2 
       (.I0(Q[2]),
        .I1(\rdata[1]_i_2_n_0 ),
        .I2(data0[2]),
        .I3(\rdata[1]_i_3_n_0 ),
        .O(\rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rdata[3]_i_1 
       (.I0(\rdata[8]_i_4_n_0 ),
        .I1(\int_input_h_V_reg[8]_0 [3]),
        .I2(\rdata[8]_i_3_n_0 ),
        .I3(\int_input_w_V_reg[8]_0 [3]),
        .I4(\rdata[3]_i_2_n_0 ),
        .O(rdata[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[3]_i_2 
       (.I0(Q[3]),
        .I1(\rdata[1]_i_2_n_0 ),
        .I2(data0[3]),
        .I3(\rdata[1]_i_3_n_0 ),
        .O(\rdata[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[4]_i_1 
       (.I0(\int_input_w_V_reg[8]_0 [4]),
        .I1(\rdata[8]_i_3_n_0 ),
        .I2(\int_input_h_V_reg[8]_0 [4]),
        .I3(\rdata[8]_i_4_n_0 ),
        .O(rdata[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[5]_i_1 
       (.I0(\int_input_w_V_reg[8]_0 [5]),
        .I1(\rdata[8]_i_3_n_0 ),
        .I2(\int_input_h_V_reg[8]_0 [5]),
        .I3(\rdata[8]_i_4_n_0 ),
        .O(rdata[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[6]_i_1 
       (.I0(\int_input_w_V_reg[8]_0 [6]),
        .I1(\rdata[8]_i_3_n_0 ),
        .I2(\int_input_h_V_reg[8]_0 [6]),
        .I3(\rdata[8]_i_4_n_0 ),
        .O(rdata[6]));
  LUT6 #(
    .INIT(64'hF0000000CCAA0000)) 
    \rdata[7]_i_1 
       (.I0(data0[7]),
        .I1(\int_input_h_V_reg[8]_0 [7]),
        .I2(\int_input_w_V_reg[8]_0 [7]),
        .I3(s_axi_CTRL_BUS_ARADDR[4]),
        .I4(\rdata[7]_i_2_n_0 ),
        .I5(s_axi_CTRL_BUS_ARADDR[3]),
        .O(rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rdata[7]_i_2 
       (.I0(s_axi_CTRL_BUS_ARADDR[2]),
        .I1(s_axi_CTRL_BUS_ARADDR[1]),
        .I2(s_axi_CTRL_BUS_ARADDR[0]),
        .I3(s_axi_CTRL_BUS_ARADDR[5]),
        .O(\rdata[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[8]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_CTRL_BUS_ARVALID),
        .O(ar_hs));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[8]_i_2 
       (.I0(\int_input_w_V_reg[8]_0 [8]),
        .I1(\rdata[8]_i_3_n_0 ),
        .I2(\int_input_h_V_reg[8]_0 [8]),
        .I3(\rdata[8]_i_4_n_0 ),
        .O(rdata[8]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \rdata[8]_i_3 
       (.I0(s_axi_CTRL_BUS_ARADDR[4]),
        .I1(s_axi_CTRL_BUS_ARADDR[2]),
        .I2(s_axi_CTRL_BUS_ARADDR[1]),
        .I3(s_axi_CTRL_BUS_ARADDR[0]),
        .I4(s_axi_CTRL_BUS_ARADDR[5]),
        .I5(s_axi_CTRL_BUS_ARADDR[3]),
        .O(\rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \rdata[8]_i_4 
       (.I0(s_axi_CTRL_BUS_ARADDR[4]),
        .I1(s_axi_CTRL_BUS_ARADDR[2]),
        .I2(s_axi_CTRL_BUS_ARADDR[1]),
        .I3(s_axi_CTRL_BUS_ARADDR[0]),
        .I4(s_axi_CTRL_BUS_ARADDR[5]),
        .I5(s_axi_CTRL_BUS_ARADDR[3]),
        .O(\rdata[8]_i_4_n_0 ));
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
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[4]),
        .Q(s_axi_CTRL_BUS_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[5]),
        .Q(s_axi_CTRL_BUS_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[6]),
        .Q(s_axi_CTRL_BUS_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_CTRL_BUS_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[8]),
        .Q(s_axi_CTRL_BUS_RDATA[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF75000000000000)) 
    \t_V_reg_337[3]_i_1 
       (.I0(int_ap_ready_reg_0[1]),
        .I1(\t_V_reg_337_reg[0] ),
        .I2(bias_en_V_read_reg_1225),
        .I3(\ap_CS_fsm_reg[1] ),
        .I4(int_ap_ready_reg_0[0]),
        .I5(ap_start),
        .O(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[5]_i_1 
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
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_BUS_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_CTRL_BUS_AWADDR[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_kernel_bias_fp_0_V
   (DOADO,
    DOBDO,
    DIADI,
    DIBDI,
    ram_reg,
    ram_reg_0,
    ram_reg_1,
    ram_reg_2,
    ram_reg_3,
    ram_reg_4,
    ram_reg_5,
    ram_reg_6,
    ram_reg_7,
    ram_reg_8,
    S,
    ram_reg_9,
    ap_clk,
    kernel_bias_fp_0_V_ce0,
    grp_post_process_unit_fu_403_ap_ce,
    ADDRARDADDR,
    WEA,
    CO,
    O,
    \activated_output_V_reg_380_reg[15] ,
    \activated_output_V_reg_380_reg[15]_0 ,
    Q,
    ram_reg_10,
    ram_reg_11,
    ret_V_fu_78_p2_carry__2,
    ret_V_fu_78_p2_carry__2_0);
  output [14:0]DOADO;
  output [14:0]DOBDO;
  output [14:0]DIADI;
  output [14:0]DIBDI;
  output ram_reg;
  output ram_reg_0;
  output [3:0]ram_reg_1;
  output [3:0]ram_reg_2;
  output [3:0]ram_reg_3;
  output [3:0]ram_reg_4;
  output [3:0]ram_reg_5;
  output [3:0]ram_reg_6;
  output [3:0]ram_reg_7;
  output [3:0]ram_reg_8;
  output [0:0]S;
  output [0:0]ram_reg_9;
  input ap_clk;
  input kernel_bias_fp_0_V_ce0;
  input grp_post_process_unit_fu_403_ap_ce;
  input [2:0]ADDRARDADDR;
  input [0:0]WEA;
  input [0:0]CO;
  input [0:0]O;
  input [0:0]\activated_output_V_reg_380_reg[15] ;
  input [0:0]\activated_output_V_reg_380_reg[15]_0 ;
  input [31:0]Q;
  input ram_reg_10;
  input [31:0]ram_reg_11;
  input [15:0]ret_V_fu_78_p2_carry__2;
  input [15:0]ret_V_fu_78_p2_carry__2_0;

  wire [2:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [14:0]DIADI;
  wire [14:0]DIBDI;
  wire [14:0]DOADO;
  wire [14:0]DOBDO;
  wire [0:0]O;
  wire [31:0]Q;
  wire [0:0]S;
  wire [0:0]WEA;
  wire [0:0]\activated_output_V_reg_380_reg[15] ;
  wire [0:0]\activated_output_V_reg_380_reg[15]_0 ;
  wire ap_clk;
  wire grp_post_process_unit_fu_403_ap_ce;
  wire kernel_bias_fp_0_V_ce0;
  wire ram_reg;
  wire ram_reg_0;
  wire [3:0]ram_reg_1;
  wire ram_reg_10;
  wire [31:0]ram_reg_11;
  wire [3:0]ram_reg_2;
  wire [3:0]ram_reg_3;
  wire [3:0]ram_reg_4;
  wire [3:0]ram_reg_5;
  wire [3:0]ram_reg_6;
  wire [3:0]ram_reg_7;
  wire [3:0]ram_reg_8;
  wire [0:0]ram_reg_9;
  wire [15:0]ret_V_fu_78_p2_carry__2;
  wire [15:0]ret_V_fu_78_p2_carry__2_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_kernel_bias_fp_0_V_ram_4 yolo_acc_top_kernel_bias_fp_0_V_ram_U
       (.ADDRARDADDR(ADDRARDADDR),
        .CO(CO),
        .DIADI(DIADI),
        .DIBDI(DIBDI),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .O(O),
        .Q(Q),
        .S(S),
        .WEA(WEA),
        .\activated_output_V_reg_380_reg[15] (\activated_output_V_reg_380_reg[15] ),
        .\activated_output_V_reg_380_reg[15]_0 (\activated_output_V_reg_380_reg[15]_0 ),
        .ap_clk(ap_clk),
        .grp_post_process_unit_fu_403_ap_ce(grp_post_process_unit_fu_403_ap_ce),
        .kernel_bias_fp_0_V_ce0(kernel_bias_fp_0_V_ce0),
        .ram_reg_0(ram_reg),
        .ram_reg_1(ram_reg_0),
        .ram_reg_10(ram_reg_9),
        .ram_reg_11(ram_reg_10),
        .ram_reg_12(ram_reg_11),
        .ram_reg_2(ram_reg_1),
        .ram_reg_3(ram_reg_2),
        .ram_reg_4(ram_reg_3),
        .ram_reg_5(ram_reg_4),
        .ram_reg_6(ram_reg_5),
        .ram_reg_7(ram_reg_6),
        .ram_reg_8(ram_reg_7),
        .ram_reg_9(ram_reg_8),
        .ret_V_fu_78_p2_carry__2(ret_V_fu_78_p2_carry__2),
        .ret_V_fu_78_p2_carry__2_0(ret_V_fu_78_p2_carry__2_0));
endmodule

(* ORIG_REF_NAME = "yolo_acc_top_kernel_bias_fp_0_V" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_kernel_bias_fp_0_V_3
   (DOADO,
    DOBDO,
    kernel_bias_fp_0_V_ce0,
    ADDRARDADDR,
    DIADI,
    DIBDI,
    WEA,
    ram_reg,
    ram_reg_0,
    \ap_CS_fsm_reg[1] ,
    \fold_input_ch_V_read_reg_1241_reg[1] ,
    \fold_input_ch_V_read_reg_1241_reg[3] ,
    \i_op_assign_2_reg_392_reg[0] ,
    ram_reg_1,
    ram_reg_2,
    ram_reg_3,
    ram_reg_4,
    ram_reg_5,
    ram_reg_6,
    ram_reg_7,
    ram_reg_8,
    S,
    ram_reg_9,
    ap_clk,
    grp_post_process_unit_fu_403_ap_ce,
    CO,
    O,
    \activated_output_V_reg_380_reg[15] ,
    \activated_output_V_reg_380_reg[15]_0 ,
    ap_block_pp1_stage0_11001,
    Q,
    ap_enable_reg_pp1_iter0,
    bias_en_V_read_reg_1225,
    ram_reg_10,
    ram_reg_11,
    \ap_CS_fsm[2]_i_2 ,
    ram_reg_12,
    ram_reg_13,
    ram_reg_14,
    ram_reg_15,
    ram_reg_16,
    ret_V_fu_78_p2_carry__2,
    ret_V_fu_78_p2_carry__2_0);
  output [14:0]DOADO;
  output [14:0]DOBDO;
  output kernel_bias_fp_0_V_ce0;
  output [2:0]ADDRARDADDR;
  output [14:0]DIADI;
  output [14:0]DIBDI;
  output [0:0]WEA;
  output ram_reg;
  output ram_reg_0;
  output \ap_CS_fsm_reg[1] ;
  output \fold_input_ch_V_read_reg_1241_reg[1] ;
  output \fold_input_ch_V_read_reg_1241_reg[3] ;
  output \i_op_assign_2_reg_392_reg[0] ;
  output [3:0]ram_reg_1;
  output [3:0]ram_reg_2;
  output [3:0]ram_reg_3;
  output [3:0]ram_reg_4;
  output [3:0]ram_reg_5;
  output [3:0]ram_reg_6;
  output [3:0]ram_reg_7;
  output [3:0]ram_reg_8;
  output [0:0]S;
  output [0:0]ram_reg_9;
  input ap_clk;
  input grp_post_process_unit_fu_403_ap_ce;
  input [0:0]CO;
  input [0:0]O;
  input [0:0]\activated_output_V_reg_380_reg[15] ;
  input [0:0]\activated_output_V_reg_380_reg[15]_0 ;
  input ap_block_pp1_stage0_11001;
  input [1:0]Q;
  input ap_enable_reg_pp1_iter0;
  input bias_en_V_read_reg_1225;
  input ram_reg_10;
  input [3:0]ram_reg_11;
  input [3:0]\ap_CS_fsm[2]_i_2 ;
  input [3:0]ram_reg_12;
  input [31:0]ram_reg_13;
  input ram_reg_14;
  input [31:0]ram_reg_15;
  input [0:0]ram_reg_16;
  input [15:0]ret_V_fu_78_p2_carry__2;
  input [15:0]ret_V_fu_78_p2_carry__2_0;

  wire [2:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [14:0]DIADI;
  wire [14:0]DIBDI;
  wire [14:0]DOADO;
  wire [14:0]DOBDO;
  wire [0:0]O;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]WEA;
  wire [0:0]\activated_output_V_reg_380_reg[15] ;
  wire [0:0]\activated_output_V_reg_380_reg[15]_0 ;
  wire [3:0]\ap_CS_fsm[2]_i_2 ;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_block_pp1_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp1_iter0;
  wire bias_en_V_read_reg_1225;
  wire \fold_input_ch_V_read_reg_1241_reg[1] ;
  wire \fold_input_ch_V_read_reg_1241_reg[3] ;
  wire grp_post_process_unit_fu_403_ap_ce;
  wire \i_op_assign_2_reg_392_reg[0] ;
  wire kernel_bias_fp_0_V_ce0;
  wire ram_reg;
  wire ram_reg_0;
  wire [3:0]ram_reg_1;
  wire ram_reg_10;
  wire [3:0]ram_reg_11;
  wire [3:0]ram_reg_12;
  wire [31:0]ram_reg_13;
  wire ram_reg_14;
  wire [31:0]ram_reg_15;
  wire [0:0]ram_reg_16;
  wire [3:0]ram_reg_2;
  wire [3:0]ram_reg_3;
  wire [3:0]ram_reg_4;
  wire [3:0]ram_reg_5;
  wire [3:0]ram_reg_6;
  wire [3:0]ram_reg_7;
  wire [3:0]ram_reg_8;
  wire [0:0]ram_reg_9;
  wire [15:0]ret_V_fu_78_p2_carry__2;
  wire [15:0]ret_V_fu_78_p2_carry__2_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_kernel_bias_fp_0_V_ram yolo_acc_top_kernel_bias_fp_0_V_ram_U
       (.ADDRARDADDR(ADDRARDADDR),
        .CO(CO),
        .DIADI(DIADI),
        .DIBDI(DIBDI),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .O(O),
        .Q(Q),
        .S(S),
        .WEBWE(WEA),
        .\activated_output_V_reg_380_reg[15] (\activated_output_V_reg_380_reg[15] ),
        .\activated_output_V_reg_380_reg[15]_0 (\activated_output_V_reg_380_reg[15]_0 ),
        .\ap_CS_fsm[2]_i_2_0 (\ap_CS_fsm[2]_i_2 ),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .ap_block_pp1_stage0_11001(ap_block_pp1_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp1_iter0(ap_enable_reg_pp1_iter0),
        .bias_en_V_read_reg_1225(bias_en_V_read_reg_1225),
        .\fold_input_ch_V_read_reg_1241_reg[1] (\fold_input_ch_V_read_reg_1241_reg[1] ),
        .\fold_input_ch_V_read_reg_1241_reg[3] (\fold_input_ch_V_read_reg_1241_reg[3] ),
        .grp_post_process_unit_fu_403_ap_ce(grp_post_process_unit_fu_403_ap_ce),
        .\i_op_assign_2_reg_392_reg[0] (\i_op_assign_2_reg_392_reg[0] ),
        .kernel_bias_fp_0_V_ce0(kernel_bias_fp_0_V_ce0),
        .ram_reg_0(ram_reg),
        .ram_reg_1(ram_reg_0),
        .ram_reg_10(ram_reg_9),
        .ram_reg_11(ram_reg_10),
        .ram_reg_12(ram_reg_11),
        .ram_reg_13(ram_reg_12),
        .ram_reg_14(ram_reg_13),
        .ram_reg_15(ram_reg_14),
        .ram_reg_16(ram_reg_15),
        .ram_reg_17(ram_reg_16),
        .ram_reg_2(ram_reg_1),
        .ram_reg_3(ram_reg_2),
        .ram_reg_4(ram_reg_3),
        .ram_reg_5(ram_reg_4),
        .ram_reg_6(ram_reg_5),
        .ram_reg_7(ram_reg_6),
        .ram_reg_8(ram_reg_7),
        .ram_reg_9(ram_reg_8),
        .ret_V_fu_78_p2_carry__2(ret_V_fu_78_p2_carry__2),
        .ret_V_fu_78_p2_carry__2_0(ret_V_fu_78_p2_carry__2_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_kernel_bias_fp_0_V_ram
   (DOADO,
    DOBDO,
    kernel_bias_fp_0_V_ce0,
    ADDRARDADDR,
    DIADI,
    DIBDI,
    WEBWE,
    ram_reg_0,
    ram_reg_1,
    \ap_CS_fsm_reg[1] ,
    \fold_input_ch_V_read_reg_1241_reg[1] ,
    \fold_input_ch_V_read_reg_1241_reg[3] ,
    \i_op_assign_2_reg_392_reg[0] ,
    ram_reg_2,
    ram_reg_3,
    ram_reg_4,
    ram_reg_5,
    ram_reg_6,
    ram_reg_7,
    ram_reg_8,
    ram_reg_9,
    S,
    ram_reg_10,
    ap_clk,
    grp_post_process_unit_fu_403_ap_ce,
    CO,
    O,
    \activated_output_V_reg_380_reg[15] ,
    \activated_output_V_reg_380_reg[15]_0 ,
    ap_block_pp1_stage0_11001,
    Q,
    ap_enable_reg_pp1_iter0,
    bias_en_V_read_reg_1225,
    ram_reg_11,
    ram_reg_12,
    \ap_CS_fsm[2]_i_2_0 ,
    ram_reg_13,
    ram_reg_14,
    ram_reg_15,
    ram_reg_16,
    ram_reg_17,
    ret_V_fu_78_p2_carry__2,
    ret_V_fu_78_p2_carry__2_0);
  output [14:0]DOADO;
  output [14:0]DOBDO;
  output kernel_bias_fp_0_V_ce0;
  output [2:0]ADDRARDADDR;
  output [14:0]DIADI;
  output [14:0]DIBDI;
  output [0:0]WEBWE;
  output ram_reg_0;
  output ram_reg_1;
  output \ap_CS_fsm_reg[1] ;
  output \fold_input_ch_V_read_reg_1241_reg[1] ;
  output \fold_input_ch_V_read_reg_1241_reg[3] ;
  output \i_op_assign_2_reg_392_reg[0] ;
  output [3:0]ram_reg_2;
  output [3:0]ram_reg_3;
  output [3:0]ram_reg_4;
  output [3:0]ram_reg_5;
  output [3:0]ram_reg_6;
  output [3:0]ram_reg_7;
  output [3:0]ram_reg_8;
  output [3:0]ram_reg_9;
  output [0:0]S;
  output [0:0]ram_reg_10;
  input ap_clk;
  input grp_post_process_unit_fu_403_ap_ce;
  input [0:0]CO;
  input [0:0]O;
  input [0:0]\activated_output_V_reg_380_reg[15] ;
  input [0:0]\activated_output_V_reg_380_reg[15]_0 ;
  input ap_block_pp1_stage0_11001;
  input [1:0]Q;
  input ap_enable_reg_pp1_iter0;
  input bias_en_V_read_reg_1225;
  input ram_reg_11;
  input [3:0]ram_reg_12;
  input [3:0]\ap_CS_fsm[2]_i_2_0 ;
  input [3:0]ram_reg_13;
  input [31:0]ram_reg_14;
  input ram_reg_15;
  input [31:0]ram_reg_16;
  input [0:0]ram_reg_17;
  input [15:0]ret_V_fu_78_p2_carry__2;
  input [15:0]ret_V_fu_78_p2_carry__2_0;

  wire [2:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [14:0]DIADI;
  wire [14:0]DIBDI;
  wire [14:0]DOADO;
  wire [14:0]DOBDO;
  wire [0:0]O;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]WEBWE;
  wire [0:0]\activated_output_V_reg_380_reg[15] ;
  wire [0:0]\activated_output_V_reg_380_reg[15]_0 ;
  wire [3:0]\ap_CS_fsm[2]_i_2_0 ;
  wire \ap_CS_fsm[2]_i_3_n_0 ;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_block_pp1_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp1_iter0;
  wire bias_en_V_read_reg_1225;
  wire ce0110_out;
  wire \fold_input_ch_V_read_reg_1241_reg[1] ;
  wire \fold_input_ch_V_read_reg_1241_reg[3] ;
  wire grp_post_process_unit_fu_403_ap_ce;
  wire [15:15]\grp_post_process_unit_fu_412/bias_V_int_reg ;
  wire [15:15]\grp_post_process_unit_fu_430/bias_V_int_reg ;
  wire \i_op_assign_2_reg_392_reg[0] ;
  wire kernel_bias_fp_0_V_ce0;
  wire ram_reg_0;
  wire ram_reg_1;
  wire [0:0]ram_reg_10;
  wire ram_reg_11;
  wire [3:0]ram_reg_12;
  wire [3:0]ram_reg_13;
  wire [31:0]ram_reg_14;
  wire ram_reg_15;
  wire [31:0]ram_reg_16;
  wire [0:0]ram_reg_17;
  wire [3:0]ram_reg_2;
  wire [3:0]ram_reg_3;
  wire [3:0]ram_reg_4;
  wire [3:0]ram_reg_5;
  wire [3:0]ram_reg_6;
  wire [3:0]ram_reg_7;
  wire [3:0]ram_reg_8;
  wire [3:0]ram_reg_9;
  wire [15:0]ret_V_fu_78_p2_carry__2;
  wire [15:0]ret_V_fu_78_p2_carry__2_0;
  wire [15:15]rhs_V_1_fu_876_p1;
  wire [15:15]rhs_V_3_fu_1056_p1;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  LUT2 #(
    .INIT(4'hD)) 
    \activated_output_V_reg_380[15]_i_2__0 
       (.I0(CO),
        .I1(O),
        .O(ram_reg_0));
  LUT2 #(
    .INIT(4'hD)) 
    \activated_output_V_reg_380[15]_i_2__2 
       (.I0(\activated_output_V_reg_380_reg[15] ),
        .I1(\activated_output_V_reg_380_reg[15]_0 ),
        .O(ram_reg_1));
  LUT5 #(
    .INIT(32'h90090000)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(ram_reg_12[1]),
        .I1(\ap_CS_fsm[2]_i_2_0 [1]),
        .I2(ram_reg_12[2]),
        .I3(\ap_CS_fsm[2]_i_2_0 [2]),
        .I4(\ap_CS_fsm[2]_i_3_n_0 ),
        .O(\fold_input_ch_V_read_reg_1241_reg[1] ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ap_CS_fsm[2]_i_3 
       (.I0(\ap_CS_fsm[2]_i_2_0 [0]),
        .I1(ram_reg_12[0]),
        .I2(\ap_CS_fsm[2]_i_2_0 [3]),
        .I3(ram_reg_12[3]),
        .O(\ap_CS_fsm[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \inStream_b_V_dest_V_0_state[1]_i_2 
       (.I0(Q[0]),
        .I1(ram_reg_11),
        .I2(bias_en_V_read_reg_1225),
        .I3(\fold_input_ch_V_read_reg_1241_reg[1] ),
        .O(\ap_CS_fsm_reg[1] ));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_1__0
       (.I0(\grp_post_process_unit_fu_412/bias_V_int_reg ),
        .I1(ret_V_fu_78_p2_carry__2[15]),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_1__2
       (.I0(\grp_post_process_unit_fu_430/bias_V_int_reg ),
        .I1(ret_V_fu_78_p2_carry__2_0[15]),
        .O(ram_reg_10));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "1008" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({rhs_V_1_fu_876_p1,DIADI}),
        .DIBDI({rhs_V_3_fu_1056_p1,DIBDI}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\grp_post_process_unit_fu_412/bias_V_int_reg ,DOADO}),
        .DOBDO({\grp_post_process_unit_fu_430/bias_V_int_reg ,DOBDO}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(kernel_bias_fp_0_V_ce0),
        .ENBWREN(kernel_bias_fp_0_V_ce0),
        .REGCEAREGCE(grp_post_process_unit_fu_403_ap_ce),
        .REGCEB(grp_post_process_unit_fu_403_ap_ce),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEBWE,WEBWE}),
        .WEBWE({1'b0,1'b0,WEBWE,WEBWE}));
  LUT4 #(
    .INIT(16'hFF40)) 
    ram_reg_i_1
       (.I0(ap_block_pp1_stage0_11001),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(ce0110_out),
        .O(kernel_bias_fp_0_V_ce0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_10
       (.I0(ram_reg_14[6]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[6]),
        .O(DIADI[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_11
       (.I0(ram_reg_14[5]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[5]),
        .O(DIADI[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_12
       (.I0(ram_reg_14[4]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[4]),
        .O(DIADI[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_13
       (.I0(ram_reg_14[3]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[3]),
        .O(DIADI[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_14
       (.I0(ram_reg_14[2]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[2]),
        .O(DIADI[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_15
       (.I0(ram_reg_14[1]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[1]),
        .O(DIADI[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_16
       (.I0(ram_reg_14[0]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[0]),
        .O(DIADI[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_17
       (.I0(ram_reg_14[31]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[31]),
        .O(rhs_V_3_fu_1056_p1));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_18
       (.I0(ram_reg_14[30]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[30]),
        .O(DIBDI[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_19
       (.I0(ram_reg_14[29]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[29]),
        .O(DIBDI[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_1__0
       (.I0(ram_reg_14[15]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[15]),
        .O(rhs_V_1_fu_876_p1));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_20
       (.I0(ram_reg_14[28]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[28]),
        .O(DIBDI[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_21
       (.I0(ram_reg_14[27]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[27]),
        .O(DIBDI[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_22
       (.I0(ram_reg_14[26]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[26]),
        .O(DIBDI[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_23
       (.I0(ram_reg_14[25]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[25]),
        .O(DIBDI[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_24
       (.I0(ram_reg_14[24]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[24]),
        .O(DIBDI[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_25
       (.I0(ram_reg_14[23]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[23]),
        .O(DIBDI[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_26
       (.I0(ram_reg_14[22]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[22]),
        .O(DIBDI[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_27
       (.I0(ram_reg_14[21]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[21]),
        .O(DIBDI[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_28
       (.I0(ram_reg_14[20]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[20]),
        .O(DIBDI[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_29
       (.I0(ram_reg_14[19]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[19]),
        .O(DIBDI[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_2__0
       (.I0(ram_reg_14[14]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[14]),
        .O(DIADI[14]));
  LUT5 #(
    .INIT(32'h44F0F0F0)) 
    ram_reg_i_3
       (.I0(\fold_input_ch_V_read_reg_1241_reg[3] ),
        .I1(ram_reg_13[2]),
        .I2(\ap_CS_fsm[2]_i_2_0 [2]),
        .I3(Q[1]),
        .I4(ap_enable_reg_pp1_iter0),
        .O(ADDRARDADDR[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_30
       (.I0(ram_reg_14[18]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[18]),
        .O(DIBDI[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_31
       (.I0(ram_reg_14[17]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[17]),
        .O(DIBDI[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_32
       (.I0(ram_reg_14[16]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[16]),
        .O(DIBDI[0]));
  LUT1 #(
    .INIT(2'h1)) 
    ram_reg_i_38
       (.I0(\ap_CS_fsm_reg[1] ),
        .O(WEBWE));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_3__0
       (.I0(ram_reg_14[13]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[13]),
        .O(DIADI[13]));
  LUT5 #(
    .INIT(32'h2A2AEA2A)) 
    ram_reg_i_4
       (.I0(\ap_CS_fsm[2]_i_2_0 [1]),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(ram_reg_13[1]),
        .I4(\fold_input_ch_V_read_reg_1241_reg[3] ),
        .O(ADDRARDADDR[1]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hFB00)) 
    ram_reg_i_40
       (.I0(\fold_input_ch_V_read_reg_1241_reg[1] ),
        .I1(bias_en_V_read_reg_1225),
        .I2(ram_reg_11),
        .I3(Q[0]),
        .O(ce0110_out));
  LUT4 #(
    .INIT(16'hFF82)) 
    ram_reg_i_41
       (.I0(\i_op_assign_2_reg_392_reg[0] ),
        .I1(ram_reg_12[3]),
        .I2(ram_reg_13[3]),
        .I3(ram_reg_17),
        .O(\fold_input_ch_V_read_reg_1241_reg[3] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_reg_i_42
       (.I0(ram_reg_13[0]),
        .I1(ram_reg_12[0]),
        .I2(ram_reg_13[1]),
        .I3(ram_reg_12[1]),
        .I4(ram_reg_12[2]),
        .I5(ram_reg_13[2]),
        .O(\i_op_assign_2_reg_392_reg[0] ));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_4__0
       (.I0(ram_reg_14[12]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[12]),
        .O(DIADI[12]));
  LUT5 #(
    .INIT(32'h2A2AEA2A)) 
    ram_reg_i_5
       (.I0(\ap_CS_fsm[2]_i_2_0 [0]),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(ram_reg_13[0]),
        .I4(\fold_input_ch_V_read_reg_1241_reg[3] ),
        .O(ADDRARDADDR[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_5__0
       (.I0(ram_reg_14[11]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[11]),
        .O(DIADI[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_6__0
       (.I0(ram_reg_14[10]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[10]),
        .O(DIADI[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_7
       (.I0(ram_reg_14[9]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[9]),
        .O(DIADI[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_8
       (.I0(ram_reg_14[8]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[8]),
        .O(DIADI[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_9
       (.I0(ram_reg_14[7]),
        .I1(ram_reg_15),
        .I2(ram_reg_16[7]),
        .O(DIADI[7]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_1__0
       (.I0(DOADO[7]),
        .I1(ret_V_fu_78_p2_carry__2[7]),
        .O(ram_reg_3[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_1__2
       (.I0(DOBDO[7]),
        .I1(ret_V_fu_78_p2_carry__2_0[7]),
        .O(ram_reg_7[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_2__0
       (.I0(DOADO[6]),
        .I1(ret_V_fu_78_p2_carry__2[6]),
        .O(ram_reg_3[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_2__2
       (.I0(DOBDO[6]),
        .I1(ret_V_fu_78_p2_carry__2_0[6]),
        .O(ram_reg_7[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_3__0
       (.I0(DOADO[5]),
        .I1(ret_V_fu_78_p2_carry__2[5]),
        .O(ram_reg_3[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_3__2
       (.I0(DOBDO[5]),
        .I1(ret_V_fu_78_p2_carry__2_0[5]),
        .O(ram_reg_7[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_4__0
       (.I0(DOADO[4]),
        .I1(ret_V_fu_78_p2_carry__2[4]),
        .O(ram_reg_3[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_4__2
       (.I0(DOBDO[4]),
        .I1(ret_V_fu_78_p2_carry__2_0[4]),
        .O(ram_reg_7[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_1__0
       (.I0(DOADO[11]),
        .I1(ret_V_fu_78_p2_carry__2[11]),
        .O(ram_reg_4[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_1__2
       (.I0(DOBDO[11]),
        .I1(ret_V_fu_78_p2_carry__2_0[11]),
        .O(ram_reg_8[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_2__0
       (.I0(DOADO[10]),
        .I1(ret_V_fu_78_p2_carry__2[10]),
        .O(ram_reg_4[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_2__2
       (.I0(DOBDO[10]),
        .I1(ret_V_fu_78_p2_carry__2_0[10]),
        .O(ram_reg_8[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_3__0
       (.I0(DOADO[9]),
        .I1(ret_V_fu_78_p2_carry__2[9]),
        .O(ram_reg_4[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_3__2
       (.I0(DOBDO[9]),
        .I1(ret_V_fu_78_p2_carry__2_0[9]),
        .O(ram_reg_8[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_4__0
       (.I0(DOADO[8]),
        .I1(ret_V_fu_78_p2_carry__2[8]),
        .O(ram_reg_4[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_4__2
       (.I0(DOBDO[8]),
        .I1(ret_V_fu_78_p2_carry__2_0[8]),
        .O(ram_reg_8[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_2
       (.I0(\grp_post_process_unit_fu_430/bias_V_int_reg ),
        .I1(ret_V_fu_78_p2_carry__2_0[15]),
        .O(ram_reg_9[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_2__1
       (.I0(\grp_post_process_unit_fu_412/bias_V_int_reg ),
        .I1(ret_V_fu_78_p2_carry__2[15]),
        .O(ram_reg_5[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_3__0
       (.I0(DOADO[14]),
        .I1(ret_V_fu_78_p2_carry__2[14]),
        .O(ram_reg_5[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_3__2
       (.I0(DOBDO[14]),
        .I1(ret_V_fu_78_p2_carry__2_0[14]),
        .O(ram_reg_9[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_4__0
       (.I0(DOADO[13]),
        .I1(ret_V_fu_78_p2_carry__2[13]),
        .O(ram_reg_5[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_4__2
       (.I0(DOBDO[13]),
        .I1(ret_V_fu_78_p2_carry__2_0[13]),
        .O(ram_reg_9[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_5__0
       (.I0(DOADO[12]),
        .I1(ret_V_fu_78_p2_carry__2[12]),
        .O(ram_reg_5[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_5__2
       (.I0(DOBDO[12]),
        .I1(ret_V_fu_78_p2_carry__2_0[12]),
        .O(ram_reg_9[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_1__0
       (.I0(DOADO[3]),
        .I1(ret_V_fu_78_p2_carry__2[3]),
        .O(ram_reg_2[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_1__2
       (.I0(DOBDO[3]),
        .I1(ret_V_fu_78_p2_carry__2_0[3]),
        .O(ram_reg_6[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_2__0
       (.I0(DOADO[2]),
        .I1(ret_V_fu_78_p2_carry__2[2]),
        .O(ram_reg_2[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_2__2
       (.I0(DOBDO[2]),
        .I1(ret_V_fu_78_p2_carry__2_0[2]),
        .O(ram_reg_6[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_3__0
       (.I0(DOADO[1]),
        .I1(ret_V_fu_78_p2_carry__2[1]),
        .O(ram_reg_2[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_3__2
       (.I0(DOBDO[1]),
        .I1(ret_V_fu_78_p2_carry__2_0[1]),
        .O(ram_reg_6[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_4__0
       (.I0(DOADO[0]),
        .I1(ret_V_fu_78_p2_carry__2[0]),
        .O(ram_reg_2[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_4__2
       (.I0(DOBDO[0]),
        .I1(ret_V_fu_78_p2_carry__2_0[0]),
        .O(ram_reg_6[0]));
endmodule

(* ORIG_REF_NAME = "yolo_acc_top_kernel_bias_fp_0_V_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_kernel_bias_fp_0_V_ram_4
   (DOADO,
    DOBDO,
    DIADI,
    DIBDI,
    ram_reg_0,
    ram_reg_1,
    ram_reg_2,
    ram_reg_3,
    ram_reg_4,
    ram_reg_5,
    ram_reg_6,
    ram_reg_7,
    ram_reg_8,
    ram_reg_9,
    S,
    ram_reg_10,
    ap_clk,
    kernel_bias_fp_0_V_ce0,
    grp_post_process_unit_fu_403_ap_ce,
    ADDRARDADDR,
    WEA,
    CO,
    O,
    \activated_output_V_reg_380_reg[15] ,
    \activated_output_V_reg_380_reg[15]_0 ,
    Q,
    ram_reg_11,
    ram_reg_12,
    ret_V_fu_78_p2_carry__2,
    ret_V_fu_78_p2_carry__2_0);
  output [14:0]DOADO;
  output [14:0]DOBDO;
  output [14:0]DIADI;
  output [14:0]DIBDI;
  output ram_reg_0;
  output ram_reg_1;
  output [3:0]ram_reg_2;
  output [3:0]ram_reg_3;
  output [3:0]ram_reg_4;
  output [3:0]ram_reg_5;
  output [3:0]ram_reg_6;
  output [3:0]ram_reg_7;
  output [3:0]ram_reg_8;
  output [3:0]ram_reg_9;
  output [0:0]S;
  output [0:0]ram_reg_10;
  input ap_clk;
  input kernel_bias_fp_0_V_ce0;
  input grp_post_process_unit_fu_403_ap_ce;
  input [2:0]ADDRARDADDR;
  input [0:0]WEA;
  input [0:0]CO;
  input [0:0]O;
  input [0:0]\activated_output_V_reg_380_reg[15] ;
  input [0:0]\activated_output_V_reg_380_reg[15]_0 ;
  input [31:0]Q;
  input ram_reg_11;
  input [31:0]ram_reg_12;
  input [15:0]ret_V_fu_78_p2_carry__2;
  input [15:0]ret_V_fu_78_p2_carry__2_0;

  wire [2:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [14:0]DIADI;
  wire [14:0]DIBDI;
  wire [14:0]DOADO;
  wire [14:0]DOBDO;
  wire [0:0]O;
  wire [31:0]Q;
  wire [0:0]S;
  wire [0:0]WEA;
  wire [0:0]\activated_output_V_reg_380_reg[15] ;
  wire [0:0]\activated_output_V_reg_380_reg[15]_0 ;
  wire ap_clk;
  wire [15:15]\grp_post_process_unit_fu_403/bias_V_int_reg ;
  wire grp_post_process_unit_fu_403_ap_ce;
  wire [15:15]\grp_post_process_unit_fu_421/bias_V_int_reg ;
  wire kernel_bias_fp_0_V_ce0;
  wire ram_reg_0;
  wire ram_reg_1;
  wire [0:0]ram_reg_10;
  wire ram_reg_11;
  wire [31:0]ram_reg_12;
  wire [3:0]ram_reg_2;
  wire [3:0]ram_reg_3;
  wire [3:0]ram_reg_4;
  wire [3:0]ram_reg_5;
  wire [3:0]ram_reg_6;
  wire [3:0]ram_reg_7;
  wire [3:0]ram_reg_8;
  wire [3:0]ram_reg_9;
  wire ram_reg_i_6_n_0;
  wire [15:0]ret_V_fu_78_p2_carry__2;
  wire [15:0]ret_V_fu_78_p2_carry__2_0;
  wire [15:15]rhs_V_2_fu_966_p1;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  LUT2 #(
    .INIT(4'hD)) 
    \activated_output_V_reg_380[15]_i_2 
       (.I0(CO),
        .I1(O),
        .O(ram_reg_0));
  LUT2 #(
    .INIT(4'hD)) 
    \activated_output_V_reg_380[15]_i_2__1 
       (.I0(\activated_output_V_reg_380_reg[15] ),
        .I1(\activated_output_V_reg_380_reg[15]_0 ),
        .O(ram_reg_1));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_1
       (.I0(\grp_post_process_unit_fu_403/bias_V_int_reg ),
        .I1(ret_V_fu_78_p2_carry__2[15]),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    p_Val2_16_fu_92_p2_carry__2_i_1__1
       (.I0(\grp_post_process_unit_fu_421/bias_V_int_reg ),
        .I1(ret_V_fu_78_p2_carry__2_0[15]),
        .O(ram_reg_10));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "1008" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({ram_reg_i_6_n_0,DIADI}),
        .DIBDI({rhs_V_2_fu_966_p1,DIBDI}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\grp_post_process_unit_fu_403/bias_V_int_reg ,DOADO}),
        .DOBDO({\grp_post_process_unit_fu_421/bias_V_int_reg ,DOBDO}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(kernel_bias_fp_0_V_ce0),
        .ENBWREN(kernel_bias_fp_0_V_ce0),
        .REGCEAREGCE(grp_post_process_unit_fu_403_ap_ce),
        .REGCEB(grp_post_process_unit_fu_403_ap_ce),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,WEA,WEA}));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_10__0
       (.I0(ram_reg_12[11]),
        .I1(ram_reg_11),
        .I2(Q[11]),
        .O(DIADI[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_11__0
       (.I0(ram_reg_12[10]),
        .I1(ram_reg_11),
        .I2(Q[10]),
        .O(DIADI[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_12__0
       (.I0(ram_reg_12[9]),
        .I1(ram_reg_11),
        .I2(Q[9]),
        .O(DIADI[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_13__0
       (.I0(ram_reg_12[8]),
        .I1(ram_reg_11),
        .I2(Q[8]),
        .O(DIADI[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_14__0
       (.I0(ram_reg_12[7]),
        .I1(ram_reg_11),
        .I2(Q[7]),
        .O(DIADI[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_15__0
       (.I0(ram_reg_12[6]),
        .I1(ram_reg_11),
        .I2(Q[6]),
        .O(DIADI[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_16__0
       (.I0(ram_reg_12[5]),
        .I1(ram_reg_11),
        .I2(Q[5]),
        .O(DIADI[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_17__0
       (.I0(ram_reg_12[4]),
        .I1(ram_reg_11),
        .I2(Q[4]),
        .O(DIADI[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_18__0
       (.I0(ram_reg_12[3]),
        .I1(ram_reg_11),
        .I2(Q[3]),
        .O(DIADI[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_19__0
       (.I0(ram_reg_12[2]),
        .I1(ram_reg_11),
        .I2(Q[2]),
        .O(DIADI[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_20__0
       (.I0(ram_reg_12[1]),
        .I1(ram_reg_11),
        .I2(Q[1]),
        .O(DIADI[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_21__0
       (.I0(ram_reg_12[0]),
        .I1(ram_reg_11),
        .I2(Q[0]),
        .O(DIADI[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_22__0
       (.I0(ram_reg_12[31]),
        .I1(ram_reg_11),
        .I2(Q[31]),
        .O(rhs_V_2_fu_966_p1));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_23__0
       (.I0(ram_reg_12[30]),
        .I1(ram_reg_11),
        .I2(Q[30]),
        .O(DIBDI[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_24__0
       (.I0(ram_reg_12[29]),
        .I1(ram_reg_11),
        .I2(Q[29]),
        .O(DIBDI[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_25__0
       (.I0(ram_reg_12[28]),
        .I1(ram_reg_11),
        .I2(Q[28]),
        .O(DIBDI[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_26__0
       (.I0(ram_reg_12[27]),
        .I1(ram_reg_11),
        .I2(Q[27]),
        .O(DIBDI[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_27__0
       (.I0(ram_reg_12[26]),
        .I1(ram_reg_11),
        .I2(Q[26]),
        .O(DIBDI[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_28__0
       (.I0(ram_reg_12[25]),
        .I1(ram_reg_11),
        .I2(Q[25]),
        .O(DIBDI[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_29__0
       (.I0(ram_reg_12[24]),
        .I1(ram_reg_11),
        .I2(Q[24]),
        .O(DIBDI[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_30__0
       (.I0(ram_reg_12[23]),
        .I1(ram_reg_11),
        .I2(Q[23]),
        .O(DIBDI[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_31__0
       (.I0(ram_reg_12[22]),
        .I1(ram_reg_11),
        .I2(Q[22]),
        .O(DIBDI[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_32__0
       (.I0(ram_reg_12[21]),
        .I1(ram_reg_11),
        .I2(Q[21]),
        .O(DIBDI[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_33
       (.I0(ram_reg_12[20]),
        .I1(ram_reg_11),
        .I2(Q[20]),
        .O(DIBDI[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_34
       (.I0(ram_reg_12[19]),
        .I1(ram_reg_11),
        .I2(Q[19]),
        .O(DIBDI[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_35
       (.I0(ram_reg_12[18]),
        .I1(ram_reg_11),
        .I2(Q[18]),
        .O(DIBDI[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_36
       (.I0(ram_reg_12[17]),
        .I1(ram_reg_11),
        .I2(Q[17]),
        .O(DIBDI[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_37
       (.I0(ram_reg_12[16]),
        .I1(ram_reg_11),
        .I2(Q[16]),
        .O(DIBDI[0]));
  LUT3 #(
    .INIT(8'hE2)) 
    ram_reg_i_6
       (.I0(Q[15]),
        .I1(ram_reg_11),
        .I2(ram_reg_12[15]),
        .O(ram_reg_i_6_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_7__0
       (.I0(ram_reg_12[14]),
        .I1(ram_reg_11),
        .I2(Q[14]),
        .O(DIADI[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_8__0
       (.I0(ram_reg_12[13]),
        .I1(ram_reg_11),
        .I2(Q[13]),
        .O(DIADI[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_i_9__0
       (.I0(ram_reg_12[12]),
        .I1(ram_reg_11),
        .I2(Q[12]),
        .O(DIADI[12]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_1
       (.I0(DOADO[7]),
        .I1(ret_V_fu_78_p2_carry__2[7]),
        .O(ram_reg_3[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_1__1
       (.I0(DOBDO[7]),
        .I1(ret_V_fu_78_p2_carry__2_0[7]),
        .O(ram_reg_7[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_2
       (.I0(DOADO[6]),
        .I1(ret_V_fu_78_p2_carry__2[6]),
        .O(ram_reg_3[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_2__1
       (.I0(DOBDO[6]),
        .I1(ret_V_fu_78_p2_carry__2_0[6]),
        .O(ram_reg_7[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_3
       (.I0(DOADO[5]),
        .I1(ret_V_fu_78_p2_carry__2[5]),
        .O(ram_reg_3[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_3__1
       (.I0(DOBDO[5]),
        .I1(ret_V_fu_78_p2_carry__2_0[5]),
        .O(ram_reg_7[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_4
       (.I0(DOADO[4]),
        .I1(ret_V_fu_78_p2_carry__2[4]),
        .O(ram_reg_3[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__0_i_4__1
       (.I0(DOBDO[4]),
        .I1(ret_V_fu_78_p2_carry__2_0[4]),
        .O(ram_reg_7[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_1
       (.I0(DOADO[11]),
        .I1(ret_V_fu_78_p2_carry__2[11]),
        .O(ram_reg_4[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_1__1
       (.I0(DOBDO[11]),
        .I1(ret_V_fu_78_p2_carry__2_0[11]),
        .O(ram_reg_8[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_2
       (.I0(DOADO[10]),
        .I1(ret_V_fu_78_p2_carry__2[10]),
        .O(ram_reg_4[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_2__1
       (.I0(DOBDO[10]),
        .I1(ret_V_fu_78_p2_carry__2_0[10]),
        .O(ram_reg_8[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_3
       (.I0(DOADO[9]),
        .I1(ret_V_fu_78_p2_carry__2[9]),
        .O(ram_reg_4[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_3__1
       (.I0(DOBDO[9]),
        .I1(ret_V_fu_78_p2_carry__2_0[9]),
        .O(ram_reg_8[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_4
       (.I0(DOADO[8]),
        .I1(ret_V_fu_78_p2_carry__2[8]),
        .O(ram_reg_4[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__1_i_4__1
       (.I0(DOBDO[8]),
        .I1(ret_V_fu_78_p2_carry__2_0[8]),
        .O(ram_reg_8[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_2__0
       (.I0(\grp_post_process_unit_fu_421/bias_V_int_reg ),
        .I1(ret_V_fu_78_p2_carry__2_0[15]),
        .O(ram_reg_9[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_2__2
       (.I0(\grp_post_process_unit_fu_403/bias_V_int_reg ),
        .I1(ret_V_fu_78_p2_carry__2[15]),
        .O(ram_reg_5[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_3
       (.I0(DOADO[14]),
        .I1(ret_V_fu_78_p2_carry__2[14]),
        .O(ram_reg_5[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_3__1
       (.I0(DOBDO[14]),
        .I1(ret_V_fu_78_p2_carry__2_0[14]),
        .O(ram_reg_9[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_4
       (.I0(DOADO[13]),
        .I1(ret_V_fu_78_p2_carry__2[13]),
        .O(ram_reg_5[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_4__1
       (.I0(DOBDO[13]),
        .I1(ret_V_fu_78_p2_carry__2_0[13]),
        .O(ram_reg_9[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_5
       (.I0(DOADO[12]),
        .I1(ret_V_fu_78_p2_carry__2[12]),
        .O(ram_reg_5[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry__2_i_5__1
       (.I0(DOBDO[12]),
        .I1(ret_V_fu_78_p2_carry__2_0[12]),
        .O(ram_reg_9[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_1
       (.I0(DOADO[3]),
        .I1(ret_V_fu_78_p2_carry__2[3]),
        .O(ram_reg_2[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_1__1
       (.I0(DOBDO[3]),
        .I1(ret_V_fu_78_p2_carry__2_0[3]),
        .O(ram_reg_6[3]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_2
       (.I0(DOADO[2]),
        .I1(ret_V_fu_78_p2_carry__2[2]),
        .O(ram_reg_2[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_2__1
       (.I0(DOBDO[2]),
        .I1(ret_V_fu_78_p2_carry__2_0[2]),
        .O(ram_reg_6[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_3
       (.I0(DOADO[1]),
        .I1(ret_V_fu_78_p2_carry__2[1]),
        .O(ram_reg_2[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_3__1
       (.I0(DOBDO[1]),
        .I1(ret_V_fu_78_p2_carry__2_0[1]),
        .O(ram_reg_6[1]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_4
       (.I0(DOADO[0]),
        .I1(ret_V_fu_78_p2_carry__2[0]),
        .O(ram_reg_2[0]));
  LUT2 #(
    .INIT(4'h6)) 
    ret_V_fu_78_p2_carry_i_4__1
       (.I0(DOBDO[0]),
        .I1(ret_V_fu_78_p2_carry__2_0[0]),
        .O(ram_reg_6[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0
   (P,
    Range2_all_ones_reg_4060,
    ap_ce_reg_reg,
    \leaky_V_read_reg_364_pp0_iter1_reg_reg[0] ,
    S,
    ap_clk,
    D,
    bias_en_V_read_reg_369,
    p,
    Q,
    \ap_return_int_reg_reg[15] ,
    CO,
    \ap_return_int_reg_reg[15]_0 ,
    \ap_return_int_reg_reg[15]_1 ,
    \ap_return_int_reg_reg[15]_2 ,
    O,
    \ap_return_int_reg_reg[11] ,
    \ap_return_int_reg_reg[7] ,
    \ap_return_int_reg_reg[3] );
  output [13:0]P;
  output Range2_all_ones_reg_4060;
  output [15:0]ap_ce_reg_reg;
  output [15:0]\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] ;
  output [0:0]S;
  input ap_clk;
  input [15:0]D;
  input bias_en_V_read_reg_369;
  input p;
  input [15:0]Q;
  input \ap_return_int_reg_reg[15] ;
  input [0:0]CO;
  input [15:0]\ap_return_int_reg_reg[15]_0 ;
  input \ap_return_int_reg_reg[15]_1 ;
  input [15:0]\ap_return_int_reg_reg[15]_2 ;
  input [1:0]O;
  input [3:0]\ap_return_int_reg_reg[11] ;
  input [3:0]\ap_return_int_reg_reg[7] ;
  input [3:0]\ap_return_int_reg_reg[3] ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [1:0]O;
  wire [13:0]P;
  wire [15:0]Q;
  wire Range2_all_ones_reg_4060;
  wire [0:0]S;
  wire [15:0]ap_ce_reg_reg;
  wire ap_clk;
  wire [3:0]\ap_return_int_reg_reg[11] ;
  wire \ap_return_int_reg_reg[15] ;
  wire [15:0]\ap_return_int_reg_reg[15]_0 ;
  wire \ap_return_int_reg_reg[15]_1 ;
  wire [15:0]\ap_return_int_reg_reg[15]_2 ;
  wire [3:0]\ap_return_int_reg_reg[3] ;
  wire [3:0]\ap_return_int_reg_reg[7] ;
  wire bias_en_V_read_reg_369;
  wire [15:0]\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] ;
  wire p;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0 yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0_U
       (.CO(CO),
        .D(D),
        .O(O),
        .P(P),
        .Q(Q),
        .Range2_all_ones_reg_4060(Range2_all_ones_reg_4060),
        .S(S),
        .ap_ce_reg_reg(ap_ce_reg_reg),
        .ap_clk(ap_clk),
        .\ap_return_int_reg_reg[11] (\ap_return_int_reg_reg[11] ),
        .\ap_return_int_reg_reg[15] (\ap_return_int_reg_reg[15] ),
        .\ap_return_int_reg_reg[15]_0 (\ap_return_int_reg_reg[15]_0 ),
        .\ap_return_int_reg_reg[15]_1 (\ap_return_int_reg_reg[15]_1 ),
        .\ap_return_int_reg_reg[15]_2 (\ap_return_int_reg_reg[15]_2 ),
        .\ap_return_int_reg_reg[3] (\ap_return_int_reg_reg[3] ),
        .\ap_return_int_reg_reg[7] (\ap_return_int_reg_reg[7] ),
        .bias_en_V_read_reg_369(bias_en_V_read_reg_369),
        .\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] (\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] ),
        .p_0(p));
endmodule

(* ORIG_REF_NAME = "yolo_acc_top_mul_mul_6ns_16s_22_1_0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0_5
   (P,
    ap_ce_reg_reg,
    \leaky_V_read_reg_364_pp0_iter1_reg_reg[0] ,
    S,
    Range2_all_ones_reg_4060,
    ap_clk,
    D,
    ap_ce_reg,
    Q,
    leaky_V_read_reg_364_pp0_iter1_reg,
    CO,
    \ap_return_int_reg_reg[15] ,
    bias_en_V_read_reg_369_pp0_iter1_reg,
    \ap_return_int_reg_reg[15]_0 ,
    O,
    \ap_return_int_reg_reg[11] ,
    \ap_return_int_reg_reg[7] ,
    \ap_return_int_reg_reg[3] );
  output [13:0]P;
  output [15:0]ap_ce_reg_reg;
  output [15:0]\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] ;
  output [0:0]S;
  input Range2_all_ones_reg_4060;
  input ap_clk;
  input [15:0]D;
  input ap_ce_reg;
  input [15:0]Q;
  input leaky_V_read_reg_364_pp0_iter1_reg;
  input [0:0]CO;
  input [15:0]\ap_return_int_reg_reg[15] ;
  input bias_en_V_read_reg_369_pp0_iter1_reg;
  input [15:0]\ap_return_int_reg_reg[15]_0 ;
  input [1:0]O;
  input [3:0]\ap_return_int_reg_reg[11] ;
  input [3:0]\ap_return_int_reg_reg[7] ;
  input [3:0]\ap_return_int_reg_reg[3] ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [1:0]O;
  wire [13:0]P;
  wire [15:0]Q;
  wire Range2_all_ones_reg_4060;
  wire [0:0]S;
  wire ap_ce_reg;
  wire [15:0]ap_ce_reg_reg;
  wire ap_clk;
  wire [3:0]\ap_return_int_reg_reg[11] ;
  wire [15:0]\ap_return_int_reg_reg[15] ;
  wire [15:0]\ap_return_int_reg_reg[15]_0 ;
  wire [3:0]\ap_return_int_reg_reg[3] ;
  wire [3:0]\ap_return_int_reg_reg[7] ;
  wire bias_en_V_read_reg_369_pp0_iter1_reg;
  wire leaky_V_read_reg_364_pp0_iter1_reg;
  wire [15:0]\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0_6 yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0_U
       (.CO(CO),
        .D(D),
        .O(O),
        .P(P),
        .Q(Q),
        .Range2_all_ones_reg_4060(Range2_all_ones_reg_4060),
        .S(S),
        .ap_ce_reg(ap_ce_reg),
        .ap_ce_reg_reg(ap_ce_reg_reg),
        .ap_clk(ap_clk),
        .\ap_return_int_reg_reg[11] (\ap_return_int_reg_reg[11] ),
        .\ap_return_int_reg_reg[15] (\ap_return_int_reg_reg[15] ),
        .\ap_return_int_reg_reg[15]_0 (\ap_return_int_reg_reg[15]_0 ),
        .\ap_return_int_reg_reg[3] (\ap_return_int_reg_reg[3] ),
        .\ap_return_int_reg_reg[7] (\ap_return_int_reg_reg[7] ),
        .bias_en_V_read_reg_369_pp0_iter1_reg(bias_en_V_read_reg_369_pp0_iter1_reg),
        .leaky_V_read_reg_364_pp0_iter1_reg(leaky_V_read_reg_364_pp0_iter1_reg),
        .\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] (\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] ));
endmodule

(* ORIG_REF_NAME = "yolo_acc_top_mul_mul_6ns_16s_22_1_0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0_7
   (P,
    ap_ce_reg_reg,
    p,
    S,
    Range2_all_ones_reg_4060,
    ap_clk,
    D,
    ap_ce_reg,
    Q,
    CO,
    leaky_V_read_reg_364_pp0_iter1_reg,
    \ap_return_int_reg_reg[15] ,
    bias_en_V_read_reg_369_pp0_iter1_reg,
    \ap_return_int_reg_reg[15]_0 ,
    O,
    \ap_return_int_reg_reg[11] ,
    \ap_return_int_reg_reg[7] ,
    \ap_return_int_reg_reg[3] );
  output [13:0]P;
  output [15:0]ap_ce_reg_reg;
  output [15:0]p;
  output [0:0]S;
  input Range2_all_ones_reg_4060;
  input ap_clk;
  input [15:0]D;
  input ap_ce_reg;
  input [15:0]Q;
  input [0:0]CO;
  input leaky_V_read_reg_364_pp0_iter1_reg;
  input [15:0]\ap_return_int_reg_reg[15] ;
  input bias_en_V_read_reg_369_pp0_iter1_reg;
  input [15:0]\ap_return_int_reg_reg[15]_0 ;
  input [1:0]O;
  input [3:0]\ap_return_int_reg_reg[11] ;
  input [3:0]\ap_return_int_reg_reg[7] ;
  input [3:0]\ap_return_int_reg_reg[3] ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [1:0]O;
  wire [13:0]P;
  wire [15:0]Q;
  wire Range2_all_ones_reg_4060;
  wire [0:0]S;
  wire ap_ce_reg;
  wire [15:0]ap_ce_reg_reg;
  wire ap_clk;
  wire [3:0]\ap_return_int_reg_reg[11] ;
  wire [15:0]\ap_return_int_reg_reg[15] ;
  wire [15:0]\ap_return_int_reg_reg[15]_0 ;
  wire [3:0]\ap_return_int_reg_reg[3] ;
  wire [3:0]\ap_return_int_reg_reg[7] ;
  wire bias_en_V_read_reg_369_pp0_iter1_reg;
  wire leaky_V_read_reg_364_pp0_iter1_reg;
  wire [15:0]p;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0_8 yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0_U
       (.CO(CO),
        .D(D),
        .O(O),
        .P(P),
        .Q(Q),
        .Range2_all_ones_reg_4060(Range2_all_ones_reg_4060),
        .S(S),
        .ap_ce_reg(ap_ce_reg),
        .ap_ce_reg_reg(ap_ce_reg_reg),
        .ap_clk(ap_clk),
        .\ap_return_int_reg_reg[11] (\ap_return_int_reg_reg[11] ),
        .\ap_return_int_reg_reg[15] (\ap_return_int_reg_reg[15] ),
        .\ap_return_int_reg_reg[15]_0 (\ap_return_int_reg_reg[15]_0 ),
        .\ap_return_int_reg_reg[3] (\ap_return_int_reg_reg[3] ),
        .\ap_return_int_reg_reg[7] (\ap_return_int_reg_reg[7] ),
        .bias_en_V_read_reg_369_pp0_iter1_reg(bias_en_V_read_reg_369_pp0_iter1_reg),
        .leaky_V_read_reg_364_pp0_iter1_reg(leaky_V_read_reg_364_pp0_iter1_reg),
        .p_0(p));
endmodule

(* ORIG_REF_NAME = "yolo_acc_top_mul_mul_6ns_16s_22_1_0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0_9
   (P,
    ap_ce_reg_reg,
    p,
    S,
    Range2_all_ones_reg_4060,
    ap_clk,
    D,
    ap_ce_reg,
    Q,
    CO,
    leaky_V_read_reg_364_pp0_iter1_reg,
    \ap_return_int_reg_reg[15] ,
    bias_en_V_read_reg_369_pp0_iter1_reg,
    \ap_return_int_reg_reg[15]_0 ,
    O,
    \ap_return_int_reg_reg[11] ,
    \ap_return_int_reg_reg[7] ,
    \ap_return_int_reg_reg[3] );
  output [13:0]P;
  output [15:0]ap_ce_reg_reg;
  output [15:0]p;
  output [0:0]S;
  input Range2_all_ones_reg_4060;
  input ap_clk;
  input [15:0]D;
  input ap_ce_reg;
  input [15:0]Q;
  input [0:0]CO;
  input leaky_V_read_reg_364_pp0_iter1_reg;
  input [15:0]\ap_return_int_reg_reg[15] ;
  input bias_en_V_read_reg_369_pp0_iter1_reg;
  input [15:0]\ap_return_int_reg_reg[15]_0 ;
  input [1:0]O;
  input [3:0]\ap_return_int_reg_reg[11] ;
  input [3:0]\ap_return_int_reg_reg[7] ;
  input [3:0]\ap_return_int_reg_reg[3] ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [1:0]O;
  wire [13:0]P;
  wire [15:0]Q;
  wire Range2_all_ones_reg_4060;
  wire [0:0]S;
  wire ap_ce_reg;
  wire [15:0]ap_ce_reg_reg;
  wire ap_clk;
  wire [3:0]\ap_return_int_reg_reg[11] ;
  wire [15:0]\ap_return_int_reg_reg[15] ;
  wire [15:0]\ap_return_int_reg_reg[15]_0 ;
  wire [3:0]\ap_return_int_reg_reg[3] ;
  wire [3:0]\ap_return_int_reg_reg[7] ;
  wire bias_en_V_read_reg_369_pp0_iter1_reg;
  wire leaky_V_read_reg_364_pp0_iter1_reg;
  wire [15:0]p;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0_10 yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0_U
       (.CO(CO),
        .D(D),
        .O(O),
        .P(P),
        .Q(Q),
        .Range2_all_ones_reg_4060(Range2_all_ones_reg_4060),
        .S(S),
        .ap_ce_reg(ap_ce_reg),
        .ap_ce_reg_reg(ap_ce_reg_reg),
        .ap_clk(ap_clk),
        .\ap_return_int_reg_reg[11] (\ap_return_int_reg_reg[11] ),
        .\ap_return_int_reg_reg[15] (\ap_return_int_reg_reg[15] ),
        .\ap_return_int_reg_reg[15]_0 (\ap_return_int_reg_reg[15]_0 ),
        .\ap_return_int_reg_reg[3] (\ap_return_int_reg_reg[3] ),
        .\ap_return_int_reg_reg[7] (\ap_return_int_reg_reg[7] ),
        .bias_en_V_read_reg_369_pp0_iter1_reg(bias_en_V_read_reg_369_pp0_iter1_reg),
        .leaky_V_read_reg_364_pp0_iter1_reg(leaky_V_read_reg_364_pp0_iter1_reg),
        .p_0(p));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0
   (P,
    Range2_all_ones_reg_4060,
    ap_ce_reg_reg,
    \leaky_V_read_reg_364_pp0_iter1_reg_reg[0] ,
    S,
    ap_clk,
    D,
    bias_en_V_read_reg_369,
    p_0,
    Q,
    \ap_return_int_reg_reg[15] ,
    CO,
    \ap_return_int_reg_reg[15]_0 ,
    \ap_return_int_reg_reg[15]_1 ,
    \ap_return_int_reg_reg[15]_2 ,
    O,
    \ap_return_int_reg_reg[11] ,
    \ap_return_int_reg_reg[7] ,
    \ap_return_int_reg_reg[3] );
  output [13:0]P;
  output Range2_all_ones_reg_4060;
  output [15:0]ap_ce_reg_reg;
  output [15:0]\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] ;
  output [0:0]S;
  input ap_clk;
  input [15:0]D;
  input bias_en_V_read_reg_369;
  input p_0;
  input [15:0]Q;
  input \ap_return_int_reg_reg[15] ;
  input [0:0]CO;
  input [15:0]\ap_return_int_reg_reg[15]_0 ;
  input \ap_return_int_reg_reg[15]_1 ;
  input [15:0]\ap_return_int_reg_reg[15]_2 ;
  input [1:0]O;
  input [3:0]\ap_return_int_reg_reg[11] ;
  input [3:0]\ap_return_int_reg_reg[7] ;
  input [3:0]\ap_return_int_reg_reg[3] ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [1:0]O;
  wire [13:0]P;
  wire [15:0]Q;
  wire Range2_all_ones_reg_4060;
  wire [0:0]S;
  wire [15:0]ap_ce_reg_reg;
  wire ap_clk;
  wire \ap_return_int_reg[0]_i_2__0_n_0 ;
  wire \ap_return_int_reg[10]_i_2__0_n_0 ;
  wire \ap_return_int_reg[11]_i_2__0_n_0 ;
  wire \ap_return_int_reg[12]_i_2__0_n_0 ;
  wire \ap_return_int_reg[13]_i_2__0_n_0 ;
  wire \ap_return_int_reg[14]_i_2__0_n_0 ;
  wire \ap_return_int_reg[1]_i_2__0_n_0 ;
  wire \ap_return_int_reg[2]_i_2__0_n_0 ;
  wire \ap_return_int_reg[3]_i_2__0_n_0 ;
  wire \ap_return_int_reg[4]_i_2__0_n_0 ;
  wire \ap_return_int_reg[5]_i_2__0_n_0 ;
  wire \ap_return_int_reg[6]_i_2__0_n_0 ;
  wire \ap_return_int_reg[7]_i_2__0_n_0 ;
  wire \ap_return_int_reg[8]_i_2__0_n_0 ;
  wire \ap_return_int_reg[9]_i_2__0_n_0 ;
  wire [3:0]\ap_return_int_reg_reg[11] ;
  wire \ap_return_int_reg_reg[15] ;
  wire [15:0]\ap_return_int_reg_reg[15]_0 ;
  wire \ap_return_int_reg_reg[15]_1 ;
  wire [15:0]\ap_return_int_reg_reg[15]_2 ;
  wire [3:0]\ap_return_int_reg_reg[3] ;
  wire [3:0]\ap_return_int_reg_reg[7] ;
  wire bias_en_V_read_reg_369;
  wire [15:0]\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] ;
  wire p_0;
  wire p_Val2_18_fu_235_p2_carry_i_2__2_n_0;
  wire [7:7]p__0;
  wire [6:0]trunc_ln718_reg_395;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:22]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[0]_i_1__0 
       (.I0(\ap_return_int_reg[0]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [0]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [0]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[0]_i_2__0 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[3] [0]),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [0]),
        .O(\ap_return_int_reg[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[10]_i_1__0 
       (.I0(\ap_return_int_reg[10]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [10]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [10]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[10]_i_2__0 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[11] [2]),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [10]),
        .O(\ap_return_int_reg[10]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[11]_i_1__0 
       (.I0(\ap_return_int_reg[11]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [11]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [11]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[11]_i_2__0 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[11] [3]),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [11]),
        .O(\ap_return_int_reg[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[12]_i_1__0 
       (.I0(\ap_return_int_reg[12]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [12]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [12]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[12]_i_2__0 
       (.I0(P[13]),
        .I1(O[0]),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [12]),
        .O(\ap_return_int_reg[12]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[13]_i_1__0 
       (.I0(\ap_return_int_reg[13]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [13]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [13]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[13]_i_2__0 
       (.I0(P[13]),
        .I1(O[1]),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [13]),
        .O(\ap_return_int_reg[13]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[14]_i_1__0 
       (.I0(\ap_return_int_reg[14]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [14]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [14]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return_int_reg[14]_i_2__0 
       (.I0(P[13]),
        .I1(CO),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [14]),
        .O(\ap_return_int_reg[14]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h7F00FFFF7F000000)) 
    \ap_return_int_reg[15]_i_1__0 
       (.I0(\ap_return_int_reg_reg[15] ),
        .I1(CO),
        .I2(P[13]),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_1 ),
        .I5(\ap_return_int_reg_reg[15]_2 [15]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [15]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[1]_i_1__0 
       (.I0(\ap_return_int_reg[1]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [1]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [1]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[1]_i_2__0 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[3] [1]),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [1]),
        .O(\ap_return_int_reg[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[2]_i_1__0 
       (.I0(\ap_return_int_reg[2]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [2]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [2]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[2]_i_2__0 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[3] [2]),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [2]),
        .O(\ap_return_int_reg[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[3]_i_1__0 
       (.I0(\ap_return_int_reg[3]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [3]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [3]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[3]_i_2__0 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[3] [3]),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [3]),
        .O(\ap_return_int_reg[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[4]_i_1__0 
       (.I0(\ap_return_int_reg[4]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [4]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [4]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[4]_i_2__0 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[7] [0]),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [4]),
        .O(\ap_return_int_reg[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[5]_i_1__0 
       (.I0(\ap_return_int_reg[5]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [5]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [5]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[5]_i_2__0 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[7] [1]),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [5]),
        .O(\ap_return_int_reg[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[6]_i_1__0 
       (.I0(\ap_return_int_reg[6]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [6]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [6]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[6]_i_2__0 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[7] [2]),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [6]),
        .O(\ap_return_int_reg[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[7]_i_1__0 
       (.I0(\ap_return_int_reg[7]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [7]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [7]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[7]_i_2__0 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[7] [3]),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [7]),
        .O(\ap_return_int_reg[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[8]_i_1__0 
       (.I0(\ap_return_int_reg[8]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [8]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [8]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[8]_i_2__0 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[11] [0]),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [8]),
        .O(\ap_return_int_reg[8]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[9]_i_1__0 
       (.I0(\ap_return_int_reg[9]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [9]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [9]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[9]_i_2__0 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[11] [1]),
        .I2(\ap_return_int_reg_reg[15] ),
        .I3(\ap_return_int_reg_reg[15]_0 [15]),
        .I4(\ap_return_int_reg_reg[15]_0 [9]),
        .O(\ap_return_int_reg[9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[48]_i_1 
       (.I0(\ap_return_int_reg[0]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [0]),
        .I3(p_0),
        .I4(Q[0]),
        .O(ap_ce_reg_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[49]_i_1 
       (.I0(\ap_return_int_reg[1]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [1]),
        .I3(p_0),
        .I4(Q[1]),
        .O(ap_ce_reg_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[50]_i_1 
       (.I0(\ap_return_int_reg[2]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [2]),
        .I3(p_0),
        .I4(Q[2]),
        .O(ap_ce_reg_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[51]_i_1 
       (.I0(\ap_return_int_reg[3]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [3]),
        .I3(p_0),
        .I4(Q[3]),
        .O(ap_ce_reg_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[52]_i_1 
       (.I0(\ap_return_int_reg[4]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [4]),
        .I3(p_0),
        .I4(Q[4]),
        .O(ap_ce_reg_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[53]_i_1 
       (.I0(\ap_return_int_reg[5]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [5]),
        .I3(p_0),
        .I4(Q[5]),
        .O(ap_ce_reg_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[54]_i_1 
       (.I0(\ap_return_int_reg[6]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [6]),
        .I3(p_0),
        .I4(Q[6]),
        .O(ap_ce_reg_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[55]_i_1 
       (.I0(\ap_return_int_reg[7]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [7]),
        .I3(p_0),
        .I4(Q[7]),
        .O(ap_ce_reg_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[56]_i_1 
       (.I0(\ap_return_int_reg[8]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [8]),
        .I3(p_0),
        .I4(Q[8]),
        .O(ap_ce_reg_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[57]_i_1 
       (.I0(\ap_return_int_reg[9]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [9]),
        .I3(p_0),
        .I4(Q[9]),
        .O(ap_ce_reg_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[58]_i_1 
       (.I0(\ap_return_int_reg[10]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [10]),
        .I3(p_0),
        .I4(Q[10]),
        .O(ap_ce_reg_reg[10]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[59]_i_1 
       (.I0(\ap_return_int_reg[11]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [11]),
        .I3(p_0),
        .I4(Q[11]),
        .O(ap_ce_reg_reg[11]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[60]_i_1 
       (.I0(\ap_return_int_reg[12]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [12]),
        .I3(p_0),
        .I4(Q[12]),
        .O(ap_ce_reg_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[61]_i_1 
       (.I0(\ap_return_int_reg[13]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [13]),
        .I3(p_0),
        .I4(Q[13]),
        .O(ap_ce_reg_reg[13]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[62]_i_1 
       (.I0(\ap_return_int_reg[14]_i_2__0_n_0 ),
        .I1(\ap_return_int_reg_reg[15]_1 ),
        .I2(\ap_return_int_reg_reg[15]_2 [14]),
        .I3(p_0),
        .I4(Q[14]),
        .O(ap_ce_reg_reg[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_1_payload_A[63]_i_2 
       (.I0(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [15]),
        .I1(p_0),
        .I2(Q[15]),
        .O(ap_ce_reg_reg[15]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(Range2_all_ones_reg_4060),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:22],P,p__0,trunc_ln718_reg_395}),
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
    .INIT(16'h55A8)) 
    p_Val2_18_fu_235_p2_carry_i_1__2
       (.I0(p__0),
        .I1(trunc_ln718_reg_395[5]),
        .I2(p_Val2_18_fu_235_p2_carry_i_2__2_n_0),
        .I3(P[0]),
        .O(S));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    p_Val2_18_fu_235_p2_carry_i_2__2
       (.I0(trunc_ln718_reg_395[6]),
        .I1(trunc_ln718_reg_395[3]),
        .I2(trunc_ln718_reg_395[1]),
        .I3(trunc_ln718_reg_395[0]),
        .I4(trunc_ln718_reg_395[2]),
        .I5(trunc_ln718_reg_395[4]),
        .O(p_Val2_18_fu_235_p2_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_1
       (.I0(bias_en_V_read_reg_369),
        .I1(p_0),
        .O(Range2_all_ones_reg_4060));
endmodule

(* ORIG_REF_NAME = "yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0_10
   (P,
    ap_ce_reg_reg,
    p_0,
    S,
    Range2_all_ones_reg_4060,
    ap_clk,
    D,
    ap_ce_reg,
    Q,
    CO,
    leaky_V_read_reg_364_pp0_iter1_reg,
    \ap_return_int_reg_reg[15] ,
    bias_en_V_read_reg_369_pp0_iter1_reg,
    \ap_return_int_reg_reg[15]_0 ,
    O,
    \ap_return_int_reg_reg[11] ,
    \ap_return_int_reg_reg[7] ,
    \ap_return_int_reg_reg[3] );
  output [13:0]P;
  output [15:0]ap_ce_reg_reg;
  output [15:0]p_0;
  output [0:0]S;
  input Range2_all_ones_reg_4060;
  input ap_clk;
  input [15:0]D;
  input ap_ce_reg;
  input [15:0]Q;
  input [0:0]CO;
  input leaky_V_read_reg_364_pp0_iter1_reg;
  input [15:0]\ap_return_int_reg_reg[15] ;
  input bias_en_V_read_reg_369_pp0_iter1_reg;
  input [15:0]\ap_return_int_reg_reg[15]_0 ;
  input [1:0]O;
  input [3:0]\ap_return_int_reg_reg[11] ;
  input [3:0]\ap_return_int_reg_reg[7] ;
  input [3:0]\ap_return_int_reg_reg[3] ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [1:0]O;
  wire [13:0]P;
  wire [15:0]Q;
  wire Range2_all_ones_reg_4060;
  wire [0:0]S;
  wire ap_ce_reg;
  wire [15:0]ap_ce_reg_reg;
  wire ap_clk;
  wire \ap_return_int_reg[0]_i_2_n_0 ;
  wire \ap_return_int_reg[10]_i_2_n_0 ;
  wire \ap_return_int_reg[11]_i_2_n_0 ;
  wire \ap_return_int_reg[12]_i_2_n_0 ;
  wire \ap_return_int_reg[13]_i_2_n_0 ;
  wire \ap_return_int_reg[14]_i_2_n_0 ;
  wire \ap_return_int_reg[1]_i_2_n_0 ;
  wire \ap_return_int_reg[2]_i_2_n_0 ;
  wire \ap_return_int_reg[3]_i_2_n_0 ;
  wire \ap_return_int_reg[4]_i_2_n_0 ;
  wire \ap_return_int_reg[5]_i_2_n_0 ;
  wire \ap_return_int_reg[6]_i_2_n_0 ;
  wire \ap_return_int_reg[7]_i_2_n_0 ;
  wire \ap_return_int_reg[8]_i_2_n_0 ;
  wire \ap_return_int_reg[9]_i_2_n_0 ;
  wire [3:0]\ap_return_int_reg_reg[11] ;
  wire [15:0]\ap_return_int_reg_reg[15] ;
  wire [15:0]\ap_return_int_reg_reg[15]_0 ;
  wire [3:0]\ap_return_int_reg_reg[3] ;
  wire [3:0]\ap_return_int_reg_reg[7] ;
  wire bias_en_V_read_reg_369_pp0_iter1_reg;
  wire leaky_V_read_reg_364_pp0_iter1_reg;
  wire [15:0]p_0;
  wire p_Val2_18_fu_235_p2_carry_i_2_n_0;
  wire [7:7]p__0;
  wire [6:0]trunc_ln718_reg_395;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:22]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[0]_i_1 
       (.I0(\ap_return_int_reg[0]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [0]),
        .O(p_0[0]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[0]_i_2 
       (.I0(\ap_return_int_reg_reg[3] [0]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [0]),
        .O(\ap_return_int_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[10]_i_1 
       (.I0(\ap_return_int_reg[10]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [10]),
        .O(p_0[10]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[10]_i_2 
       (.I0(\ap_return_int_reg_reg[11] [2]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [10]),
        .O(\ap_return_int_reg[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[11]_i_1 
       (.I0(\ap_return_int_reg[11]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [11]),
        .O(p_0[11]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[11]_i_2 
       (.I0(\ap_return_int_reg_reg[11] [3]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [11]),
        .O(\ap_return_int_reg[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[12]_i_1 
       (.I0(\ap_return_int_reg[12]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [12]),
        .O(p_0[12]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[12]_i_2 
       (.I0(O[0]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [12]),
        .O(\ap_return_int_reg[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[13]_i_1 
       (.I0(\ap_return_int_reg[13]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [13]),
        .O(p_0[13]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[13]_i_2 
       (.I0(O[1]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [13]),
        .O(\ap_return_int_reg[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[14]_i_1 
       (.I0(\ap_return_int_reg[14]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [14]),
        .O(p_0[14]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return_int_reg[14]_i_2 
       (.I0(P[13]),
        .I1(CO),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [14]),
        .O(\ap_return_int_reg[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F00FFFF7F000000)) 
    \ap_return_int_reg[15]_i_1 
       (.I0(P[13]),
        .I1(CO),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I5(\ap_return_int_reg_reg[15]_0 [15]),
        .O(p_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[1]_i_1 
       (.I0(\ap_return_int_reg[1]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [1]),
        .O(p_0[1]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[1]_i_2 
       (.I0(\ap_return_int_reg_reg[3] [1]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [1]),
        .O(\ap_return_int_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[2]_i_1 
       (.I0(\ap_return_int_reg[2]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [2]),
        .O(p_0[2]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[2]_i_2 
       (.I0(\ap_return_int_reg_reg[3] [2]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [2]),
        .O(\ap_return_int_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[3]_i_1 
       (.I0(\ap_return_int_reg[3]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [3]),
        .O(p_0[3]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[3]_i_2 
       (.I0(\ap_return_int_reg_reg[3] [3]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [3]),
        .O(\ap_return_int_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[4]_i_1 
       (.I0(\ap_return_int_reg[4]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [4]),
        .O(p_0[4]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[4]_i_2 
       (.I0(\ap_return_int_reg_reg[7] [0]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [4]),
        .O(\ap_return_int_reg[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[5]_i_1 
       (.I0(\ap_return_int_reg[5]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [5]),
        .O(p_0[5]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[5]_i_2 
       (.I0(\ap_return_int_reg_reg[7] [1]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [5]),
        .O(\ap_return_int_reg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[6]_i_1 
       (.I0(\ap_return_int_reg[6]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [6]),
        .O(p_0[6]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[6]_i_2 
       (.I0(\ap_return_int_reg_reg[7] [2]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [6]),
        .O(\ap_return_int_reg[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[7]_i_1 
       (.I0(\ap_return_int_reg[7]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [7]),
        .O(p_0[7]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[7]_i_2 
       (.I0(\ap_return_int_reg_reg[7] [3]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [7]),
        .O(\ap_return_int_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[8]_i_1 
       (.I0(\ap_return_int_reg[8]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [8]),
        .O(p_0[8]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[8]_i_2 
       (.I0(\ap_return_int_reg_reg[11] [0]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [8]),
        .O(\ap_return_int_reg[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[9]_i_1 
       (.I0(\ap_return_int_reg[9]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [9]),
        .O(p_0[9]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[9]_i_2 
       (.I0(\ap_return_int_reg_reg[11] [1]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [9]),
        .O(\ap_return_int_reg[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[0]_i_1 
       (.I0(\ap_return_int_reg[0]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [0]),
        .I3(ap_ce_reg),
        .I4(Q[0]),
        .O(ap_ce_reg_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[10]_i_1 
       (.I0(\ap_return_int_reg[10]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [10]),
        .I3(ap_ce_reg),
        .I4(Q[10]),
        .O(ap_ce_reg_reg[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[11]_i_1 
       (.I0(\ap_return_int_reg[11]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [11]),
        .I3(ap_ce_reg),
        .I4(Q[11]),
        .O(ap_ce_reg_reg[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[12]_i_1 
       (.I0(\ap_return_int_reg[12]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [12]),
        .I3(ap_ce_reg),
        .I4(Q[12]),
        .O(ap_ce_reg_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[13]_i_1 
       (.I0(\ap_return_int_reg[13]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [13]),
        .I3(ap_ce_reg),
        .I4(Q[13]),
        .O(ap_ce_reg_reg[13]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[14]_i_1 
       (.I0(\ap_return_int_reg[14]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [14]),
        .I3(ap_ce_reg),
        .I4(Q[14]),
        .O(ap_ce_reg_reg[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_1_payload_A[15]_i_1 
       (.I0(p_0[15]),
        .I1(ap_ce_reg),
        .I2(Q[15]),
        .O(ap_ce_reg_reg[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[1]_i_1 
       (.I0(\ap_return_int_reg[1]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [1]),
        .I3(ap_ce_reg),
        .I4(Q[1]),
        .O(ap_ce_reg_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[2]_i_1 
       (.I0(\ap_return_int_reg[2]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [2]),
        .I3(ap_ce_reg),
        .I4(Q[2]),
        .O(ap_ce_reg_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[3]_i_1 
       (.I0(\ap_return_int_reg[3]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [3]),
        .I3(ap_ce_reg),
        .I4(Q[3]),
        .O(ap_ce_reg_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[4]_i_1 
       (.I0(\ap_return_int_reg[4]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [4]),
        .I3(ap_ce_reg),
        .I4(Q[4]),
        .O(ap_ce_reg_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[5]_i_1 
       (.I0(\ap_return_int_reg[5]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [5]),
        .I3(ap_ce_reg),
        .I4(Q[5]),
        .O(ap_ce_reg_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[6]_i_1 
       (.I0(\ap_return_int_reg[6]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [6]),
        .I3(ap_ce_reg),
        .I4(Q[6]),
        .O(ap_ce_reg_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[7]_i_1 
       (.I0(\ap_return_int_reg[7]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [7]),
        .I3(ap_ce_reg),
        .I4(Q[7]),
        .O(ap_ce_reg_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[8]_i_1 
       (.I0(\ap_return_int_reg[8]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [8]),
        .I3(ap_ce_reg),
        .I4(Q[8]),
        .O(ap_ce_reg_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[9]_i_1 
       (.I0(\ap_return_int_reg[9]_i_2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [9]),
        .I3(ap_ce_reg),
        .I4(Q[9]),
        .O(ap_ce_reg_reg[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(Range2_all_ones_reg_4060),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:22],P,p__0,trunc_ln718_reg_395}),
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
    .INIT(16'h55A8)) 
    p_Val2_18_fu_235_p2_carry_i_1
       (.I0(p__0),
        .I1(trunc_ln718_reg_395[5]),
        .I2(p_Val2_18_fu_235_p2_carry_i_2_n_0),
        .I3(P[0]),
        .O(S));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    p_Val2_18_fu_235_p2_carry_i_2
       (.I0(trunc_ln718_reg_395[4]),
        .I1(trunc_ln718_reg_395[1]),
        .I2(trunc_ln718_reg_395[0]),
        .I3(trunc_ln718_reg_395[2]),
        .I4(trunc_ln718_reg_395[3]),
        .I5(trunc_ln718_reg_395[6]),
        .O(p_Val2_18_fu_235_p2_carry_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0_6
   (P,
    ap_ce_reg_reg,
    \leaky_V_read_reg_364_pp0_iter1_reg_reg[0] ,
    S,
    Range2_all_ones_reg_4060,
    ap_clk,
    D,
    ap_ce_reg,
    Q,
    leaky_V_read_reg_364_pp0_iter1_reg,
    CO,
    \ap_return_int_reg_reg[15] ,
    bias_en_V_read_reg_369_pp0_iter1_reg,
    \ap_return_int_reg_reg[15]_0 ,
    O,
    \ap_return_int_reg_reg[11] ,
    \ap_return_int_reg_reg[7] ,
    \ap_return_int_reg_reg[3] );
  output [13:0]P;
  output [15:0]ap_ce_reg_reg;
  output [15:0]\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] ;
  output [0:0]S;
  input Range2_all_ones_reg_4060;
  input ap_clk;
  input [15:0]D;
  input ap_ce_reg;
  input [15:0]Q;
  input leaky_V_read_reg_364_pp0_iter1_reg;
  input [0:0]CO;
  input [15:0]\ap_return_int_reg_reg[15] ;
  input bias_en_V_read_reg_369_pp0_iter1_reg;
  input [15:0]\ap_return_int_reg_reg[15]_0 ;
  input [1:0]O;
  input [3:0]\ap_return_int_reg_reg[11] ;
  input [3:0]\ap_return_int_reg_reg[7] ;
  input [3:0]\ap_return_int_reg_reg[3] ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [1:0]O;
  wire [13:0]P;
  wire [15:0]Q;
  wire Range2_all_ones_reg_4060;
  wire [0:0]S;
  wire ap_ce_reg;
  wire [15:0]ap_ce_reg_reg;
  wire ap_clk;
  wire \ap_return_int_reg[0]_i_2__1_n_0 ;
  wire \ap_return_int_reg[10]_i_2__1_n_0 ;
  wire \ap_return_int_reg[11]_i_2__1_n_0 ;
  wire \ap_return_int_reg[12]_i_2__1_n_0 ;
  wire \ap_return_int_reg[13]_i_2__1_n_0 ;
  wire \ap_return_int_reg[14]_i_2__1_n_0 ;
  wire \ap_return_int_reg[1]_i_2__1_n_0 ;
  wire \ap_return_int_reg[2]_i_2__1_n_0 ;
  wire \ap_return_int_reg[3]_i_2__1_n_0 ;
  wire \ap_return_int_reg[4]_i_2__1_n_0 ;
  wire \ap_return_int_reg[5]_i_2__1_n_0 ;
  wire \ap_return_int_reg[6]_i_2__1_n_0 ;
  wire \ap_return_int_reg[7]_i_2__1_n_0 ;
  wire \ap_return_int_reg[8]_i_2__1_n_0 ;
  wire \ap_return_int_reg[9]_i_2__1_n_0 ;
  wire [3:0]\ap_return_int_reg_reg[11] ;
  wire [15:0]\ap_return_int_reg_reg[15] ;
  wire [15:0]\ap_return_int_reg_reg[15]_0 ;
  wire [3:0]\ap_return_int_reg_reg[3] ;
  wire [3:0]\ap_return_int_reg_reg[7] ;
  wire bias_en_V_read_reg_369_pp0_iter1_reg;
  wire leaky_V_read_reg_364_pp0_iter1_reg;
  wire [15:0]\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] ;
  wire p_Val2_18_fu_235_p2_carry_i_2__1_n_0;
  wire [7:7]p__0;
  wire [6:0]trunc_ln718_reg_395;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:22]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[0]_i_1__1 
       (.I0(\ap_return_int_reg[0]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [0]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [0]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[0]_i_2__1 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[3] [0]),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [0]),
        .O(\ap_return_int_reg[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[10]_i_1__1 
       (.I0(\ap_return_int_reg[10]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [10]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [10]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[10]_i_2__1 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[11] [2]),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [10]),
        .O(\ap_return_int_reg[10]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[11]_i_1__1 
       (.I0(\ap_return_int_reg[11]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [11]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [11]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[11]_i_2__1 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[11] [3]),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [11]),
        .O(\ap_return_int_reg[11]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[12]_i_1__1 
       (.I0(\ap_return_int_reg[12]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [12]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [12]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[12]_i_2__1 
       (.I0(P[13]),
        .I1(O[0]),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [12]),
        .O(\ap_return_int_reg[12]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[13]_i_1__1 
       (.I0(\ap_return_int_reg[13]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [13]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [13]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[13]_i_2__1 
       (.I0(P[13]),
        .I1(O[1]),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [13]),
        .O(\ap_return_int_reg[13]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[14]_i_1__1 
       (.I0(\ap_return_int_reg[14]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [14]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [14]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return_int_reg[14]_i_2__1 
       (.I0(P[13]),
        .I1(CO),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [14]),
        .O(\ap_return_int_reg[14]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h7F00FFFF7F000000)) 
    \ap_return_int_reg[15]_i_1__1 
       (.I0(leaky_V_read_reg_364_pp0_iter1_reg),
        .I1(CO),
        .I2(P[13]),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I5(\ap_return_int_reg_reg[15]_0 [15]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [15]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[1]_i_1__1 
       (.I0(\ap_return_int_reg[1]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [1]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [1]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[1]_i_2__1 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[3] [1]),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [1]),
        .O(\ap_return_int_reg[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[2]_i_1__1 
       (.I0(\ap_return_int_reg[2]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [2]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [2]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[2]_i_2__1 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[3] [2]),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [2]),
        .O(\ap_return_int_reg[2]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[3]_i_1__1 
       (.I0(\ap_return_int_reg[3]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [3]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [3]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[3]_i_2__1 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[3] [3]),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [3]),
        .O(\ap_return_int_reg[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[4]_i_1__1 
       (.I0(\ap_return_int_reg[4]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [4]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [4]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[4]_i_2__1 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[7] [0]),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [4]),
        .O(\ap_return_int_reg[4]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[5]_i_1__1 
       (.I0(\ap_return_int_reg[5]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [5]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [5]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[5]_i_2__1 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[7] [1]),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [5]),
        .O(\ap_return_int_reg[5]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[6]_i_1__1 
       (.I0(\ap_return_int_reg[6]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [6]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [6]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[6]_i_2__1 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[7] [2]),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [6]),
        .O(\ap_return_int_reg[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[7]_i_1__1 
       (.I0(\ap_return_int_reg[7]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [7]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [7]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[7]_i_2__1 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[7] [3]),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [7]),
        .O(\ap_return_int_reg[7]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[8]_i_1__1 
       (.I0(\ap_return_int_reg[8]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [8]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [8]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[8]_i_2__1 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[11] [0]),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [8]),
        .O(\ap_return_int_reg[8]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[9]_i_1__1 
       (.I0(\ap_return_int_reg[9]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [9]),
        .O(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [9]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[9]_i_2__1 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[11] [1]),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(\ap_return_int_reg_reg[15] [9]),
        .O(\ap_return_int_reg[9]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[32]_i_1 
       (.I0(\ap_return_int_reg[0]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [0]),
        .I3(ap_ce_reg),
        .I4(Q[0]),
        .O(ap_ce_reg_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[33]_i_1 
       (.I0(\ap_return_int_reg[1]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [1]),
        .I3(ap_ce_reg),
        .I4(Q[1]),
        .O(ap_ce_reg_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[34]_i_1 
       (.I0(\ap_return_int_reg[2]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [2]),
        .I3(ap_ce_reg),
        .I4(Q[2]),
        .O(ap_ce_reg_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[35]_i_1 
       (.I0(\ap_return_int_reg[3]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [3]),
        .I3(ap_ce_reg),
        .I4(Q[3]),
        .O(ap_ce_reg_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[36]_i_1 
       (.I0(\ap_return_int_reg[4]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [4]),
        .I3(ap_ce_reg),
        .I4(Q[4]),
        .O(ap_ce_reg_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[37]_i_1 
       (.I0(\ap_return_int_reg[5]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [5]),
        .I3(ap_ce_reg),
        .I4(Q[5]),
        .O(ap_ce_reg_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[38]_i_1 
       (.I0(\ap_return_int_reg[6]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [6]),
        .I3(ap_ce_reg),
        .I4(Q[6]),
        .O(ap_ce_reg_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[39]_i_1 
       (.I0(\ap_return_int_reg[7]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [7]),
        .I3(ap_ce_reg),
        .I4(Q[7]),
        .O(ap_ce_reg_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[40]_i_1 
       (.I0(\ap_return_int_reg[8]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [8]),
        .I3(ap_ce_reg),
        .I4(Q[8]),
        .O(ap_ce_reg_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[41]_i_1 
       (.I0(\ap_return_int_reg[9]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [9]),
        .I3(ap_ce_reg),
        .I4(Q[9]),
        .O(ap_ce_reg_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[42]_i_1 
       (.I0(\ap_return_int_reg[10]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [10]),
        .I3(ap_ce_reg),
        .I4(Q[10]),
        .O(ap_ce_reg_reg[10]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[43]_i_1 
       (.I0(\ap_return_int_reg[11]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [11]),
        .I3(ap_ce_reg),
        .I4(Q[11]),
        .O(ap_ce_reg_reg[11]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[44]_i_1 
       (.I0(\ap_return_int_reg[12]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [12]),
        .I3(ap_ce_reg),
        .I4(Q[12]),
        .O(ap_ce_reg_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[45]_i_1 
       (.I0(\ap_return_int_reg[13]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [13]),
        .I3(ap_ce_reg),
        .I4(Q[13]),
        .O(ap_ce_reg_reg[13]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[46]_i_1 
       (.I0(\ap_return_int_reg[14]_i_2__1_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [14]),
        .I3(ap_ce_reg),
        .I4(Q[14]),
        .O(ap_ce_reg_reg[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_1_payload_A[47]_i_1 
       (.I0(\leaky_V_read_reg_364_pp0_iter1_reg_reg[0] [15]),
        .I1(ap_ce_reg),
        .I2(Q[15]),
        .O(ap_ce_reg_reg[15]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(Range2_all_ones_reg_4060),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:22],P,p__0,trunc_ln718_reg_395}),
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
    .INIT(16'h55A8)) 
    p_Val2_18_fu_235_p2_carry_i_1__1
       (.I0(p__0),
        .I1(trunc_ln718_reg_395[5]),
        .I2(p_Val2_18_fu_235_p2_carry_i_2__1_n_0),
        .I3(P[0]),
        .O(S));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    p_Val2_18_fu_235_p2_carry_i_2__1
       (.I0(trunc_ln718_reg_395[6]),
        .I1(trunc_ln718_reg_395[3]),
        .I2(trunc_ln718_reg_395[1]),
        .I3(trunc_ln718_reg_395[0]),
        .I4(trunc_ln718_reg_395[2]),
        .I5(trunc_ln718_reg_395[4]),
        .O(p_Val2_18_fu_235_p2_carry_i_2__1_n_0));
endmodule

(* ORIG_REF_NAME = "yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_yolo_acc_top_mul_mul_6ns_16s_22_1_0_DSP48_0_8
   (P,
    ap_ce_reg_reg,
    p_0,
    S,
    Range2_all_ones_reg_4060,
    ap_clk,
    D,
    ap_ce_reg,
    Q,
    CO,
    leaky_V_read_reg_364_pp0_iter1_reg,
    \ap_return_int_reg_reg[15] ,
    bias_en_V_read_reg_369_pp0_iter1_reg,
    \ap_return_int_reg_reg[15]_0 ,
    O,
    \ap_return_int_reg_reg[11] ,
    \ap_return_int_reg_reg[7] ,
    \ap_return_int_reg_reg[3] );
  output [13:0]P;
  output [15:0]ap_ce_reg_reg;
  output [15:0]p_0;
  output [0:0]S;
  input Range2_all_ones_reg_4060;
  input ap_clk;
  input [15:0]D;
  input ap_ce_reg;
  input [15:0]Q;
  input [0:0]CO;
  input leaky_V_read_reg_364_pp0_iter1_reg;
  input [15:0]\ap_return_int_reg_reg[15] ;
  input bias_en_V_read_reg_369_pp0_iter1_reg;
  input [15:0]\ap_return_int_reg_reg[15]_0 ;
  input [1:0]O;
  input [3:0]\ap_return_int_reg_reg[11] ;
  input [3:0]\ap_return_int_reg_reg[7] ;
  input [3:0]\ap_return_int_reg_reg[3] ;

  wire [0:0]CO;
  wire [15:0]D;
  wire [1:0]O;
  wire [13:0]P;
  wire [15:0]Q;
  wire Range2_all_ones_reg_4060;
  wire [0:0]S;
  wire ap_ce_reg;
  wire [15:0]ap_ce_reg_reg;
  wire ap_clk;
  wire \ap_return_int_reg[0]_i_2__2_n_0 ;
  wire \ap_return_int_reg[10]_i_2__2_n_0 ;
  wire \ap_return_int_reg[11]_i_2__2_n_0 ;
  wire \ap_return_int_reg[12]_i_2__2_n_0 ;
  wire \ap_return_int_reg[13]_i_2__2_n_0 ;
  wire \ap_return_int_reg[14]_i_2__2_n_0 ;
  wire \ap_return_int_reg[1]_i_2__2_n_0 ;
  wire \ap_return_int_reg[2]_i_2__2_n_0 ;
  wire \ap_return_int_reg[3]_i_2__2_n_0 ;
  wire \ap_return_int_reg[4]_i_2__2_n_0 ;
  wire \ap_return_int_reg[5]_i_2__2_n_0 ;
  wire \ap_return_int_reg[6]_i_2__2_n_0 ;
  wire \ap_return_int_reg[7]_i_2__2_n_0 ;
  wire \ap_return_int_reg[8]_i_2__2_n_0 ;
  wire \ap_return_int_reg[9]_i_2__2_n_0 ;
  wire [3:0]\ap_return_int_reg_reg[11] ;
  wire [15:0]\ap_return_int_reg_reg[15] ;
  wire [15:0]\ap_return_int_reg_reg[15]_0 ;
  wire [3:0]\ap_return_int_reg_reg[3] ;
  wire [3:0]\ap_return_int_reg_reg[7] ;
  wire bias_en_V_read_reg_369_pp0_iter1_reg;
  wire leaky_V_read_reg_364_pp0_iter1_reg;
  wire [15:0]p_0;
  wire p_Val2_18_fu_235_p2_carry_i_2__0_n_0;
  wire [7:7]p__0;
  wire [6:0]trunc_ln718_reg_395;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:22]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[0]_i_1__2 
       (.I0(\ap_return_int_reg[0]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [0]),
        .O(p_0[0]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[0]_i_2__2 
       (.I0(\ap_return_int_reg_reg[3] [0]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [0]),
        .O(\ap_return_int_reg[0]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[10]_i_1__2 
       (.I0(\ap_return_int_reg[10]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [10]),
        .O(p_0[10]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[10]_i_2__2 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[11] [2]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [10]),
        .O(\ap_return_int_reg[10]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[11]_i_1__2 
       (.I0(\ap_return_int_reg[11]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [11]),
        .O(p_0[11]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[11]_i_2__2 
       (.I0(\ap_return_int_reg_reg[11] [3]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [11]),
        .O(\ap_return_int_reg[11]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[12]_i_1__2 
       (.I0(\ap_return_int_reg[12]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [12]),
        .O(p_0[12]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[12]_i_2__2 
       (.I0(O[0]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [12]),
        .O(\ap_return_int_reg[12]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[13]_i_1__2 
       (.I0(\ap_return_int_reg[13]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [13]),
        .O(p_0[13]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[13]_i_2__2 
       (.I0(O[1]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [13]),
        .O(\ap_return_int_reg[13]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[14]_i_1__2 
       (.I0(\ap_return_int_reg[14]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [14]),
        .O(p_0[14]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return_int_reg[14]_i_2__2 
       (.I0(P[13]),
        .I1(CO),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [14]),
        .O(\ap_return_int_reg[14]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h7F00FFFF7F000000)) 
    \ap_return_int_reg[15]_i_1__2 
       (.I0(P[13]),
        .I1(CO),
        .I2(leaky_V_read_reg_364_pp0_iter1_reg),
        .I3(\ap_return_int_reg_reg[15] [15]),
        .I4(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I5(\ap_return_int_reg_reg[15]_0 [15]),
        .O(p_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[1]_i_1__2 
       (.I0(\ap_return_int_reg[1]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [1]),
        .O(p_0[1]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[1]_i_2__2 
       (.I0(\ap_return_int_reg_reg[3] [1]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [1]),
        .O(\ap_return_int_reg[1]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[2]_i_1__2 
       (.I0(\ap_return_int_reg[2]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [2]),
        .O(p_0[2]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[2]_i_2__2 
       (.I0(\ap_return_int_reg_reg[3] [2]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [2]),
        .O(\ap_return_int_reg[2]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[3]_i_1__2 
       (.I0(\ap_return_int_reg[3]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [3]),
        .O(p_0[3]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[3]_i_2__2 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[3] [3]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [3]),
        .O(\ap_return_int_reg[3]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[4]_i_1__2 
       (.I0(\ap_return_int_reg[4]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [4]),
        .O(p_0[4]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[4]_i_2__2 
       (.I0(P[13]),
        .I1(\ap_return_int_reg_reg[7] [0]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [4]),
        .O(\ap_return_int_reg[4]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[5]_i_1__2 
       (.I0(\ap_return_int_reg[5]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [5]),
        .O(p_0[5]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[5]_i_2__2 
       (.I0(\ap_return_int_reg_reg[7] [1]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [5]),
        .O(\ap_return_int_reg[5]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[6]_i_1__2 
       (.I0(\ap_return_int_reg[6]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [6]),
        .O(p_0[6]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[6]_i_2__2 
       (.I0(\ap_return_int_reg_reg[7] [2]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [6]),
        .O(\ap_return_int_reg[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[7]_i_1__2 
       (.I0(\ap_return_int_reg[7]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [7]),
        .O(p_0[7]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[7]_i_2__2 
       (.I0(\ap_return_int_reg_reg[7] [3]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [7]),
        .O(\ap_return_int_reg[7]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[8]_i_1__2 
       (.I0(\ap_return_int_reg[8]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [8]),
        .O(p_0[8]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[8]_i_2__2 
       (.I0(\ap_return_int_reg_reg[11] [0]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [8]),
        .O(\ap_return_int_reg[8]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_int_reg[9]_i_1__2 
       (.I0(\ap_return_int_reg[9]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [9]),
        .O(p_0[9]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \ap_return_int_reg[9]_i_2__2 
       (.I0(\ap_return_int_reg_reg[11] [1]),
        .I1(P[13]),
        .I2(\ap_return_int_reg_reg[15] [15]),
        .I3(leaky_V_read_reg_364_pp0_iter1_reg),
        .I4(\ap_return_int_reg_reg[15] [9]),
        .O(\ap_return_int_reg[9]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[16]_i_1 
       (.I0(\ap_return_int_reg[0]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [0]),
        .I3(ap_ce_reg),
        .I4(Q[0]),
        .O(ap_ce_reg_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[17]_i_1 
       (.I0(\ap_return_int_reg[1]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [1]),
        .I3(ap_ce_reg),
        .I4(Q[1]),
        .O(ap_ce_reg_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[18]_i_1 
       (.I0(\ap_return_int_reg[2]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [2]),
        .I3(ap_ce_reg),
        .I4(Q[2]),
        .O(ap_ce_reg_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[19]_i_1 
       (.I0(\ap_return_int_reg[3]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [3]),
        .I3(ap_ce_reg),
        .I4(Q[3]),
        .O(ap_ce_reg_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[20]_i_1 
       (.I0(\ap_return_int_reg[4]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [4]),
        .I3(ap_ce_reg),
        .I4(Q[4]),
        .O(ap_ce_reg_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[21]_i_1 
       (.I0(\ap_return_int_reg[5]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [5]),
        .I3(ap_ce_reg),
        .I4(Q[5]),
        .O(ap_ce_reg_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[22]_i_1 
       (.I0(\ap_return_int_reg[6]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [6]),
        .I3(ap_ce_reg),
        .I4(Q[6]),
        .O(ap_ce_reg_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[23]_i_1 
       (.I0(\ap_return_int_reg[7]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [7]),
        .I3(ap_ce_reg),
        .I4(Q[7]),
        .O(ap_ce_reg_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[24]_i_1 
       (.I0(\ap_return_int_reg[8]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [8]),
        .I3(ap_ce_reg),
        .I4(Q[8]),
        .O(ap_ce_reg_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[25]_i_1 
       (.I0(\ap_return_int_reg[9]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [9]),
        .I3(ap_ce_reg),
        .I4(Q[9]),
        .O(ap_ce_reg_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[26]_i_1 
       (.I0(\ap_return_int_reg[10]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [10]),
        .I3(ap_ce_reg),
        .I4(Q[10]),
        .O(ap_ce_reg_reg[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[27]_i_1 
       (.I0(\ap_return_int_reg[11]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [11]),
        .I3(ap_ce_reg),
        .I4(Q[11]),
        .O(ap_ce_reg_reg[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[28]_i_1 
       (.I0(\ap_return_int_reg[12]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [12]),
        .I3(ap_ce_reg),
        .I4(Q[12]),
        .O(ap_ce_reg_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[29]_i_1 
       (.I0(\ap_return_int_reg[13]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [13]),
        .I3(ap_ce_reg),
        .I4(Q[13]),
        .O(ap_ce_reg_reg[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outStream_V_data_1_payload_A[30]_i_1 
       (.I0(\ap_return_int_reg[14]_i_2__2_n_0 ),
        .I1(bias_en_V_read_reg_369_pp0_iter1_reg),
        .I2(\ap_return_int_reg_reg[15]_0 [14]),
        .I3(ap_ce_reg),
        .I4(Q[14]),
        .O(ap_ce_reg_reg[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \outStream_V_data_1_payload_A[31]_i_1 
       (.I0(p_0[15]),
        .I1(ap_ce_reg),
        .I2(Q[15]),
        .O(ap_ce_reg_reg[15]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D[15],D}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(Range2_all_ones_reg_4060),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:22],P,p__0,trunc_ln718_reg_395}),
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
    .INIT(16'h55A8)) 
    p_Val2_18_fu_235_p2_carry_i_1__0
       (.I0(p__0),
        .I1(trunc_ln718_reg_395[5]),
        .I2(p_Val2_18_fu_235_p2_carry_i_2__0_n_0),
        .I3(P[0]),
        .O(S));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    p_Val2_18_fu_235_p2_carry_i_2__0
       (.I0(trunc_ln718_reg_395[3]),
        .I1(trunc_ln718_reg_395[1]),
        .I2(trunc_ln718_reg_395[0]),
        .I3(trunc_ln718_reg_395[2]),
        .I4(trunc_ln718_reg_395[4]),
        .I5(trunc_ln718_reg_395[6]),
        .O(p_Val2_18_fu_235_p2_carry_i_2__0_n_0));
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
