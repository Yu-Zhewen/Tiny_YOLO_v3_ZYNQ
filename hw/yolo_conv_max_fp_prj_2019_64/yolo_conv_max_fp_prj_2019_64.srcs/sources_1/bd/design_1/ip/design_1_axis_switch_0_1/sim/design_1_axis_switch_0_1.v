// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:axis_switch:1.1
// IP Revision: 19

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_axis_switch_0_1 (
  aclk,
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
  s_axi_ctrl_rresp
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S00_AXIS:S01_AXIS:S02_AXIS:S03_AXIS:S04_AXIS:S05_AXIS:S06_AXIS:S07_AXIS:S08_AXIS:S09_AXIS:S10_AXIS:S11_AXIS:S12_AXIS:S13_AXIS:S14_AXIS:S15_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *)
input wire [0 : 0] s_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *)
output wire [0 : 0] s_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *)
input wire [63 : 0] s_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *)
input wire [7 : 0] s_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP" *)
input wire [7 : 0] s_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *)
input wire [0 : 0] s_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TID" *)
input wire [4 : 0] s_axis_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDEST" *)
input wire [5 : 0] s_axis_tdest;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TUSER" *)
input wire [1 : 0] s_axis_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TVALID [0:0] [1:1]" *)
output wire [1 : 0] m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TREADY [0:0] [1:1]" *)
input wire [1 : 0] m_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA [63:0] [63:0], xilinx.com:interface:axis:1.0 M01_AXIS TDATA [63:0] [127:64]" *)
output wire [127 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB [7:0] [7:0], xilinx.com:interface:axis:1.0 M01_AXIS TSTRB [7:0] [15:8]" *)
output wire [15 : 0] m_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP [7:0] [7:0], xilinx.com:interface:axis:1.0 M01_AXIS TKEEP [7:0] [15:8]" *)
output wire [15 : 0] m_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TLAST [0:0] [1:1]" *)
output wire [1 : 0] m_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TID [4:0] [4:0], xilinx.com:interface:axis:1.0 M01_AXIS TID [4:0] [9:5]" *)
output wire [9 : 0] m_axis_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDEST [5:0] [5:0], xilinx.com:interface:axis:1.0 M01_AXIS TDEST [5:0] [11:6]" *)
output wire [11 : 0] m_axis_tdest;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M01_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYE\
RED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TUSER [1:0] [1:0], xilinx.com:interface:axis:1.0 M01_AXIS TUSER [1:0] [3:2]" *)
output wire [3 : 0] m_axis_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL_ACLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI_CTRL, ASSOCIATED_RESET s_axi_ctrl_aresetn, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CTRL_ACLK CLK" *)
input wire s_axi_ctrl_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_CTRL_ARESETN RST" *)
input wire s_axi_ctrl_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID" *)
input wire s_axi_ctrl_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY" *)
output wire s_axi_ctrl_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR" *)
input wire [6 : 0] s_axi_ctrl_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID" *)
input wire s_axi_ctrl_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY" *)
output wire s_axi_ctrl_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA" *)
input wire [31 : 0] s_axi_ctrl_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID" *)
output wire s_axi_ctrl_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY" *)
input wire s_axi_ctrl_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP" *)
output wire [1 : 0] s_axi_ctrl_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID" *)
input wire s_axi_ctrl_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY" *)
output wire s_axi_ctrl_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR" *)
input wire [6 : 0] s_axi_ctrl_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID" *)
output wire s_axi_ctrl_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY" *)
input wire s_axi_ctrl_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA" *)
output wire [31 : 0] s_axi_ctrl_rdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_TH\
READS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP" *)
output wire [1 : 0] s_axi_ctrl_rresp;

  axis_switch_v1_1_19_axis_switch #(
    .C_FAMILY("zynq"),
    .C_NUM_SI_SLOTS(1),
    .C_LOG_SI_SLOTS(1),
    .C_NUM_MI_SLOTS(2),
    .C_AXIS_TDATA_WIDTH(64),
    .C_AXIS_TID_WIDTH(5),
    .C_AXIS_TDEST_WIDTH(6),
    .C_AXIS_TUSER_WIDTH(2),
    .C_AXIS_SIGNAL_SET(32'B00000000000000000000000011111111),
    .C_ARB_ON_MAX_XFERS(1),
    .C_ARB_ON_NUM_CYCLES(0),
    .C_ARB_ON_TLAST(0),
    .C_INCLUDE_ARBITER(1),
    .C_ARB_ALGORITHM(0),
    .C_OUTPUT_REG(0),
    .C_DECODER_REG(1),
    .C_M_AXIS_CONNECTIVITY_ARRAY(2'B11),
    .C_M_AXIS_BASETDEST_ARRAY(12'B000001000000),
    .C_M_AXIS_HIGHTDEST_ARRAY(12'B000001000000),
    .C_ROUTING_MODE(1),
    .C_S_AXI_CTRL_ADDR_WIDTH(7),
    .C_S_AXI_CTRL_DATA_WIDTH(32),
    .C_COMMON_CLOCK(0)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .aclken(1'H1),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tstrb(s_axis_tstrb),
    .s_axis_tkeep(s_axis_tkeep),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tid(s_axis_tid),
    .s_axis_tdest(s_axis_tdest),
    .s_axis_tuser(s_axis_tuser),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tstrb(m_axis_tstrb),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tid(m_axis_tid),
    .m_axis_tdest(m_axis_tdest),
    .m_axis_tuser(m_axis_tuser),
    .arb_req(),
    .arb_done(),
    .arb_gnt(2'H0),
    .arb_sel(2'H0),
    .arb_last(),
    .arb_id(),
    .arb_dest(),
    .arb_user(),
    .s_req_suppress(1'H0),
    .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
    .s_axi_ctrl_aresetn(s_axi_ctrl_aresetn),
    .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
    .s_axi_ctrl_awready(s_axi_ctrl_awready),
    .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
    .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
    .s_axi_ctrl_wready(s_axi_ctrl_wready),
    .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
    .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
    .s_axi_ctrl_bready(s_axi_ctrl_bready),
    .s_axi_ctrl_bresp(s_axi_ctrl_bresp),
    .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
    .s_axi_ctrl_arready(s_axi_ctrl_arready),
    .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
    .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
    .s_axi_ctrl_rready(s_axi_ctrl_rready),
    .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
    .s_axi_ctrl_rresp(s_axi_ctrl_rresp),
    .s_decode_err()
  );
endmodule
