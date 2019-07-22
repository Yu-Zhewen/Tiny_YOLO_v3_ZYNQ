// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Jul 21 21:25:44 2019
// Host        : Lenovo-XiaoXin-CHAO7000 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/xavier/MSc_Project/hls/yolo_conv_hls_2019/yolo_sys_fp_prj_2019_64/yolo_sys_fp_prj_2019_64.srcs/sources_1/bd/design_1/ip/design_1_axis_switch_1_2/design_1_axis_switch_1_2_sim_netlist.v
// Design      : design_1_axis_switch_1_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axis_switch_1_2,axis_switch_v1_1_19_axis_switch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_switch_v1_1_19_axis_switch,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_axis_switch_1_2
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S00_AXIS:S01_AXIS:S02_AXIS:S03_AXIS:S04_AXIS:S05_AXIS:S06_AXIS:S07_AXIS:S08_AXIS:S09_AXIS:S10_AXIS:S11_AXIS:S12_AXIS:S13_AXIS:S14_AXIS:S15_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1]" *) input [1:0]s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1]" *) output [1:0]s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [63:0] [63:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [63:0] [127:64]" *) input [127:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB [7:0] [7:0], xilinx.com:interface:axis:1.0 S01_AXIS TSTRB [7:0] [15:8]" *) input [15:0]s_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP [7:0] [7:0], xilinx.com:interface:axis:1.0 S01_AXIS TKEEP [7:0] [15:8]" *) input [15:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1]" *) input [1:0]s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TID [4:0] [4:0], xilinx.com:interface:axis:1.0 S01_AXIS TID [4:0] [9:5]" *) input [9:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDEST [5:0] [5:0], xilinx.com:interface:axis:1.0 S01_AXIS TDEST [5:0] [11:6]" *) input [11:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TUSER [1:0] [1:0], xilinx.com:interface:axis:1.0 S01_AXIS TUSER [1:0] [3:2]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S01_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [3:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TVALID [0:0] [3:3]" *) output [3:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TREADY [0:0] [3:3]" *) input [3:0]m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA [63:0] [63:0], xilinx.com:interface:axis:1.0 M01_AXIS TDATA [63:0] [127:64], xilinx.com:interface:axis:1.0 M02_AXIS TDATA [63:0] [191:128], xilinx.com:interface:axis:1.0 M03_AXIS TDATA [63:0] [255:192]" *) output [255:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB [7:0] [7:0], xilinx.com:interface:axis:1.0 M01_AXIS TSTRB [7:0] [15:8], xilinx.com:interface:axis:1.0 M02_AXIS TSTRB [7:0] [23:16], xilinx.com:interface:axis:1.0 M03_AXIS TSTRB [7:0] [31:24]" *) output [31:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP [7:0] [7:0], xilinx.com:interface:axis:1.0 M01_AXIS TKEEP [7:0] [15:8], xilinx.com:interface:axis:1.0 M02_AXIS TKEEP [7:0] [23:16], xilinx.com:interface:axis:1.0 M03_AXIS TKEEP [7:0] [31:24]" *) output [31:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TLAST [0:0] [3:3]" *) output [3:0]m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TID [4:0] [4:0], xilinx.com:interface:axis:1.0 M01_AXIS TID [4:0] [9:5], xilinx.com:interface:axis:1.0 M02_AXIS TID [4:0] [14:10], xilinx.com:interface:axis:1.0 M03_AXIS TID [4:0] [19:15]" *) output [19:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDEST [5:0] [5:0], xilinx.com:interface:axis:1.0 M01_AXIS TDEST [5:0] [11:6], xilinx.com:interface:axis:1.0 M02_AXIS TDEST [5:0] [17:12], xilinx.com:interface:axis:1.0 M03_AXIS TDEST [5:0] [23:18]" *) output [23:0]m_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TUSER [1:0] [1:0], xilinx.com:interface:axis:1.0 M01_AXIS TUSER [1:0] [3:2], xilinx.com:interface:axis:1.0 M02_AXIS TUSER [1:0] [5:4], xilinx.com:interface:axis:1.0 M03_AXIS TUSER [1:0] [7:6]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M01_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M02_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M03_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CTRL_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL_ACLK, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI_CTRL, ASSOCIATED_RESET s_axi_ctrl_aresetn, INSERT_VIP 0" *) input s_axi_ctrl_aclk;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]s_axi_ctrl_rresp;

  wire aclk;
  wire aresetn;
  wire [255:0]m_axis_tdata;
  wire [23:0]m_axis_tdest;
  wire [19:0]m_axis_tid;
  wire [31:0]m_axis_tkeep;
  wire [3:0]m_axis_tlast;
  wire [3:0]m_axis_tready;
  wire [31:0]m_axis_tstrb;
  wire [7:0]m_axis_tuser;
  wire [3:0]m_axis_tvalid;
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
  wire [127:0]s_axis_tdata;
  wire [11:0]s_axis_tdest;
  wire [9:0]s_axis_tid;
  wire [15:0]s_axis_tkeep;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tready;
  wire [15:0]s_axis_tstrb;
  wire [3:0]s_axis_tuser;
  wire [1:0]s_axis_tvalid;
  wire [47:0]NLW_inst_arb_dest_UNCONNECTED;
  wire [3:0]NLW_inst_arb_done_UNCONNECTED;
  wire [39:0]NLW_inst_arb_id_UNCONNECTED;
  wire [7:0]NLW_inst_arb_last_UNCONNECTED;
  wire [7:0]NLW_inst_arb_req_UNCONNECTED;
  wire [15:0]NLW_inst_arb_user_UNCONNECTED;
  wire [1:0]NLW_inst_s_decode_err_UNCONNECTED;

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
  (* C_M_AXIS_BASETDEST_ARRAY = "24'b000011000010000001000000" *) 
  (* C_M_AXIS_CONNECTIVITY_ARRAY = "8'b11111111" *) 
  (* C_M_AXIS_HIGHTDEST_ARRAY = "24'b000011000010000001000000" *) 
  (* C_NUM_MI_SLOTS = "4" *) 
  (* C_NUM_SI_SLOTS = "2" *) 
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
  (* LP_CTRL_REG_WIDTH = "30" *) 
  (* LP_MERGEDOWN_MUX = "0" *) 
  (* LP_NUM_SYNCHRONIZER_STAGES = "4" *) 
  (* P_DECODER_CONNECTIVITY_ARRAY = "8'b11111111" *) 
  (* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "4'b0000" *) 
  (* P_TPAYLOAD_WIDTH = "94" *) 
  design_1_axis_switch_1_2_axis_switch_v1_1_19_axis_switch inst
       (.aclk(aclk),
        .aclken(1'b1),
        .arb_dest(NLW_inst_arb_dest_UNCONNECTED[47:0]),
        .arb_done(NLW_inst_arb_done_UNCONNECTED[3:0]),
        .arb_gnt({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arb_id(NLW_inst_arb_id_UNCONNECTED[39:0]),
        .arb_last(NLW_inst_arb_last_UNCONNECTED[7:0]),
        .arb_req(NLW_inst_arb_req_UNCONNECTED[7:0]),
        .arb_sel({1'b0,1'b0,1'b0,1'b0}),
        .arb_user(NLW_inst_arb_user_UNCONNECTED[15:0]),
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
        .s_decode_err(NLW_inst_s_decode_err_UNCONNECTED[1:0]),
        .s_req_suppress({1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "axis_infrastructure_v1_1_0_cdc_handshake" *) 
module design_1_axis_switch_1_2_axis_infrastructure_v1_1_0_cdc_handshake
   (src_rcv,
    D,
    E,
    s_axi_ctrl_aclk,
    Q,
    src_send,
    aclk);
  output src_rcv;
  output [21:0]D;
  output [0:0]E;
  input s_axi_ctrl_aclk;
  input [29:0]Q;
  input src_send;
  input aclk;

  wire [21:0]D;
  wire [0:0]E;
  wire [29:0]Q;
  wire aclk;
  wire [27:20]\gen_static_router.gen_synch.cdc_handshake_data_out ;
  wire s_axi_ctrl_aclk;
  wire src_rcv;
  wire src_send;

  (* DEST_EXT_HSK = "0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_SYNC_FF = "4" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "30" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axis_switch_1_2_xpm_cdc_handshake inst_xpm_cdc_handshake
       (.dest_ack(1'b0),
        .dest_clk(aclk),
        .dest_out({D[21:20],\gen_static_router.gen_synch.cdc_handshake_data_out ,D[19:0]}),
        .dest_req(E),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(Q),
        .src_rcv(src_rcv),
        .src_send(src_send));
endmodule

(* ORIG_REF_NAME = "axis_infrastructure_v1_1_0_clock_synchronizer" *) 
module design_1_axis_switch_1_2_axis_infrastructure_v1_1_0_clock_synchronizer
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
  design_1_axis_switch_1_2_xpm_cdc_single__3 inst_xpm_cdc_single
       (.dest_clk(aclk),
        .dest_out(soft_reset),
        .src_clk(1'b0),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_19_axisc_register_slice" *) 
module design_1_axis_switch_1_2_axis_register_slice_v1_1_19_axisc_register_slice
   (\gen_AB_reg_slice.state_reg[1]_0 ,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    p_2_out,
    aclk,
    aclken,
    areset_r,
    Q,
    \gen_static_routing.tready_mux ,
    s_axis_tvalid,
    D);
  output \gen_AB_reg_slice.state_reg[1]_0 ;
  output \gen_AB_reg_slice.state_reg[0]_0 ;
  output [93:0]p_2_out;
  input aclk;
  input aclken;
  input areset_r;
  input [0:0]Q;
  input \gen_static_routing.tready_mux ;
  input [0:0]s_axis_tvalid;
  input [93:0]D;

  wire [93:0]D;
  wire [0:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [93:0]\gen_AB_reg_slice.payload_a ;
  wire \gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ;
  wire [93:0]\gen_AB_reg_slice.payload_b ;
  wire \gen_AB_reg_slice.payload_b_0 ;
  wire \gen_AB_reg_slice.sel ;
  wire \gen_AB_reg_slice.sel_rd_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__0_n_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_AB_reg_slice.state_reg[1]_0 ;
  wire \gen_static_routing.tready_mux ;
  wire [93:0]p_2_out;
  wire [0:0]s_axis_tvalid;

  LUT4 #(
    .INIT(16'h008A)) 
    \gen_AB_reg_slice.payload_a[93]_i_1__0 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_a [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_a [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_a [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_a [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_a [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_a [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_a [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_a [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_a [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_a [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_a [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_a [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_a [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_a [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_a [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_a [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_a [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_a [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_a [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_a [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_a [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_a [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_a [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_a [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_a [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_a [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_a [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_a [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_a [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_a [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_a [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_a [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_a [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_a [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[40] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[40]),
        .Q(\gen_AB_reg_slice.payload_a [40]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[41] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[41]),
        .Q(\gen_AB_reg_slice.payload_a [41]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[42] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[42]),
        .Q(\gen_AB_reg_slice.payload_a [42]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[43] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[43]),
        .Q(\gen_AB_reg_slice.payload_a [43]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[44] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[44]),
        .Q(\gen_AB_reg_slice.payload_a [44]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[45] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[45]),
        .Q(\gen_AB_reg_slice.payload_a [45]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[46] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[46]),
        .Q(\gen_AB_reg_slice.payload_a [46]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[47] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[47]),
        .Q(\gen_AB_reg_slice.payload_a [47]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[48] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[48]),
        .Q(\gen_AB_reg_slice.payload_a [48]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[49] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[49]),
        .Q(\gen_AB_reg_slice.payload_a [49]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_a [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[50] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[50]),
        .Q(\gen_AB_reg_slice.payload_a [50]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[51] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[51]),
        .Q(\gen_AB_reg_slice.payload_a [51]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[52] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[52]),
        .Q(\gen_AB_reg_slice.payload_a [52]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[53] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[53]),
        .Q(\gen_AB_reg_slice.payload_a [53]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[54] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[54]),
        .Q(\gen_AB_reg_slice.payload_a [54]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[55] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[55]),
        .Q(\gen_AB_reg_slice.payload_a [55]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[56] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[56]),
        .Q(\gen_AB_reg_slice.payload_a [56]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[57] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[57]),
        .Q(\gen_AB_reg_slice.payload_a [57]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[58] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[58]),
        .Q(\gen_AB_reg_slice.payload_a [58]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[59] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[59]),
        .Q(\gen_AB_reg_slice.payload_a [59]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_a [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[60] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[60]),
        .Q(\gen_AB_reg_slice.payload_a [60]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[61] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[61]),
        .Q(\gen_AB_reg_slice.payload_a [61]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[62] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[62]),
        .Q(\gen_AB_reg_slice.payload_a [62]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[63] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[63]),
        .Q(\gen_AB_reg_slice.payload_a [63]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[64] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[64]),
        .Q(\gen_AB_reg_slice.payload_a [64]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[65] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[65]),
        .Q(\gen_AB_reg_slice.payload_a [65]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[66] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[66]),
        .Q(\gen_AB_reg_slice.payload_a [66]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[67] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[67]),
        .Q(\gen_AB_reg_slice.payload_a [67]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[68] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[68]),
        .Q(\gen_AB_reg_slice.payload_a [68]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[69] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[69]),
        .Q(\gen_AB_reg_slice.payload_a [69]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_a [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[70] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[70]),
        .Q(\gen_AB_reg_slice.payload_a [70]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[71] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[71]),
        .Q(\gen_AB_reg_slice.payload_a [71]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[72] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[72]),
        .Q(\gen_AB_reg_slice.payload_a [72]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[73] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[73]),
        .Q(\gen_AB_reg_slice.payload_a [73]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[74] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[74]),
        .Q(\gen_AB_reg_slice.payload_a [74]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[75] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[75]),
        .Q(\gen_AB_reg_slice.payload_a [75]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[76] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[76]),
        .Q(\gen_AB_reg_slice.payload_a [76]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[77] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[77]),
        .Q(\gen_AB_reg_slice.payload_a [77]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[78] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[78]),
        .Q(\gen_AB_reg_slice.payload_a [78]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[79] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[79]),
        .Q(\gen_AB_reg_slice.payload_a [79]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_a [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[80] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[80]),
        .Q(\gen_AB_reg_slice.payload_a [80]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[81] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[81]),
        .Q(\gen_AB_reg_slice.payload_a [81]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[82] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[82]),
        .Q(\gen_AB_reg_slice.payload_a [82]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[83] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[83]),
        .Q(\gen_AB_reg_slice.payload_a [83]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[84] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[84]),
        .Q(\gen_AB_reg_slice.payload_a [84]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[85] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[85]),
        .Q(\gen_AB_reg_slice.payload_a [85]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[86] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[86]),
        .Q(\gen_AB_reg_slice.payload_a [86]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[87] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[87]),
        .Q(\gen_AB_reg_slice.payload_a [87]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[88] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[88]),
        .Q(\gen_AB_reg_slice.payload_a [88]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[89] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[89]),
        .Q(\gen_AB_reg_slice.payload_a [89]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_a [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[90] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[90]),
        .Q(\gen_AB_reg_slice.payload_a [90]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[91] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[91]),
        .Q(\gen_AB_reg_slice.payload_a [91]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[92] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[92]),
        .Q(\gen_AB_reg_slice.payload_a [92]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[93] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[93]),
        .Q(\gen_AB_reg_slice.payload_a [93]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1__0_n_0 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_a [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8A00)) 
    \gen_AB_reg_slice.payload_b[93]_i_1__0 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
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
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_rd_i_1__0 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I2(\gen_static_routing.tready_mux ),
        .I3(\gen_AB_reg_slice.sel ),
        .O(\gen_AB_reg_slice.sel_rd_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__0_n_0 ),
        .Q(\gen_AB_reg_slice.sel ),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1__0 
       (.I0(s_axis_tvalid),
        .I1(aclken),
        .I2(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__0_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hFA70F0F0)) 
    \gen_AB_reg_slice.state[0]_i_1__0 
       (.I0(aclken),
        .I1(\gen_static_routing.tready_mux ),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(s_axis_tvalid),
        .I4(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1__0 
       (.I0(areset_r),
        .I1(Q),
        .O(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hDFFF8A8A)) 
    \gen_AB_reg_slice.state[1]_i_2__0 
       (.I0(aclken),
        .I1(\gen_static_routing.tready_mux ),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(s_axis_tvalid),
        .I4(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[1]_i_2__0_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1__0_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg[0]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2__0_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg[1]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[192]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [0]),
        .I1(\gen_AB_reg_slice.payload_a [0]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[193]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [1]),
        .I1(\gen_AB_reg_slice.payload_a [1]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[194]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [2]),
        .I1(\gen_AB_reg_slice.payload_a [2]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[195]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [3]),
        .I1(\gen_AB_reg_slice.payload_a [3]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[196]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [4]),
        .I1(\gen_AB_reg_slice.payload_a [4]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[197]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [5]),
        .I1(\gen_AB_reg_slice.payload_a [5]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[198]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [6]),
        .I1(\gen_AB_reg_slice.payload_a [6]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[199]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [7]),
        .I1(\gen_AB_reg_slice.payload_a [7]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[200]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [8]),
        .I1(\gen_AB_reg_slice.payload_a [8]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[201]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [9]),
        .I1(\gen_AB_reg_slice.payload_a [9]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[202]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [10]),
        .I1(\gen_AB_reg_slice.payload_a [10]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[203]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [11]),
        .I1(\gen_AB_reg_slice.payload_a [11]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[204]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [12]),
        .I1(\gen_AB_reg_slice.payload_a [12]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[205]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [13]),
        .I1(\gen_AB_reg_slice.payload_a [13]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[206]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [14]),
        .I1(\gen_AB_reg_slice.payload_a [14]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[207]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [15]),
        .I1(\gen_AB_reg_slice.payload_a [15]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[208]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [16]),
        .I1(\gen_AB_reg_slice.payload_a [16]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[209]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [17]),
        .I1(\gen_AB_reg_slice.payload_a [17]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[210]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [18]),
        .I1(\gen_AB_reg_slice.payload_a [18]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[211]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [19]),
        .I1(\gen_AB_reg_slice.payload_a [19]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[212]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [20]),
        .I1(\gen_AB_reg_slice.payload_a [20]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[213]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [21]),
        .I1(\gen_AB_reg_slice.payload_a [21]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[214]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [22]),
        .I1(\gen_AB_reg_slice.payload_a [22]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[215]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [23]),
        .I1(\gen_AB_reg_slice.payload_a [23]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[216]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [24]),
        .I1(\gen_AB_reg_slice.payload_a [24]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[217]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [25]),
        .I1(\gen_AB_reg_slice.payload_a [25]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[218]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [26]),
        .I1(\gen_AB_reg_slice.payload_a [26]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[219]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [27]),
        .I1(\gen_AB_reg_slice.payload_a [27]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[220]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [28]),
        .I1(\gen_AB_reg_slice.payload_a [28]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[221]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [29]),
        .I1(\gen_AB_reg_slice.payload_a [29]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[222]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [30]),
        .I1(\gen_AB_reg_slice.payload_a [30]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[223]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [31]),
        .I1(\gen_AB_reg_slice.payload_a [31]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[224]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [32]),
        .I1(\gen_AB_reg_slice.payload_a [32]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[225]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [33]),
        .I1(\gen_AB_reg_slice.payload_a [33]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[33]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[226]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [34]),
        .I1(\gen_AB_reg_slice.payload_a [34]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[34]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[227]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [35]),
        .I1(\gen_AB_reg_slice.payload_a [35]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[35]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[228]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [36]),
        .I1(\gen_AB_reg_slice.payload_a [36]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[36]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[229]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [37]),
        .I1(\gen_AB_reg_slice.payload_a [37]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[37]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[230]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [38]),
        .I1(\gen_AB_reg_slice.payload_a [38]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[38]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[231]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [39]),
        .I1(\gen_AB_reg_slice.payload_a [39]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[39]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[232]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [40]),
        .I1(\gen_AB_reg_slice.payload_a [40]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[40]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[233]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [41]),
        .I1(\gen_AB_reg_slice.payload_a [41]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[41]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[234]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [42]),
        .I1(\gen_AB_reg_slice.payload_a [42]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[42]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[235]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [43]),
        .I1(\gen_AB_reg_slice.payload_a [43]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[43]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[236]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [44]),
        .I1(\gen_AB_reg_slice.payload_a [44]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[44]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[237]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [45]),
        .I1(\gen_AB_reg_slice.payload_a [45]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[45]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[238]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [46]),
        .I1(\gen_AB_reg_slice.payload_a [46]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[46]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[239]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [47]),
        .I1(\gen_AB_reg_slice.payload_a [47]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[47]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[240]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [48]),
        .I1(\gen_AB_reg_slice.payload_a [48]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[48]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[241]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [49]),
        .I1(\gen_AB_reg_slice.payload_a [49]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[49]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[242]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [50]),
        .I1(\gen_AB_reg_slice.payload_a [50]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[50]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[243]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [51]),
        .I1(\gen_AB_reg_slice.payload_a [51]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[51]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[244]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [52]),
        .I1(\gen_AB_reg_slice.payload_a [52]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[52]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[245]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [53]),
        .I1(\gen_AB_reg_slice.payload_a [53]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[53]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[246]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [54]),
        .I1(\gen_AB_reg_slice.payload_a [54]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[54]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[247]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [55]),
        .I1(\gen_AB_reg_slice.payload_a [55]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[55]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[248]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [56]),
        .I1(\gen_AB_reg_slice.payload_a [56]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[56]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[249]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [57]),
        .I1(\gen_AB_reg_slice.payload_a [57]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[57]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[250]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [58]),
        .I1(\gen_AB_reg_slice.payload_a [58]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[58]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[251]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [59]),
        .I1(\gen_AB_reg_slice.payload_a [59]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[59]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[252]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [60]),
        .I1(\gen_AB_reg_slice.payload_a [60]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[60]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[253]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [61]),
        .I1(\gen_AB_reg_slice.payload_a [61]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[61]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[254]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [62]),
        .I1(\gen_AB_reg_slice.payload_a [62]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[62]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[255]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [63]),
        .I1(\gen_AB_reg_slice.payload_a [63]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[63]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[18]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [86]),
        .I1(\gen_AB_reg_slice.payload_a [86]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[86]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[19]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [87]),
        .I1(\gen_AB_reg_slice.payload_a [87]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[87]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[20]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [88]),
        .I1(\gen_AB_reg_slice.payload_a [88]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[88]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[21]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [89]),
        .I1(\gen_AB_reg_slice.payload_a [89]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[89]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[22]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [90]),
        .I1(\gen_AB_reg_slice.payload_a [90]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[90]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[23]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [91]),
        .I1(\gen_AB_reg_slice.payload_a [91]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[91]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[15]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [81]),
        .I1(\gen_AB_reg_slice.payload_a [81]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[81]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[16]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [82]),
        .I1(\gen_AB_reg_slice.payload_a [82]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[82]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[17]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [83]),
        .I1(\gen_AB_reg_slice.payload_a [83]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[83]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[18]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [84]),
        .I1(\gen_AB_reg_slice.payload_a [84]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[84]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[19]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [85]),
        .I1(\gen_AB_reg_slice.payload_a [85]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[85]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[24]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [72]),
        .I1(\gen_AB_reg_slice.payload_a [72]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[72]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[25]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [73]),
        .I1(\gen_AB_reg_slice.payload_a [73]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[73]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[26]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [74]),
        .I1(\gen_AB_reg_slice.payload_a [74]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[74]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[27]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [75]),
        .I1(\gen_AB_reg_slice.payload_a [75]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[75]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[28]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [76]),
        .I1(\gen_AB_reg_slice.payload_a [76]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[76]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[29]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [77]),
        .I1(\gen_AB_reg_slice.payload_a [77]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[77]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[30]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [78]),
        .I1(\gen_AB_reg_slice.payload_a [78]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[78]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[31]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [79]),
        .I1(\gen_AB_reg_slice.payload_a [79]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[79]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tlast[3]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [80]),
        .I1(\gen_AB_reg_slice.payload_a [80]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[80]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[24]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [64]),
        .I1(\gen_AB_reg_slice.payload_a [64]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[64]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[25]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [65]),
        .I1(\gen_AB_reg_slice.payload_a [65]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[65]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[26]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [66]),
        .I1(\gen_AB_reg_slice.payload_a [66]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[66]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[27]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [67]),
        .I1(\gen_AB_reg_slice.payload_a [67]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[67]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[28]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [68]),
        .I1(\gen_AB_reg_slice.payload_a [68]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[68]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[29]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [69]),
        .I1(\gen_AB_reg_slice.payload_a [69]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[69]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[30]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [70]),
        .I1(\gen_AB_reg_slice.payload_a [70]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[70]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[31]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [71]),
        .I1(\gen_AB_reg_slice.payload_a [71]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[71]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tuser[6]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [92]),
        .I1(\gen_AB_reg_slice.payload_a [92]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[92]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tuser[7]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [93]),
        .I1(\gen_AB_reg_slice.payload_a [93]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_2_out[93]));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_19_axisc_register_slice" *) 
module design_1_axis_switch_1_2_axis_register_slice_v1_1_19_axisc_register_slice_4
   (\gen_AB_reg_slice.state_reg[1]_0 ,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    aclk,
    aclken,
    areset_r,
    Q,
    \gen_static_routing.tready_mux ,
    s_axis_tvalid,
    \m_axis_tvalid[3] ,
    p_2_out,
    D);
  output \gen_AB_reg_slice.state_reg[1]_0 ;
  output [3:0]m_axis_tvalid;
  output [255:0]m_axis_tdata;
  output [31:0]m_axis_tstrb;
  output [31:0]m_axis_tkeep;
  output [3:0]m_axis_tlast;
  output [19:0]m_axis_tid;
  output [23:0]m_axis_tdest;
  output [7:0]m_axis_tuser;
  input aclk;
  input aclken;
  input areset_r;
  input [20:0]Q;
  input \gen_static_routing.tready_mux ;
  input [0:0]s_axis_tvalid;
  input [0:0]\m_axis_tvalid[3] ;
  input [93:0]p_2_out;
  input [93:0]D;

  wire [93:0]D;
  wire [20:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [93:0]\gen_AB_reg_slice.payload_a ;
  wire \gen_AB_reg_slice.payload_a[93]_i_1_n_0 ;
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
  wire \gen_static_routing.tready_mux ;
  wire [255:0]m_axis_tdata;
  wire [23:0]m_axis_tdest;
  wire [19:0]m_axis_tid;
  wire [31:0]m_axis_tkeep;
  wire [3:0]m_axis_tlast;
  wire [31:0]m_axis_tstrb;
  wire [7:0]m_axis_tuser;
  wire [3:0]m_axis_tvalid;
  wire [0:0]\m_axis_tvalid[3] ;
  wire [6:6]mux_tvalid;
  wire [93:0]p_2_out;
  wire [93:0]p_7_out;
  wire [0:0]s_axis_tvalid;

  LUT4 #(
    .INIT(16'h008A)) 
    \gen_AB_reg_slice.payload_a[93]_i_1 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(mux_tvalid),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_a [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_a [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_a [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_a [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_a [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_a [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_a [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_a [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_a [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_a [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_a [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_a [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_a [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_a [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_a [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_a [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_a [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_a [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_a [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_a [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_a [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_a [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_a [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_a [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_a [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_a [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_a [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_a [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_a [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_a [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_a [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_a [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_a [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_a [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[40] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[40]),
        .Q(\gen_AB_reg_slice.payload_a [40]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[41] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[41]),
        .Q(\gen_AB_reg_slice.payload_a [41]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[42] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[42]),
        .Q(\gen_AB_reg_slice.payload_a [42]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[43] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[43]),
        .Q(\gen_AB_reg_slice.payload_a [43]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[44] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[44]),
        .Q(\gen_AB_reg_slice.payload_a [44]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[45] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[45]),
        .Q(\gen_AB_reg_slice.payload_a [45]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[46] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[46]),
        .Q(\gen_AB_reg_slice.payload_a [46]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[47] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[47]),
        .Q(\gen_AB_reg_slice.payload_a [47]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[48] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[48]),
        .Q(\gen_AB_reg_slice.payload_a [48]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[49] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[49]),
        .Q(\gen_AB_reg_slice.payload_a [49]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_a [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[50] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[50]),
        .Q(\gen_AB_reg_slice.payload_a [50]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[51] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[51]),
        .Q(\gen_AB_reg_slice.payload_a [51]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[52] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[52]),
        .Q(\gen_AB_reg_slice.payload_a [52]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[53] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[53]),
        .Q(\gen_AB_reg_slice.payload_a [53]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[54] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[54]),
        .Q(\gen_AB_reg_slice.payload_a [54]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[55] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[55]),
        .Q(\gen_AB_reg_slice.payload_a [55]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[56] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[56]),
        .Q(\gen_AB_reg_slice.payload_a [56]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[57] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[57]),
        .Q(\gen_AB_reg_slice.payload_a [57]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[58] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[58]),
        .Q(\gen_AB_reg_slice.payload_a [58]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[59] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[59]),
        .Q(\gen_AB_reg_slice.payload_a [59]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_a [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[60] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[60]),
        .Q(\gen_AB_reg_slice.payload_a [60]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[61] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[61]),
        .Q(\gen_AB_reg_slice.payload_a [61]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[62] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[62]),
        .Q(\gen_AB_reg_slice.payload_a [62]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[63] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[63]),
        .Q(\gen_AB_reg_slice.payload_a [63]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[64] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[64]),
        .Q(\gen_AB_reg_slice.payload_a [64]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[65] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[65]),
        .Q(\gen_AB_reg_slice.payload_a [65]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[66] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[66]),
        .Q(\gen_AB_reg_slice.payload_a [66]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[67] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[67]),
        .Q(\gen_AB_reg_slice.payload_a [67]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[68] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[68]),
        .Q(\gen_AB_reg_slice.payload_a [68]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[69] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[69]),
        .Q(\gen_AB_reg_slice.payload_a [69]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_a [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[70] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[70]),
        .Q(\gen_AB_reg_slice.payload_a [70]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[71] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[71]),
        .Q(\gen_AB_reg_slice.payload_a [71]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[72] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[72]),
        .Q(\gen_AB_reg_slice.payload_a [72]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[73] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[73]),
        .Q(\gen_AB_reg_slice.payload_a [73]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[74] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[74]),
        .Q(\gen_AB_reg_slice.payload_a [74]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[75] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[75]),
        .Q(\gen_AB_reg_slice.payload_a [75]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[76] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[76]),
        .Q(\gen_AB_reg_slice.payload_a [76]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[77] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[77]),
        .Q(\gen_AB_reg_slice.payload_a [77]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[78] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[78]),
        .Q(\gen_AB_reg_slice.payload_a [78]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[79] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[79]),
        .Q(\gen_AB_reg_slice.payload_a [79]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_a [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[80] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[80]),
        .Q(\gen_AB_reg_slice.payload_a [80]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[81] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[81]),
        .Q(\gen_AB_reg_slice.payload_a [81]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[82] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[82]),
        .Q(\gen_AB_reg_slice.payload_a [82]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[83] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[83]),
        .Q(\gen_AB_reg_slice.payload_a [83]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[84] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[84]),
        .Q(\gen_AB_reg_slice.payload_a [84]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[85] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[85]),
        .Q(\gen_AB_reg_slice.payload_a [85]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[86] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[86]),
        .Q(\gen_AB_reg_slice.payload_a [86]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[87] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[87]),
        .Q(\gen_AB_reg_slice.payload_a [87]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[88] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[88]),
        .Q(\gen_AB_reg_slice.payload_a [88]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[89] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[89]),
        .Q(\gen_AB_reg_slice.payload_a [89]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_a [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[90] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[90]),
        .Q(\gen_AB_reg_slice.payload_a [90]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[91] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[91]),
        .Q(\gen_AB_reg_slice.payload_a [91]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[92] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[92]),
        .Q(\gen_AB_reg_slice.payload_a [92]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[93] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[93]),
        .Q(\gen_AB_reg_slice.payload_a [93]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[93]_i_1_n_0 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_a [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8A00)) 
    \gen_AB_reg_slice.payload_b[93]_i_1 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(mux_tvalid),
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
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_rd_i_1 
       (.I0(aclken),
        .I1(mux_tvalid),
        .I2(\gen_static_routing.tready_mux ),
        .I3(\gen_AB_reg_slice.sel ),
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
       (.I0(s_axis_tvalid),
        .I1(aclken),
        .I2(\gen_AB_reg_slice.state_reg[1]_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFA70F0F0)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(aclken),
        .I1(\gen_static_routing.tready_mux ),
        .I2(mux_tvalid),
        .I3(s_axis_tvalid),
        .I4(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(areset_r),
        .I1(Q[20]),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFFF8A8A)) 
    \gen_AB_reg_slice.state[1]_i_2 
       (.I0(aclken),
        .I1(\gen_static_routing.tready_mux ),
        .I2(mux_tvalid),
        .I3(s_axis_tvalid),
        .I4(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[1]_i_2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(mux_tvalid),
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
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[0]),
        .I2(Q[0]),
        .I3(p_2_out[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[100]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[36]),
        .I2(Q[4]),
        .I3(p_2_out[36]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[100]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[101]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[37]),
        .I2(Q[4]),
        .I3(p_2_out[37]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[101]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[102]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[38]),
        .I2(Q[4]),
        .I3(p_2_out[38]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[102]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[103]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[39]),
        .I2(Q[4]),
        .I3(p_2_out[39]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[103]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[104]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[40]),
        .I2(Q[4]),
        .I3(p_2_out[40]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[104]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[105]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[41]),
        .I2(Q[4]),
        .I3(p_2_out[41]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[105]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[106]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[42]),
        .I2(Q[4]),
        .I3(p_2_out[42]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[106]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[107]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[43]),
        .I2(Q[4]),
        .I3(p_2_out[43]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[107]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[108]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[44]),
        .I2(Q[4]),
        .I3(p_2_out[44]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[108]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[109]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[45]),
        .I2(Q[4]),
        .I3(p_2_out[45]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[109]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[10]),
        .I2(Q[0]),
        .I3(p_2_out[10]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[10]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[110]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[46]),
        .I2(Q[4]),
        .I3(p_2_out[46]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[110]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[111]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[47]),
        .I2(Q[4]),
        .I3(p_2_out[47]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[111]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[112]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[48]),
        .I2(Q[4]),
        .I3(p_2_out[48]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[112]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[113]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[49]),
        .I2(Q[4]),
        .I3(p_2_out[49]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[113]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[114]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[50]),
        .I2(Q[4]),
        .I3(p_2_out[50]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[114]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[115]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[51]),
        .I2(Q[4]),
        .I3(p_2_out[51]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[115]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[116]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[52]),
        .I2(Q[4]),
        .I3(p_2_out[52]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[116]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[117]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[53]),
        .I2(Q[4]),
        .I3(p_2_out[53]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[117]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[118]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[54]),
        .I2(Q[4]),
        .I3(p_2_out[54]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[118]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[119]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[55]),
        .I2(Q[4]),
        .I3(p_2_out[55]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[119]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[11]),
        .I2(Q[0]),
        .I3(p_2_out[11]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[11]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[120]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[56]),
        .I2(Q[4]),
        .I3(p_2_out[56]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[120]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[121]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[57]),
        .I2(Q[4]),
        .I3(p_2_out[57]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[121]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[122]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[58]),
        .I2(Q[4]),
        .I3(p_2_out[58]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[122]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[123]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[59]),
        .I2(Q[4]),
        .I3(p_2_out[59]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[123]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[124]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[60]),
        .I2(Q[4]),
        .I3(p_2_out[60]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[124]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[125]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[61]),
        .I2(Q[4]),
        .I3(p_2_out[61]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[125]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[126]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[62]),
        .I2(Q[4]),
        .I3(p_2_out[62]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[126]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[127]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[63]),
        .I2(Q[4]),
        .I3(p_2_out[63]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[127]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[128]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[0]),
        .I2(Q[8]),
        .I3(p_2_out[0]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[128]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[129]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[1]),
        .I2(Q[8]),
        .I3(p_2_out[1]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[129]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[12]),
        .I2(Q[0]),
        .I3(p_2_out[12]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[12]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[130]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[2]),
        .I2(Q[8]),
        .I3(p_2_out[2]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[130]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[131]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[3]),
        .I2(Q[8]),
        .I3(p_2_out[3]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[131]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[132]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[4]),
        .I2(Q[8]),
        .I3(p_2_out[4]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[132]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[133]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[5]),
        .I2(Q[8]),
        .I3(p_2_out[5]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[133]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[134]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[6]),
        .I2(Q[8]),
        .I3(p_2_out[6]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[134]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[135]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[7]),
        .I2(Q[8]),
        .I3(p_2_out[7]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[135]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[136]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[8]),
        .I2(Q[8]),
        .I3(p_2_out[8]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[136]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[137]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[9]),
        .I2(Q[8]),
        .I3(p_2_out[9]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[137]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[138]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[10]),
        .I2(Q[8]),
        .I3(p_2_out[10]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[138]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[139]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[11]),
        .I2(Q[8]),
        .I3(p_2_out[11]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[139]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[13]),
        .I2(Q[0]),
        .I3(p_2_out[13]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[13]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[140]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[12]),
        .I2(Q[8]),
        .I3(p_2_out[12]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[140]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[141]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[13]),
        .I2(Q[8]),
        .I3(p_2_out[13]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[141]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[142]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[14]),
        .I2(Q[8]),
        .I3(p_2_out[14]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[142]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[143]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[15]),
        .I2(Q[8]),
        .I3(p_2_out[15]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[143]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[144]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[16]),
        .I2(Q[8]),
        .I3(p_2_out[16]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[144]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[145]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[17]),
        .I2(Q[8]),
        .I3(p_2_out[17]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[145]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[146]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[18]),
        .I2(Q[8]),
        .I3(p_2_out[18]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[146]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[147]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[19]),
        .I2(Q[8]),
        .I3(p_2_out[19]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[147]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[148]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[20]),
        .I2(Q[8]),
        .I3(p_2_out[20]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[148]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[149]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[21]),
        .I2(Q[8]),
        .I3(p_2_out[21]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[149]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[14]),
        .I2(Q[0]),
        .I3(p_2_out[14]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[14]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[150]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[22]),
        .I2(Q[8]),
        .I3(p_2_out[22]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[150]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[151]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[23]),
        .I2(Q[8]),
        .I3(p_2_out[23]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[151]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[152]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[24]),
        .I2(Q[8]),
        .I3(p_2_out[24]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[152]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[153]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[25]),
        .I2(Q[8]),
        .I3(p_2_out[25]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[153]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[154]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[26]),
        .I2(Q[8]),
        .I3(p_2_out[26]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[154]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[155]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[27]),
        .I2(Q[8]),
        .I3(p_2_out[27]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[155]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[156]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[28]),
        .I2(Q[8]),
        .I3(p_2_out[28]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[156]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[157]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[29]),
        .I2(Q[8]),
        .I3(p_2_out[29]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[157]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[158]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[30]),
        .I2(Q[8]),
        .I3(p_2_out[30]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[158]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[159]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[31]),
        .I2(Q[8]),
        .I3(p_2_out[31]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[159]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[15]),
        .I2(Q[0]),
        .I3(p_2_out[15]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[15]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[160]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[32]),
        .I2(Q[8]),
        .I3(p_2_out[32]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[160]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[161]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[33]),
        .I2(Q[8]),
        .I3(p_2_out[33]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[161]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[162]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[34]),
        .I2(Q[8]),
        .I3(p_2_out[34]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[162]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[163]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[35]),
        .I2(Q[8]),
        .I3(p_2_out[35]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[163]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[164]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[36]),
        .I2(Q[8]),
        .I3(p_2_out[36]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[164]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[165]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[37]),
        .I2(Q[8]),
        .I3(p_2_out[37]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[165]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[166]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[38]),
        .I2(Q[8]),
        .I3(p_2_out[38]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[166]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[167]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[39]),
        .I2(Q[8]),
        .I3(p_2_out[39]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[167]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[168]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[40]),
        .I2(Q[8]),
        .I3(p_2_out[40]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[168]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[169]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[41]),
        .I2(Q[8]),
        .I3(p_2_out[41]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[169]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[16]),
        .I2(Q[0]),
        .I3(p_2_out[16]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[16]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[170]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[42]),
        .I2(Q[8]),
        .I3(p_2_out[42]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[170]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[171]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[43]),
        .I2(Q[8]),
        .I3(p_2_out[43]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[171]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[172]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[44]),
        .I2(Q[8]),
        .I3(p_2_out[44]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[172]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[173]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[45]),
        .I2(Q[8]),
        .I3(p_2_out[45]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[173]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[174]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[46]),
        .I2(Q[8]),
        .I3(p_2_out[46]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[174]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[175]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[47]),
        .I2(Q[8]),
        .I3(p_2_out[47]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[175]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[176]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[48]),
        .I2(Q[8]),
        .I3(p_2_out[48]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[176]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[177]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[49]),
        .I2(Q[8]),
        .I3(p_2_out[49]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[177]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[178]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[50]),
        .I2(Q[8]),
        .I3(p_2_out[50]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[178]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[179]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[51]),
        .I2(Q[8]),
        .I3(p_2_out[51]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[179]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[17]),
        .I2(Q[0]),
        .I3(p_2_out[17]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[17]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[180]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[52]),
        .I2(Q[8]),
        .I3(p_2_out[52]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[180]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[181]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[53]),
        .I2(Q[8]),
        .I3(p_2_out[53]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[181]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[182]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[54]),
        .I2(Q[8]),
        .I3(p_2_out[54]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[182]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[183]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[55]),
        .I2(Q[8]),
        .I3(p_2_out[55]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[183]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[184]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[56]),
        .I2(Q[8]),
        .I3(p_2_out[56]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[184]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[185]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[57]),
        .I2(Q[8]),
        .I3(p_2_out[57]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[185]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[186]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[58]),
        .I2(Q[8]),
        .I3(p_2_out[58]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[186]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[187]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[59]),
        .I2(Q[8]),
        .I3(p_2_out[59]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[187]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[188]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[60]),
        .I2(Q[8]),
        .I3(p_2_out[60]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[188]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[189]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[61]),
        .I2(Q[8]),
        .I3(p_2_out[61]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[189]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[18]),
        .I2(Q[0]),
        .I3(p_2_out[18]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[18]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[190]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[62]),
        .I2(Q[8]),
        .I3(p_2_out[62]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[190]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[191]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[63]),
        .I2(Q[8]),
        .I3(p_2_out[63]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdata[191]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[192]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[0]),
        .I2(Q[12]),
        .I3(p_2_out[0]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[192]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[192]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [0]),
        .I1(\gen_AB_reg_slice.payload_a [0]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[0]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[193]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[1]),
        .I2(Q[12]),
        .I3(p_2_out[1]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[193]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[193]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [1]),
        .I1(\gen_AB_reg_slice.payload_a [1]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[1]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[194]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[2]),
        .I2(Q[12]),
        .I3(p_2_out[2]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[194]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[194]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [2]),
        .I1(\gen_AB_reg_slice.payload_a [2]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[2]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[195]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[3]),
        .I2(Q[12]),
        .I3(p_2_out[3]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[195]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[195]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [3]),
        .I1(\gen_AB_reg_slice.payload_a [3]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[3]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[196]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[4]),
        .I2(Q[12]),
        .I3(p_2_out[4]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[196]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[196]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [4]),
        .I1(\gen_AB_reg_slice.payload_a [4]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[4]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[197]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[5]),
        .I2(Q[12]),
        .I3(p_2_out[5]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[197]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[197]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [5]),
        .I1(\gen_AB_reg_slice.payload_a [5]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[5]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[198]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[6]),
        .I2(Q[12]),
        .I3(p_2_out[6]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[198]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[198]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [6]),
        .I1(\gen_AB_reg_slice.payload_a [6]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[6]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[199]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[7]),
        .I2(Q[12]),
        .I3(p_2_out[7]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[199]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[199]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [7]),
        .I1(\gen_AB_reg_slice.payload_a [7]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[7]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[19]),
        .I2(Q[0]),
        .I3(p_2_out[19]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[19]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[1]),
        .I2(Q[0]),
        .I3(p_2_out[1]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[1]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[200]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[8]),
        .I2(Q[12]),
        .I3(p_2_out[8]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[200]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[200]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [8]),
        .I1(\gen_AB_reg_slice.payload_a [8]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[8]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[201]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[9]),
        .I2(Q[12]),
        .I3(p_2_out[9]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[201]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[201]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [9]),
        .I1(\gen_AB_reg_slice.payload_a [9]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[9]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[202]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[10]),
        .I2(Q[12]),
        .I3(p_2_out[10]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[202]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[202]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [10]),
        .I1(\gen_AB_reg_slice.payload_a [10]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[10]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[203]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[11]),
        .I2(Q[12]),
        .I3(p_2_out[11]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[203]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[203]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [11]),
        .I1(\gen_AB_reg_slice.payload_a [11]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[11]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[204]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[12]),
        .I2(Q[12]),
        .I3(p_2_out[12]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[204]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[204]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [12]),
        .I1(\gen_AB_reg_slice.payload_a [12]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[12]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[205]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[13]),
        .I2(Q[12]),
        .I3(p_2_out[13]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[205]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[205]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [13]),
        .I1(\gen_AB_reg_slice.payload_a [13]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[13]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[206]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[14]),
        .I2(Q[12]),
        .I3(p_2_out[14]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[206]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[206]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [14]),
        .I1(\gen_AB_reg_slice.payload_a [14]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[14]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[207]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[15]),
        .I2(Q[12]),
        .I3(p_2_out[15]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[207]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[207]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [15]),
        .I1(\gen_AB_reg_slice.payload_a [15]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[15]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[208]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[16]),
        .I2(Q[12]),
        .I3(p_2_out[16]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[208]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[208]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [16]),
        .I1(\gen_AB_reg_slice.payload_a [16]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[16]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[209]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[17]),
        .I2(Q[12]),
        .I3(p_2_out[17]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[209]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[209]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [17]),
        .I1(\gen_AB_reg_slice.payload_a [17]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[17]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[20]),
        .I2(Q[0]),
        .I3(p_2_out[20]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[20]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[210]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[18]),
        .I2(Q[12]),
        .I3(p_2_out[18]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[210]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[210]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [18]),
        .I1(\gen_AB_reg_slice.payload_a [18]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[18]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[211]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[19]),
        .I2(Q[12]),
        .I3(p_2_out[19]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[211]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[211]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [19]),
        .I1(\gen_AB_reg_slice.payload_a [19]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[19]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[212]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[20]),
        .I2(Q[12]),
        .I3(p_2_out[20]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[212]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[212]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [20]),
        .I1(\gen_AB_reg_slice.payload_a [20]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[20]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[213]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[21]),
        .I2(Q[12]),
        .I3(p_2_out[21]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[213]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[213]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [21]),
        .I1(\gen_AB_reg_slice.payload_a [21]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[21]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[214]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[22]),
        .I2(Q[12]),
        .I3(p_2_out[22]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[214]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[214]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [22]),
        .I1(\gen_AB_reg_slice.payload_a [22]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[22]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[215]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[23]),
        .I2(Q[12]),
        .I3(p_2_out[23]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[215]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[215]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [23]),
        .I1(\gen_AB_reg_slice.payload_a [23]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[23]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[216]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[24]),
        .I2(Q[12]),
        .I3(p_2_out[24]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[216]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[216]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [24]),
        .I1(\gen_AB_reg_slice.payload_a [24]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[24]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[217]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[25]),
        .I2(Q[12]),
        .I3(p_2_out[25]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[217]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[217]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [25]),
        .I1(\gen_AB_reg_slice.payload_a [25]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[25]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[218]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[26]),
        .I2(Q[12]),
        .I3(p_2_out[26]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[218]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[218]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [26]),
        .I1(\gen_AB_reg_slice.payload_a [26]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[26]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[219]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[27]),
        .I2(Q[12]),
        .I3(p_2_out[27]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[219]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[219]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [27]),
        .I1(\gen_AB_reg_slice.payload_a [27]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[27]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[21]),
        .I2(Q[0]),
        .I3(p_2_out[21]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[21]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[220]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[28]),
        .I2(Q[12]),
        .I3(p_2_out[28]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[220]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[220]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [28]),
        .I1(\gen_AB_reg_slice.payload_a [28]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[28]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[221]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[29]),
        .I2(Q[12]),
        .I3(p_2_out[29]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[221]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[221]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [29]),
        .I1(\gen_AB_reg_slice.payload_a [29]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[29]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[222]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[30]),
        .I2(Q[12]),
        .I3(p_2_out[30]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[222]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[222]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [30]),
        .I1(\gen_AB_reg_slice.payload_a [30]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[30]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[223]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[31]),
        .I2(Q[12]),
        .I3(p_2_out[31]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[223]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[223]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [31]),
        .I1(\gen_AB_reg_slice.payload_a [31]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[31]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[224]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[32]),
        .I2(Q[12]),
        .I3(p_2_out[32]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[224]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[224]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [32]),
        .I1(\gen_AB_reg_slice.payload_a [32]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[32]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[225]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[33]),
        .I2(Q[12]),
        .I3(p_2_out[33]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[225]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[225]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [33]),
        .I1(\gen_AB_reg_slice.payload_a [33]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[33]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[226]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[34]),
        .I2(Q[12]),
        .I3(p_2_out[34]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[226]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[226]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [34]),
        .I1(\gen_AB_reg_slice.payload_a [34]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[34]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[227]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[35]),
        .I2(Q[12]),
        .I3(p_2_out[35]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[227]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[227]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [35]),
        .I1(\gen_AB_reg_slice.payload_a [35]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[35]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[228]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[36]),
        .I2(Q[12]),
        .I3(p_2_out[36]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[228]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[228]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [36]),
        .I1(\gen_AB_reg_slice.payload_a [36]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[36]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[229]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[37]),
        .I2(Q[12]),
        .I3(p_2_out[37]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[229]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[229]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [37]),
        .I1(\gen_AB_reg_slice.payload_a [37]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[37]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[22]),
        .I2(Q[0]),
        .I3(p_2_out[22]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[22]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[230]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[38]),
        .I2(Q[12]),
        .I3(p_2_out[38]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[230]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[230]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [38]),
        .I1(\gen_AB_reg_slice.payload_a [38]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[38]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[231]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[39]),
        .I2(Q[12]),
        .I3(p_2_out[39]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[231]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[231]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [39]),
        .I1(\gen_AB_reg_slice.payload_a [39]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[39]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[232]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[40]),
        .I2(Q[12]),
        .I3(p_2_out[40]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[232]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[232]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [40]),
        .I1(\gen_AB_reg_slice.payload_a [40]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[40]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[233]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[41]),
        .I2(Q[12]),
        .I3(p_2_out[41]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[233]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[233]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [41]),
        .I1(\gen_AB_reg_slice.payload_a [41]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[41]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[234]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[42]),
        .I2(Q[12]),
        .I3(p_2_out[42]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[234]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[234]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [42]),
        .I1(\gen_AB_reg_slice.payload_a [42]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[42]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[235]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[43]),
        .I2(Q[12]),
        .I3(p_2_out[43]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[235]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[235]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [43]),
        .I1(\gen_AB_reg_slice.payload_a [43]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[43]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[236]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[44]),
        .I2(Q[12]),
        .I3(p_2_out[44]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[236]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[236]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [44]),
        .I1(\gen_AB_reg_slice.payload_a [44]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[44]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[237]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[45]),
        .I2(Q[12]),
        .I3(p_2_out[45]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[237]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[237]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [45]),
        .I1(\gen_AB_reg_slice.payload_a [45]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[45]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[238]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[46]),
        .I2(Q[12]),
        .I3(p_2_out[46]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[238]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[238]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [46]),
        .I1(\gen_AB_reg_slice.payload_a [46]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[46]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[239]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[47]),
        .I2(Q[12]),
        .I3(p_2_out[47]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[239]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[239]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [47]),
        .I1(\gen_AB_reg_slice.payload_a [47]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[47]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[23]),
        .I2(Q[0]),
        .I3(p_2_out[23]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[23]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[240]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[48]),
        .I2(Q[12]),
        .I3(p_2_out[48]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[240]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[240]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [48]),
        .I1(\gen_AB_reg_slice.payload_a [48]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[48]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[241]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[49]),
        .I2(Q[12]),
        .I3(p_2_out[49]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[241]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[241]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [49]),
        .I1(\gen_AB_reg_slice.payload_a [49]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[49]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[242]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[50]),
        .I2(Q[12]),
        .I3(p_2_out[50]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[242]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[242]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [50]),
        .I1(\gen_AB_reg_slice.payload_a [50]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[50]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[243]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[51]),
        .I2(Q[12]),
        .I3(p_2_out[51]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[243]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[243]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [51]),
        .I1(\gen_AB_reg_slice.payload_a [51]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[51]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[244]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[52]),
        .I2(Q[12]),
        .I3(p_2_out[52]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[244]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[244]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [52]),
        .I1(\gen_AB_reg_slice.payload_a [52]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[52]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[245]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[53]),
        .I2(Q[12]),
        .I3(p_2_out[53]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[245]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[245]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [53]),
        .I1(\gen_AB_reg_slice.payload_a [53]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[53]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[246]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[54]),
        .I2(Q[12]),
        .I3(p_2_out[54]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[246]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[246]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [54]),
        .I1(\gen_AB_reg_slice.payload_a [54]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[54]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[247]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[55]),
        .I2(Q[12]),
        .I3(p_2_out[55]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[247]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[247]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [55]),
        .I1(\gen_AB_reg_slice.payload_a [55]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[55]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[248]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[56]),
        .I2(Q[12]),
        .I3(p_2_out[56]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[248]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[248]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [56]),
        .I1(\gen_AB_reg_slice.payload_a [56]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[56]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[249]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[57]),
        .I2(Q[12]),
        .I3(p_2_out[57]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[249]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[249]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [57]),
        .I1(\gen_AB_reg_slice.payload_a [57]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[57]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[24]),
        .I2(Q[0]),
        .I3(p_2_out[24]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[24]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[250]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[58]),
        .I2(Q[12]),
        .I3(p_2_out[58]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[250]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[250]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [58]),
        .I1(\gen_AB_reg_slice.payload_a [58]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[58]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[251]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[59]),
        .I2(Q[12]),
        .I3(p_2_out[59]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[251]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[251]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [59]),
        .I1(\gen_AB_reg_slice.payload_a [59]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[59]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[252]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[60]),
        .I2(Q[12]),
        .I3(p_2_out[60]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[252]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[252]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [60]),
        .I1(\gen_AB_reg_slice.payload_a [60]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[60]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[253]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[61]),
        .I2(Q[12]),
        .I3(p_2_out[61]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[253]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[253]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [61]),
        .I1(\gen_AB_reg_slice.payload_a [61]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[61]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[254]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[62]),
        .I2(Q[12]),
        .I3(p_2_out[62]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[254]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[254]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [62]),
        .I1(\gen_AB_reg_slice.payload_a [62]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[62]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[255]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[63]),
        .I2(Q[12]),
        .I3(p_2_out[63]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdata[255]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[255]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [63]),
        .I1(\gen_AB_reg_slice.payload_a [63]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[63]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[25]),
        .I2(Q[0]),
        .I3(p_2_out[25]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[25]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[26]),
        .I2(Q[0]),
        .I3(p_2_out[26]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[26]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[27]),
        .I2(Q[0]),
        .I3(p_2_out[27]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[27]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[28]),
        .I2(Q[0]),
        .I3(p_2_out[28]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[28]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[29]),
        .I2(Q[0]),
        .I3(p_2_out[29]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[29]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[2]),
        .I2(Q[0]),
        .I3(p_2_out[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[30]),
        .I2(Q[0]),
        .I3(p_2_out[30]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[30]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[31]),
        .I2(Q[0]),
        .I3(p_2_out[31]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[31]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[32]),
        .I2(Q[0]),
        .I3(p_2_out[32]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[32]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[33]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[33]),
        .I2(Q[0]),
        .I3(p_2_out[33]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[33]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[34]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[34]),
        .I2(Q[0]),
        .I3(p_2_out[34]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[34]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[35]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[35]),
        .I2(Q[0]),
        .I3(p_2_out[35]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[35]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[36]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[36]),
        .I2(Q[0]),
        .I3(p_2_out[36]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[36]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[37]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[37]),
        .I2(Q[0]),
        .I3(p_2_out[37]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[37]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[38]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[38]),
        .I2(Q[0]),
        .I3(p_2_out[38]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[38]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[39]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[39]),
        .I2(Q[0]),
        .I3(p_2_out[39]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[39]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[3]),
        .I2(Q[0]),
        .I3(p_2_out[3]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[40]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[40]),
        .I2(Q[0]),
        .I3(p_2_out[40]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[40]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[41]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[41]),
        .I2(Q[0]),
        .I3(p_2_out[41]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[41]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[42]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[42]),
        .I2(Q[0]),
        .I3(p_2_out[42]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[42]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[43]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[43]),
        .I2(Q[0]),
        .I3(p_2_out[43]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[43]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[44]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[44]),
        .I2(Q[0]),
        .I3(p_2_out[44]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[44]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[45]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[45]),
        .I2(Q[0]),
        .I3(p_2_out[45]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[45]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[46]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[46]),
        .I2(Q[0]),
        .I3(p_2_out[46]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[46]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[47]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[47]),
        .I2(Q[0]),
        .I3(p_2_out[47]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[47]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[48]),
        .I2(Q[0]),
        .I3(p_2_out[48]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[48]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[49]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[49]),
        .I2(Q[0]),
        .I3(p_2_out[49]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[49]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[4]),
        .I2(Q[0]),
        .I3(p_2_out[4]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[50]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[50]),
        .I2(Q[0]),
        .I3(p_2_out[50]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[50]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[51]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[51]),
        .I2(Q[0]),
        .I3(p_2_out[51]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[51]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[52]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[52]),
        .I2(Q[0]),
        .I3(p_2_out[52]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[52]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[53]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[53]),
        .I2(Q[0]),
        .I3(p_2_out[53]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[53]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[54]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[54]),
        .I2(Q[0]),
        .I3(p_2_out[54]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[54]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[55]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[55]),
        .I2(Q[0]),
        .I3(p_2_out[55]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[55]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[56]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[56]),
        .I2(Q[0]),
        .I3(p_2_out[56]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[56]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[57]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[57]),
        .I2(Q[0]),
        .I3(p_2_out[57]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[57]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[58]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[58]),
        .I2(Q[0]),
        .I3(p_2_out[58]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[58]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[59]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[59]),
        .I2(Q[0]),
        .I3(p_2_out[59]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[59]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[5]),
        .I2(Q[0]),
        .I3(p_2_out[5]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[60]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[60]),
        .I2(Q[0]),
        .I3(p_2_out[60]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[60]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[61]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[61]),
        .I2(Q[0]),
        .I3(p_2_out[61]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[61]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[62]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[62]),
        .I2(Q[0]),
        .I3(p_2_out[62]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[62]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[63]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[63]),
        .I2(Q[0]),
        .I3(p_2_out[63]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[63]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[64]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[0]),
        .I2(Q[4]),
        .I3(p_2_out[0]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[64]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[65]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[1]),
        .I2(Q[4]),
        .I3(p_2_out[1]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[65]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[66]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[2]),
        .I2(Q[4]),
        .I3(p_2_out[2]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[66]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[67]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[3]),
        .I2(Q[4]),
        .I3(p_2_out[3]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[67]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[68]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[4]),
        .I2(Q[4]),
        .I3(p_2_out[4]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[68]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[69]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[5]),
        .I2(Q[4]),
        .I3(p_2_out[5]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[69]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[6]),
        .I2(Q[0]),
        .I3(p_2_out[6]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[6]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[70]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[6]),
        .I2(Q[4]),
        .I3(p_2_out[6]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[70]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[71]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[7]),
        .I2(Q[4]),
        .I3(p_2_out[7]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[71]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[72]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[8]),
        .I2(Q[4]),
        .I3(p_2_out[8]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[72]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[73]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[9]),
        .I2(Q[4]),
        .I3(p_2_out[9]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[73]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[74]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[10]),
        .I2(Q[4]),
        .I3(p_2_out[10]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[74]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[75]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[11]),
        .I2(Q[4]),
        .I3(p_2_out[11]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[75]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[76]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[12]),
        .I2(Q[4]),
        .I3(p_2_out[12]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[76]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[77]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[13]),
        .I2(Q[4]),
        .I3(p_2_out[13]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[77]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[78]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[14]),
        .I2(Q[4]),
        .I3(p_2_out[14]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[78]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[79]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[15]),
        .I2(Q[4]),
        .I3(p_2_out[15]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[79]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[7]),
        .I2(Q[0]),
        .I3(p_2_out[7]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[7]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[80]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[16]),
        .I2(Q[4]),
        .I3(p_2_out[16]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[80]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[81]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[17]),
        .I2(Q[4]),
        .I3(p_2_out[17]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[81]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[82]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[18]),
        .I2(Q[4]),
        .I3(p_2_out[18]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[82]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[83]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[19]),
        .I2(Q[4]),
        .I3(p_2_out[19]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[83]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[84]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[20]),
        .I2(Q[4]),
        .I3(p_2_out[20]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[84]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[85]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[21]),
        .I2(Q[4]),
        .I3(p_2_out[21]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[85]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[86]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[22]),
        .I2(Q[4]),
        .I3(p_2_out[22]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[86]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[87]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[23]),
        .I2(Q[4]),
        .I3(p_2_out[23]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[87]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[88]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[24]),
        .I2(Q[4]),
        .I3(p_2_out[24]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[88]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[89]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[25]),
        .I2(Q[4]),
        .I3(p_2_out[25]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[89]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[8]),
        .I2(Q[0]),
        .I3(p_2_out[8]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[8]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[90]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[26]),
        .I2(Q[4]),
        .I3(p_2_out[26]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[90]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[91]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[27]),
        .I2(Q[4]),
        .I3(p_2_out[27]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[91]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[92]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[28]),
        .I2(Q[4]),
        .I3(p_2_out[28]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[92]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[93]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[29]),
        .I2(Q[4]),
        .I3(p_2_out[29]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[93]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[94]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[30]),
        .I2(Q[4]),
        .I3(p_2_out[30]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[94]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[95]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[31]),
        .I2(Q[4]),
        .I3(p_2_out[31]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[95]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[96]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[32]),
        .I2(Q[4]),
        .I3(p_2_out[32]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[96]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[97]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[33]),
        .I2(Q[4]),
        .I3(p_2_out[33]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[97]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[98]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[34]),
        .I2(Q[4]),
        .I3(p_2_out[34]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[98]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[99]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[35]),
        .I2(Q[4]),
        .I3(p_2_out[35]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdata[99]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[9]),
        .I2(Q[0]),
        .I3(p_2_out[9]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdata[9]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[0]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[86]),
        .I2(Q[0]),
        .I3(p_2_out[86]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdest[0]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[10]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[90]),
        .I2(Q[4]),
        .I3(p_2_out[90]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdest[10]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[11]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[91]),
        .I2(Q[4]),
        .I3(p_2_out[91]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdest[11]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[12]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[86]),
        .I2(Q[8]),
        .I3(p_2_out[86]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdest[12]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[13]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[87]),
        .I2(Q[8]),
        .I3(p_2_out[87]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdest[13]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[14]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[88]),
        .I2(Q[8]),
        .I3(p_2_out[88]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdest[14]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[15]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[89]),
        .I2(Q[8]),
        .I3(p_2_out[89]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdest[15]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[16]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[90]),
        .I2(Q[8]),
        .I3(p_2_out[90]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdest[16]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[17]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[91]),
        .I2(Q[8]),
        .I3(p_2_out[91]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tdest[17]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[18]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[86]),
        .I2(Q[12]),
        .I3(p_2_out[86]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdest[18]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[18]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [86]),
        .I1(\gen_AB_reg_slice.payload_a [86]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[86]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[19]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[87]),
        .I2(Q[12]),
        .I3(p_2_out[87]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdest[19]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[19]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [87]),
        .I1(\gen_AB_reg_slice.payload_a [87]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[87]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[1]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[87]),
        .I2(Q[0]),
        .I3(p_2_out[87]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdest[1]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[20]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[88]),
        .I2(Q[12]),
        .I3(p_2_out[88]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdest[20]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[20]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [88]),
        .I1(\gen_AB_reg_slice.payload_a [88]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[88]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[21]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[89]),
        .I2(Q[12]),
        .I3(p_2_out[89]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdest[21]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[21]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [89]),
        .I1(\gen_AB_reg_slice.payload_a [89]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[89]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[22]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[90]),
        .I2(Q[12]),
        .I3(p_2_out[90]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdest[22]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[22]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [90]),
        .I1(\gen_AB_reg_slice.payload_a [90]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[90]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[23]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[91]),
        .I2(Q[12]),
        .I3(p_2_out[91]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tdest[23]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdest[23]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [91]),
        .I1(\gen_AB_reg_slice.payload_a [91]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[91]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[2]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[88]),
        .I2(Q[0]),
        .I3(p_2_out[88]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdest[2]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[3]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[89]),
        .I2(Q[0]),
        .I3(p_2_out[89]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdest[3]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[4]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[90]),
        .I2(Q[0]),
        .I3(p_2_out[90]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdest[4]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[5]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[91]),
        .I2(Q[0]),
        .I3(p_2_out[91]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tdest[5]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[6]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[86]),
        .I2(Q[4]),
        .I3(p_2_out[86]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdest[6]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[7]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[87]),
        .I2(Q[4]),
        .I3(p_2_out[87]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdest[7]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[8]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[88]),
        .I2(Q[4]),
        .I3(p_2_out[88]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdest[8]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tdest[9]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[89]),
        .I2(Q[4]),
        .I3(p_2_out[89]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tdest[9]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[0]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[81]),
        .I2(Q[0]),
        .I3(p_2_out[81]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tid[0]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[10]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[81]),
        .I2(Q[8]),
        .I3(p_2_out[81]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tid[10]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[11]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[82]),
        .I2(Q[8]),
        .I3(p_2_out[82]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tid[11]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[12]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[83]),
        .I2(Q[8]),
        .I3(p_2_out[83]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tid[12]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[13]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[84]),
        .I2(Q[8]),
        .I3(p_2_out[84]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tid[13]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[14]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[85]),
        .I2(Q[8]),
        .I3(p_2_out[85]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tid[14]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[15]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[81]),
        .I2(Q[12]),
        .I3(p_2_out[81]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tid[15]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[15]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [81]),
        .I1(\gen_AB_reg_slice.payload_a [81]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[81]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[16]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[82]),
        .I2(Q[12]),
        .I3(p_2_out[82]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tid[16]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[16]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [82]),
        .I1(\gen_AB_reg_slice.payload_a [82]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[82]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[17]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[83]),
        .I2(Q[12]),
        .I3(p_2_out[83]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tid[17]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[17]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [83]),
        .I1(\gen_AB_reg_slice.payload_a [83]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[83]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[18]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[84]),
        .I2(Q[12]),
        .I3(p_2_out[84]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tid[18]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[18]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [84]),
        .I1(\gen_AB_reg_slice.payload_a [84]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[84]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[19]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[85]),
        .I2(Q[12]),
        .I3(p_2_out[85]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tid[19]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tid[19]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [85]),
        .I1(\gen_AB_reg_slice.payload_a [85]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[85]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[1]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[82]),
        .I2(Q[0]),
        .I3(p_2_out[82]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tid[1]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[2]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[83]),
        .I2(Q[0]),
        .I3(p_2_out[83]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tid[2]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[3]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[84]),
        .I2(Q[0]),
        .I3(p_2_out[84]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tid[3]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[4]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[85]),
        .I2(Q[0]),
        .I3(p_2_out[85]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tid[4]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[5]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[81]),
        .I2(Q[4]),
        .I3(p_2_out[81]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tid[5]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[6]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[82]),
        .I2(Q[4]),
        .I3(p_2_out[82]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tid[6]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[7]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[83]),
        .I2(Q[4]),
        .I3(p_2_out[83]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tid[7]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[8]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[84]),
        .I2(Q[4]),
        .I3(p_2_out[84]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tid[8]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tid[9]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[85]),
        .I2(Q[4]),
        .I3(p_2_out[85]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tid[9]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[0]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[72]),
        .I2(Q[0]),
        .I3(p_2_out[72]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tkeep[0]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[10]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[74]),
        .I2(Q[4]),
        .I3(p_2_out[74]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tkeep[10]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[11]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[75]),
        .I2(Q[4]),
        .I3(p_2_out[75]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tkeep[11]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[12]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[76]),
        .I2(Q[4]),
        .I3(p_2_out[76]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tkeep[12]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[13]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[77]),
        .I2(Q[4]),
        .I3(p_2_out[77]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tkeep[13]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[14]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[78]),
        .I2(Q[4]),
        .I3(p_2_out[78]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tkeep[14]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[15]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[79]),
        .I2(Q[4]),
        .I3(p_2_out[79]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tkeep[15]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[16]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[72]),
        .I2(Q[8]),
        .I3(p_2_out[72]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tkeep[16]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[17]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[73]),
        .I2(Q[8]),
        .I3(p_2_out[73]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tkeep[17]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[18]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[74]),
        .I2(Q[8]),
        .I3(p_2_out[74]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tkeep[18]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[19]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[75]),
        .I2(Q[8]),
        .I3(p_2_out[75]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tkeep[19]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[1]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[73]),
        .I2(Q[0]),
        .I3(p_2_out[73]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tkeep[1]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[20]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[76]),
        .I2(Q[8]),
        .I3(p_2_out[76]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tkeep[20]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[21]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[77]),
        .I2(Q[8]),
        .I3(p_2_out[77]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tkeep[21]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[22]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[78]),
        .I2(Q[8]),
        .I3(p_2_out[78]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tkeep[22]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[23]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[79]),
        .I2(Q[8]),
        .I3(p_2_out[79]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tkeep[23]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[24]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[72]),
        .I2(Q[12]),
        .I3(p_2_out[72]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tkeep[24]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[24]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [72]),
        .I1(\gen_AB_reg_slice.payload_a [72]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[72]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[25]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[73]),
        .I2(Q[12]),
        .I3(p_2_out[73]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tkeep[25]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[25]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [73]),
        .I1(\gen_AB_reg_slice.payload_a [73]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[73]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[26]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[74]),
        .I2(Q[12]),
        .I3(p_2_out[74]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tkeep[26]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[26]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [74]),
        .I1(\gen_AB_reg_slice.payload_a [74]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[74]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[27]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[75]),
        .I2(Q[12]),
        .I3(p_2_out[75]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tkeep[27]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[27]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [75]),
        .I1(\gen_AB_reg_slice.payload_a [75]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[75]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[28]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[76]),
        .I2(Q[12]),
        .I3(p_2_out[76]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tkeep[28]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[28]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [76]),
        .I1(\gen_AB_reg_slice.payload_a [76]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[76]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[29]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[77]),
        .I2(Q[12]),
        .I3(p_2_out[77]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tkeep[29]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[29]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [77]),
        .I1(\gen_AB_reg_slice.payload_a [77]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[77]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[2]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[74]),
        .I2(Q[0]),
        .I3(p_2_out[74]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tkeep[2]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[30]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[78]),
        .I2(Q[12]),
        .I3(p_2_out[78]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tkeep[30]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[30]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [78]),
        .I1(\gen_AB_reg_slice.payload_a [78]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[78]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[31]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[79]),
        .I2(Q[12]),
        .I3(p_2_out[79]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tkeep[31]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[31]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [79]),
        .I1(\gen_AB_reg_slice.payload_a [79]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[79]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[3]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[75]),
        .I2(Q[0]),
        .I3(p_2_out[75]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tkeep[3]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[4]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[76]),
        .I2(Q[0]),
        .I3(p_2_out[76]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tkeep[4]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[5]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[77]),
        .I2(Q[0]),
        .I3(p_2_out[77]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tkeep[5]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[6]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[78]),
        .I2(Q[0]),
        .I3(p_2_out[78]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tkeep[6]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[7]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[79]),
        .I2(Q[0]),
        .I3(p_2_out[79]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tkeep[7]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[8]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[72]),
        .I2(Q[4]),
        .I3(p_2_out[72]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tkeep[8]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tkeep[9]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[73]),
        .I2(Q[4]),
        .I3(p_2_out[73]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tkeep[9]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tlast[0]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[80]),
        .I2(Q[0]),
        .I3(p_2_out[80]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tlast[0]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tlast[1]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[80]),
        .I2(Q[4]),
        .I3(p_2_out[80]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tlast[1]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tlast[2]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[80]),
        .I2(Q[8]),
        .I3(p_2_out[80]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tlast[2]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tlast[3]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[80]),
        .I2(Q[12]),
        .I3(p_2_out[80]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tlast[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tlast[3]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [80]),
        .I1(\gen_AB_reg_slice.payload_a [80]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[80]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[0]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[64]),
        .I2(Q[0]),
        .I3(p_2_out[64]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tstrb[0]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[10]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[66]),
        .I2(Q[4]),
        .I3(p_2_out[66]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tstrb[10]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[11]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[67]),
        .I2(Q[4]),
        .I3(p_2_out[67]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tstrb[11]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[12]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[68]),
        .I2(Q[4]),
        .I3(p_2_out[68]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tstrb[12]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[13]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[69]),
        .I2(Q[4]),
        .I3(p_2_out[69]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tstrb[13]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[14]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[70]),
        .I2(Q[4]),
        .I3(p_2_out[70]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tstrb[14]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[15]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[71]),
        .I2(Q[4]),
        .I3(p_2_out[71]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tstrb[15]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[16]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[64]),
        .I2(Q[8]),
        .I3(p_2_out[64]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tstrb[16]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[17]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[65]),
        .I2(Q[8]),
        .I3(p_2_out[65]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tstrb[17]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[18]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[66]),
        .I2(Q[8]),
        .I3(p_2_out[66]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tstrb[18]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[19]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[67]),
        .I2(Q[8]),
        .I3(p_2_out[67]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tstrb[19]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[1]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[65]),
        .I2(Q[0]),
        .I3(p_2_out[65]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tstrb[1]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[20]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[68]),
        .I2(Q[8]),
        .I3(p_2_out[68]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tstrb[20]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[21]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[69]),
        .I2(Q[8]),
        .I3(p_2_out[69]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tstrb[21]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[22]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[70]),
        .I2(Q[8]),
        .I3(p_2_out[70]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tstrb[22]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[23]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[71]),
        .I2(Q[8]),
        .I3(p_2_out[71]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tstrb[23]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[24]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[64]),
        .I2(Q[12]),
        .I3(p_2_out[64]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tstrb[24]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[24]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [64]),
        .I1(\gen_AB_reg_slice.payload_a [64]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[64]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[25]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[65]),
        .I2(Q[12]),
        .I3(p_2_out[65]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tstrb[25]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[25]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [65]),
        .I1(\gen_AB_reg_slice.payload_a [65]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[65]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[26]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[66]),
        .I2(Q[12]),
        .I3(p_2_out[66]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tstrb[26]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[26]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [66]),
        .I1(\gen_AB_reg_slice.payload_a [66]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[66]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[27]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[67]),
        .I2(Q[12]),
        .I3(p_2_out[67]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tstrb[27]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[27]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [67]),
        .I1(\gen_AB_reg_slice.payload_a [67]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[67]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[28]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[68]),
        .I2(Q[12]),
        .I3(p_2_out[68]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tstrb[28]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[28]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [68]),
        .I1(\gen_AB_reg_slice.payload_a [68]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[68]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[29]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[69]),
        .I2(Q[12]),
        .I3(p_2_out[69]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tstrb[29]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[29]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [69]),
        .I1(\gen_AB_reg_slice.payload_a [69]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[69]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[2]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[66]),
        .I2(Q[0]),
        .I3(p_2_out[66]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tstrb[2]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[30]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[70]),
        .I2(Q[12]),
        .I3(p_2_out[70]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tstrb[30]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[30]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [70]),
        .I1(\gen_AB_reg_slice.payload_a [70]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[70]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[31]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[71]),
        .I2(Q[12]),
        .I3(p_2_out[71]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tstrb[31]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tstrb[31]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [71]),
        .I1(\gen_AB_reg_slice.payload_a [71]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[71]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[3]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[67]),
        .I2(Q[0]),
        .I3(p_2_out[67]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tstrb[3]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[4]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[68]),
        .I2(Q[0]),
        .I3(p_2_out[68]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tstrb[4]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[5]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[69]),
        .I2(Q[0]),
        .I3(p_2_out[69]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tstrb[5]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[6]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[70]),
        .I2(Q[0]),
        .I3(p_2_out[70]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tstrb[6]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[7]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[71]),
        .I2(Q[0]),
        .I3(p_2_out[71]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tstrb[7]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[8]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[64]),
        .I2(Q[4]),
        .I3(p_2_out[64]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tstrb[8]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tstrb[9]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[65]),
        .I2(Q[4]),
        .I3(p_2_out[65]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tstrb[9]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tuser[0]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[92]),
        .I2(Q[0]),
        .I3(p_2_out[92]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tuser[0]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tuser[1]_INST_0 
       (.I0(Q[2]),
        .I1(p_7_out[93]),
        .I2(Q[0]),
        .I3(p_2_out[93]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(m_axis_tuser[1]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tuser[2]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[92]),
        .I2(Q[4]),
        .I3(p_2_out[92]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tuser[2]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tuser[3]_INST_0 
       (.I0(Q[6]),
        .I1(p_7_out[93]),
        .I2(Q[4]),
        .I3(p_2_out[93]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(m_axis_tuser[3]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tuser[4]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[92]),
        .I2(Q[8]),
        .I3(p_2_out[92]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tuser[4]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tuser[5]_INST_0 
       (.I0(Q[10]),
        .I1(p_7_out[93]),
        .I2(Q[8]),
        .I3(p_2_out[93]),
        .I4(Q[9]),
        .I5(Q[11]),
        .O(m_axis_tuser[5]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tuser[6]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[92]),
        .I2(Q[12]),
        .I3(p_2_out[92]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tuser[6]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tuser[6]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [92]),
        .I1(\gen_AB_reg_slice.payload_a [92]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[92]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \m_axis_tuser[7]_INST_0 
       (.I0(Q[14]),
        .I1(p_7_out[93]),
        .I2(Q[12]),
        .I3(p_2_out[93]),
        .I4(Q[13]),
        .I5(Q[15]),
        .O(m_axis_tuser[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tuser[7]_INST_0_i_1 
       (.I0(\gen_AB_reg_slice.payload_b [93]),
        .I1(\gen_AB_reg_slice.payload_a [93]),
        .I2(\gen_AB_reg_slice.sel ),
        .O(p_7_out[93]));
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tvalid[0]_INST_0 
       (.I0(mux_tvalid),
        .I1(Q[0]),
        .I2(\m_axis_tvalid[3] ),
        .I3(Q[16]),
        .O(m_axis_tvalid[0]));
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tvalid[1]_INST_0 
       (.I0(mux_tvalid),
        .I1(Q[4]),
        .I2(\m_axis_tvalid[3] ),
        .I3(Q[17]),
        .O(m_axis_tvalid[1]));
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tvalid[2]_INST_0 
       (.I0(mux_tvalid),
        .I1(Q[8]),
        .I2(\m_axis_tvalid[3] ),
        .I3(Q[18]),
        .O(m_axis_tvalid[2]));
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tvalid[3]_INST_0 
       (.I0(mux_tvalid),
        .I1(Q[12]),
        .I2(\m_axis_tvalid[3] ),
        .I3(Q[19]),
        .O(m_axis_tvalid[3]));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_axi_ctrl_read" *) 
module design_1_axis_switch_1_2_axis_switch_v1_1_19_axi_ctrl_read
   (Q,
    s_axi_ctrl_rdata,
    out0,
    \data_reg[0]_0 ,
    \data_reg[31]_0 ,
    \data_reg[1]_0 ,
    \data_reg[2]_0 ,
    \data_reg[3]_0 ,
    \data_reg[4]_0 ,
    \data_reg[5]_0 ,
    \data_reg[6]_0 ,
    \data_reg[7]_0 ,
    \data_reg[8]_0 ,
    \data_reg[9]_0 ,
    \data_reg[10]_0 ,
    \data_reg[11]_0 ,
    \data_reg[12]_0 ,
    \data_reg[13]_0 ,
    \data_reg[14]_0 ,
    \data_reg[15]_0 ,
    \data_reg[16]_0 ,
    \data_reg[17]_0 ,
    \data_reg[18]_0 ,
    \data_reg[19]_0 ,
    \data_reg[20]_0 ,
    \data_reg[21]_0 ,
    \data_reg[22]_0 ,
    \data_reg[23]_0 ,
    \data_reg[24]_0 ,
    \data_reg[25]_0 ,
    \data_reg[26]_0 ,
    \data_reg[27]_0 ,
    \data_reg[28]_0 ,
    \data_reg[29]_0 ,
    \data_reg[30]_0 ,
    \data_reg[31]_1 ,
    s_axi_ctrl_araddr,
    s_axi_ctrl_aclk,
    SR,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready);
  output [1:0]Q;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]out0;
  input \data_reg[0]_0 ;
  input [31:0]\data_reg[31]_0 ;
  input \data_reg[1]_0 ;
  input \data_reg[2]_0 ;
  input \data_reg[3]_0 ;
  input \data_reg[4]_0 ;
  input \data_reg[5]_0 ;
  input \data_reg[6]_0 ;
  input \data_reg[7]_0 ;
  input \data_reg[8]_0 ;
  input \data_reg[9]_0 ;
  input \data_reg[10]_0 ;
  input \data_reg[11]_0 ;
  input \data_reg[12]_0 ;
  input \data_reg[13]_0 ;
  input \data_reg[14]_0 ;
  input \data_reg[15]_0 ;
  input \data_reg[16]_0 ;
  input \data_reg[17]_0 ;
  input \data_reg[18]_0 ;
  input \data_reg[19]_0 ;
  input \data_reg[20]_0 ;
  input \data_reg[21]_0 ;
  input \data_reg[22]_0 ;
  input \data_reg[23]_0 ;
  input \data_reg[24]_0 ;
  input \data_reg[25]_0 ;
  input \data_reg[26]_0 ;
  input \data_reg[27]_0 ;
  input \data_reg[28]_0 ;
  input \data_reg[29]_0 ;
  input \data_reg[30]_0 ;
  input \data_reg[31]_1 ;
  input [4:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_aclk;
  input [0:0]SR;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [1:0]Q;
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
  wire \data[31]_i_1_n_0 ;
  wire \data[31]_i_3_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire \data[8]_i_1_n_0 ;
  wire \data[9]_i_1_n_0 ;
  wire \data_reg[0]_0 ;
  wire \data_reg[10]_0 ;
  wire \data_reg[11]_0 ;
  wire \data_reg[12]_0 ;
  wire \data_reg[13]_0 ;
  wire \data_reg[14]_0 ;
  wire \data_reg[15]_0 ;
  wire \data_reg[16]_0 ;
  wire \data_reg[17]_0 ;
  wire \data_reg[18]_0 ;
  wire \data_reg[19]_0 ;
  wire \data_reg[1]_0 ;
  wire \data_reg[20]_0 ;
  wire \data_reg[21]_0 ;
  wire \data_reg[22]_0 ;
  wire \data_reg[23]_0 ;
  wire \data_reg[24]_0 ;
  wire \data_reg[25]_0 ;
  wire \data_reg[26]_0 ;
  wire \data_reg[27]_0 ;
  wire \data_reg[28]_0 ;
  wire \data_reg[29]_0 ;
  wire \data_reg[2]_0 ;
  wire \data_reg[30]_0 ;
  wire [31:0]\data_reg[31]_0 ;
  wire \data_reg[31]_1 ;
  wire \data_reg[3]_0 ;
  wire \data_reg[4]_0 ;
  wire \data_reg[5]_0 ;
  wire \data_reg[6]_0 ;
  wire \data_reg[7]_0 ;
  wire \data_reg[8]_0 ;
  wire \data_reg[9]_0 ;
  wire [1:0]out0;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [3:2]sel0;

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
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[1]),
        .Q(Q[1]),
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
    .INIT(64'h04FF040004000400)) 
    \data[0]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[0]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [0]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[10]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[10]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [10]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[11]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[11]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [11]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[12]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[12]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [12]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[13]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[13]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [13]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[14]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[14]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [14]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[15]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[15]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [15]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[16]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[16]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [16]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[17]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[17]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [17]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[18]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[18]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [18]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[19]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[19]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [19]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[1]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[1]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [1]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[20]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[20]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [20]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[21]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[21]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [21]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[22]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[22]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [22]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[23]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[23]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [23]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[24]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[24]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [24]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[25]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[25]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [25]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[26]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[26]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [26]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[27]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[27]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [27]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[28]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[28]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [28]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[29]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[29]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [29]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[2]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[2]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [2]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[30]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[30]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [30]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFE00FE00FE00)) 
    \data[31]_i_1 
       (.I0(sel0[3]),
        .I1(\data_reg[31]_1 ),
        .I2(sel0[2]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [31]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \data[31]_i_3 
       (.I0(Q[0]),
        .I1(sel0[3]),
        .I2(Q[1]),
        .I3(sel0[2]),
        .O(\data[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[3]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[3]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [3]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[4]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[4]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [4]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[5]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[5]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [5]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[6]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[6]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [6]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[7]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[7]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [7]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[8]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[8]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [8]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04FF040004000400)) 
    \data[9]_i_1 
       (.I0(sel0[2]),
        .I1(\data_reg[9]_0 ),
        .I2(sel0[3]),
        .I3(\addr_r_reg_n_0_[6] ),
        .I4(\data_reg[31]_0 [9]),
        .I5(\data[31]_i_3_n_0 ),
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
module design_1_axis_switch_1_2_axis_switch_v1_1_19_axi_ctrl_top
   (Q,
    \gen_reg[0].reg_data_reg[31] ,
    \gen_reg[0].reg_data_reg[3] ,
    \gen_reg[1].reg_data_reg[63] ,
    \gen_reg[1].reg_data_reg[35] ,
    \gen_reg[2].reg_data_reg[95] ,
    \gen_reg[2].reg_data_reg[67] ,
    \gen_reg[3].reg_data_reg[127] ,
    \gen_reg[3].reg_data_reg[99] ,
    \gen_reg[0].reg_data_reg[1] ,
    s_axi_ctrl_rdata,
    \FSM_onehot_state_reg[2] ,
    \gen_reg[0].reg_data_reg[0] ,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_aclk,
    SR,
    s_axi_ctrl_araddr,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready);
  output [1:0]Q;
  output \gen_reg[0].reg_data_reg[31] ;
  output [3:0]\gen_reg[0].reg_data_reg[3] ;
  output \gen_reg[1].reg_data_reg[63] ;
  output [3:0]\gen_reg[1].reg_data_reg[35] ;
  output \gen_reg[2].reg_data_reg[95] ;
  output [3:0]\gen_reg[2].reg_data_reg[67] ;
  output \gen_reg[3].reg_data_reg[127] ;
  output [3:0]\gen_reg[3].reg_data_reg[99] ;
  output [0:0]\gen_reg[0].reg_data_reg[1] ;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]\FSM_onehot_state_reg[2] ;
  input [0:0]\gen_reg[0].reg_data_reg[0] ;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_aclk;
  input [0:0]SR;
  input [4:0]s_axi_ctrl_araddr;
  input [4:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;

  wire [1:0]\FSM_onehot_state_reg[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [31:0]data_r;
  wire [31:0]\gen_reg[0].reg_data_reg ;
  wire [0:0]\gen_reg[0].reg_data_reg[0] ;
  wire [0:0]\gen_reg[0].reg_data_reg[1] ;
  wire [3:0]\gen_reg[0].reg_data_reg[3] ;
  wire \gen_reg[0].reg_data_reg_31_sn_1 ;
  wire [3:0]\gen_reg[1].reg_data_reg[35] ;
  wire \gen_reg[1].reg_data_reg[63] ;
  wire [3:0]\gen_reg[2].reg_data_reg[67] ;
  wire \gen_reg[2].reg_data_reg[95] ;
  wire \gen_reg[3].reg_data_reg[127] ;
  wire [3:0]\gen_reg[3].reg_data_reg[99] ;
  wire inst_axi_ctrl_write_n_0;
  wire inst_axi_ctrl_write_n_3;
  wire inst_axi_ctrl_write_n_4;
  wire inst_reg_bank_1_n_21;
  wire inst_reg_bank_1_n_22;
  wire inst_reg_bank_1_n_23;
  wire inst_reg_bank_1_n_24;
  wire inst_reg_bank_1_n_25;
  wire inst_reg_bank_1_n_26;
  wire inst_reg_bank_1_n_27;
  wire inst_reg_bank_1_n_28;
  wire inst_reg_bank_1_n_29;
  wire inst_reg_bank_1_n_30;
  wire inst_reg_bank_1_n_31;
  wire inst_reg_bank_1_n_32;
  wire inst_reg_bank_1_n_33;
  wire inst_reg_bank_1_n_34;
  wire inst_reg_bank_1_n_35;
  wire inst_reg_bank_1_n_36;
  wire inst_reg_bank_1_n_37;
  wire inst_reg_bank_1_n_38;
  wire inst_reg_bank_1_n_39;
  wire inst_reg_bank_1_n_4;
  wire inst_reg_bank_1_n_40;
  wire inst_reg_bank_1_n_41;
  wire inst_reg_bank_1_n_42;
  wire inst_reg_bank_1_n_43;
  wire inst_reg_bank_1_n_44;
  wire inst_reg_bank_1_n_45;
  wire inst_reg_bank_1_n_46;
  wire inst_reg_bank_1_n_47;
  wire inst_reg_bank_1_n_48;
  wire inst_reg_bank_1_n_49;
  wire inst_reg_bank_1_n_50;
  wire inst_reg_bank_1_n_51;
  wire p_0_in;
  wire p_2_in;
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
  wire [1:0]sel0;

  assign \gen_reg[0].reg_data_reg[31]  = \gen_reg[0].reg_data_reg_31_sn_1 ;
  design_1_axis_switch_1_2_axis_switch_v1_1_19_axi_ctrl_read inst_axi_ctrl_read
       (.Q(sel0),
        .SR(SR),
        .\data_reg[0]_0 (inst_reg_bank_1_n_4),
        .\data_reg[10]_0 (inst_reg_bank_1_n_30),
        .\data_reg[11]_0 (inst_reg_bank_1_n_31),
        .\data_reg[12]_0 (inst_reg_bank_1_n_32),
        .\data_reg[13]_0 (inst_reg_bank_1_n_33),
        .\data_reg[14]_0 (inst_reg_bank_1_n_34),
        .\data_reg[15]_0 (inst_reg_bank_1_n_35),
        .\data_reg[16]_0 (inst_reg_bank_1_n_36),
        .\data_reg[17]_0 (inst_reg_bank_1_n_37),
        .\data_reg[18]_0 (inst_reg_bank_1_n_38),
        .\data_reg[19]_0 (inst_reg_bank_1_n_39),
        .\data_reg[1]_0 (inst_reg_bank_1_n_21),
        .\data_reg[20]_0 (inst_reg_bank_1_n_40),
        .\data_reg[21]_0 (inst_reg_bank_1_n_41),
        .\data_reg[22]_0 (inst_reg_bank_1_n_42),
        .\data_reg[23]_0 (inst_reg_bank_1_n_43),
        .\data_reg[24]_0 (inst_reg_bank_1_n_44),
        .\data_reg[25]_0 (inst_reg_bank_1_n_45),
        .\data_reg[26]_0 (inst_reg_bank_1_n_46),
        .\data_reg[27]_0 (inst_reg_bank_1_n_47),
        .\data_reg[28]_0 (inst_reg_bank_1_n_48),
        .\data_reg[29]_0 (inst_reg_bank_1_n_49),
        .\data_reg[2]_0 (inst_reg_bank_1_n_22),
        .\data_reg[30]_0 (inst_reg_bank_1_n_50),
        .\data_reg[31]_0 ({\gen_reg[0].reg_data_reg [31:2],\gen_reg[0].reg_data_reg[1] ,\gen_reg[0].reg_data_reg [0]}),
        .\data_reg[31]_1 (inst_reg_bank_1_n_51),
        .\data_reg[3]_0 (inst_reg_bank_1_n_23),
        .\data_reg[4]_0 (inst_reg_bank_1_n_24),
        .\data_reg[5]_0 (inst_reg_bank_1_n_25),
        .\data_reg[6]_0 (inst_reg_bank_1_n_26),
        .\data_reg[7]_0 (inst_reg_bank_1_n_27),
        .\data_reg[8]_0 (inst_reg_bank_1_n_28),
        .\data_reg[9]_0 (inst_reg_bank_1_n_29),
        .out0(\FSM_onehot_state_reg[2] ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready));
  design_1_axis_switch_1_2_axis_switch_v1_1_19_axi_ctrl_write inst_axi_ctrl_write
       (.D(rb0_wdata),
        .E(inst_axi_ctrl_write_n_0),
        .Q(Q),
        .SR(SR),
        .\addr_r_reg[2]_0 (p_2_in),
        .\addr_r_reg[2]_1 (p_0_in),
        .\data_r_reg[31]_0 (data_r),
        .\gen_reg[0].reg_data_reg[0] (\gen_reg[0].reg_data_reg[0] ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .\state_reg[0]_0 (inst_axi_ctrl_write_n_3),
        .\state_reg[0]_1 (inst_axi_ctrl_write_n_4),
        .\state_reg[2]_0 (\gen_reg[0].reg_data_reg[1] ));
  design_1_axis_switch_1_2_axis_switch_v1_1_19_reg_bank_16x32 inst_reg_bank_0
       (.D(rb0_wdata),
        .E(inst_axi_ctrl_write_n_4),
        .Q({\gen_reg[0].reg_data_reg [31:2],\gen_reg[0].reg_data_reg[1] ,\gen_reg[0].reg_data_reg [0]}),
        .SR(SR),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk));
  design_1_axis_switch_1_2_axis_switch_v1_1_19_reg_bank_16x32__parameterized0 inst_reg_bank_1
       (.D(data_r),
        .E(inst_axi_ctrl_write_n_0),
        .Q(sel0),
        .SR(SR),
        .\gen_reg[0].reg_data_reg[31]_0 (\gen_reg[0].reg_data_reg_31_sn_1 ),
        .\gen_reg[0].reg_data_reg[3]_0 (\gen_reg[0].reg_data_reg[3] ),
        .\gen_reg[1].reg_data_reg[35]_0 (\gen_reg[1].reg_data_reg[35] ),
        .\gen_reg[1].reg_data_reg[63]_0 (\gen_reg[1].reg_data_reg[63] ),
        .\gen_reg[1].reg_data_reg[63]_1 (p_2_in),
        .\gen_reg[2].reg_data_reg[64]_0 (inst_axi_ctrl_write_n_3),
        .\gen_reg[2].reg_data_reg[67]_0 (\gen_reg[2].reg_data_reg[67] ),
        .\gen_reg[2].reg_data_reg[95]_0 (\gen_reg[2].reg_data_reg[95] ),
        .\gen_reg[3].reg_data_reg[100]_0 (inst_reg_bank_1_n_24),
        .\gen_reg[3].reg_data_reg[101]_0 (inst_reg_bank_1_n_25),
        .\gen_reg[3].reg_data_reg[102]_0 (inst_reg_bank_1_n_26),
        .\gen_reg[3].reg_data_reg[103]_0 (inst_reg_bank_1_n_27),
        .\gen_reg[3].reg_data_reg[104]_0 (inst_reg_bank_1_n_28),
        .\gen_reg[3].reg_data_reg[105]_0 (inst_reg_bank_1_n_29),
        .\gen_reg[3].reg_data_reg[106]_0 (inst_reg_bank_1_n_30),
        .\gen_reg[3].reg_data_reg[107]_0 (inst_reg_bank_1_n_31),
        .\gen_reg[3].reg_data_reg[108]_0 (inst_reg_bank_1_n_32),
        .\gen_reg[3].reg_data_reg[109]_0 (inst_reg_bank_1_n_33),
        .\gen_reg[3].reg_data_reg[110]_0 (inst_reg_bank_1_n_34),
        .\gen_reg[3].reg_data_reg[111]_0 (inst_reg_bank_1_n_35),
        .\gen_reg[3].reg_data_reg[112]_0 (inst_reg_bank_1_n_36),
        .\gen_reg[3].reg_data_reg[113]_0 (inst_reg_bank_1_n_37),
        .\gen_reg[3].reg_data_reg[114]_0 (inst_reg_bank_1_n_38),
        .\gen_reg[3].reg_data_reg[115]_0 (inst_reg_bank_1_n_39),
        .\gen_reg[3].reg_data_reg[116]_0 (inst_reg_bank_1_n_40),
        .\gen_reg[3].reg_data_reg[117]_0 (inst_reg_bank_1_n_41),
        .\gen_reg[3].reg_data_reg[118]_0 (inst_reg_bank_1_n_42),
        .\gen_reg[3].reg_data_reg[119]_0 (inst_reg_bank_1_n_43),
        .\gen_reg[3].reg_data_reg[120]_0 (inst_reg_bank_1_n_44),
        .\gen_reg[3].reg_data_reg[121]_0 (inst_reg_bank_1_n_45),
        .\gen_reg[3].reg_data_reg[122]_0 (inst_reg_bank_1_n_46),
        .\gen_reg[3].reg_data_reg[123]_0 (inst_reg_bank_1_n_47),
        .\gen_reg[3].reg_data_reg[124]_0 (inst_reg_bank_1_n_48),
        .\gen_reg[3].reg_data_reg[125]_0 (inst_reg_bank_1_n_49),
        .\gen_reg[3].reg_data_reg[126]_0 (inst_reg_bank_1_n_50),
        .\gen_reg[3].reg_data_reg[127]_0 (\gen_reg[3].reg_data_reg[127] ),
        .\gen_reg[3].reg_data_reg[127]_1 (inst_reg_bank_1_n_51),
        .\gen_reg[3].reg_data_reg[127]_2 (p_0_in),
        .\gen_reg[3].reg_data_reg[96]_0 (inst_reg_bank_1_n_4),
        .\gen_reg[3].reg_data_reg[97]_0 (inst_reg_bank_1_n_21),
        .\gen_reg[3].reg_data_reg[98]_0 (inst_reg_bank_1_n_22),
        .\gen_reg[3].reg_data_reg[99]_0 (\gen_reg[3].reg_data_reg[99] ),
        .\gen_reg[3].reg_data_reg[99]_1 (inst_reg_bank_1_n_23),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_axi_ctrl_write" *) 
module design_1_axis_switch_1_2_axis_switch_v1_1_19_axi_ctrl_write
   (E,
    Q,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    \addr_r_reg[2]_0 ,
    \addr_r_reg[2]_1 ,
    D,
    \data_r_reg[31]_0 ,
    \gen_reg[0].reg_data_reg[0] ,
    s_axi_ctrl_awvalid,
    \state_reg[2]_0 ,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_aclk,
    SR,
    s_axi_ctrl_awaddr);
  output [0:0]E;
  output [1:0]Q;
  output [0:0]\state_reg[0]_0 ;
  output [0:0]\state_reg[0]_1 ;
  output [0:0]\addr_r_reg[2]_0 ;
  output [0:0]\addr_r_reg[2]_1 ;
  output [31:0]D;
  output [31:0]\data_r_reg[31]_0 ;
  input [0:0]\gen_reg[0].reg_data_reg[0] ;
  input s_axi_ctrl_awvalid;
  input [0:0]\state_reg[2]_0 ;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_aclk;
  input [0:0]SR;
  input [4:0]s_axi_ctrl_awaddr;

  wire [31:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [0:0]\addr_r_reg[2]_0 ;
  wire [0:0]\addr_r_reg[2]_1 ;
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
  wire [0:0]\state_reg[0]_0 ;
  wire [0:0]\state_reg[0]_1 ;
  wire [0:0]\state_reg[2]_0 ;
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
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[10]_i_1 
       (.I0(\data_r_reg[31]_0 [10]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[11]_i_1 
       (.I0(\data_r_reg[31]_0 [11]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[12]_i_1 
       (.I0(\data_r_reg[31]_0 [12]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[13]_i_1 
       (.I0(\data_r_reg[31]_0 [13]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[14]_i_1 
       (.I0(\data_r_reg[31]_0 [14]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[15]_i_1 
       (.I0(\data_r_reg[31]_0 [15]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[16]_i_1 
       (.I0(\data_r_reg[31]_0 [16]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[17]_i_1 
       (.I0(\data_r_reg[31]_0 [17]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[18]_i_1 
       (.I0(\data_r_reg[31]_0 [18]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[19]_i_1 
       (.I0(\data_r_reg[31]_0 [19]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[1]_i_1 
       (.I0(\data_r_reg[31]_0 [1]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[20]_i_1 
       (.I0(\data_r_reg[31]_0 [20]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[21]_i_1 
       (.I0(\data_r_reg[31]_0 [21]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[22]_i_1 
       (.I0(\data_r_reg[31]_0 [22]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[23]_i_1 
       (.I0(\data_r_reg[31]_0 [23]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[24]_i_1 
       (.I0(\data_r_reg[31]_0 [24]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[25]_i_1 
       (.I0(\data_r_reg[31]_0 [25]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[26]_i_1 
       (.I0(\data_r_reg[31]_0 [26]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[27]_i_1 
       (.I0(\data_r_reg[31]_0 [27]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[28]_i_1 
       (.I0(\data_r_reg[31]_0 [28]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[29]_i_1 
       (.I0(\data_r_reg[31]_0 [29]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[2]_i_1 
       (.I0(\data_r_reg[31]_0 [2]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[30]_i_1 
       (.I0(\data_r_reg[31]_0 [30]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \gen_reg[0].reg_data[31]_i_1 
       (.I0(\gen_reg[0].reg_data[31]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(p_0_in),
        .I3(\gen_reg[0].reg_data_reg[0] ),
        .O(\state_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \gen_reg[0].reg_data[31]_i_1__0 
       (.I0(write_addr[1]),
        .I1(Q[0]),
        .I2(p_0_in),
        .I3(write_addr[2]),
        .I4(write_addr[3]),
        .I5(write_addr[0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[31]_i_2 
       (.I0(\data_r_reg[31]_0 [31]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \gen_reg[0].reg_data[31]_i_3 
       (.I0(write_addr[3]),
        .I1(write_addr[2]),
        .I2(write_addr[0]),
        .I3(\gen_reg[0].reg_data_reg[0] ),
        .I4(write_addr[1]),
        .O(\gen_reg[0].reg_data[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[3]_i_1 
       (.I0(\data_r_reg[31]_0 [3]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[4]_i_1 
       (.I0(\data_r_reg[31]_0 [4]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[5]_i_1 
       (.I0(\data_r_reg[31]_0 [5]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[6]_i_1 
       (.I0(\data_r_reg[31]_0 [6]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[7]_i_1 
       (.I0(\data_r_reg[31]_0 [7]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[8]_i_1 
       (.I0(\data_r_reg[31]_0 [8]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[9]_i_1 
       (.I0(\data_r_reg[31]_0 [9]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \gen_reg[1].reg_data[63]_i_1 
       (.I0(write_addr[0]),
        .I1(write_addr[1]),
        .I2(Q[0]),
        .I3(p_0_in),
        .I4(write_addr[2]),
        .I5(write_addr[3]),
        .O(\addr_r_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \gen_reg[2].reg_data[95]_i_1 
       (.I0(Q[0]),
        .I1(p_0_in),
        .I2(write_addr[2]),
        .I3(write_addr[3]),
        .I4(write_addr[1]),
        .I5(write_addr[0]),
        .O(\state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \gen_reg[3].reg_data[127]_i_1 
       (.I0(write_addr[0]),
        .I1(Q[0]),
        .I2(p_0_in),
        .I3(write_addr[2]),
        .I4(write_addr[3]),
        .I5(write_addr[1]),
        .O(\addr_r_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \state[0]_i_1 
       (.I0(Q[0]),
        .I1(\state_reg_n_0_[2] ),
        .I2(s_axi_ctrl_awvalid),
        .I3(\state_reg[2]_0 ),
        .I4(s_axi_ctrl_wvalid),
        .I5(Q[1]),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h01010030)) 
    \state[1]_i_1 
       (.I0(s_axi_ctrl_bready),
        .I1(Q[0]),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg[2]_0 ),
        .I4(Q[1]),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h1140)) 
    \state[2]_i_1 
       (.I0(Q[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg[2]_0 ),
        .I3(Q[0]),
        .O(state[2]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(Q[0]),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(Q[1]),
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
(* C_INCLUDE_ARBITER = "1" *) (* C_LOG_SI_SLOTS = "1" *) (* C_M_AXIS_BASETDEST_ARRAY = "24'b000011000010000001000000" *) 
(* C_M_AXIS_CONNECTIVITY_ARRAY = "8'b11111111" *) (* C_M_AXIS_HIGHTDEST_ARRAY = "24'b000011000010000001000000" *) (* C_NUM_MI_SLOTS = "4" *) 
(* C_NUM_SI_SLOTS = "2" *) (* C_OUTPUT_REG = "0" *) (* C_ROUTING_MODE = "1" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CTRL_REG_WIDTH = "30" *) (* LP_MERGEDOWN_MUX = "0" *) 
(* LP_NUM_SYNCHRONIZER_STAGES = "4" *) (* ORIG_REF_NAME = "axis_switch_v1_1_19_axis_switch" *) (* P_DECODER_CONNECTIVITY_ARRAY = "8'b11111111" *) 
(* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "4'b0000" *) (* P_TPAYLOAD_WIDTH = "94" *) 
module design_1_axis_switch_1_2_axis_switch_v1_1_19_axis_switch
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
  input [1:0]s_axis_tvalid;
  output [1:0]s_axis_tready;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tstrb;
  input [15:0]s_axis_tkeep;
  input [1:0]s_axis_tlast;
  input [9:0]s_axis_tid;
  input [11:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output [3:0]m_axis_tvalid;
  input [3:0]m_axis_tready;
  output [255:0]m_axis_tdata;
  output [31:0]m_axis_tstrb;
  output [31:0]m_axis_tkeep;
  output [3:0]m_axis_tlast;
  output [19:0]m_axis_tid;
  output [23:0]m_axis_tdest;
  output [7:0]m_axis_tuser;
  output [7:0]arb_req;
  output [3:0]arb_done;
  input [7:0]arb_gnt;
  input [3:0]arb_sel;
  output [7:0]arb_last;
  output [39:0]arb_id;
  output [47:0]arb_dest;
  output [15:0]arb_user;
  input [1:0]s_req_suppress;
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
  output [1:0]s_decode_err;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire aresetn;
  wire [7:0]dec_tready;
  wire \gen_static_router.ctrl_ack ;
  wire [29:0]\gen_static_router.ctrl_reg ;
  wire \gen_static_router.ctrl_req ;
  wire \gen_static_router.ctrl_soft_reset ;
  wire [29:0]\gen_static_router.gen_synch.cdc_handshake_data_out ;
  wire \gen_static_router.gen_synch.cdc_handshake_data_valid ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ;
  wire \gen_static_router.s_axi_ctrl_areset ;
  wire \gen_static_router.s_axi_ctrl_areset_i_1_n_0 ;
  wire \gen_static_routing.tready_mux ;
  wire \gen_static_routing.tready_mux_0 ;
  wire [255:0]m_axis_tdata;
  wire [23:0]m_axis_tdest;
  wire [19:0]m_axis_tid;
  wire [31:0]m_axis_tkeep;
  wire [3:0]m_axis_tlast;
  wire [3:0]m_axis_tready;
  wire [31:0]m_axis_tstrb;
  wire [7:0]m_axis_tuser;
  wire [3:0]m_axis_tvalid;
  wire mi_enable;
  wire [7:7]mux_tvalid;
  wire p_0_in;
  wire [93:0]p_2_out;
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
  wire [127:0]s_axis_tdata;
  wire [11:0]s_axis_tdest;
  wire [9:0]s_axis_tid;
  wire [15:0]s_axis_tkeep;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tready;
  wire [15:0]s_axis_tstrb;
  wire [3:0]s_axis_tuser;
  wire [1:0]s_axis_tvalid;
  wire [3:0]sel0;
  wire [1:0]si_enable;

  assign arb_dest[47] = \<const0> ;
  assign arb_dest[46] = \<const0> ;
  assign arb_dest[45] = \<const0> ;
  assign arb_dest[44] = \<const0> ;
  assign arb_dest[43] = \<const0> ;
  assign arb_dest[42] = \<const0> ;
  assign arb_dest[41] = \<const0> ;
  assign arb_dest[40] = \<const0> ;
  assign arb_dest[39] = \<const0> ;
  assign arb_dest[38] = \<const0> ;
  assign arb_dest[37] = \<const0> ;
  assign arb_dest[36] = \<const0> ;
  assign arb_dest[35] = \<const0> ;
  assign arb_dest[34] = \<const0> ;
  assign arb_dest[33] = \<const0> ;
  assign arb_dest[32] = \<const0> ;
  assign arb_dest[31] = \<const0> ;
  assign arb_dest[30] = \<const0> ;
  assign arb_dest[29] = \<const0> ;
  assign arb_dest[28] = \<const0> ;
  assign arb_dest[27] = \<const0> ;
  assign arb_dest[26] = \<const0> ;
  assign arb_dest[25] = \<const0> ;
  assign arb_dest[24] = \<const0> ;
  assign arb_dest[23] = \<const0> ;
  assign arb_dest[22] = \<const0> ;
  assign arb_dest[21] = \<const0> ;
  assign arb_dest[20] = \<const0> ;
  assign arb_dest[19] = \<const0> ;
  assign arb_dest[18] = \<const0> ;
  assign arb_dest[17] = \<const0> ;
  assign arb_dest[16] = \<const0> ;
  assign arb_dest[15] = \<const0> ;
  assign arb_dest[14] = \<const0> ;
  assign arb_dest[13] = \<const0> ;
  assign arb_dest[12] = \<const0> ;
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
  assign arb_done[3] = \<const0> ;
  assign arb_done[2] = \<const0> ;
  assign arb_done[1] = \<const0> ;
  assign arb_done[0] = \<const0> ;
  assign arb_id[39] = \<const0> ;
  assign arb_id[38] = \<const0> ;
  assign arb_id[37] = \<const0> ;
  assign arb_id[36] = \<const0> ;
  assign arb_id[35] = \<const0> ;
  assign arb_id[34] = \<const0> ;
  assign arb_id[33] = \<const0> ;
  assign arb_id[32] = \<const0> ;
  assign arb_id[31] = \<const0> ;
  assign arb_id[30] = \<const0> ;
  assign arb_id[29] = \<const0> ;
  assign arb_id[28] = \<const0> ;
  assign arb_id[27] = \<const0> ;
  assign arb_id[26] = \<const0> ;
  assign arb_id[25] = \<const0> ;
  assign arb_id[24] = \<const0> ;
  assign arb_id[23] = \<const0> ;
  assign arb_id[22] = \<const0> ;
  assign arb_id[21] = \<const0> ;
  assign arb_id[20] = \<const0> ;
  assign arb_id[19] = \<const0> ;
  assign arb_id[18] = \<const0> ;
  assign arb_id[17] = \<const0> ;
  assign arb_id[16] = \<const0> ;
  assign arb_id[15] = \<const0> ;
  assign arb_id[14] = \<const0> ;
  assign arb_id[13] = \<const0> ;
  assign arb_id[12] = \<const0> ;
  assign arb_id[11] = \<const0> ;
  assign arb_id[10] = \<const0> ;
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
  assign arb_last[7] = \<const0> ;
  assign arb_last[6] = \<const0> ;
  assign arb_last[5] = \<const0> ;
  assign arb_last[4] = \<const0> ;
  assign arb_last[3] = \<const0> ;
  assign arb_last[2] = \<const0> ;
  assign arb_last[1] = \<const0> ;
  assign arb_last[0] = \<const0> ;
  assign arb_req[7] = \<const0> ;
  assign arb_req[6] = \<const0> ;
  assign arb_req[5] = \<const0> ;
  assign arb_req[4] = \<const0> ;
  assign arb_req[3] = \<const0> ;
  assign arb_req[2] = \<const0> ;
  assign arb_req[1] = \<const0> ;
  assign arb_req[0] = \<const0> ;
  assign arb_user[15] = \<const0> ;
  assign arb_user[14] = \<const0> ;
  assign arb_user[13] = \<const0> ;
  assign arb_user[12] = \<const0> ;
  assign arb_user[11] = \<const0> ;
  assign arb_user[10] = \<const0> ;
  assign arb_user[9] = \<const0> ;
  assign arb_user[8] = \<const0> ;
  assign arb_user[7] = \<const0> ;
  assign arb_user[6] = \<const0> ;
  assign arb_user[5] = \<const0> ;
  assign arb_user[4] = \<const0> ;
  assign arb_user[3] = \<const0> ;
  assign arb_user[2] = \<const0> ;
  assign arb_user[1] = \<const0> ;
  assign arb_user[0] = \<const0> ;
  assign s_axi_ctrl_awready = s_axi_ctrl_wready;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_decode_err[1] = \<const0> ;
  assign s_decode_err[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(areset_r),
        .R(1'b0));
  design_1_axis_switch_1_2_axis_switch_v1_1_19_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.D({s_axis_tuser[1:0],s_axis_tdest[5:0],s_axis_tid[4:0],s_axis_tlast[0],s_axis_tkeep[7:0],s_axis_tstrb[7:0],s_axis_tdata[63:0]}),
        .Q({si_enable[0],\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ,mi_enable,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,sel0,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.state_reg[1] (s_axis_tready[0]),
        .\gen_static_routing.tready_mux (\gen_static_routing.tready_mux_0 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .\m_axis_tvalid[3] (mux_tvalid),
        .p_2_out(p_2_out),
        .s_axis_tvalid(s_axis_tvalid[0]));
  design_1_axis_switch_1_2_axis_switch_v1_1_19_axisc_decoder_0 \gen_decoder[1].axisc_decoder_0 
       (.D({s_axis_tuser[3:2],s_axis_tdest[11:6],s_axis_tid[9:5],s_axis_tlast[1],s_axis_tkeep[15:8],s_axis_tstrb[15:8],s_axis_tdata[127:64]}),
        .Q(si_enable[1]),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.state_reg[0] (mux_tvalid),
        .\gen_AB_reg_slice.state_reg[1] (s_axis_tready[1]),
        .\gen_static_routing.tready_mux (\gen_static_routing.tready_mux ),
        .p_2_out(p_2_out),
        .s_axis_tvalid(s_axis_tvalid[1]));
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
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[10] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [10]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[11] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [11]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[12] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [12]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [13]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [14]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[15] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [15]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[16] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [16]),
        .Q(mi_enable),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [17]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[18] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [18]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[19] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [19]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ),
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
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [28]),
        .Q(si_enable[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[29] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [29]),
        .Q(si_enable[1]),
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
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [9]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ),
        .R(1'b0));
  design_1_axis_switch_1_2_axis_infrastructure_v1_1_0_cdc_handshake \gen_static_router.gen_synch.inst_cdc_handshake 
       (.D({\gen_static_router.gen_synch.cdc_handshake_data_out [29:28],\gen_static_router.gen_synch.cdc_handshake_data_out [19:0]}),
        .E(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .Q(\gen_static_router.ctrl_reg ),
        .aclk(aclk),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .src_rcv(\gen_static_router.ctrl_ack ),
        .src_send(\gen_static_router.ctrl_req ));
  design_1_axis_switch_1_2_axis_infrastructure_v1_1_0_clock_synchronizer \gen_static_router.gen_synch.inst_rst_synch 
       (.aclk(aclk),
        .aresetn(aresetn),
        .p_0_in(p_0_in),
        .src_in(\gen_static_router.ctrl_soft_reset ));
  design_1_axis_switch_1_2_axis_switch_v1_1_19_static_router \gen_static_router.inst_static_router 
       (.SR(\gen_static_router.s_axi_ctrl_areset ),
        .ctrl_reg(\gen_static_router.ctrl_reg ),
        .s_axi_arready(s_axi_ctrl_arready),
        .s_axi_awready(s_axi_ctrl_wready),
        .s_axi_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr[6:2]),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr[6:2]),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .src_in(\gen_static_router.ctrl_soft_reset ),
        .src_rcv(\gen_static_router.ctrl_ack ),
        .src_send(\gen_static_router.ctrl_req ));
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
  design_1_axis_switch_1_2_axis_switch_v1_1_19_axisc_transfer_mux \gen_transfer_mux[0].axisc_transfer_mux_0 
       (.Q({mi_enable,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .dec_tready({dec_tready[4],dec_tready[0]}),
        .m_axis_tready(m_axis_tready[0]));
  design_1_axis_switch_1_2_axis_switch_v1_1_19_axisc_transfer_mux_1 \gen_transfer_mux[1].axisc_transfer_mux_0 
       (.Q({\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ,sel0}),
        .\gen_AB_reg_slice.sel_rd_reg ({dec_tready[7:6],dec_tready[4:2],dec_tready[0]}),
        .\gen_static_routing.tready_mux (\gen_static_routing.tready_mux_0 ),
        .\gen_static_routing.tready_mux_0 (\gen_static_routing.tready_mux ),
        .m_axis_tready(m_axis_tready[1]));
  design_1_axis_switch_1_2_axis_switch_v1_1_19_axisc_transfer_mux_2 \gen_transfer_mux[2].axisc_transfer_mux_0 
       (.Q({\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] }),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ({dec_tready[6],dec_tready[2]}),
        .m_axis_tready(m_axis_tready[2]));
  design_1_axis_switch_1_2_axis_switch_v1_1_19_axisc_transfer_mux_3 \gen_transfer_mux[3].axisc_transfer_mux_0 
       (.Q({\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] }),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ({dec_tready[7],dec_tready[3]}),
        .m_axis_tready(m_axis_tready[3]));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_axisc_decoder" *) 
module design_1_axis_switch_1_2_axis_switch_v1_1_19_axisc_decoder
   (\gen_AB_reg_slice.state_reg[1] ,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    aclk,
    aclken,
    \m_axis_tvalid[3] ,
    areset_r,
    Q,
    \gen_static_routing.tready_mux ,
    s_axis_tvalid,
    p_2_out,
    D);
  output \gen_AB_reg_slice.state_reg[1] ;
  output [3:0]m_axis_tvalid;
  output [255:0]m_axis_tdata;
  output [31:0]m_axis_tstrb;
  output [31:0]m_axis_tkeep;
  output [3:0]m_axis_tlast;
  output [19:0]m_axis_tid;
  output [23:0]m_axis_tdest;
  output [7:0]m_axis_tuser;
  input aclk;
  input aclken;
  input [0:0]\m_axis_tvalid[3] ;
  input areset_r;
  input [20:0]Q;
  input \gen_static_routing.tready_mux ;
  input [0:0]s_axis_tvalid;
  input [93:0]p_2_out;
  input [93:0]D;

  wire [93:0]D;
  wire [20:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_AB_reg_slice.state_reg[1] ;
  wire \gen_static_routing.tready_mux ;
  wire [255:0]m_axis_tdata;
  wire [23:0]m_axis_tdest;
  wire [19:0]m_axis_tid;
  wire [31:0]m_axis_tkeep;
  wire [3:0]m_axis_tlast;
  wire [31:0]m_axis_tstrb;
  wire [7:0]m_axis_tuser;
  wire [3:0]m_axis_tvalid;
  wire [0:0]\m_axis_tvalid[3] ;
  wire [93:0]p_2_out;
  wire [0:0]s_axis_tvalid;

  design_1_axis_switch_1_2_axis_register_slice_v1_1_19_axisc_register_slice_4 \gen_static_routing.inst_decoder_pipeline 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.state_reg[1]_0 (\gen_AB_reg_slice.state_reg[1] ),
        .\gen_static_routing.tready_mux (\gen_static_routing.tready_mux ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .\m_axis_tvalid[3] (\m_axis_tvalid[3] ),
        .p_2_out(p_2_out),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_axisc_decoder" *) 
module design_1_axis_switch_1_2_axis_switch_v1_1_19_axisc_decoder_0
   (\gen_AB_reg_slice.state_reg[1] ,
    \gen_AB_reg_slice.state_reg[0] ,
    p_2_out,
    aclk,
    aclken,
    areset_r,
    Q,
    \gen_static_routing.tready_mux ,
    s_axis_tvalid,
    D);
  output \gen_AB_reg_slice.state_reg[1] ;
  output [0:0]\gen_AB_reg_slice.state_reg[0] ;
  output [93:0]p_2_out;
  input aclk;
  input aclken;
  input areset_r;
  input [0:0]Q;
  input \gen_static_routing.tready_mux ;
  input [0:0]s_axis_tvalid;
  input [93:0]D;

  wire [93:0]D;
  wire [0:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [0:0]\gen_AB_reg_slice.state_reg[0] ;
  wire \gen_AB_reg_slice.state_reg[1] ;
  wire \gen_static_routing.tready_mux ;
  wire [93:0]p_2_out;
  wire [0:0]s_axis_tvalid;

  design_1_axis_switch_1_2_axis_register_slice_v1_1_19_axisc_register_slice \gen_static_routing.inst_decoder_pipeline 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_AB_reg_slice.state_reg[0] ),
        .\gen_AB_reg_slice.state_reg[1]_0 (\gen_AB_reg_slice.state_reg[1] ),
        .\gen_static_routing.tready_mux (\gen_static_routing.tready_mux ),
        .p_2_out(p_2_out),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_axisc_transfer_mux" *) 
module design_1_axis_switch_1_2_axis_switch_v1_1_19_axisc_transfer_mux
   (dec_tready,
    Q,
    m_axis_tready);
  output [1:0]dec_tready;
  input [4:0]Q;
  input [0:0]m_axis_tready;

  wire [4:0]Q;
  wire [1:0]dec_tready;
  wire [0:0]m_axis_tready;

  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    S_AXIS_TREADY0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(m_axis_tready),
        .I5(Q[4]),
        .O(dec_tready[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \S_AXIS_TREADY0_inferred__0/i_ 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(m_axis_tready),
        .I5(Q[4]),
        .O(dec_tready[1]));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_axisc_transfer_mux" *) 
module design_1_axis_switch_1_2_axis_switch_v1_1_19_axisc_transfer_mux_1
   (\gen_static_routing.tready_mux ,
    \gen_static_routing.tready_mux_0 ,
    \gen_AB_reg_slice.sel_rd_reg ,
    Q,
    m_axis_tready);
  output \gen_static_routing.tready_mux ;
  output \gen_static_routing.tready_mux_0 ;
  input [5:0]\gen_AB_reg_slice.sel_rd_reg ;
  input [4:0]Q;
  input [0:0]m_axis_tready;

  wire [4:0]Q;
  wire [5:1]dec_tready;
  wire [5:0]\gen_AB_reg_slice.sel_rd_reg ;
  wire \gen_static_routing.tready_mux ;
  wire \gen_static_routing.tready_mux_0 ;
  wire [0:0]m_axis_tready;

  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    S_AXIS_TREADY0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(m_axis_tready),
        .I5(Q[4]),
        .O(dec_tready[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \S_AXIS_TREADY0_inferred__0/i_ 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(m_axis_tready),
        .I5(Q[4]),
        .O(dec_tready[5]));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_AB_reg_slice.state[1]_i_3 
       (.I0(dec_tready[1]),
        .I1(\gen_AB_reg_slice.sel_rd_reg [0]),
        .I2(\gen_AB_reg_slice.sel_rd_reg [2]),
        .I3(\gen_AB_reg_slice.sel_rd_reg [1]),
        .O(\gen_static_routing.tready_mux ));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_AB_reg_slice.state[1]_i_3__0 
       (.I0(dec_tready[5]),
        .I1(\gen_AB_reg_slice.sel_rd_reg [3]),
        .I2(\gen_AB_reg_slice.sel_rd_reg [5]),
        .I3(\gen_AB_reg_slice.sel_rd_reg [4]),
        .O(\gen_static_routing.tready_mux_0 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_axisc_transfer_mux" *) 
module design_1_axis_switch_1_2_axis_switch_v1_1_19_axisc_transfer_mux_2
   (\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ,
    Q,
    m_axis_tready);
  output [1:0]\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ;
  input [4:0]Q;
  input [0:0]m_axis_tready;

  wire [4:0]Q;
  wire [1:0]\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ;
  wire [0:0]m_axis_tready;

  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    S_AXIS_TREADY0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(m_axis_tready),
        .I5(Q[4]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \S_AXIS_TREADY0_inferred__0/i_ 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(m_axis_tready),
        .I5(Q[4]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] [1]));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_axisc_transfer_mux" *) 
module design_1_axis_switch_1_2_axis_switch_v1_1_19_axisc_transfer_mux_3
   (\gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ,
    Q,
    m_axis_tready);
  output [1:0]\gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ;
  input [4:0]Q;
  input [0:0]m_axis_tready;

  wire [4:0]Q;
  wire [1:0]\gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ;
  wire [0:0]m_axis_tready;

  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    S_AXIS_TREADY0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(m_axis_tready),
        .I5(Q[4]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[14] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \S_AXIS_TREADY0_inferred__0/i_ 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(m_axis_tready),
        .I5(Q[4]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[14] [1]));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_reg_bank_16x32" *) 
module design_1_axis_switch_1_2_axis_switch_v1_1_19_reg_bank_16x32
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
module design_1_axis_switch_1_2_axis_switch_v1_1_19_reg_bank_16x32__parameterized0
   (\gen_reg[0].reg_data_reg[31]_0 ,
    \gen_reg[1].reg_data_reg[63]_0 ,
    \gen_reg[2].reg_data_reg[95]_0 ,
    \gen_reg[3].reg_data_reg[127]_0 ,
    \gen_reg[3].reg_data_reg[96]_0 ,
    \gen_reg[3].reg_data_reg[99]_0 ,
    \gen_reg[2].reg_data_reg[67]_0 ,
    \gen_reg[1].reg_data_reg[35]_0 ,
    \gen_reg[0].reg_data_reg[3]_0 ,
    \gen_reg[3].reg_data_reg[97]_0 ,
    \gen_reg[3].reg_data_reg[98]_0 ,
    \gen_reg[3].reg_data_reg[99]_1 ,
    \gen_reg[3].reg_data_reg[100]_0 ,
    \gen_reg[3].reg_data_reg[101]_0 ,
    \gen_reg[3].reg_data_reg[102]_0 ,
    \gen_reg[3].reg_data_reg[103]_0 ,
    \gen_reg[3].reg_data_reg[104]_0 ,
    \gen_reg[3].reg_data_reg[105]_0 ,
    \gen_reg[3].reg_data_reg[106]_0 ,
    \gen_reg[3].reg_data_reg[107]_0 ,
    \gen_reg[3].reg_data_reg[108]_0 ,
    \gen_reg[3].reg_data_reg[109]_0 ,
    \gen_reg[3].reg_data_reg[110]_0 ,
    \gen_reg[3].reg_data_reg[111]_0 ,
    \gen_reg[3].reg_data_reg[112]_0 ,
    \gen_reg[3].reg_data_reg[113]_0 ,
    \gen_reg[3].reg_data_reg[114]_0 ,
    \gen_reg[3].reg_data_reg[115]_0 ,
    \gen_reg[3].reg_data_reg[116]_0 ,
    \gen_reg[3].reg_data_reg[117]_0 ,
    \gen_reg[3].reg_data_reg[118]_0 ,
    \gen_reg[3].reg_data_reg[119]_0 ,
    \gen_reg[3].reg_data_reg[120]_0 ,
    \gen_reg[3].reg_data_reg[121]_0 ,
    \gen_reg[3].reg_data_reg[122]_0 ,
    \gen_reg[3].reg_data_reg[123]_0 ,
    \gen_reg[3].reg_data_reg[124]_0 ,
    \gen_reg[3].reg_data_reg[125]_0 ,
    \gen_reg[3].reg_data_reg[126]_0 ,
    \gen_reg[3].reg_data_reg[127]_1 ,
    Q,
    SR,
    E,
    D,
    s_axi_ctrl_aclk,
    \gen_reg[1].reg_data_reg[63]_1 ,
    \gen_reg[2].reg_data_reg[64]_0 ,
    \gen_reg[3].reg_data_reg[127]_2 );
  output \gen_reg[0].reg_data_reg[31]_0 ;
  output \gen_reg[1].reg_data_reg[63]_0 ;
  output \gen_reg[2].reg_data_reg[95]_0 ;
  output \gen_reg[3].reg_data_reg[127]_0 ;
  output \gen_reg[3].reg_data_reg[96]_0 ;
  output [3:0]\gen_reg[3].reg_data_reg[99]_0 ;
  output [3:0]\gen_reg[2].reg_data_reg[67]_0 ;
  output [3:0]\gen_reg[1].reg_data_reg[35]_0 ;
  output [3:0]\gen_reg[0].reg_data_reg[3]_0 ;
  output \gen_reg[3].reg_data_reg[97]_0 ;
  output \gen_reg[3].reg_data_reg[98]_0 ;
  output \gen_reg[3].reg_data_reg[99]_1 ;
  output \gen_reg[3].reg_data_reg[100]_0 ;
  output \gen_reg[3].reg_data_reg[101]_0 ;
  output \gen_reg[3].reg_data_reg[102]_0 ;
  output \gen_reg[3].reg_data_reg[103]_0 ;
  output \gen_reg[3].reg_data_reg[104]_0 ;
  output \gen_reg[3].reg_data_reg[105]_0 ;
  output \gen_reg[3].reg_data_reg[106]_0 ;
  output \gen_reg[3].reg_data_reg[107]_0 ;
  output \gen_reg[3].reg_data_reg[108]_0 ;
  output \gen_reg[3].reg_data_reg[109]_0 ;
  output \gen_reg[3].reg_data_reg[110]_0 ;
  output \gen_reg[3].reg_data_reg[111]_0 ;
  output \gen_reg[3].reg_data_reg[112]_0 ;
  output \gen_reg[3].reg_data_reg[113]_0 ;
  output \gen_reg[3].reg_data_reg[114]_0 ;
  output \gen_reg[3].reg_data_reg[115]_0 ;
  output \gen_reg[3].reg_data_reg[116]_0 ;
  output \gen_reg[3].reg_data_reg[117]_0 ;
  output \gen_reg[3].reg_data_reg[118]_0 ;
  output \gen_reg[3].reg_data_reg[119]_0 ;
  output \gen_reg[3].reg_data_reg[120]_0 ;
  output \gen_reg[3].reg_data_reg[121]_0 ;
  output \gen_reg[3].reg_data_reg[122]_0 ;
  output \gen_reg[3].reg_data_reg[123]_0 ;
  output \gen_reg[3].reg_data_reg[124]_0 ;
  output \gen_reg[3].reg_data_reg[125]_0 ;
  output \gen_reg[3].reg_data_reg[126]_0 ;
  output \gen_reg[3].reg_data_reg[127]_1 ;
  input [1:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input [31:0]D;
  input s_axi_ctrl_aclk;
  input [0:0]\gen_reg[1].reg_data_reg[63]_1 ;
  input [0:0]\gen_reg[2].reg_data_reg[64]_0 ;
  input [0:0]\gen_reg[3].reg_data_reg[127]_2 ;

  wire [31:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \gen_reg[0].reg_data_reg[31]_0 ;
  wire [3:0]\gen_reg[0].reg_data_reg[3]_0 ;
  wire [31:4]\gen_reg[0].reg_data_reg__0 ;
  wire [31:4]\gen_reg[1].reg_data_reg ;
  wire [3:0]\gen_reg[1].reg_data_reg[35]_0 ;
  wire \gen_reg[1].reg_data_reg[63]_0 ;
  wire [0:0]\gen_reg[1].reg_data_reg[63]_1 ;
  wire [31:4]\gen_reg[2].reg_data_reg ;
  wire [0:0]\gen_reg[2].reg_data_reg[64]_0 ;
  wire [3:0]\gen_reg[2].reg_data_reg[67]_0 ;
  wire \gen_reg[2].reg_data_reg[95]_0 ;
  wire [31:4]\gen_reg[3].reg_data_reg ;
  wire \gen_reg[3].reg_data_reg[100]_0 ;
  wire \gen_reg[3].reg_data_reg[101]_0 ;
  wire \gen_reg[3].reg_data_reg[102]_0 ;
  wire \gen_reg[3].reg_data_reg[103]_0 ;
  wire \gen_reg[3].reg_data_reg[104]_0 ;
  wire \gen_reg[3].reg_data_reg[105]_0 ;
  wire \gen_reg[3].reg_data_reg[106]_0 ;
  wire \gen_reg[3].reg_data_reg[107]_0 ;
  wire \gen_reg[3].reg_data_reg[108]_0 ;
  wire \gen_reg[3].reg_data_reg[109]_0 ;
  wire \gen_reg[3].reg_data_reg[110]_0 ;
  wire \gen_reg[3].reg_data_reg[111]_0 ;
  wire \gen_reg[3].reg_data_reg[112]_0 ;
  wire \gen_reg[3].reg_data_reg[113]_0 ;
  wire \gen_reg[3].reg_data_reg[114]_0 ;
  wire \gen_reg[3].reg_data_reg[115]_0 ;
  wire \gen_reg[3].reg_data_reg[116]_0 ;
  wire \gen_reg[3].reg_data_reg[117]_0 ;
  wire \gen_reg[3].reg_data_reg[118]_0 ;
  wire \gen_reg[3].reg_data_reg[119]_0 ;
  wire \gen_reg[3].reg_data_reg[120]_0 ;
  wire \gen_reg[3].reg_data_reg[121]_0 ;
  wire \gen_reg[3].reg_data_reg[122]_0 ;
  wire \gen_reg[3].reg_data_reg[123]_0 ;
  wire \gen_reg[3].reg_data_reg[124]_0 ;
  wire \gen_reg[3].reg_data_reg[125]_0 ;
  wire \gen_reg[3].reg_data_reg[126]_0 ;
  wire \gen_reg[3].reg_data_reg[127]_0 ;
  wire \gen_reg[3].reg_data_reg[127]_1 ;
  wire [0:0]\gen_reg[3].reg_data_reg[127]_2 ;
  wire \gen_reg[3].reg_data_reg[96]_0 ;
  wire \gen_reg[3].reg_data_reg[97]_0 ;
  wire \gen_reg[3].reg_data_reg[98]_0 ;
  wire [3:0]\gen_reg[3].reg_data_reg[99]_0 ;
  wire \gen_reg[3].reg_data_reg[99]_1 ;
  wire s_axi_ctrl_aclk;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[0]_i_2 
       (.I0(\gen_reg[3].reg_data_reg[99]_0 [0]),
        .I1(\gen_reg[2].reg_data_reg[67]_0 [0]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg[35]_0 [0]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg[3]_0 [0]),
        .O(\gen_reg[3].reg_data_reg[96]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[10]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [10]),
        .I1(\gen_reg[2].reg_data_reg [10]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [10]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [10]),
        .O(\gen_reg[3].reg_data_reg[106]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[11]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [11]),
        .I1(\gen_reg[2].reg_data_reg [11]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [11]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [11]),
        .O(\gen_reg[3].reg_data_reg[107]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[12]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [12]),
        .I1(\gen_reg[2].reg_data_reg [12]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [12]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [12]),
        .O(\gen_reg[3].reg_data_reg[108]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[13]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [13]),
        .I1(\gen_reg[2].reg_data_reg [13]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [13]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [13]),
        .O(\gen_reg[3].reg_data_reg[109]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[14]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [14]),
        .I1(\gen_reg[2].reg_data_reg [14]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [14]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [14]),
        .O(\gen_reg[3].reg_data_reg[110]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[15]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [15]),
        .I1(\gen_reg[2].reg_data_reg [15]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [15]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [15]),
        .O(\gen_reg[3].reg_data_reg[111]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[16]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [16]),
        .I1(\gen_reg[2].reg_data_reg [16]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [16]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [16]),
        .O(\gen_reg[3].reg_data_reg[112]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[17]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [17]),
        .I1(\gen_reg[2].reg_data_reg [17]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [17]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [17]),
        .O(\gen_reg[3].reg_data_reg[113]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[18]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [18]),
        .I1(\gen_reg[2].reg_data_reg [18]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [18]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [18]),
        .O(\gen_reg[3].reg_data_reg[114]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[19]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [19]),
        .I1(\gen_reg[2].reg_data_reg [19]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [19]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [19]),
        .O(\gen_reg[3].reg_data_reg[115]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[1]_i_2 
       (.I0(\gen_reg[3].reg_data_reg[99]_0 [1]),
        .I1(\gen_reg[2].reg_data_reg[67]_0 [1]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg[35]_0 [1]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg[3]_0 [1]),
        .O(\gen_reg[3].reg_data_reg[97]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[20]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [20]),
        .I1(\gen_reg[2].reg_data_reg [20]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [20]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [20]),
        .O(\gen_reg[3].reg_data_reg[116]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[21]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [21]),
        .I1(\gen_reg[2].reg_data_reg [21]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [21]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [21]),
        .O(\gen_reg[3].reg_data_reg[117]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[22]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [22]),
        .I1(\gen_reg[2].reg_data_reg [22]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [22]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [22]),
        .O(\gen_reg[3].reg_data_reg[118]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[23]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [23]),
        .I1(\gen_reg[2].reg_data_reg [23]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [23]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [23]),
        .O(\gen_reg[3].reg_data_reg[119]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[24]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [24]),
        .I1(\gen_reg[2].reg_data_reg [24]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [24]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [24]),
        .O(\gen_reg[3].reg_data_reg[120]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[25]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [25]),
        .I1(\gen_reg[2].reg_data_reg [25]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [25]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [25]),
        .O(\gen_reg[3].reg_data_reg[121]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[26]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [26]),
        .I1(\gen_reg[2].reg_data_reg [26]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [26]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [26]),
        .O(\gen_reg[3].reg_data_reg[122]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[27]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [27]),
        .I1(\gen_reg[2].reg_data_reg [27]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [27]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [27]),
        .O(\gen_reg[3].reg_data_reg[123]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[28]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [28]),
        .I1(\gen_reg[2].reg_data_reg [28]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [28]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [28]),
        .O(\gen_reg[3].reg_data_reg[124]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[29]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [29]),
        .I1(\gen_reg[2].reg_data_reg [29]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [29]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [29]),
        .O(\gen_reg[3].reg_data_reg[125]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[2]_i_2 
       (.I0(\gen_reg[3].reg_data_reg[99]_0 [2]),
        .I1(\gen_reg[2].reg_data_reg[67]_0 [2]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg[35]_0 [2]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg[3]_0 [2]),
        .O(\gen_reg[3].reg_data_reg[98]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[30]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [30]),
        .I1(\gen_reg[2].reg_data_reg [30]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [30]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [30]),
        .O(\gen_reg[3].reg_data_reg[126]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[31]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [31]),
        .I1(\gen_reg[2].reg_data_reg [31]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [31]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [31]),
        .O(\gen_reg[3].reg_data_reg[127]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[3]_i_2 
       (.I0(\gen_reg[3].reg_data_reg[99]_0 [3]),
        .I1(\gen_reg[2].reg_data_reg[67]_0 [3]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg[35]_0 [3]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg[3]_0 [3]),
        .O(\gen_reg[3].reg_data_reg[99]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[4]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [4]),
        .I1(\gen_reg[2].reg_data_reg [4]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [4]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [4]),
        .O(\gen_reg[3].reg_data_reg[100]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[5]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [5]),
        .I1(\gen_reg[2].reg_data_reg [5]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [5]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [5]),
        .O(\gen_reg[3].reg_data_reg[101]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[6]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [6]),
        .I1(\gen_reg[2].reg_data_reg [6]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [6]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [6]),
        .O(\gen_reg[3].reg_data_reg[102]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[7]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [7]),
        .I1(\gen_reg[2].reg_data_reg [7]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [7]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [7]),
        .O(\gen_reg[3].reg_data_reg[103]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[8]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [8]),
        .I1(\gen_reg[2].reg_data_reg [8]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [8]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [8]),
        .O(\gen_reg[3].reg_data_reg[104]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[9]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [9]),
        .I1(\gen_reg[2].reg_data_reg [9]),
        .I2(Q[1]),
        .I3(\gen_reg[1].reg_data_reg [9]),
        .I4(Q[0]),
        .I5(\gen_reg[0].reg_data_reg__0 [9]),
        .O(\gen_reg[3].reg_data_reg[105]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[0].mi_mux_en_in[0]_i_1 
       (.I0(\gen_reg[0].reg_data_reg__0 [31]),
        .O(\gen_reg[0].reg_data_reg[31]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[1].mi_mux_en_in[1]_i_1 
       (.I0(\gen_reg[1].reg_data_reg [31]),
        .O(\gen_reg[1].reg_data_reg[63]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[2].mi_mux_en_in[2]_i_1 
       (.I0(\gen_reg[2].reg_data_reg [31]),
        .O(\gen_reg[2].reg_data_reg[95]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[3].mi_mux_en_in[3]_i_1 
       (.I0(\gen_reg[3].reg_data_reg [31]),
        .O(\gen_reg[3].reg_data_reg[127]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\gen_reg[0].reg_data_reg[3]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[10]),
        .Q(\gen_reg[0].reg_data_reg__0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[11]),
        .Q(\gen_reg[0].reg_data_reg__0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[12]),
        .Q(\gen_reg[0].reg_data_reg__0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[13]),
        .Q(\gen_reg[0].reg_data_reg__0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[14]),
        .Q(\gen_reg[0].reg_data_reg__0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[15]),
        .Q(\gen_reg[0].reg_data_reg__0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[16]),
        .Q(\gen_reg[0].reg_data_reg__0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[17]),
        .Q(\gen_reg[0].reg_data_reg__0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[18]),
        .Q(\gen_reg[0].reg_data_reg__0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[19]),
        .Q(\gen_reg[0].reg_data_reg__0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[1]),
        .Q(\gen_reg[0].reg_data_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[20]),
        .Q(\gen_reg[0].reg_data_reg__0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[21]),
        .Q(\gen_reg[0].reg_data_reg__0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[22]),
        .Q(\gen_reg[0].reg_data_reg__0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[23]),
        .Q(\gen_reg[0].reg_data_reg__0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[24]),
        .Q(\gen_reg[0].reg_data_reg__0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[25]),
        .Q(\gen_reg[0].reg_data_reg__0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[26]),
        .Q(\gen_reg[0].reg_data_reg__0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[27]),
        .Q(\gen_reg[0].reg_data_reg__0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[28]),
        .Q(\gen_reg[0].reg_data_reg__0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[29]),
        .Q(\gen_reg[0].reg_data_reg__0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[2]),
        .Q(\gen_reg[0].reg_data_reg[3]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[30]),
        .Q(\gen_reg[0].reg_data_reg__0 [30]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[0].reg_data_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[31]),
        .Q(\gen_reg[0].reg_data_reg__0 [31]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[3]),
        .Q(\gen_reg[0].reg_data_reg[3]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[4]),
        .Q(\gen_reg[0].reg_data_reg__0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[5]),
        .Q(\gen_reg[0].reg_data_reg__0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[6]),
        .Q(\gen_reg[0].reg_data_reg__0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[7]),
        .Q(\gen_reg[0].reg_data_reg__0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[8]),
        .Q(\gen_reg[0].reg_data_reg__0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[9]),
        .Q(\gen_reg[0].reg_data_reg__0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[32] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[0]),
        .Q(\gen_reg[1].reg_data_reg[35]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[33] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[1]),
        .Q(\gen_reg[1].reg_data_reg[35]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[34] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[2]),
        .Q(\gen_reg[1].reg_data_reg[35]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[35] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[3]),
        .Q(\gen_reg[1].reg_data_reg[35]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[36] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[4]),
        .Q(\gen_reg[1].reg_data_reg [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[37] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[5]),
        .Q(\gen_reg[1].reg_data_reg [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[38] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[6]),
        .Q(\gen_reg[1].reg_data_reg [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[39] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[7]),
        .Q(\gen_reg[1].reg_data_reg [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[40] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[8]),
        .Q(\gen_reg[1].reg_data_reg [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[41] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[9]),
        .Q(\gen_reg[1].reg_data_reg [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[42] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[10]),
        .Q(\gen_reg[1].reg_data_reg [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[43] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[11]),
        .Q(\gen_reg[1].reg_data_reg [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[44] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[12]),
        .Q(\gen_reg[1].reg_data_reg [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[45] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[13]),
        .Q(\gen_reg[1].reg_data_reg [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[46] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[14]),
        .Q(\gen_reg[1].reg_data_reg [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[47] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[15]),
        .Q(\gen_reg[1].reg_data_reg [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[48] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[16]),
        .Q(\gen_reg[1].reg_data_reg [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[49] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[17]),
        .Q(\gen_reg[1].reg_data_reg [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[50] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[18]),
        .Q(\gen_reg[1].reg_data_reg [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[51] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[19]),
        .Q(\gen_reg[1].reg_data_reg [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[52] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[20]),
        .Q(\gen_reg[1].reg_data_reg [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[53] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[21]),
        .Q(\gen_reg[1].reg_data_reg [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[54] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[22]),
        .Q(\gen_reg[1].reg_data_reg [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[55] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[23]),
        .Q(\gen_reg[1].reg_data_reg [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[56] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[24]),
        .Q(\gen_reg[1].reg_data_reg [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[57] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[25]),
        .Q(\gen_reg[1].reg_data_reg [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[58] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[26]),
        .Q(\gen_reg[1].reg_data_reg [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[59] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[27]),
        .Q(\gen_reg[1].reg_data_reg [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[60] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[28]),
        .Q(\gen_reg[1].reg_data_reg [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[61] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[29]),
        .Q(\gen_reg[1].reg_data_reg [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[62] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[30]),
        .Q(\gen_reg[1].reg_data_reg [30]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[1].reg_data_reg[63] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_1 ),
        .D(D[31]),
        .Q(\gen_reg[1].reg_data_reg [31]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[64] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[0]),
        .Q(\gen_reg[2].reg_data_reg[67]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[65] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[1]),
        .Q(\gen_reg[2].reg_data_reg[67]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[66] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[2]),
        .Q(\gen_reg[2].reg_data_reg[67]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[67] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[3]),
        .Q(\gen_reg[2].reg_data_reg[67]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[68] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[4]),
        .Q(\gen_reg[2].reg_data_reg [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[69] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[5]),
        .Q(\gen_reg[2].reg_data_reg [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[70] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[6]),
        .Q(\gen_reg[2].reg_data_reg [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[71] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[7]),
        .Q(\gen_reg[2].reg_data_reg [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[72] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[8]),
        .Q(\gen_reg[2].reg_data_reg [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[73] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[9]),
        .Q(\gen_reg[2].reg_data_reg [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[74] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[10]),
        .Q(\gen_reg[2].reg_data_reg [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[75] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[11]),
        .Q(\gen_reg[2].reg_data_reg [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[76] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[12]),
        .Q(\gen_reg[2].reg_data_reg [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[77] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[13]),
        .Q(\gen_reg[2].reg_data_reg [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[78] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[14]),
        .Q(\gen_reg[2].reg_data_reg [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[79] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[15]),
        .Q(\gen_reg[2].reg_data_reg [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[80] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[16]),
        .Q(\gen_reg[2].reg_data_reg [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[81] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[17]),
        .Q(\gen_reg[2].reg_data_reg [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[82] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[18]),
        .Q(\gen_reg[2].reg_data_reg [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[83] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[19]),
        .Q(\gen_reg[2].reg_data_reg [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[84] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[20]),
        .Q(\gen_reg[2].reg_data_reg [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[85] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[21]),
        .Q(\gen_reg[2].reg_data_reg [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[86] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[22]),
        .Q(\gen_reg[2].reg_data_reg [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[87] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[23]),
        .Q(\gen_reg[2].reg_data_reg [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[88] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[24]),
        .Q(\gen_reg[2].reg_data_reg [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[89] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[25]),
        .Q(\gen_reg[2].reg_data_reg [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[90] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[26]),
        .Q(\gen_reg[2].reg_data_reg [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[91] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[27]),
        .Q(\gen_reg[2].reg_data_reg [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[92] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[28]),
        .Q(\gen_reg[2].reg_data_reg [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[93] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[29]),
        .Q(\gen_reg[2].reg_data_reg [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[94] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[30]),
        .Q(\gen_reg[2].reg_data_reg [30]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[2].reg_data_reg[95] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[64]_0 ),
        .D(D[31]),
        .Q(\gen_reg[2].reg_data_reg [31]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[100] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[4]),
        .Q(\gen_reg[3].reg_data_reg [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[101] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[5]),
        .Q(\gen_reg[3].reg_data_reg [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[102] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[6]),
        .Q(\gen_reg[3].reg_data_reg [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[103] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[7]),
        .Q(\gen_reg[3].reg_data_reg [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[104] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[8]),
        .Q(\gen_reg[3].reg_data_reg [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[105] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[9]),
        .Q(\gen_reg[3].reg_data_reg [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[106] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[10]),
        .Q(\gen_reg[3].reg_data_reg [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[107] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[11]),
        .Q(\gen_reg[3].reg_data_reg [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[108] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[12]),
        .Q(\gen_reg[3].reg_data_reg [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[109] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[13]),
        .Q(\gen_reg[3].reg_data_reg [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[110] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[14]),
        .Q(\gen_reg[3].reg_data_reg [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[111] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[15]),
        .Q(\gen_reg[3].reg_data_reg [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[112] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[16]),
        .Q(\gen_reg[3].reg_data_reg [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[113] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[17]),
        .Q(\gen_reg[3].reg_data_reg [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[114] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[18]),
        .Q(\gen_reg[3].reg_data_reg [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[115] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[19]),
        .Q(\gen_reg[3].reg_data_reg [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[116] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[20]),
        .Q(\gen_reg[3].reg_data_reg [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[117] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[21]),
        .Q(\gen_reg[3].reg_data_reg [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[118] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[22]),
        .Q(\gen_reg[3].reg_data_reg [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[119] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[23]),
        .Q(\gen_reg[3].reg_data_reg [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[120] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[24]),
        .Q(\gen_reg[3].reg_data_reg [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[121] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[25]),
        .Q(\gen_reg[3].reg_data_reg [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[122] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[26]),
        .Q(\gen_reg[3].reg_data_reg [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[123] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[27]),
        .Q(\gen_reg[3].reg_data_reg [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[124] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[28]),
        .Q(\gen_reg[3].reg_data_reg [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[125] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[29]),
        .Q(\gen_reg[3].reg_data_reg [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[126] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[30]),
        .Q(\gen_reg[3].reg_data_reg [30]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[3].reg_data_reg[127] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[31]),
        .Q(\gen_reg[3].reg_data_reg [31]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[96] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[0]),
        .Q(\gen_reg[3].reg_data_reg[99]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[97] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[1]),
        .Q(\gen_reg[3].reg_data_reg[99]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[98] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[2]),
        .Q(\gen_reg[3].reg_data_reg[99]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[99] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[3]),
        .Q(\gen_reg[3].reg_data_reg[99]_0 [3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_static_router" *) 
module design_1_axis_switch_1_2_axis_switch_v1_1_19_static_router
   (s_axi_awready,
    s_axi_ctrl_rvalid,
    s_axi_arready,
    s_axi_bvalid,
    s_axi_ctrl_rdata,
    ctrl_reg,
    src_send,
    src_in,
    SR,
    s_axi_ctrl_aclk,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_araddr,
    s_axi_ctrl_awaddr,
    src_rcv,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_bready);
  output s_axi_awready;
  output s_axi_ctrl_rvalid;
  output s_axi_arready;
  output s_axi_bvalid;
  output [31:0]s_axi_ctrl_rdata;
  output [29:0]ctrl_reg;
  output src_send;
  output src_in;
  input [0:0]SR;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;
  input [31:0]s_axi_ctrl_wdata;
  input [4:0]s_axi_ctrl_araddr;
  input [4:0]s_axi_ctrl_awaddr;
  input src_rcv;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_bready;

  wire [0:0]SR;
  wire commit_reset;
  wire [29:0]ctrl_reg;
  wire [3:0]\gen_reg[0].reg_data_reg__0 ;
  wire [3:0]\gen_reg[1].reg_data_reg ;
  wire [3:0]\gen_reg[2].reg_data_reg ;
  wire [3:0]\gen_reg[3].reg_data_reg ;
  wire inst_axi_ctrl_top_n_12;
  wire inst_axi_ctrl_top_n_17;
  wire inst_axi_ctrl_top_n_2;
  wire inst_axi_ctrl_top_n_7;
  wire reg_commit;
  wire s_axi_arready;
  wire s_axi_awready;
  wire s_axi_bvalid;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [4:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire src_in;
  wire src_rcv;
  wire src_send;

  design_1_axis_switch_1_2_axis_switch_v1_1_19_axi_ctrl_top inst_axi_ctrl_top
       (.\FSM_onehot_state_reg[2] ({s_axi_ctrl_rvalid,s_axi_arready}),
        .Q({s_axi_bvalid,s_axi_awready}),
        .SR(SR),
        .\gen_reg[0].reg_data_reg[0] (commit_reset),
        .\gen_reg[0].reg_data_reg[1] (reg_commit),
        .\gen_reg[0].reg_data_reg[31] (inst_axi_ctrl_top_n_2),
        .\gen_reg[0].reg_data_reg[3] (\gen_reg[0].reg_data_reg__0 ),
        .\gen_reg[1].reg_data_reg[35] (\gen_reg[1].reg_data_reg ),
        .\gen_reg[1].reg_data_reg[63] (inst_axi_ctrl_top_n_7),
        .\gen_reg[2].reg_data_reg[67] (\gen_reg[2].reg_data_reg ),
        .\gen_reg[2].reg_data_reg[95] (inst_axi_ctrl_top_n_12),
        .\gen_reg[3].reg_data_reg[127] (inst_axi_ctrl_top_n_17),
        .\gen_reg[3].reg_data_reg[99] (\gen_reg[3].reg_data_reg ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid));
  design_1_axis_switch_1_2_axis_switch_v1_1_19_static_router_config inst_start_router_config
       (.D(\gen_reg[0].reg_data_reg__0 ),
        .\FSM_onehot_state_reg[1]_0 (reg_commit),
        .Q(commit_reset),
        .SR(SR),
        .ctrl_reg(ctrl_reg),
        .\gen_mi_mux_in[0].mi_mux_en_in_reg[0] (inst_axi_ctrl_top_n_2),
        .\gen_mi_mux_in[1].mi_mux_en_in_reg[1] (inst_axi_ctrl_top_n_7),
        .\gen_mi_mux_in[1].mi_mux_in_reg[7] (\gen_reg[1].reg_data_reg ),
        .\gen_mi_mux_in[2].mi_mux_en_in_reg[2] (inst_axi_ctrl_top_n_12),
        .\gen_mi_mux_in[2].mi_mux_in_reg[11] (\gen_reg[2].reg_data_reg ),
        .\gen_mi_mux_in[3].mi_mux_en_in_reg[3] (inst_axi_ctrl_top_n_17),
        .\gen_mi_mux_in[3].mi_mux_in_reg[15] (\gen_reg[3].reg_data_reg ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .src_in(src_in),
        .src_rcv(src_rcv),
        .src_send(src_send));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_static_router_config" *) 
module design_1_axis_switch_1_2_axis_switch_v1_1_19_static_router_config
   (src_send,
    src_in,
    Q,
    ctrl_reg,
    s_axi_ctrl_aclk,
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ,
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ,
    \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ,
    \gen_mi_mux_in[3].mi_mux_en_in_reg[3] ,
    SR,
    src_rcv,
    \FSM_onehot_state_reg[1]_0 ,
    D,
    \gen_mi_mux_in[1].mi_mux_in_reg[7] ,
    \gen_mi_mux_in[2].mi_mux_in_reg[11] ,
    \gen_mi_mux_in[3].mi_mux_in_reg[15] );
  output src_send;
  output src_in;
  output [0:0]Q;
  output [29:0]ctrl_reg;
  input s_axi_ctrl_aclk;
  input \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ;
  input \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ;
  input \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ;
  input \gen_mi_mux_in[3].mi_mux_en_in_reg[3] ;
  input [0:0]SR;
  input src_rcv;
  input [0:0]\FSM_onehot_state_reg[1]_0 ;
  input [3:0]D;
  input [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7] ;
  input [3:0]\gen_mi_mux_in[2].mi_mux_in_reg[11] ;
  input [3:0]\gen_mi_mux_in[3].mi_mux_in_reg[15] ;

  wire [3:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [29:0]ctrl_reg;
  wire ctrl_soft_reset_r0;
  wire ctrl_soft_reset_r_i_1_n_0;
  wire \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ;
  wire \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ;
  wire [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7] ;
  wire \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ;
  wire [3:0]\gen_mi_mux_in[2].mi_mux_in_reg[11] ;
  wire \gen_mi_mux_in[3].mi_mux_en_in_reg[3] ;
  wire [3:0]\gen_mi_mux_in[3].mi_mux_in_reg[15] ;
  wire [3:0]\gen_si_mux[0].si_mux_r_reg ;
  wire [3:0]\gen_si_mux[1].si_mux_r_reg ;
  wire inst_start_router_config_dp_n_30;
  wire inst_start_router_config_dp_n_31;
  wire inst_start_router_config_dp_n_32;
  wire inst_start_router_config_dp_n_33;
  wire [3:0]mi_enable;
  wire [15:0]mi_mux;
  wire s_axi_ctrl_aclk;
  wire [1:0]si_enable;
  wire src_in;
  wire src_rcv;
  wire src_send;
  wire start;

  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(Q),
        .I1(\FSM_onehot_state_reg[1]_0 ),
        .I2(ctrl_soft_reset_r0),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(src_rcv),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
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
        .D(inst_start_router_config_dp_n_32),
        .Q(start),
        .R(SR));
  (* FSM_ENCODED_STATES = "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(inst_start_router_config_dp_n_31),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(inst_start_router_config_dp_n_30),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(Q),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[0]),
        .Q(ctrl_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[10]),
        .Q(ctrl_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[11]),
        .Q(ctrl_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[12]),
        .Q(ctrl_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[13]),
        .Q(ctrl_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[14]),
        .Q(ctrl_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[15]),
        .Q(ctrl_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[0]),
        .Q(ctrl_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[1]),
        .Q(ctrl_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[2]),
        .Q(ctrl_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[3]),
        .Q(ctrl_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[1]),
        .Q(ctrl_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [0]),
        .Q(ctrl_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [1]),
        .Q(ctrl_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [2]),
        .Q(ctrl_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [3]),
        .Q(ctrl_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [0]),
        .Q(ctrl_reg[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [1]),
        .Q(ctrl_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [2]),
        .Q(ctrl_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [3]),
        .Q(ctrl_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[0]),
        .Q(ctrl_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[1]),
        .Q(ctrl_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[2]),
        .Q(ctrl_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[3]),
        .Q(ctrl_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[4]),
        .Q(ctrl_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[5]),
        .Q(ctrl_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[6]),
        .Q(ctrl_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[7]),
        .Q(ctrl_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[8]),
        .Q(ctrl_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[9]),
        .Q(ctrl_reg[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_req_r_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(inst_start_router_config_dp_n_33),
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
  design_1_axis_switch_1_2_axis_switch_v1_1_19_static_router_config_dp inst_start_router_config_dp
       (.D({\gen_si_mux[1].si_mux_r_reg ,\gen_si_mux[0].si_mux_r_reg ,mi_enable,mi_mux}),
        .\FSM_onehot_state_reg[1] (\FSM_onehot_state_reg[1]_0 ),
        .Q({\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] ,start,ctrl_soft_reset_r0}),
        .\gen_mi_mux_in[0].mi_mux_en_in_reg[0]_0 (\gen_mi_mux_in[0].mi_mux_en_in_reg[0] ),
        .\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 (D),
        .\gen_mi_mux_in[1].mi_mux_en_in_reg[1]_0 (\gen_mi_mux_in[1].mi_mux_en_in_reg[1] ),
        .\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 (\gen_mi_mux_in[1].mi_mux_in_reg[7] ),
        .\gen_mi_mux_in[2].mi_mux_en_in_reg[2]_0 (\gen_mi_mux_in[2].mi_mux_en_in_reg[2] ),
        .\gen_mi_mux_in[2].mi_mux_in_reg[11]_0 (\gen_mi_mux_in[2].mi_mux_in_reg[11] ),
        .\gen_mi_mux_in[3].mi_mux_en_in_reg[3]_0 (\gen_mi_mux_in[3].mi_mux_en_in_reg[3] ),
        .\gen_mi_mux_in[3].mi_mux_in_reg[15]_0 (\gen_mi_mux_in[3].mi_mux_in_reg[15] ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .si_enable(si_enable),
        .src_rcv(src_rcv),
        .src_send(src_send),
        .stg2_done_reg_0({inst_start_router_config_dp_n_30,inst_start_router_config_dp_n_31,inst_start_router_config_dp_n_32}),
        .stg2_done_reg_1(inst_start_router_config_dp_n_33));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_19_static_router_config_dp" *) 
module design_1_axis_switch_1_2_axis_switch_v1_1_19_static_router_config_dp
   (si_enable,
    D,
    stg2_done_reg_0,
    stg2_done_reg_1,
    Q,
    s_axi_ctrl_aclk,
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0]_0 ,
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1]_0 ,
    \gen_mi_mux_in[2].mi_mux_en_in_reg[2]_0 ,
    \gen_mi_mux_in[3].mi_mux_en_in_reg[3]_0 ,
    src_rcv,
    \FSM_onehot_state_reg[1] ,
    src_send,
    \gen_mi_mux_in[0].mi_mux_in_reg[3]_0 ,
    \gen_mi_mux_in[1].mi_mux_in_reg[7]_0 ,
    \gen_mi_mux_in[2].mi_mux_in_reg[11]_0 ,
    \gen_mi_mux_in[3].mi_mux_in_reg[15]_0 );
  output [1:0]si_enable;
  output [27:0]D;
  output [2:0]stg2_done_reg_0;
  output stg2_done_reg_1;
  input [3:0]Q;
  input s_axi_ctrl_aclk;
  input \gen_mi_mux_in[0].mi_mux_en_in_reg[0]_0 ;
  input \gen_mi_mux_in[1].mi_mux_en_in_reg[1]_0 ;
  input \gen_mi_mux_in[2].mi_mux_en_in_reg[2]_0 ;
  input \gen_mi_mux_in[3].mi_mux_en_in_reg[3]_0 ;
  input src_rcv;
  input [0:0]\FSM_onehot_state_reg[1] ;
  input src_send;
  input [3:0]\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 ;
  input [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 ;
  input [3:0]\gen_mi_mux_in[2].mi_mux_in_reg[11]_0 ;
  input [3:0]\gen_mi_mux_in[3].mi_mux_in_reg[15]_0 ;

  wire [27:0]D;
  wire [0:0]\FSM_onehot_state_reg[1] ;
  wire [3:0]Q;
  wire done;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ;
  wire \gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ;
  wire \gen_mi_enable[2].mi_enable_r[2]_i_1_n_0 ;
  wire \gen_mi_enable[3].mi_enable_r[3]_i_1_n_0 ;
  wire \gen_mi_mux_in[0].mi_mux_en_in_reg[0]_0 ;
  wire [3:0]\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 ;
  wire \gen_mi_mux_in[1].mi_mux_en_in_reg[1]_0 ;
  wire [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 ;
  wire \gen_mi_mux_in[2].mi_mux_en_in_reg[2]_0 ;
  wire [3:0]\gen_mi_mux_in[2].mi_mux_in_reg[11]_0 ;
  wire \gen_mi_mux_in[3].mi_mux_en_in_reg[3]_0 ;
  wire [3:0]\gen_mi_mux_in[3].mi_mux_in_reg[15]_0 ;
  wire \gen_si_enable[0].si_enable_r[0]_i_2_n_0 ;
  wire \gen_si_mux[0].si_mux_r[3]_i_1_n_0 ;
  wire \gen_si_mux[1].si_mux_r[7]_i_1_n_0 ;
  wire \mi_cntr[2]_i_1_n_0 ;
  wire \mi_cntr_reg_n_0_[0] ;
  wire \mi_cntr_reg_n_0_[1] ;
  wire \mi_cntr_reg_n_0_[2] ;
  wire \mi_cntr_reg_n_0_[3] ;
  wire [0:0]mi_connectivity;
  wire \mi_connectivity[0]_i_1_n_0 ;
  wire [3:0]mi_mux_en_in;
  wire [3:0]p_0_in;
  wire [4:0]p_0_in_0;
  wire p_41_out;
  wire p_44_out;
  wire s_axi_ctrl_aclk;
  wire sel;
  wire \selectee[0]_i_1_n_0 ;
  wire \selectee[1]_i_1_n_0 ;
  wire \selectee[2]_i_1_n_0 ;
  wire \selectee[3]_i_1_n_0 ;
  wire [3:0]selector;
  wire selector_enable_i_1_n_0;
  wire [1:0]si_enable;
  wire src_rcv;
  wire src_send;
  wire start_r;
  wire stg1_done;
  wire stg1_done_i_1_n_0;
  wire stg1_reset;
  wire stg1_reset0;
  wire stg2_done_i_1_n_0;
  wire [2:0]stg2_done_reg_0;
  wire stg2_done_reg_1;
  wire stg2_reset;

  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg[1] ),
        .I1(Q[0]),
        .I2(done),
        .I3(Q[1]),
        .O(stg2_done_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(Q[1]),
        .I1(done),
        .I2(Q[2]),
        .O(stg2_done_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(done),
        .I1(Q[2]),
        .I2(src_rcv),
        .I3(Q[3]),
        .O(stg2_done_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    ctrl_req_r_i_1
       (.I0(done),
        .I1(Q[2]),
        .I2(src_rcv),
        .I3(Q[3]),
        .I4(src_send),
        .O(stg2_done_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000002)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_1 
       (.I0(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I1(selector[3]),
        .I2(selector[2]),
        .I3(selector[0]),
        .I4(selector[1]),
        .I5(D[16]),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h4070)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_2 
       (.I0(si_enable[1]),
        .I1(p_0_in_0[0]),
        .I2(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I3(si_enable[0]),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[0].mi_enable_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ),
        .Q(D[16]),
        .R(stg2_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    \gen_mi_enable[1].mi_enable_r[1]_i_1 
       (.I0(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I1(selector[3]),
        .I2(selector[2]),
        .I3(selector[0]),
        .I4(selector[1]),
        .I5(D[17]),
        .O(\gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[1].mi_enable_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ),
        .Q(D[17]),
        .R(stg2_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    \gen_mi_enable[2].mi_enable_r[2]_i_1 
       (.I0(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I1(selector[3]),
        .I2(selector[2]),
        .I3(selector[1]),
        .I4(selector[0]),
        .I5(D[18]),
        .O(\gen_mi_enable[2].mi_enable_r[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[2].mi_enable_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[2].mi_enable_r[2]_i_1_n_0 ),
        .Q(D[18]),
        .R(stg2_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \gen_mi_enable[3].mi_enable_r[3]_i_1 
       (.I0(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I1(selector[3]),
        .I2(selector[2]),
        .I3(selector[0]),
        .I4(selector[1]),
        .I5(D[19]),
        .O(\gen_mi_enable[3].mi_enable_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[3].mi_enable_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[3].mi_enable_r[3]_i_1_n_0 ),
        .Q(D[19]),
        .R(stg2_reset));
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
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_en_in_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[2].mi_mux_en_in_reg[2]_0 ),
        .Q(mi_mux_en_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[2].mi_mux_in_reg[11]_0 [2]),
        .Q(D[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[2].mi_mux_in_reg[11]_0 [3]),
        .Q(D[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[2].mi_mux_in_reg[11]_0 [0]),
        .Q(D[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[2].mi_mux_in_reg[11]_0 [1]),
        .Q(D[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_en_in_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[3].mi_mux_en_in_reg[3]_0 ),
        .Q(mi_mux_en_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_in_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[3].mi_mux_in_reg[15]_0 [0]),
        .Q(D[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_in_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[3].mi_mux_in_reg[15]_0 [1]),
        .Q(D[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_in_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[3].mi_mux_in_reg[15]_0 [2]),
        .Q(D[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_in_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[3].mi_mux_in_reg[15]_0 [3]),
        .Q(D[15]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \gen_si_enable[0].si_enable_r[0]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I2(si_enable[0]),
        .O(p_44_out));
  LUT5 #(
    .INIT(32'h00020000)) 
    \gen_si_enable[0].si_enable_r[0]_i_2 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[3]),
        .I4(mi_connectivity),
        .O(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[0].si_enable_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_44_out),
        .Q(si_enable[0]),
        .R(stg2_reset));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \gen_si_enable[1].si_enable_r[1]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[0]),
        .I2(si_enable[1]),
        .O(p_41_out));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[1].si_enable_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_41_out),
        .Q(si_enable[1]),
        .R(stg2_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[0].si_mux_r[3]_i_1 
       (.I0(si_enable[0]),
        .O(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[0]),
        .Q(D[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[1]),
        .Q(D[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[2]),
        .Q(D[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[3]),
        .Q(D[23]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[1].si_mux_r[7]_i_1 
       (.I0(si_enable[1]),
        .O(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(selector[0]),
        .Q(D[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(selector[1]),
        .Q(D[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(selector[2]),
        .Q(D[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(selector[3]),
        .Q(D[27]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mi_cntr[0]_i_1 
       (.I0(\mi_cntr_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
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
       (.I0(\mi_cntr_reg_n_0_[1] ),
        .I1(\mi_cntr_reg_n_0_[0] ),
        .I2(\mi_cntr_reg_n_0_[2] ),
        .O(\mi_cntr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \mi_cntr[3]_i_1 
       (.I0(\mi_cntr_reg_n_0_[0] ),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .I2(\mi_cntr_reg_n_0_[3] ),
        .I3(\mi_cntr_reg_n_0_[2] ),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mi_cntr[3]_i_2 
       (.I0(\mi_cntr_reg_n_0_[0] ),
        .I1(\mi_cntr_reg_n_0_[1] ),
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
    .INIT(1'b1)) 
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
        .D(\mi_cntr[2]_i_1_n_0 ),
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
       (.I0(\mi_cntr_reg_n_0_[2] ),
        .O(\mi_connectivity[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mi_connectivity_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_connectivity[0]_i_1_n_0 ),
        .Q(mi_connectivity),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selectee[0]_i_1 
       (.I0(D[12]),
        .I1(D[4]),
        .I2(\mi_cntr_reg_n_0_[0] ),
        .I3(D[8]),
        .I4(\mi_cntr_reg_n_0_[1] ),
        .I5(D[0]),
        .O(\selectee[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selectee[1]_i_1 
       (.I0(D[13]),
        .I1(D[5]),
        .I2(\mi_cntr_reg_n_0_[0] ),
        .I3(D[9]),
        .I4(\mi_cntr_reg_n_0_[1] ),
        .I5(D[1]),
        .O(\selectee[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selectee[2]_i_1 
       (.I0(D[14]),
        .I1(D[6]),
        .I2(\mi_cntr_reg_n_0_[0] ),
        .I3(D[10]),
        .I4(\mi_cntr_reg_n_0_[1] ),
        .I5(D[2]),
        .O(\selectee[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selectee[3]_i_1 
       (.I0(D[15]),
        .I1(D[7]),
        .I2(\mi_cntr_reg_n_0_[0] ),
        .I3(D[11]),
        .I4(\mi_cntr_reg_n_0_[1] ),
        .I5(D[3]),
        .O(\selectee[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee[0]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(\mi_cntr_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee[1]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(\mi_cntr_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee[2]_i_1_n_0 ),
        .Q(p_0_in_0[2]),
        .R(\mi_cntr_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee[3]_i_1_n_0 ),
        .Q(p_0_in_0[3]),
        .R(\mi_cntr_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    selector_enable_i_1
       (.I0(mi_mux_en_in[3]),
        .I1(mi_mux_en_in[2]),
        .I2(\mi_cntr_reg_n_0_[1] ),
        .I3(mi_mux_en_in[1]),
        .I4(\mi_cntr_reg_n_0_[0] ),
        .I5(mi_mux_en_in[0]),
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
    .INIT(32'h00000008)) 
    stg1_done_i_1
       (.I0(\mi_cntr_reg_n_0_[0] ),
        .I1(\mi_cntr_reg_n_0_[1] ),
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
(* VERSION = "0" *) (* WIDTH = "30" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "HANDSHAKE" *) 
module design_1_axis_switch_1_2_xpm_cdc_handshake
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [29:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [29:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* xpm_cdc = "HANDSHAKE" *) wire [29:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_ff;
  wire dest_req_nxt;
  wire p_0_in;
  wire src_clk;
  wire [29:0]src_hsdata_ff;
  wire [29:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[29:0] = dest_hsdata_ff;
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
  FDRE \dest_hsdata_ff_reg[15] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[15]),
        .Q(dest_hsdata_ff[15]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[16] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[16]),
        .Q(dest_hsdata_ff[16]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[17] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[17]),
        .Q(dest_hsdata_ff[17]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[18] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[18]),
        .Q(dest_hsdata_ff[18]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[19] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[19]),
        .Q(dest_hsdata_ff[19]),
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
  FDRE \dest_hsdata_ff_reg[20] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[20]),
        .Q(dest_hsdata_ff[20]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[21] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[21]),
        .Q(dest_hsdata_ff[21]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[22] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[22]),
        .Q(dest_hsdata_ff[22]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[23] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[23]),
        .Q(dest_hsdata_ff[23]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[24] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[24]),
        .Q(dest_hsdata_ff[24]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[25] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[25]),
        .Q(dest_hsdata_ff[25]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[26] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[26]),
        .Q(dest_hsdata_ff[26]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[27] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[27]),
        .Q(dest_hsdata_ff[27]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[28] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[28]),
        .Q(dest_hsdata_ff[28]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[29] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[29]),
        .Q(dest_hsdata_ff[29]),
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
    \src_hsdata_ff[29]_i_1 
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
  FDRE \src_hsdata_ff_reg[15] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[15]),
        .Q(src_hsdata_ff[15]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[16] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[16]),
        .Q(src_hsdata_ff[16]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[17] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[17]),
        .Q(src_hsdata_ff[17]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[18] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[18]),
        .Q(src_hsdata_ff[18]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[19] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[19]),
        .Q(src_hsdata_ff[19]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[1] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[1]),
        .Q(src_hsdata_ff[1]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[20] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[20]),
        .Q(src_hsdata_ff[20]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[21] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[21]),
        .Q(src_hsdata_ff[21]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[22] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[22]),
        .Q(src_hsdata_ff[22]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[23] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[23]),
        .Q(src_hsdata_ff[23]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[24] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[24]),
        .Q(src_hsdata_ff[24]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[25] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[25]),
        .Q(src_hsdata_ff[25]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[26] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[26]),
        .Q(src_hsdata_ff[26]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[27] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[27]),
        .Q(src_hsdata_ff[27]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[28] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[28]),
        .Q(src_hsdata_ff[28]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[29] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[29]),
        .Q(src_hsdata_ff[29]),
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
  design_1_axis_switch_1_2_xpm_cdc_single xpm_cdc_single_dest2src_inst
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
  design_1_axis_switch_1_2_xpm_cdc_single__4 xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(src_clk),
        .src_in(src_sendd_ff));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_axis_switch_1_2_xpm_cdc_single
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
module design_1_axis_switch_1_2_xpm_cdc_single__3
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
module design_1_axis_switch_1_2_xpm_cdc_single__4
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
