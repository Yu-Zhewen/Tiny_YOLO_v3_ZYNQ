// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Jul 16 09:40:37 2019
// Host        : Lenovo-XiaoXin-CHAO7000 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/xavier/MSc_Project/hls/yolo_conv_hls_2019/yolo_conv_max_fp_prj_2019_64/yolo_conv_max_fp_prj_2019_64.srcs/sources_1/bd/design_1/ip/design_1_axis_switch_0_1/design_1_axis_switch_0_1_sim_netlist.v
// Design      : design_1_axis_switch_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axis_switch_0_1,axis_switch_v1_1_19_axis_switch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_switch_v1_1_19_axis_switch,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_axis_switch_0_1
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S00_AXIS:S01_AXIS:S02_AXIS:S03_AXIS:S04_AXIS:S05_AXIS:S06_AXIS:S07_AXIS:S08_AXIS:S09_AXIS:S10_AXIS:S11_AXIS:S12_AXIS:S13_AXIS:S14_AXIS:S15_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input [0:0]s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) output [0:0]s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [63:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [7:0]s_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP" *) input [7:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input [0:0]s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TID" *) input [4:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDEST" *) input [5:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [1:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TVALID [0:0] [1:1]" *) output [1:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TREADY [0:0] [1:1]" *) input [1:0]m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA [63:0] [63:0], xilinx.com:interface:axis:1.0 M01_AXIS TDATA [63:0] [127:64]" *) output [127:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB [7:0] [7:0], xilinx.com:interface:axis:1.0 M01_AXIS TSTRB [7:0] [15:8]" *) output [15:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP [7:0] [7:0], xilinx.com:interface:axis:1.0 M01_AXIS TKEEP [7:0] [15:8]" *) output [15:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TLAST [0:0] [1:1]" *) output [1:0]m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TID [4:0] [4:0], xilinx.com:interface:axis:1.0 M01_AXIS TID [4:0] [9:5]" *) output [9:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDEST [5:0] [5:0], xilinx.com:interface:axis:1.0 M01_AXIS TDEST [5:0] [11:6]" *) output [11:0]m_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TUSER [1:0] [1:0], xilinx.com:interface:axis:1.0 M01_AXIS TUSER [1:0] [3:2]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M01_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [3:0]m_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CTRL_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL_ACLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI_CTRL, ASSOCIATED_RESET s_axi_ctrl_aresetn, INSERT_VIP 0" *) input s_axi_ctrl_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_CTRL_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_ctrl_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID" *) input s_axi_ctrl_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY" *) output s_axi_ctrl_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR" *) input [6:0]s_axi_ctrl_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID" *) input s_axi_ctrl_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY" *) output s_axi_ctrl_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA" *) input [31:0]s_axi_ctrl_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID" *) output s_axi_ctrl_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY" *) input s_axi_ctrl_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP" *) output [1:0]s_axi_ctrl_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID" *) input s_axi_ctrl_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY" *) output s_axi_ctrl_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR" *) input [6:0]s_axi_ctrl_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID" *) output s_axi_ctrl_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY" *) input s_axi_ctrl_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA" *) output [31:0]s_axi_ctrl_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]s_axi_ctrl_rresp;

  wire aclk;
  wire aresetn;
  wire [127:0]m_axis_tdata;
  wire [11:0]m_axis_tdest;
  wire [9:0]m_axis_tid;
  wire [15:0]m_axis_tkeep;
  wire [1:0]m_axis_tlast;
  wire [1:0]m_axis_tready;
  wire [15:0]m_axis_tstrb;
  wire [3:0]m_axis_tuser;
  wire [1:0]m_axis_tvalid;
  wire s_axi_ctrl_aclk;
  wire [6:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_aresetn;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [6:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awready;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [1:0]s_axi_ctrl_bresp;
  wire s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [1:0]s_axi_ctrl_rresp;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wready;
  wire s_axi_ctrl_wvalid;
  wire [63:0]s_axis_tdata;
  wire [5:0]s_axis_tdest;
  wire [4:0]s_axis_tid;
  wire [7:0]s_axis_tkeep;
  wire [0:0]s_axis_tlast;
  wire [0:0]s_axis_tready;
  wire [7:0]s_axis_tstrb;
  wire [1:0]s_axis_tuser;
  wire [0:0]s_axis_tvalid;
  wire [11:0]NLW_inst_arb_dest_UNCONNECTED;
  wire [1:0]NLW_inst_arb_done_UNCONNECTED;
  wire [9:0]NLW_inst_arb_id_UNCONNECTED;
  wire [1:0]NLW_inst_arb_last_UNCONNECTED;
  wire [1:0]NLW_inst_arb_req_UNCONNECTED;
  wire [3:0]NLW_inst_arb_user_UNCONNECTED;
  wire [0:0]NLW_inst_s_decode_err_UNCONNECTED;

  (* C_ARB_ALGORITHM = "0" *) 
  (* C_ARB_ON_MAX_XFERS = "1" *) 
  (* C_ARB_ON_NUM_CYCLES = "0" *) 
  (* C_ARB_ON_TLAST = "0" *) 
  (* C_AXIS_SIGNAL_SET = "255" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "6" *) 
  (* C_AXIS_TID_WIDTH = "5" *) 
  (* C_AXIS_TUSER_WIDTH = "2" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_DECODER_REG = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_INCLUDE_ARBITER = "1" *) 
  (* C_LOG_SI_SLOTS = "1" *) 
  (* C_M_AXIS_BASETDEST_ARRAY = "12'b000001000000" *) 
  (* C_M_AXIS_CONNECTIVITY_ARRAY = "2'b11" *) 
  (* C_M_AXIS_HIGHTDEST_ARRAY = "12'b000001000000" *) 
  (* C_NUM_MI_SLOTS = "2" *) 
  (* C_NUM_SI_SLOTS = "1" *) 
  (* C_OUTPUT_REG = "0" *) 
  (* C_ROUTING_MODE = "1" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* LP_CTRL_REG_WIDTH = "15" *) 
  (* LP_MERGEDOWN_MUX = "0" *) 
  (* LP_NUM_SYNCHRONIZER_STAGES = "4" *) 
  (* P_DECODER_CONNECTIVITY_ARRAY = "2'b11" *) 
  (* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "2'b11" *) 
  (* P_TPAYLOAD_WIDTH = "94" *) 
  design_1_axis_switch_0_1_axis_switch_v1_1_19_axis_switch inst
       (.aclk(aclk),
        .aclken(1'b1),
        .arb_dest(NLW_inst_arb_dest_UNCONNECTED[11:0]),
        .arb_done(NLW_inst_arb_done_UNCONNECTED[1:0]),
        .arb_gnt({1'b0,1'b0}),
        .arb_id(NLW_inst_arb_id_UNCONNECTED[9:0]),
        .arb_last(NLW_inst_arb_last_UNCONNECTED[1:0]),
        .arb_req(NLW_inst_arb_req_UNCONNECTED[1:0]),
        .arb_sel({1'b0,1'b0}),
        .arb_user(NLW_inst_arb_user_UNCONNECTED[3:0]),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_aresetn(s_axi_ctrl_aresetn),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awready(s_axi_ctrl_awready),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bresp(s_axi_ctrl_bresp),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rresp(s_axi_ctrl_rresp),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wready(s_axi_ctrl_wready),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(NLW_inst_s_decode_err_UNCONNECTED[0]),
        .s_req_suppress(1'b0));
endmodule

(* ORIG_REF_NAME = "axis_infrastructure_v1_1_0_cdc_handshake" *) 
module design_1_axis_switch_0_1_axis_infrastructure_v1_1_0_cdc_handshake
   (src_rcv,
    D,
    E,
    \syncstages_ff_reg[3] ,
    s_axi_ctrl_aclk,
    Q,
    src_send,
    aclk,
    \FSM_onehot_state_reg[4] );
  output src_rcv;
  output [10:0]D;
  output [0:0]E;
  output [0:0]\syncstages_ff_reg[3] ;
  input s_axi_ctrl_aclk;
  input [14:0]Q;
  input src_send;
  input aclk;
  input [0:0]\FSM_onehot_state_reg[4] ;

  wire [10:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_state_reg[4] ;
  wire [14:0]Q;
  wire aclk;
  wire [13:10]\gen_static_router.gen_synch.cdc_handshake_data_out ;
  wire s_axi_ctrl_aclk;
  wire src_rcv;
  wire src_send;
  wire [0:0]\syncstages_ff_reg[3] ;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(src_rcv),
        .I1(\FSM_onehot_state_reg[4] ),
        .O(\syncstages_ff_reg[3] ));
  (* DEST_EXT_HSK = "0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_SYNC_FF = "4" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "15" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axis_switch_0_1_xpm_cdc_handshake inst_xpm_cdc_handshake
       (.dest_ack(1'b0),
        .dest_clk(aclk),
        .dest_out({D[10],\gen_static_router.gen_synch.cdc_handshake_data_out ,D[9:0]}),
        .dest_req(E),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(Q),
        .src_rcv(src_rcv),
        .src_send(src_send));
endmodule

(* ORIG_REF_NAME = "axis_infrastructure_v1_1_0_clock_synchronizer" *) 
module design_1_axis_switch_0_1_axis_infrastructure_v1_1_0_clock_synchronizer
   (p_0_in,
    src_in,
    aclk,
    aresetn);
  output p_0_in;
  input src_in;
  input aclk;
  input aresetn;

  wire aclk;
  wire aresetn;
  wire p_0_in;
  wire soft_reset;
  wire src_in;

  LUT2 #(
    .INIT(4'hB)) 
    areset_r_i_1
       (.I0(soft_reset),
        .I1(aresetn),
        .O(p_0_in));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axis_switch_0_1_xpm_cdc_single__3 inst_xpm_cdc_single
       (.dest_clk(aclk),
        .dest_out(soft_reset),
        .src_clk(1'b0),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_19_axisc_register_slice" *) 
module design_1_axis_switch_0_1_axis_register_slice_v1_1_19_axisc_register_slice
   (m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    \gen_AB_reg_slice.state_reg[1]_0 ,
    m_axis_tvalid,
    aclk,
    m_axis_tuser_3_sp_1,
    Q,
    m_axis_tready,
    m_axis_tuser_1_sp_1,
    aclken,
    areset_r,
    s_axis_tvalid,
    D);
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tstrb;
  output [15:0]m_axis_tkeep;
  output [1:0]m_axis_tlast;
  output [9:0]m_axis_tid;
  output [11:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  output \gen_AB_reg_slice.state_reg[1]_0 ;
  output [1:0]m_axis_tvalid;
  input aclk;
  input m_axis_tuser_3_sp_1;
  input [10:0]Q;
  input [1:0]m_axis_tready;
  input m_axis_tuser_1_sp_1;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input [93:0]D;

  wire [93:0]D;
  wire [10:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [1:0]dec_tready;
  wire [93:0]\gen_AB_reg_slice.payload_a ;
  wire \gen_AB_reg_slice.payload_a_1 ;
  wire [93:0]\gen_AB_reg_slice.payload_b ;
  wire \gen_AB_reg_slice.payload_b_0 ;
  wire \gen_AB_reg_slice.sel ;
  wire \gen_AB_reg_slice.sel_rd_i_1_n_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2_n_0 ;
  wire \gen_AB_reg_slice.state_reg[1]_0 ;
  wire [127:0]m_axis_tdata;
  wire [11:0]m_axis_tdest;
  wire [9:0]m_axis_tid;
  wire [15:0]m_axis_tkeep;
  wire [1:0]m_axis_tlast;
  wire [1:0]m_axis_tready;
  wire [15:0]m_axis_tstrb;
  wire [3:0]m_axis_tuser;
  wire m_axis_tuser_1_sn_1;
  wire m_axis_tuser_3_sn_1;
  wire [1:0]m_axis_tvalid;
  wire mux_tvalid_1;
  wire [0:0]s_axis_tvalid;

  assign m_axis_tuser_1_sn_1 = m_axis_tuser_1_sp_1;
  assign m_axis_tuser_3_sn_1 = m_axis_tuser_3_sp_1;
  LUT4 #(
    .INIT(16'h008A)) 
    \gen_AB_reg_slice.payload_a[93]_i_1 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(mux_tvalid_1),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_a_1 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_a [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_a [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_a [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_a [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_a [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_a [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_a [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_a [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_a [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_a [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_a [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_a [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_a [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_a [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_a [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_a [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_a [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_a [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_a [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_a [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_a [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_a [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_a [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_a [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_a [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_a [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_a [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_a [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_a [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_a [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_a [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_a [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_a [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_a [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[40] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[40]),
        .Q(\gen_AB_reg_slice.payload_a [40]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[41] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[41]),
        .Q(\gen_AB_reg_slice.payload_a [41]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[42] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[42]),
        .Q(\gen_AB_reg_slice.payload_a [42]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[43] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[43]),
        .Q(\gen_AB_reg_slice.payload_a [43]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[44] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[44]),
        .Q(\gen_AB_reg_slice.payload_a [44]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[45] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[45]),
        .Q(\gen_AB_reg_slice.payload_a [45]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[46] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[46]),
        .Q(\gen_AB_reg_slice.payload_a [46]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[47] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[47]),
        .Q(\gen_AB_reg_slice.payload_a [47]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[48] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[48]),
        .Q(\gen_AB_reg_slice.payload_a [48]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[49] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[49]),
        .Q(\gen_AB_reg_slice.payload_a [49]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_a [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[50] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[50]),
        .Q(\gen_AB_reg_slice.payload_a [50]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[51] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[51]),
        .Q(\gen_AB_reg_slice.payload_a [51]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[52] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[52]),
        .Q(\gen_AB_reg_slice.payload_a [52]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[53] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[53]),
        .Q(\gen_AB_reg_slice.payload_a [53]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[54] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[54]),
        .Q(\gen_AB_reg_slice.payload_a [54]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[55] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[55]),
        .Q(\gen_AB_reg_slice.payload_a [55]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[56] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[56]),
        .Q(\gen_AB_reg_slice.payload_a [56]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[57] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[57]),
        .Q(\gen_AB_reg_slice.payload_a [57]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[58] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[58]),
        .Q(\gen_AB_reg_slice.payload_a [58]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[59] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[59]),
        .Q(\gen_AB_reg_slice.payload_a [59]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_a [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[60] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[60]),
        .Q(\gen_AB_reg_slice.payload_a [60]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[61] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[61]),
        .Q(\gen_AB_reg_slice.payload_a [61]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[62] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[62]),
        .Q(\gen_AB_reg_slice.payload_a [62]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[63] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[63]),
        .Q(\gen_AB_reg_slice.payload_a [63]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[64] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[64]),
        .Q(\gen_AB_reg_slice.payload_a [64]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[65] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[65]),
        .Q(\gen_AB_reg_slice.payload_a [65]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[66] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[66]),
        .Q(\gen_AB_reg_slice.payload_a [66]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[67] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[67]),
        .Q(\gen_AB_reg_slice.payload_a [67]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[68] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[68]),
        .Q(\gen_AB_reg_slice.payload_a [68]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[69] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[69]),
        .Q(\gen_AB_reg_slice.payload_a [69]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_a [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[70] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[70]),
        .Q(\gen_AB_reg_slice.payload_a [70]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[71] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[71]),
        .Q(\gen_AB_reg_slice.payload_a [71]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[72] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[72]),
        .Q(\gen_AB_reg_slice.payload_a [72]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[73] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[73]),
        .Q(\gen_AB_reg_slice.payload_a [73]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[74] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[74]),
        .Q(\gen_AB_reg_slice.payload_a [74]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[75] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[75]),
        .Q(\gen_AB_reg_slice.payload_a [75]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[76] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[76]),
        .Q(\gen_AB_reg_slice.payload_a [76]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[77] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[77]),
        .Q(\gen_AB_reg_slice.payload_a [77]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[78] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[78]),
        .Q(\gen_AB_reg_slice.payload_a [78]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[79] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[79]),
        .Q(\gen_AB_reg_slice.payload_a [79]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_a [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[80] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[80]),
        .Q(\gen_AB_reg_slice.payload_a [80]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[81] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[81]),
        .Q(\gen_AB_reg_slice.payload_a [81]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[82] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[82]),
        .Q(\gen_AB_reg_slice.payload_a [82]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[83] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[83]),
        .Q(\gen_AB_reg_slice.payload_a [83]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[84] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[84]),
        .Q(\gen_AB_reg_slice.payload_a [84]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[85] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[85]),
        .Q(\gen_AB_reg_slice.payload_a [85]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[86] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[86]),
        .Q(\gen_AB_reg_slice.payload_a [86]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[87] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[87]),
        .Q(\gen_AB_reg_slice.payload_a [87]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[88] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[88]),
        .Q(\gen_AB_reg_slice.payload_a [88]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[89] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[89]),
        .Q(\gen_AB_reg_slice.payload_a [89]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_a [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[90] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[90]),
        .Q(\gen_AB_reg_slice.payload_a [90]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[91] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[91]),
        .Q(\gen_AB_reg_slice.payload_a [91]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[92] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[92]),
        .Q(\gen_AB_reg_slice.payload_a [92]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[93] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[93]),
        .Q(\gen_AB_reg_slice.payload_a [93]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_a [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8A00)) 
    \gen_AB_reg_slice.payload_b[93]_i_1 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(mux_tvalid_1),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_b_0 ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_b [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_b [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_b [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_b [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_b [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_b [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_b [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_b [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_b [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_b [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_b [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_b [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_b [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_b [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_b [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_b [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_b [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_b [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_b [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_b [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_b [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_b [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_b [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_b [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_b [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_b [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_b [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_b [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_b [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_b [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_b [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_b [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_b [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_b [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[40] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[40]),
        .Q(\gen_AB_reg_slice.payload_b [40]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[41] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[41]),
        .Q(\gen_AB_reg_slice.payload_b [41]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[42] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[42]),
        .Q(\gen_AB_reg_slice.payload_b [42]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[43] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[43]),
        .Q(\gen_AB_reg_slice.payload_b [43]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[44] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[44]),
        .Q(\gen_AB_reg_slice.payload_b [44]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[45] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[45]),
        .Q(\gen_AB_reg_slice.payload_b [45]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[46] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[46]),
        .Q(\gen_AB_reg_slice.payload_b [46]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[47] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[47]),
        .Q(\gen_AB_reg_slice.payload_b [47]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[48] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[48]),
        .Q(\gen_AB_reg_slice.payload_b [48]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[49] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[49]),
        .Q(\gen_AB_reg_slice.payload_b [49]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_b [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[50] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[50]),
        .Q(\gen_AB_reg_slice.payload_b [50]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[51] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[51]),
        .Q(\gen_AB_reg_slice.payload_b [51]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[52] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[52]),
        .Q(\gen_AB_reg_slice.payload_b [52]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[53] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[53]),
        .Q(\gen_AB_reg_slice.payload_b [53]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[54] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[54]),
        .Q(\gen_AB_reg_slice.payload_b [54]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[55] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[55]),
        .Q(\gen_AB_reg_slice.payload_b [55]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[56] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[56]),
        .Q(\gen_AB_reg_slice.payload_b [56]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[57] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[57]),
        .Q(\gen_AB_reg_slice.payload_b [57]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[58] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[58]),
        .Q(\gen_AB_reg_slice.payload_b [58]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[59] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[59]),
        .Q(\gen_AB_reg_slice.payload_b [59]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_b [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[60] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[60]),
        .Q(\gen_AB_reg_slice.payload_b [60]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[61] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[61]),
        .Q(\gen_AB_reg_slice.payload_b [61]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[62] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[62]),
        .Q(\gen_AB_reg_slice.payload_b [62]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[63] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[63]),
        .Q(\gen_AB_reg_slice.payload_b [63]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[64] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[64]),
        .Q(\gen_AB_reg_slice.payload_b [64]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[65] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[65]),
        .Q(\gen_AB_reg_slice.payload_b [65]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[66] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[66]),
        .Q(\gen_AB_reg_slice.payload_b [66]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[67] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[67]),
        .Q(\gen_AB_reg_slice.payload_b [67]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[68] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[68]),
        .Q(\gen_AB_reg_slice.payload_b [68]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[69] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[69]),
        .Q(\gen_AB_reg_slice.payload_b [69]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_b [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[70] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[70]),
        .Q(\gen_AB_reg_slice.payload_b [70]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[71] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[71]),
        .Q(\gen_AB_reg_slice.payload_b [71]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[72] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[72]),
        .Q(\gen_AB_reg_slice.payload_b [72]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[73] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[73]),
        .Q(\gen_AB_reg_slice.payload_b [73]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[74] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[74]),
        .Q(\gen_AB_reg_slice.payload_b [74]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[75] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[75]),
        .Q(\gen_AB_reg_slice.payload_b [75]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[76] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[76]),
        .Q(\gen_AB_reg_slice.payload_b [76]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[77] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[77]),
        .Q(\gen_AB_reg_slice.payload_b [77]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[78] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[78]),
        .Q(\gen_AB_reg_slice.payload_b [78]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[79] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[79]),
        .Q(\gen_AB_reg_slice.payload_b [79]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_b [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[80] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[80]),
        .Q(\gen_AB_reg_slice.payload_b [80]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[81] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[81]),
        .Q(\gen_AB_reg_slice.payload_b [81]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[82] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[82]),
        .Q(\gen_AB_reg_slice.payload_b [82]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[83] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[83]),
        .Q(\gen_AB_reg_slice.payload_b [83]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[84] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[84]),
        .Q(\gen_AB_reg_slice.payload_b [84]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[85] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[85]),
        .Q(\gen_AB_reg_slice.payload_b [85]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[86] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[86]),
        .Q(\gen_AB_reg_slice.payload_b [86]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[87] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[87]),
        .Q(\gen_AB_reg_slice.payload_b [87]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[88] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[88]),
        .Q(\gen_AB_reg_slice.payload_b [88]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[89] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[89]),
        .Q(\gen_AB_reg_slice.payload_b [89]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_b [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[90] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[90]),
        .Q(\gen_AB_reg_slice.payload_b [90]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[91] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[91]),
        .Q(\gen_AB_reg_slice.payload_b [91]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[92] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[92]),
        .Q(\gen_AB_reg_slice.payload_b [92]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[93] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[93]),
        .Q(\gen_AB_reg_slice.payload_b [93]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_b [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gen_AB_reg_slice.sel_rd_i_1 
       (.I0(dec_tready[0]),
        .I1(dec_tready[1]),
        .I2(mux_tvalid_1),
        .I3(aclken),
        .I4(\gen_AB_reg_slice.sel ),
        .O(\gen_AB_reg_slice.sel_rd_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.sel ),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1 
       (.I0(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I1(aclken),
        .I2(s_axis_tvalid),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD8F8F8F8F0F0F0F0)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(mux_tvalid_1),
        .I3(dec_tready[1]),
        .I4(dec_tready[0]),
        .I5(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(areset_r),
        .I1(Q[10]),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F7F7FAA0A0A0A)) 
    \gen_AB_reg_slice.state[1]_i_2 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(mux_tvalid_1),
        .I3(dec_tready[1]),
        .I4(dec_tready[0]),
        .I5(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \gen_AB_reg_slice.state[1]_i_3 
       (.I0(Q[9]),
        .I1(m_axis_tready[1]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[5]),
        .O(dec_tready[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \gen_AB_reg_slice.state[1]_i_4 
       (.I0(Q[8]),
        .I1(m_axis_tready[0]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(dec_tready[0]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(mux_tvalid_1),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg[1]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [0]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [0]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[100]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [36]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [36]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[100]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[101]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [37]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [37]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[101]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[102]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [38]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [38]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[102]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[103]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [39]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [39]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[103]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[104]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [40]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [40]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[104]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[105]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [41]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [41]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[105]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[106]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [42]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [42]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[106]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[107]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [43]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [43]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[107]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[108]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [44]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [44]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[108]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[109]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [45]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [45]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[109]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [10]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [10]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[110]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [46]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [46]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[110]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[111]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [47]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [47]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[111]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[112]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [48]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [48]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[112]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[113]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [49]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [49]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[113]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[114]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [50]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [50]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[114]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[115]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [51]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [51]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[115]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[116]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [52]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [52]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[116]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[117]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [53]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [53]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[117]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[118]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [54]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [54]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[118]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[119]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [55]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [55]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[119]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [11]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [11]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[120]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [56]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [56]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[120]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[121]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [57]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [57]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[121]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[122]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [58]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [58]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[122]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[123]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [59]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [59]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[123]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[124]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [60]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [60]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[124]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[125]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [61]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [61]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[125]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[126]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [62]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [62]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[126]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[127]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [63]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [63]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[127]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [12]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [12]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [13]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [13]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [14]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [14]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [15]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [15]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [16]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [16]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [17]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [17]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [18]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [18]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [19]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [19]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [1]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [1]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [20]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [20]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [21]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [21]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [22]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [22]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [23]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [23]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [24]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [24]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [25]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [25]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [26]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [26]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [27]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [27]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [28]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [28]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [29]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [29]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [2]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [2]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [30]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [30]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [31]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [31]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [32]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [32]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[33]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [33]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [33]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[34]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [34]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [34]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[35]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [35]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [35]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[36]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [36]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [36]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[37]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [37]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [37]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[38]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [38]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [38]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[39]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [39]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [39]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [3]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [3]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[40]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [40]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [40]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[41]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [41]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [41]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[42]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [42]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [42]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[43]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [43]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [43]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[44]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [44]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [44]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[45]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [45]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [45]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[46]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [46]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [46]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[47]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [47]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [47]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [48]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [48]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[49]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [49]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [49]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [4]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [4]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[50]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [50]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [50]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[51]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [51]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [51]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[52]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [52]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [52]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[53]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [53]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [53]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[54]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [54]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [54]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[55]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [55]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [55]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[56]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [56]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [56]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[57]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [57]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [57]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[58]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [58]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [58]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[59]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [59]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [59]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [5]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [5]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[60]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [60]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [60]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[61]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [61]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [61]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[62]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [62]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [62]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[63]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [63]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [63]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[63]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[64]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [0]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [0]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[64]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[65]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [1]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [1]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[65]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[66]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [2]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [2]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[66]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[67]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [3]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [3]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[67]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[68]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [4]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [4]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[68]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[69]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [5]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [5]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[69]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [6]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [6]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[70]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [6]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [6]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[70]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[71]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [7]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [7]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[71]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[72]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [8]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [8]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[72]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[73]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [9]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [9]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[73]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[74]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [10]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [10]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[74]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[75]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [11]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [11]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[75]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[76]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [12]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [12]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[76]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[77]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [13]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [13]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[77]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[78]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [14]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [14]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[78]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[79]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [15]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [15]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[79]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [7]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [7]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[80]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [16]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [16]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[80]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[81]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [17]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [17]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[81]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[82]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [18]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [18]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[82]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[83]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [19]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [19]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[83]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[84]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [20]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [20]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[84]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[85]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [21]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [21]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[85]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[86]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [22]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [22]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[86]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[87]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [23]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [23]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[87]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[88]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [24]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [24]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[88]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[89]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [25]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [25]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[89]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [8]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [8]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[90]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [26]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [26]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[90]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[91]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [27]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [27]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[91]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[92]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [28]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [28]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[92]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[93]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [29]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [29]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[93]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[94]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [30]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [30]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[94]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[95]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [31]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [31]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[95]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[96]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [32]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [32]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[96]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[97]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [33]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [33]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[97]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[98]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [34]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [34]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[98]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[99]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [35]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [35]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdata[99]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [9]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [9]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdest[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [86]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [86]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdest[0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdest[10]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [90]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [90]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdest[10]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdest[11]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [91]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [91]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdest[11]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdest[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [87]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [87]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdest[1]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdest[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [88]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [88]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdest[2]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdest[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [89]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [89]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdest[3]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdest[4]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [90]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [90]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdest[4]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdest[5]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [91]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [91]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tdest[5]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdest[6]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [86]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [86]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdest[6]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdest[7]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [87]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [87]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdest[7]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdest[8]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [88]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [88]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdest[8]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdest[9]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [89]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [89]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tdest[9]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tid[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [81]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [81]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tid[0]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tid[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [82]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [82]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tid[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tid[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [83]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [83]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tid[2]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tid[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [84]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [84]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tid[3]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tid[4]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [85]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [85]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tid[4]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tid[5]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [81]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [81]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tid[5]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tid[6]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [82]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [82]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tid[6]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tid[7]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [83]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [83]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tid[7]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tid[8]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [84]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [84]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tid[8]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tid[9]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [85]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [85]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tid[9]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [72]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [72]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tkeep[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[10]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [74]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [74]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tkeep[10]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[11]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [75]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [75]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tkeep[11]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[12]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [76]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [76]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tkeep[12]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[13]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [77]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [77]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tkeep[13]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[14]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [78]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [78]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tkeep[14]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[15]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [79]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [79]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tkeep[15]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [73]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [73]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tkeep[1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [74]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [74]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tkeep[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [75]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [75]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tkeep[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[4]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [76]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [76]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tkeep[4]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[5]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [77]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [77]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tkeep[5]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[6]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [78]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [78]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tkeep[6]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[7]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [79]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [79]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tkeep[7]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[8]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [72]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [72]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tkeep[8]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[9]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [73]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [73]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tkeep[9]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tlast[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [80]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [80]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tlast[0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tlast[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [80]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [80]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tlast[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [64]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [64]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tstrb[0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[10]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [66]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [66]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tstrb[10]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[11]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [67]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [67]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tstrb[11]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[12]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [68]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [68]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tstrb[12]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[13]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [69]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [69]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tstrb[13]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[14]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [70]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [70]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tstrb[14]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[15]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [71]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [71]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tstrb[15]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [65]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [65]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tstrb[1]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [66]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [66]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tstrb[2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [67]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [67]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tstrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[4]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [68]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [68]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tstrb[4]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[5]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [69]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [69]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tstrb[5]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[6]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [70]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [70]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tstrb[6]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[7]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [71]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [71]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tstrb[7]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[8]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [64]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [64]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tstrb[8]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tstrb[9]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [65]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [65]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tstrb[9]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tuser[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [92]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [92]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tuser[0]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tuser[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [93]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [93]),
        .I3(m_axis_tuser_1_sn_1),
        .O(m_axis_tuser[1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tuser[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [92]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [92]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tuser[2]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tuser[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_a [93]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_b [93]),
        .I3(m_axis_tuser_3_sn_1),
        .O(m_axis_tuser[3]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tvalid[0]_INST_0 
       (.I0(mux_tvalid_1),
        .I1(Q[8]),
        .O(m_axis_tvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tvalid[1]_INST_0 
       (.I0(mux_tvalid_1),
        .I1(Q[9]),
        .O(m_axis_tvalid[1]));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_axi_ctrl_read" *) 
module design_1_axis_switch_0_1_axis_switch_v1_1_19_axi_ctrl_read
   (s_axi_ctrl_rdata,
    out0,
    Q,
    \data_reg[31]_0 ,
    \data_reg[31]_1 ,
    s_axi_ctrl_araddr,
    s_axi_ctrl_aclk,
    SR,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready);
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]out0;
  input [31:0]Q;
  input [31:0]\data_reg[31]_0 ;
  input [31:0]\data_reg[31]_1 ;
  input [4:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_aclk;
  input [0:0]SR;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire \addr_r_reg_n_0_[6] ;
  wire \data[0]_i_1_n_0 ;
  wire \data[10]_i_1_n_0 ;
  wire \data[11]_i_1_n_0 ;
  wire \data[12]_i_1_n_0 ;
  wire \data[13]_i_1_n_0 ;
  wire \data[14]_i_1_n_0 ;
  wire \data[15]_i_1_n_0 ;
  wire \data[16]_i_1_n_0 ;
  wire \data[17]_i_1_n_0 ;
  wire \data[18]_i_1_n_0 ;
  wire \data[19]_i_1_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[20]_i_1_n_0 ;
  wire \data[21]_i_1_n_0 ;
  wire \data[22]_i_1_n_0 ;
  wire \data[23]_i_1_n_0 ;
  wire \data[24]_i_1_n_0 ;
  wire \data[25]_i_1_n_0 ;
  wire \data[26]_i_1_n_0 ;
  wire \data[27]_i_1_n_0 ;
  wire \data[28]_i_1_n_0 ;
  wire \data[29]_i_1_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[30]_i_1_n_0 ;
  wire \data[30]_i_2_n_0 ;
  wire \data[30]_i_3_n_0 ;
  wire \data[30]_i_4_n_0 ;
  wire \data[31]_i_1_n_0 ;
  wire \data[31]_i_2_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire \data[8]_i_1_n_0 ;
  wire \data[9]_i_1_n_0 ;
  wire [31:0]\data_reg[31]_0 ;
  wire [31:0]\data_reg[31]_1 ;
  wire [1:0]out0;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [3:0]sel0;

  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_ctrl_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_axi_ctrl_rready),
        .I3(out0[1]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_arvalid),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(out0[0]),
        .I1(s_axi_ctrl_rready),
        .I2(out0[1]),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "SM_READ:010,SM_RESP:100,SM_IDLE:001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "SM_READ:010,SM_RESP:100,SM_IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(out0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "SM_READ:010,SM_RESP:100,SM_IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(out0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[0]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[1]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[2]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[3]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[4]),
        .Q(\addr_r_reg_n_0_[6] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[0]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [0]),
        .I4(\data_reg[31]_1 [0]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[10]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[10]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [10]),
        .I4(\data_reg[31]_1 [10]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[11]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[11]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [11]),
        .I4(\data_reg[31]_1 [11]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[12]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[12]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [12]),
        .I4(\data_reg[31]_1 [12]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[13]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[13]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [13]),
        .I4(\data_reg[31]_1 [13]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[14]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[14]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [14]),
        .I4(\data_reg[31]_1 [14]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[15]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[15]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [15]),
        .I4(\data_reg[31]_1 [15]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[16]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[16]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [16]),
        .I4(\data_reg[31]_1 [16]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[17]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[17]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [17]),
        .I4(\data_reg[31]_1 [17]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[18]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[18]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [18]),
        .I4(\data_reg[31]_1 [18]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[19]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[19]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [19]),
        .I4(\data_reg[31]_1 [19]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[1]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [1]),
        .I4(\data_reg[31]_1 [1]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[20]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[20]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [20]),
        .I4(\data_reg[31]_1 [20]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[21]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[21]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [21]),
        .I4(\data_reg[31]_1 [21]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[22]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[22]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [22]),
        .I4(\data_reg[31]_1 [22]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[23]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[23]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [23]),
        .I4(\data_reg[31]_1 [23]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[24]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[24]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [24]),
        .I4(\data_reg[31]_1 [24]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[25]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[25]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [25]),
        .I4(\data_reg[31]_1 [25]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[26]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[26]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [26]),
        .I4(\data_reg[31]_1 [26]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[27]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[27]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [27]),
        .I4(\data_reg[31]_1 [27]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[28]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[28]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [28]),
        .I4(\data_reg[31]_1 [28]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[29]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[29]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [29]),
        .I4(\data_reg[31]_1 [29]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[2]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [2]),
        .I4(\data_reg[31]_1 [2]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[30]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[30]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [30]),
        .I4(\data_reg[31]_1 [30]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \data[30]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\addr_r_reg_n_0_[6] ),
        .O(\data[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \data[30]_i_3 
       (.I0(sel0[0]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\addr_r_reg_n_0_[6] ),
        .O(\data[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \data[30]_i_4 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .O(\data[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC8CFC8CCC8C3C8C0)) 
    \data[31]_i_1 
       (.I0(\data_reg[31]_1 [31]),
        .I1(\addr_r_reg_n_0_[6] ),
        .I2(\data[31]_i_2_n_0 ),
        .I3(sel0[0]),
        .I4(Q[31]),
        .I5(\data_reg[31]_0 [31]),
        .O(\data[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \data[31]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .O(\data[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[3]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [3]),
        .I4(\data_reg[31]_1 [3]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[4]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [4]),
        .I4(\data_reg[31]_1 [4]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[5]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [5]),
        .I4(\data_reg[31]_1 [5]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[6]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [6]),
        .I4(\data_reg[31]_1 [6]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[7]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [7]),
        .I4(\data_reg[31]_1 [7]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[8]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [8]),
        .I4(\data_reg[31]_1 [8]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[9]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(Q[9]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data_reg[31]_0 [9]),
        .I4(\data_reg[31]_1 [9]),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[0]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[10]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[11]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[12]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[13]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[14]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[15]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[16]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[17]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[18]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[19]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[1]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[20]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[21]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[22]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[23]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[24]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[25]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[26]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[27]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[28]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[29]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[2]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[30]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[31]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[3]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[4]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[5]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[6]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[7]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[8]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[9]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_axi_ctrl_top" *) 
module design_1_axis_switch_0_1_axis_switch_v1_1_19_axi_ctrl_top
   (\gen_reg[0].reg_data_reg[31] ,
    Q,
    \gen_reg[1].reg_data_reg[63] ,
    \gen_reg[1].reg_data_reg[35] ,
    \gen_reg[0].reg_data_reg[1] ,
    \state_reg[1] ,
    s_axi_ctrl_rdata,
    \FSM_onehot_state_reg[2] ,
    s_axi_ctrl_bready,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_awvalid,
    \gen_reg[0].reg_data_reg[0] ,
    s_axi_ctrl_wdata,
    s_axi_ctrl_aclk,
    SR,
    s_axi_ctrl_araddr,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready);
  output \gen_reg[0].reg_data_reg[31] ;
  output [3:0]Q;
  output \gen_reg[1].reg_data_reg[63] ;
  output [3:0]\gen_reg[1].reg_data_reg[35] ;
  output [0:0]\gen_reg[0].reg_data_reg[1] ;
  output [1:0]\state_reg[1] ;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]\FSM_onehot_state_reg[2] ;
  input s_axi_ctrl_bready;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_awvalid;
  input [0:0]\gen_reg[0].reg_data_reg[0] ;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_aclk;
  input [0:0]SR;
  input [4:0]s_axi_ctrl_araddr;
  input [4:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;

  wire [1:0]\FSM_onehot_state_reg[2] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [31:0]data_r;
  wire [31:4]\gen_reg[0].reg_data_reg ;
  wire [0:0]\gen_reg[0].reg_data_reg[0] ;
  wire [0:0]\gen_reg[0].reg_data_reg[1] ;
  wire \gen_reg[0].reg_data_reg_31_sn_1 ;
  wire [31:0]\gen_reg[0].reg_data_reg__0 ;
  wire [31:4]\gen_reg[1].reg_data_reg ;
  wire [3:0]\gen_reg[1].reg_data_reg[35] ;
  wire \gen_reg[1].reg_data_reg[63] ;
  wire inst_axi_ctrl_write_n_2;
  wire p_1_out;
  wire p_3_out;
  wire [31:0]rb0_wdata;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [4:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [1:0]\state_reg[1] ;

  assign \gen_reg[0].reg_data_reg[31]  = \gen_reg[0].reg_data_reg_31_sn_1 ;
  design_1_axis_switch_0_1_axis_switch_v1_1_19_axi_ctrl_read inst_axi_ctrl_read
       (.Q({\gen_reg[0].reg_data_reg__0 [31:2],\gen_reg[0].reg_data_reg[1] ,\gen_reg[0].reg_data_reg__0 [0]}),
        .SR(SR),
        .\data_reg[31]_0 ({\gen_reg[0].reg_data_reg ,Q}),
        .\data_reg[31]_1 ({\gen_reg[1].reg_data_reg ,\gen_reg[1].reg_data_reg[35] }),
        .out0(\FSM_onehot_state_reg[2] ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready));
  design_1_axis_switch_0_1_axis_switch_v1_1_19_axi_ctrl_write inst_axi_ctrl_write
       (.D(rb0_wdata),
        .E(inst_axi_ctrl_write_n_2),
        .Q(\gen_reg[0].reg_data_reg[1] ),
        .SR(SR),
        .\addr_r_reg[3]_0 (p_1_out),
        .\addr_r_reg[3]_1 (p_3_out),
        .\data_r_reg[31]_0 (data_r),
        .\gen_reg[0].reg_data_reg[0] (\gen_reg[0].reg_data_reg[0] ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .\state_reg[1]_0 (\state_reg[1] ));
  design_1_axis_switch_0_1_axis_switch_v1_1_19_reg_bank_16x32 inst_reg_bank_0
       (.D(rb0_wdata),
        .E(inst_axi_ctrl_write_n_2),
        .Q({\gen_reg[0].reg_data_reg__0 [31:2],\gen_reg[0].reg_data_reg[1] ,\gen_reg[0].reg_data_reg__0 [0]}),
        .SR(SR),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk));
  design_1_axis_switch_0_1_axis_switch_v1_1_19_reg_bank_16x32__parameterized0 inst_reg_bank_1
       (.D(data_r),
        .E(p_3_out),
        .Q({\gen_reg[0].reg_data_reg ,Q}),
        .SR(SR),
        .\gen_reg[0].reg_data_reg[31]_0 (\gen_reg[0].reg_data_reg_31_sn_1 ),
        .\gen_reg[1].reg_data_reg[63]_0 (\gen_reg[1].reg_data_reg[63] ),
        .\gen_reg[1].reg_data_reg[63]_1 ({\gen_reg[1].reg_data_reg ,\gen_reg[1].reg_data_reg[35] }),
        .\gen_reg[1].reg_data_reg[63]_2 (p_1_out),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_axi_ctrl_write" *) 
module design_1_axis_switch_0_1_axis_switch_v1_1_19_axi_ctrl_write
   (\state_reg[1]_0 ,
    E,
    \addr_r_reg[3]_0 ,
    \addr_r_reg[3]_1 ,
    D,
    \data_r_reg[31]_0 ,
    Q,
    s_axi_ctrl_bready,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_awvalid,
    \gen_reg[0].reg_data_reg[0] ,
    s_axi_ctrl_wdata,
    s_axi_ctrl_aclk,
    SR,
    s_axi_ctrl_awaddr);
  output [1:0]\state_reg[1]_0 ;
  output [0:0]E;
  output [0:0]\addr_r_reg[3]_0 ;
  output [0:0]\addr_r_reg[3]_1 ;
  output [31:0]D;
  output [31:0]\data_r_reg[31]_0 ;
  input [0:0]Q;
  input s_axi_ctrl_bready;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_awvalid;
  input [0:0]\gen_reg[0].reg_data_reg[0] ;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_aclk;
  input [0:0]SR;
  input [4:0]s_axi_ctrl_awaddr;

  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]\addr_r_reg[3]_0 ;
  wire [0:0]\addr_r_reg[3]_1 ;
  wire [31:0]\data_r_reg[31]_0 ;
  wire \gen_reg[0].reg_data[31]_i_3_n_0 ;
  wire [0:0]\gen_reg[0].reg_data_reg[0] ;
  wire p_0_in;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [2:0]state;
  wire [1:0]\state_reg[1]_0 ;
  wire \state_reg_n_0_[2] ;
  wire [3:0]write_addr;

  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[0]),
        .Q(write_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[1]),
        .Q(write_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[2]),
        .Q(write_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[3]),
        .Q(write_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[4]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\data_r_reg[31]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\data_r_reg[31]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\data_r_reg[31]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\data_r_reg[31]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\data_r_reg[31]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\data_r_reg[31]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\data_r_reg[31]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[16]),
        .Q(\data_r_reg[31]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[17]),
        .Q(\data_r_reg[31]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[18]),
        .Q(\data_r_reg[31]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[19]),
        .Q(\data_r_reg[31]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\data_r_reg[31]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[20]),
        .Q(\data_r_reg[31]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[21]),
        .Q(\data_r_reg[31]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[22]),
        .Q(\data_r_reg[31]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[23]),
        .Q(\data_r_reg[31]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[24]),
        .Q(\data_r_reg[31]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[25]),
        .Q(\data_r_reg[31]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[26]),
        .Q(\data_r_reg[31]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[27]),
        .Q(\data_r_reg[31]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[28]),
        .Q(\data_r_reg[31]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[29]),
        .Q(\data_r_reg[31]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\data_r_reg[31]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[30]),
        .Q(\data_r_reg[31]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[31]),
        .Q(\data_r_reg[31]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\data_r_reg[31]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\data_r_reg[31]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\data_r_reg[31]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\data_r_reg[31]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\data_r_reg[31]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\data_r_reg[31]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\data_r_reg[31]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[0]_i_1 
       (.I0(\data_r_reg[31]_0 [0]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[10]_i_1 
       (.I0(\data_r_reg[31]_0 [10]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[11]_i_1 
       (.I0(\data_r_reg[31]_0 [11]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[12]_i_1 
       (.I0(\data_r_reg[31]_0 [12]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[13]_i_1 
       (.I0(\data_r_reg[31]_0 [13]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[14]_i_1 
       (.I0(\data_r_reg[31]_0 [14]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[15]_i_1 
       (.I0(\data_r_reg[31]_0 [15]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[16]_i_1 
       (.I0(\data_r_reg[31]_0 [16]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[17]_i_1 
       (.I0(\data_r_reg[31]_0 [17]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[18]_i_1 
       (.I0(\data_r_reg[31]_0 [18]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[19]_i_1 
       (.I0(\data_r_reg[31]_0 [19]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[1]_i_1 
       (.I0(\data_r_reg[31]_0 [1]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[20]_i_1 
       (.I0(\data_r_reg[31]_0 [20]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[21]_i_1 
       (.I0(\data_r_reg[31]_0 [21]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[22]_i_1 
       (.I0(\data_r_reg[31]_0 [22]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[23]_i_1 
       (.I0(\data_r_reg[31]_0 [23]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[24]_i_1 
       (.I0(\data_r_reg[31]_0 [24]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[25]_i_1 
       (.I0(\data_r_reg[31]_0 [25]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[26]_i_1 
       (.I0(\data_r_reg[31]_0 [26]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[27]_i_1 
       (.I0(\data_r_reg[31]_0 [27]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[28]_i_1 
       (.I0(\data_r_reg[31]_0 [28]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[29]_i_1 
       (.I0(\data_r_reg[31]_0 [29]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[2]_i_1 
       (.I0(\data_r_reg[31]_0 [2]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[30]_i_1 
       (.I0(\data_r_reg[31]_0 [30]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hFF10)) 
    \gen_reg[0].reg_data[31]_i_1 
       (.I0(write_addr[3]),
        .I1(p_0_in),
        .I2(\gen_reg[0].reg_data[31]_i_3_n_0 ),
        .I3(\gen_reg[0].reg_data_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \gen_reg[0].reg_data[31]_i_1__0 
       (.I0(write_addr[1]),
        .I1(write_addr[2]),
        .I2(\state_reg[1]_0 [0]),
        .I3(write_addr[0]),
        .I4(write_addr[3]),
        .I5(p_0_in),
        .O(\addr_r_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[31]_i_2 
       (.I0(\data_r_reg[31]_0 [31]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[31]));
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_reg[0].reg_data[31]_i_3 
       (.I0(write_addr[0]),
        .I1(\state_reg[1]_0 [0]),
        .I2(write_addr[2]),
        .I3(write_addr[1]),
        .O(\gen_reg[0].reg_data[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[3]_i_1 
       (.I0(\data_r_reg[31]_0 [3]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[4]_i_1 
       (.I0(\data_r_reg[31]_0 [4]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[5]_i_1 
       (.I0(\data_r_reg[31]_0 [5]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[6]_i_1 
       (.I0(\data_r_reg[31]_0 [6]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[7]_i_1 
       (.I0(\data_r_reg[31]_0 [7]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[8]_i_1 
       (.I0(\data_r_reg[31]_0 [8]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[9]_i_1 
       (.I0(\data_r_reg[31]_0 [9]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \gen_reg[1].reg_data[63]_i_1 
       (.I0(write_addr[1]),
        .I1(write_addr[2]),
        .I2(\state_reg[1]_0 [0]),
        .I3(write_addr[0]),
        .I4(write_addr[3]),
        .I5(p_0_in),
        .O(\addr_r_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \state[0]_i_1 
       (.I0(s_axi_ctrl_wvalid),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg[1]_0 [0]),
        .I3(\state_reg[1]_0 [1]),
        .I4(Q),
        .I5(s_axi_ctrl_awvalid),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h0011000C)) 
    \state[1]_i_1 
       (.I0(s_axi_ctrl_bready),
        .I1(\state_reg_n_0_[2] ),
        .I2(Q),
        .I3(\state_reg[1]_0 [0]),
        .I4(\state_reg[1]_0 [1]),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h0058)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(Q),
        .I2(\state_reg[1]_0 [0]),
        .I3(\state_reg[1]_0 [1]),
        .O(state[2]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(\state_reg[1]_0 [0]),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(\state_reg[1]_0 [1]),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(SR));
endmodule

(* C_ARB_ALGORITHM = "0" *) (* C_ARB_ON_MAX_XFERS = "1" *) (* C_ARB_ON_NUM_CYCLES = "0" *) 
(* C_ARB_ON_TLAST = "0" *) (* C_AXIS_SIGNAL_SET = "255" *) (* C_AXIS_TDATA_WIDTH = "64" *) 
(* C_AXIS_TDEST_WIDTH = "6" *) (* C_AXIS_TID_WIDTH = "5" *) (* C_AXIS_TUSER_WIDTH = "2" *) 
(* C_COMMON_CLOCK = "0" *) (* C_DECODER_REG = "1" *) (* C_FAMILY = "zynq" *) 
(* C_INCLUDE_ARBITER = "1" *) (* C_LOG_SI_SLOTS = "1" *) (* C_M_AXIS_BASETDEST_ARRAY = "12'b000001000000" *) 
(* C_M_AXIS_CONNECTIVITY_ARRAY = "2'b11" *) (* C_M_AXIS_HIGHTDEST_ARRAY = "12'b000001000000" *) (* C_NUM_MI_SLOTS = "2" *) 
(* C_NUM_SI_SLOTS = "1" *) (* C_OUTPUT_REG = "0" *) (* C_ROUTING_MODE = "1" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CTRL_REG_WIDTH = "15" *) (* LP_MERGEDOWN_MUX = "0" *) 
(* LP_NUM_SYNCHRONIZER_STAGES = "4" *) (* ORIG_REF_NAME = "axis_switch_v1_1_19_axis_switch" *) (* P_DECODER_CONNECTIVITY_ARRAY = "2'b11" *) 
(* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "2'b11" *) (* P_TPAYLOAD_WIDTH = "94" *) 
module design_1_axis_switch_0_1_axis_switch_v1_1_19_axis_switch
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    arb_req,
    arb_done,
    arb_gnt,
    arb_sel,
    arb_last,
    arb_id,
    arb_dest,
    arb_user,
    s_req_suppress,
    s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_decode_err);
  input aclk;
  input aresetn;
  input aclken;
  input [0:0]s_axis_tvalid;
  output [0:0]s_axis_tready;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tstrb;
  input [7:0]s_axis_tkeep;
  input [0:0]s_axis_tlast;
  input [4:0]s_axis_tid;
  input [5:0]s_axis_tdest;
  input [1:0]s_axis_tuser;
  output [1:0]m_axis_tvalid;
  input [1:0]m_axis_tready;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tstrb;
  output [15:0]m_axis_tkeep;
  output [1:0]m_axis_tlast;
  output [9:0]m_axis_tid;
  output [11:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  output [1:0]arb_req;
  output [1:0]arb_done;
  input [1:0]arb_gnt;
  input [1:0]arb_sel;
  output [1:0]arb_last;
  output [9:0]arb_id;
  output [11:0]arb_dest;
  output [3:0]arb_user;
  input [0:0]s_req_suppress;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [6:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [6:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output [0:0]s_decode_err;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire aresetn;
  wire \gen_static_router.ctrl_ack ;
  wire [14:0]\gen_static_router.ctrl_reg ;
  wire \gen_static_router.ctrl_req ;
  wire \gen_static_router.ctrl_soft_reset ;
  wire [14:0]\gen_static_router.gen_synch.cdc_handshake_data_out ;
  wire \gen_static_router.gen_synch.cdc_handshake_data_valid ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ;
  wire \gen_static_router.gen_synch.inst_cdc_handshake_n_13 ;
  wire \gen_static_router.inst_static_router_n_2 ;
  wire \gen_static_router.s_axi_ctrl_areset ;
  wire \gen_static_router.s_axi_ctrl_areset_i_1_n_0 ;
  wire [127:0]m_axis_tdata;
  wire \m_axis_tdata[127]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_1_n_0 ;
  wire [11:0]m_axis_tdest;
  wire [9:0]m_axis_tid;
  wire [15:0]m_axis_tkeep;
  wire [1:0]m_axis_tlast;
  wire [1:0]m_axis_tready;
  wire [15:0]m_axis_tstrb;
  wire [3:0]m_axis_tuser;
  wire [1:0]m_axis_tvalid;
  wire mi_enable;
  wire p_0_in;
  wire s_axi_ctrl_aclk;
  wire [6:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_aresetn;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [6:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wready;
  wire s_axi_ctrl_wvalid;
  wire [63:0]s_axis_tdata;
  wire [5:0]s_axis_tdest;
  wire [4:0]s_axis_tid;
  wire [7:0]s_axis_tkeep;
  wire [0:0]s_axis_tlast;
  wire [0:0]s_axis_tready;
  wire [7:0]s_axis_tstrb;
  wire [1:0]s_axis_tuser;
  wire [0:0]s_axis_tvalid;
  wire [3:0]sel0;
  wire si_enable;

  assign arb_dest[11] = \<const0> ;
  assign arb_dest[10] = \<const0> ;
  assign arb_dest[9] = \<const0> ;
  assign arb_dest[8] = \<const0> ;
  assign arb_dest[7] = \<const0> ;
  assign arb_dest[6] = \<const0> ;
  assign arb_dest[5] = \<const0> ;
  assign arb_dest[4] = \<const0> ;
  assign arb_dest[3] = \<const0> ;
  assign arb_dest[2] = \<const0> ;
  assign arb_dest[1] = \<const0> ;
  assign arb_dest[0] = \<const0> ;
  assign arb_done[1] = \<const0> ;
  assign arb_done[0] = \<const0> ;
  assign arb_id[9] = \<const0> ;
  assign arb_id[8] = \<const0> ;
  assign arb_id[7] = \<const0> ;
  assign arb_id[6] = \<const0> ;
  assign arb_id[5] = \<const0> ;
  assign arb_id[4] = \<const0> ;
  assign arb_id[3] = \<const0> ;
  assign arb_id[2] = \<const0> ;
  assign arb_id[1] = \<const0> ;
  assign arb_id[0] = \<const0> ;
  assign arb_last[1] = \<const0> ;
  assign arb_last[0] = \<const0> ;
  assign arb_req[1] = \<const0> ;
  assign arb_req[0] = \<const0> ;
  assign arb_user[3] = \<const0> ;
  assign arb_user[2] = \<const0> ;
  assign arb_user[1] = \<const0> ;
  assign arb_user[0] = \<const0> ;
  assign s_axi_ctrl_awready = s_axi_ctrl_wready;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_decode_err[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(areset_r),
        .R(1'b0));
  design_1_axis_switch_0_1_axis_switch_v1_1_19_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.D({s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tlast,s_axis_tkeep,s_axis_tstrb,s_axis_tdata}),
        .Q({si_enable,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,mi_enable,sel0,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.state_reg[1] (s_axis_tready),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tuser_1_sp_1(\m_axis_tdata[63]_INST_0_i_1_n_0 ),
        .m_axis_tuser_3_sp_1(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tvalid(s_axis_tvalid));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[0] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [0]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [14]),
        .Q(si_enable),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [1]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [2]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[3] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [3]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[4] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [4]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [5]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [6]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[7] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [7]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[8] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [8]),
        .Q(mi_enable),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [9]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ),
        .R(1'b0));
  design_1_axis_switch_0_1_axis_infrastructure_v1_1_0_cdc_handshake \gen_static_router.gen_synch.inst_cdc_handshake 
       (.D({\gen_static_router.gen_synch.cdc_handshake_data_out [14],\gen_static_router.gen_synch.cdc_handshake_data_out [9:0]}),
        .E(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .\FSM_onehot_state_reg[4] (\gen_static_router.inst_static_router_n_2 ),
        .Q(\gen_static_router.ctrl_reg ),
        .aclk(aclk),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .src_rcv(\gen_static_router.ctrl_ack ),
        .src_send(\gen_static_router.ctrl_req ),
        .\syncstages_ff_reg[3] (\gen_static_router.gen_synch.inst_cdc_handshake_n_13 ));
  design_1_axis_switch_0_1_axis_infrastructure_v1_1_0_clock_synchronizer \gen_static_router.gen_synch.inst_rst_synch 
       (.aclk(aclk),
        .aresetn(aresetn),
        .p_0_in(p_0_in),
        .src_in(\gen_static_router.ctrl_soft_reset ));
  design_1_axis_switch_0_1_axis_switch_v1_1_19_static_router \gen_static_router.inst_static_router 
       (.D(\gen_static_router.gen_synch.inst_cdc_handshake_n_13 ),
        .Q(\gen_static_router.inst_static_router_n_2 ),
        .SR(\gen_static_router.s_axi_ctrl_areset ),
        .\ctrl_reg_r_reg[14] (\gen_static_router.ctrl_reg ),
        .out0({s_axi_ctrl_rvalid,s_axi_ctrl_arready}),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr[6:2]),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr[6:2]),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .src_in(\gen_static_router.ctrl_soft_reset ),
        .src_rcv(\gen_static_router.ctrl_ack ),
        .src_send(\gen_static_router.ctrl_req ),
        .\state_reg[1] ({s_axi_ctrl_bvalid,s_axi_ctrl_wready}));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_static_router.s_axi_ctrl_areset_i_1 
       (.I0(s_axi_ctrl_aresetn),
        .O(\gen_static_router.s_axi_ctrl_areset_i_1_n_0 ));
  FDRE \gen_static_router.s_axi_ctrl_areset_reg 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_static_router.s_axi_ctrl_areset_i_1_n_0 ),
        .Q(\gen_static_router.s_axi_ctrl_areset ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[127]_INST_0_i_1 
       (.I0(sel0[1]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(\m_axis_tdata[127]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[63]_INST_0_i_1 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ),
        .I3(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] ),
        .O(\m_axis_tdata[63]_INST_0_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_axisc_decoder" *) 
module design_1_axis_switch_0_1_axis_switch_v1_1_19_axisc_decoder
   (m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    \gen_AB_reg_slice.state_reg[1] ,
    m_axis_tvalid,
    aclk,
    m_axis_tuser_3_sp_1,
    Q,
    m_axis_tready,
    m_axis_tuser_1_sp_1,
    aclken,
    areset_r,
    s_axis_tvalid,
    D);
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tstrb;
  output [15:0]m_axis_tkeep;
  output [1:0]m_axis_tlast;
  output [9:0]m_axis_tid;
  output [11:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  output \gen_AB_reg_slice.state_reg[1] ;
  output [1:0]m_axis_tvalid;
  input aclk;
  input m_axis_tuser_3_sp_1;
  input [10:0]Q;
  input [1:0]m_axis_tready;
  input m_axis_tuser_1_sp_1;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input [93:0]D;

  wire [93:0]D;
  wire [10:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_AB_reg_slice.state_reg[1] ;
  wire [127:0]m_axis_tdata;
  wire [11:0]m_axis_tdest;
  wire [9:0]m_axis_tid;
  wire [15:0]m_axis_tkeep;
  wire [1:0]m_axis_tlast;
  wire [1:0]m_axis_tready;
  wire [15:0]m_axis_tstrb;
  wire [3:0]m_axis_tuser;
  wire m_axis_tuser_1_sn_1;
  wire m_axis_tuser_3_sn_1;
  wire [1:0]m_axis_tvalid;
  wire [0:0]s_axis_tvalid;

  assign m_axis_tuser_1_sn_1 = m_axis_tuser_1_sp_1;
  assign m_axis_tuser_3_sn_1 = m_axis_tuser_3_sp_1;
  design_1_axis_switch_0_1_axis_register_slice_v1_1_19_axisc_register_slice \gen_static_routing.inst_decoder_pipeline 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.state_reg[1]_0 (\gen_AB_reg_slice.state_reg[1] ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tuser_1_sp_1(m_axis_tuser_1_sn_1),
        .m_axis_tuser_3_sp_1(m_axis_tuser_3_sn_1),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_reg_bank_16x32" *) 
module design_1_axis_switch_0_1_axis_switch_v1_1_19_reg_bank_16x32
   (Q,
    SR,
    E,
    D,
    s_axi_ctrl_aclk);
  output [31:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input [31:0]D;
  input s_axi_ctrl_aclk;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire s_axi_ctrl_aclk;

  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[0].reg_data_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_reg_bank_16x32" *) 
module design_1_axis_switch_0_1_axis_switch_v1_1_19_reg_bank_16x32__parameterized0
   (\gen_reg[0].reg_data_reg[31]_0 ,
    Q,
    \gen_reg[1].reg_data_reg[63]_0 ,
    \gen_reg[1].reg_data_reg[63]_1 ,
    SR,
    E,
    D,
    s_axi_ctrl_aclk,
    \gen_reg[1].reg_data_reg[63]_2 );
  output \gen_reg[0].reg_data_reg[31]_0 ;
  output [31:0]Q;
  output \gen_reg[1].reg_data_reg[63]_0 ;
  output [31:0]\gen_reg[1].reg_data_reg[63]_1 ;
  input [0:0]SR;
  input [0:0]E;
  input [31:0]D;
  input s_axi_ctrl_aclk;
  input [0:0]\gen_reg[1].reg_data_reg[63]_2 ;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire \gen_reg[0].reg_data_reg[31]_0 ;
  wire \gen_reg[1].reg_data_reg[63]_0 ;
  wire [31:0]\gen_reg[1].reg_data_reg[63]_1 ;
  wire [0:0]\gen_reg[1].reg_data_reg[63]_2 ;
  wire s_axi_ctrl_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[0].mi_mux_en_in[0]_i_1 
       (.I0(Q[31]),
        .O(\gen_reg[0].reg_data_reg[31]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[1].mi_mux_en_in[1]_i_1 
       (.I0(\gen_reg[1].reg_data_reg[63]_1 [31]),
        .O(\gen_reg[1].reg_data_reg[63]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[0].reg_data_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[32] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[0]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[33] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[1]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[34] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[2]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[35] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[3]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[36] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[4]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[37] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[5]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[38] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[6]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[39] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[7]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[40] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[8]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[41] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[9]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[42] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[10]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[43] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[11]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[44] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[12]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[45] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[13]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[46] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[14]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[47] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[15]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[48] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[16]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[49] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[17]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[50] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[18]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[51] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[19]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[52] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[20]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[53] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[21]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[54] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[22]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[55] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[23]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[56] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[24]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[57] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[25]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[58] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[26]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[59] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[27]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[60] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[28]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[61] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[29]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[62] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[30]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [30]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[1].reg_data_reg[63] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[31]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [31]),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_static_router" *) 
module design_1_axis_switch_0_1_axis_switch_v1_1_19_static_router
   (src_send,
    src_in,
    Q,
    \state_reg[1] ,
    s_axi_ctrl_rdata,
    out0,
    \ctrl_reg_r_reg[14] ,
    s_axi_ctrl_aclk,
    SR,
    src_rcv,
    s_axi_ctrl_bready,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_awvalid,
    D,
    s_axi_ctrl_wdata,
    s_axi_ctrl_araddr,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready);
  output src_send;
  output src_in;
  output [0:0]Q;
  output [1:0]\state_reg[1] ;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]out0;
  output [14:0]\ctrl_reg_r_reg[14] ;
  input s_axi_ctrl_aclk;
  input [0:0]SR;
  input src_rcv;
  input s_axi_ctrl_bready;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_awvalid;
  input [0:0]D;
  input [31:0]s_axi_ctrl_wdata;
  input [4:0]s_axi_ctrl_araddr;
  input [4:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire commit_reset;
  wire [14:0]\ctrl_reg_r_reg[14] ;
  wire [3:0]\gen_reg[0].reg_data_reg ;
  wire [3:0]\gen_reg[1].reg_data_reg ;
  wire inst_axi_ctrl_top_n_0;
  wire inst_axi_ctrl_top_n_5;
  wire [1:0]out0;
  wire reg_commit;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [4:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire src_in;
  wire src_rcv;
  wire src_send;
  wire [1:0]\state_reg[1] ;

  design_1_axis_switch_0_1_axis_switch_v1_1_19_axi_ctrl_top inst_axi_ctrl_top
       (.\FSM_onehot_state_reg[2] (out0),
        .Q(\gen_reg[0].reg_data_reg ),
        .SR(SR),
        .\gen_reg[0].reg_data_reg[0] (commit_reset),
        .\gen_reg[0].reg_data_reg[1] (reg_commit),
        .\gen_reg[0].reg_data_reg[31] (inst_axi_ctrl_top_n_0),
        .\gen_reg[1].reg_data_reg[35] (\gen_reg[1].reg_data_reg ),
        .\gen_reg[1].reg_data_reg[63] (inst_axi_ctrl_top_n_5),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .\state_reg[1] (\state_reg[1] ));
  design_1_axis_switch_0_1_axis_switch_v1_1_19_static_router_config inst_start_router_config
       (.D(D),
        .\FSM_onehot_state_reg[1]_0 (reg_commit),
        .Q({commit_reset,Q}),
        .SR(SR),
        .\ctrl_reg_r_reg[14]_0 (\ctrl_reg_r_reg[14] ),
        .\gen_mi_mux_in[0].mi_mux_en_in_reg[0] (inst_axi_ctrl_top_n_0),
        .\gen_mi_mux_in[0].mi_mux_in_reg[3] (\gen_reg[0].reg_data_reg ),
        .\gen_mi_mux_in[1].mi_mux_en_in_reg[1] (inst_axi_ctrl_top_n_5),
        .\gen_mi_mux_in[1].mi_mux_in_reg[7] (\gen_reg[1].reg_data_reg ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .src_in(src_in),
        .src_rcv(src_rcv),
        .src_send(src_send));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_static_router_config" *) 
module design_1_axis_switch_0_1_axis_switch_v1_1_19_static_router_config
   (src_send,
    src_in,
    Q,
    \ctrl_reg_r_reg[14]_0 ,
    s_axi_ctrl_aclk,
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ,
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ,
    SR,
    src_rcv,
    \FSM_onehot_state_reg[1]_0 ,
    D,
    \gen_mi_mux_in[0].mi_mux_in_reg[3] ,
    \gen_mi_mux_in[1].mi_mux_in_reg[7] );
  output src_send;
  output src_in;
  output [1:0]Q;
  output [14:0]\ctrl_reg_r_reg[14]_0 ;
  input s_axi_ctrl_aclk;
  input \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ;
  input \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ;
  input [0:0]SR;
  input src_rcv;
  input [0:0]\FSM_onehot_state_reg[1]_0 ;
  input [0:0]D;
  input [3:0]\gen_mi_mux_in[0].mi_mux_in_reg[3] ;
  input [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7] ;

  wire [0:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [14:0]\ctrl_reg_r_reg[14]_0 ;
  wire ctrl_soft_reset_r0;
  wire ctrl_soft_reset_r_i_1_n_0;
  wire \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ;
  wire [3:0]\gen_mi_mux_in[0].mi_mux_in_reg[3] ;
  wire \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ;
  wire [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7] ;
  wire inst_start_router_config_dp_n_15;
  wire inst_start_router_config_dp_n_16;
  wire inst_start_router_config_dp_n_17;
  wire inst_start_router_config_dp_n_18;
  wire [1:0]mi_enable;
  wire [7:0]mi_mux;
  wire s_axi_ctrl_aclk;
  wire si_enable;
  wire [3:0]si_mux_r;
  wire src_in;
  wire src_rcv;
  wire src_send;
  wire start;

  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(ctrl_soft_reset_r0),
        .I2(Q[1]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(ctrl_soft_reset_r0),
        .S(SR));
  (* FSM_ENCODED_STATES = "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(inst_start_router_config_dp_n_17),
        .Q(start),
        .R(SR));
  (* FSM_ENCODED_STATES = "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(inst_start_router_config_dp_n_16),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(inst_start_router_config_dp_n_15),
        .Q(Q[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(D),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[0]),
        .Q(\ctrl_reg_r_reg[14]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_mux_r[0]),
        .Q(\ctrl_reg_r_reg[14]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_mux_r[1]),
        .Q(\ctrl_reg_r_reg[14]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_mux_r[2]),
        .Q(\ctrl_reg_r_reg[14]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_mux_r[3]),
        .Q(\ctrl_reg_r_reg[14]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable),
        .Q(\ctrl_reg_r_reg[14]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[1]),
        .Q(\ctrl_reg_r_reg[14]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[2]),
        .Q(\ctrl_reg_r_reg[14]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[3]),
        .Q(\ctrl_reg_r_reg[14]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[4]),
        .Q(\ctrl_reg_r_reg[14]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[5]),
        .Q(\ctrl_reg_r_reg[14]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[6]),
        .Q(\ctrl_reg_r_reg[14]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[7]),
        .Q(\ctrl_reg_r_reg[14]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[0]),
        .Q(\ctrl_reg_r_reg[14]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[1]),
        .Q(\ctrl_reg_r_reg[14]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_req_r_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(inst_start_router_config_dp_n_18),
        .Q(src_send),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    ctrl_soft_reset_r_i_1
       (.I0(ctrl_soft_reset_r0),
        .O(ctrl_soft_reset_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_soft_reset_r_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(ctrl_soft_reset_r_i_1_n_0),
        .Q(src_in),
        .R(1'b0));
  design_1_axis_switch_0_1_axis_switch_v1_1_19_static_router_config_dp inst_start_router_config_dp
       (.D({si_enable,si_mux_r,mi_enable,mi_mux}),
        .\FSM_onehot_state_reg[1] (\FSM_onehot_state_reg[1]_0 ),
        .\FSM_onehot_state_reg[2] ({inst_start_router_config_dp_n_15,inst_start_router_config_dp_n_16,inst_start_router_config_dp_n_17}),
        .\FSM_onehot_state_reg[2]_0 (inst_start_router_config_dp_n_18),
        .Q({Q[0],\FSM_onehot_state_reg_n_0_[2] ,start,ctrl_soft_reset_r0}),
        .\gen_mi_mux_in[0].mi_mux_en_in_reg[0]_0 (\gen_mi_mux_in[0].mi_mux_en_in_reg[0] ),
        .\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 (\gen_mi_mux_in[0].mi_mux_in_reg[3] ),
        .\gen_mi_mux_in[1].mi_mux_en_in_reg[1]_0 (\gen_mi_mux_in[1].mi_mux_en_in_reg[1] ),
        .\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 (\gen_mi_mux_in[1].mi_mux_in_reg[7] ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .src_rcv(src_rcv),
        .src_send(src_send));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_static_router_config_dp" *) 
module design_1_axis_switch_0_1_axis_switch_v1_1_19_static_router_config_dp
   (D,
    \FSM_onehot_state_reg[2] ,
    \FSM_onehot_state_reg[2]_0 ,
    Q,
    s_axi_ctrl_aclk,
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0]_0 ,
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1]_0 ,
    src_rcv,
    \FSM_onehot_state_reg[1] ,
    src_send,
    \gen_mi_mux_in[0].mi_mux_in_reg[3]_0 ,
    \gen_mi_mux_in[1].mi_mux_in_reg[7]_0 );
  output [14:0]D;
  output [2:0]\FSM_onehot_state_reg[2] ;
  output \FSM_onehot_state_reg[2]_0 ;
  input [3:0]Q;
  input s_axi_ctrl_aclk;
  input \gen_mi_mux_in[0].mi_mux_en_in_reg[0]_0 ;
  input \gen_mi_mux_in[1].mi_mux_en_in_reg[1]_0 ;
  input src_rcv;
  input [0:0]\FSM_onehot_state_reg[1] ;
  input src_send;
  input [3:0]\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 ;
  input [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 ;

  wire \/i__n_0 ;
  wire [14:0]D;
  wire [0:0]\FSM_onehot_state_reg[1] ;
  wire [2:0]\FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire [3:0]Q;
  wire done;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ;
  wire \gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ;
  wire \gen_mi_enable[1].mi_enable_r[1]_i_2_n_0 ;
  wire \gen_mi_mux_in[0].mi_mux_en_in_reg[0]_0 ;
  wire [3:0]\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 ;
  wire \gen_mi_mux_in[1].mi_mux_en_in_reg[1]_0 ;
  wire [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 ;
  wire \gen_si_enable[0].si_enable_r[0]_i_1_n_0 ;
  wire \gen_si_mux[0].si_mux_r[3]_i_1_n_0 ;
  wire \mi_cntr_reg_n_0_[0] ;
  wire \mi_cntr_reg_n_0_[1] ;
  wire \mi_cntr_reg_n_0_[2] ;
  wire \mi_cntr_reg_n_0_[3] ;
  wire [0:0]mi_connectivity;
  wire mi_connectivity0;
  wire [1:0]mi_mux_en_in;
  wire [3:0]p_0_in;
  wire [4:0]p_0_in_0;
  wire s_axi_ctrl_aclk;
  wire sel;
  wire \selectee[0]_i_1_n_0 ;
  wire \selectee[1]_i_1_n_0 ;
  wire \selectee[2]_i_1_n_0 ;
  wire \selectee[3]_i_1_n_0 ;
  wire [3:0]selector;
  wire selector_enable_i_1_n_0;
  wire src_rcv;
  wire src_send;
  wire start_r;
  wire stg1_done;
  wire stg1_done_i_1_n_0;
  wire stg1_reset;
  wire stg1_reset0;
  wire stg2_done_i_1_n_0;
  wire stg2_reset;

  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \/i_ 
       (.I0(selector[3]),
        .I1(selector[2]),
        .I2(selector[0]),
        .I3(selector[1]),
        .O(\/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(Q[1]),
        .I3(done),
        .O(\FSM_onehot_state_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(Q[1]),
        .I1(done),
        .I2(Q[2]),
        .O(\FSM_onehot_state_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(Q[2]),
        .I1(done),
        .I2(src_rcv),
        .I3(Q[3]),
        .O(\FSM_onehot_state_reg[2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    ctrl_req_r_i_1
       (.I0(Q[2]),
        .I1(done),
        .I2(Q[3]),
        .I3(src_rcv),
        .I4(src_send),
        .O(\FSM_onehot_state_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h0000AAEA)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_1 
       (.I0(D[8]),
        .I1(\/i__n_0 ),
        .I2(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I3(D[14]),
        .I4(stg2_reset),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_2 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[1]),
        .I2(mi_connectivity),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[4]),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[0].mi_enable_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ),
        .Q(D[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h0000AAEA)) 
    \gen_mi_enable[1].mi_enable_r[1]_i_1 
       (.I0(D[9]),
        .I1(\gen_mi_enable[1].mi_enable_r[1]_i_2_n_0 ),
        .I2(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I3(D[14]),
        .I4(stg2_reset),
        .O(\gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_mi_enable[1].mi_enable_r[1]_i_2 
       (.I0(selector[3]),
        .I1(selector[2]),
        .I2(selector[0]),
        .I3(selector[1]),
        .O(\gen_mi_enable[1].mi_enable_r[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[1].mi_enable_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[0].mi_mux_en_in_reg[0]_0 ),
        .Q(mi_mux_en_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 [0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 [1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 [2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 [3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[1].mi_mux_en_in_reg[1]_0 ),
        .Q(mi_mux_en_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 [0]),
        .Q(D[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 [1]),
        .Q(D[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 [2]),
        .Q(D[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 [3]),
        .Q(D[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_si_enable[0].si_enable_r[0]_i_1 
       (.I0(D[14]),
        .I1(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I2(stg2_reset),
        .O(\gen_si_enable[0].si_enable_r[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[0].si_enable_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_enable[0].si_enable_r[0]_i_1_n_0 ),
        .Q(D[14]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[0].si_mux_r[3]_i_1 
       (.I0(D[14]),
        .O(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[0]),
        .Q(D[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[1]),
        .Q(D[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[2]),
        .Q(D[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[3]),
        .Q(D[13]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mi_cntr[0]_i_1 
       (.I0(\mi_cntr_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mi_cntr[1]_i_1 
       (.I0(\mi_cntr_reg_n_0_[0] ),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mi_cntr[2]_i_1 
       (.I0(\mi_cntr_reg_n_0_[0] ),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .I2(\mi_cntr_reg_n_0_[2] ),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \mi_cntr[3]_i_1 
       (.I0(\mi_cntr_reg_n_0_[1] ),
        .I1(\mi_cntr_reg_n_0_[0] ),
        .I2(\mi_cntr_reg_n_0_[3] ),
        .I3(\mi_cntr_reg_n_0_[2] ),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mi_cntr[3]_i_2 
       (.I0(\mi_cntr_reg_n_0_[1] ),
        .I1(\mi_cntr_reg_n_0_[0] ),
        .I2(\mi_cntr_reg_n_0_[2] ),
        .I3(\mi_cntr_reg_n_0_[3] ),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b1)) 
    \mi_cntr_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(p_0_in[0]),
        .Q(\mi_cntr_reg_n_0_[0] ),
        .R(stg1_reset));
  FDRE #(
    .INIT(1'b0)) 
    \mi_cntr_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(p_0_in[1]),
        .Q(\mi_cntr_reg_n_0_[1] ),
        .R(stg1_reset));
  FDRE #(
    .INIT(1'b0)) 
    \mi_cntr_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(p_0_in[2]),
        .Q(\mi_cntr_reg_n_0_[2] ),
        .R(stg1_reset));
  FDRE #(
    .INIT(1'b0)) 
    \mi_cntr_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(\mi_cntr_reg_n_0_[3] ),
        .R(stg1_reset));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mi_connectivity[0]_i_1 
       (.I0(\mi_cntr_reg_n_0_[1] ),
        .O(mi_connectivity0));
  FDRE #(
    .INIT(1'b0)) 
    \mi_connectivity_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_connectivity0),
        .Q(mi_connectivity),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \selectee[0]_i_1 
       (.I0(D[4]),
        .I1(\mi_cntr_reg_n_0_[0] ),
        .I2(D[0]),
        .O(\selectee[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \selectee[1]_i_1 
       (.I0(D[5]),
        .I1(\mi_cntr_reg_n_0_[0] ),
        .I2(D[1]),
        .O(\selectee[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \selectee[2]_i_1 
       (.I0(D[6]),
        .I1(\mi_cntr_reg_n_0_[0] ),
        .I2(D[2]),
        .O(\selectee[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \selectee[3]_i_1 
       (.I0(D[7]),
        .I1(\mi_cntr_reg_n_0_[0] ),
        .I2(D[3]),
        .O(\selectee[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee[0]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(\mi_cntr_reg_n_0_[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee[1]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(\mi_cntr_reg_n_0_[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee[2]_i_1_n_0 ),
        .Q(p_0_in_0[2]),
        .R(\mi_cntr_reg_n_0_[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee[3]_i_1_n_0 ),
        .Q(p_0_in_0[3]),
        .R(\mi_cntr_reg_n_0_[1] ));
  LUT3 #(
    .INIT(8'hB8)) 
    selector_enable_i_1
       (.I0(mi_mux_en_in[1]),
        .I1(\mi_cntr_reg_n_0_[0] ),
        .I2(mi_mux_en_in[0]),
        .O(selector_enable_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    selector_enable_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(selector_enable_i_1_n_0),
        .Q(p_0_in_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_cntr_reg_n_0_[0] ),
        .Q(selector[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_cntr_reg_n_0_[1] ),
        .Q(selector[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_cntr_reg_n_0_[2] ),
        .Q(selector[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_cntr_reg_n_0_[3] ),
        .Q(selector[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_r_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(start_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    stg1_done_i_1
       (.I0(\mi_cntr_reg_n_0_[1] ),
        .I1(\mi_cntr_reg_n_0_[0] ),
        .I2(\mi_cntr_reg_n_0_[3] ),
        .I3(\mi_cntr_reg_n_0_[2] ),
        .I4(stg1_reset),
        .O(stg1_done_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    stg1_done_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(stg1_done_i_1_n_0),
        .Q(stg1_done),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    stg1_reset_i_1
       (.I0(Q[1]),
        .I1(start_r),
        .O(stg1_reset0));
  FDRE #(
    .INIT(1'b0)) 
    stg1_reset_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(stg1_reset0),
        .Q(stg1_reset),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    stg2_done_i_1
       (.I0(stg1_done),
        .I1(stg1_reset),
        .O(stg2_done_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    stg2_done_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(stg2_done_i_1_n_0),
        .Q(done),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    stg2_reset_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(stg1_reset),
        .Q(stg2_reset),
        .R(1'b0));
endmodule

(* DEST_EXT_HSK = "0" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) 
(* ORIG_REF_NAME = "xpm_cdc_handshake" *) (* SIM_ASSERT_CHK = "0" *) (* SRC_SYNC_FF = "4" *) 
(* VERSION = "0" *) (* WIDTH = "15" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "HANDSHAKE" *) 
module design_1_axis_switch_0_1_xpm_cdc_handshake
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [14:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [14:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* xpm_cdc = "HANDSHAKE" *) wire [14:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_ff;
  wire dest_req_nxt;
  wire p_0_in;
  wire src_clk;
  wire [14:0]src_hsdata_ff;
  wire [14:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[14:0] = dest_hsdata_ff;
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[0] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[0]),
        .Q(dest_hsdata_ff[0]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[10] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[10]),
        .Q(dest_hsdata_ff[10]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[11] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[11]),
        .Q(dest_hsdata_ff[11]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[12] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[12]),
        .Q(dest_hsdata_ff[12]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[13] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[13]),
        .Q(dest_hsdata_ff[13]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[14] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[14]),
        .Q(dest_hsdata_ff[14]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[1] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[1]),
        .Q(dest_hsdata_ff[1]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[2] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[2]),
        .Q(dest_hsdata_ff[2]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[3] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[3]),
        .Q(dest_hsdata_ff[3]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[4] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[4]),
        .Q(dest_hsdata_ff[4]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[5] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[5]),
        .Q(dest_hsdata_ff[5]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[6] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[6]),
        .Q(dest_hsdata_ff[6]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[7] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[7]),
        .Q(dest_hsdata_ff[7]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[8] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[8]),
        .Q(dest_hsdata_ff[8]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[9] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[9]),
        .Q(dest_hsdata_ff[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    dest_req_ext_ff_i_1
       (.I0(dest_req_nxt),
        .I1(dest_req_ff),
        .O(dest_hsdata_en));
  FDRE dest_req_ext_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_hsdata_en),
        .Q(dest_req),
        .R(1'b0));
  FDRE dest_req_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_req_nxt),
        .Q(dest_req_ff),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \src_hsdata_ff[14]_i_1 
       (.I0(src_sendd_ff),
        .O(p_0_in));
  FDRE \src_hsdata_ff_reg[0] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[0]),
        .Q(src_hsdata_ff[0]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[10] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[10]),
        .Q(src_hsdata_ff[10]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[11] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[11]),
        .Q(src_hsdata_ff[11]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[12] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[12]),
        .Q(src_hsdata_ff[12]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[13] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[13]),
        .Q(src_hsdata_ff[13]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[14] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[14]),
        .Q(src_hsdata_ff[14]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[1] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[1]),
        .Q(src_hsdata_ff[1]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[2] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[2]),
        .Q(src_hsdata_ff[2]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[3] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[3]),
        .Q(src_hsdata_ff[3]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[4] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[4]),
        .Q(src_hsdata_ff[4]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[5] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[5]),
        .Q(src_hsdata_ff[5]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[6] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[6]),
        .Q(src_hsdata_ff[6]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[7] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[7]),
        .Q(src_hsdata_ff[7]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[8] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[8]),
        .Q(src_hsdata_ff[8]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[9] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[9]),
        .Q(src_hsdata_ff[9]),
        .R(1'b0));
  FDRE src_sendd_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_send),
        .Q(src_sendd_ff),
        .R(1'b0));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axis_switch_0_1_xpm_cdc_single xpm_cdc_single_dest2src_inst
       (.dest_clk(src_clk),
        .dest_out(src_rcv),
        .src_clk(dest_clk),
        .src_in(dest_req_ff));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axis_switch_0_1_xpm_cdc_single__4 xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(src_clk),
        .src_in(src_sendd_ff));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_axis_switch_0_1_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_axis_switch_0_1_xpm_cdc_single__3
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_axis_switch_0_1_xpm_cdc_single__4
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
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
