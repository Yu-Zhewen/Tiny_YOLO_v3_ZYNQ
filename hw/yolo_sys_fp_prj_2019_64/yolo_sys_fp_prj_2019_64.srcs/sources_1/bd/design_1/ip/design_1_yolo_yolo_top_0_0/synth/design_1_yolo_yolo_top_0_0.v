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


// IP VLNV: xilinx.com:hls:yolo_yolo_top:1.0
// IP Revision: 1907261726

(* X_CORE_INFO = "yolo_yolo_top,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "design_1_yolo_yolo_top_0_0,yolo_yolo_top,{}" *)
(* CORE_GENERATION_INFO = "design_1_yolo_yolo_top_0_0,yolo_yolo_top,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=yolo_yolo_top,x_ipVersion=1.0,x_ipCoreRevision=1907261726,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CTRL_BUS_ADDR_WIDTH=6,C_S_AXI_CTRL_BUS_DATA_WIDTH=32}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_yolo_yolo_top_0_0 (
  s_axi_CTRL_BUS_AWADDR,
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
  outStream_TID
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWADDR" *)
input wire [5 : 0] s_axi_CTRL_BUS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWVALID" *)
input wire s_axi_CTRL_BUS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWREADY" *)
output wire s_axi_CTRL_BUS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WDATA" *)
input wire [31 : 0] s_axi_CTRL_BUS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WSTRB" *)
input wire [3 : 0] s_axi_CTRL_BUS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WVALID" *)
input wire s_axi_CTRL_BUS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WREADY" *)
output wire s_axi_CTRL_BUS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BRESP" *)
output wire [1 : 0] s_axi_CTRL_BUS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BVALID" *)
output wire s_axi_CTRL_BUS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BREADY" *)
input wire s_axi_CTRL_BUS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARADDR" *)
input wire [5 : 0] s_axi_CTRL_BUS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARVALID" *)
input wire s_axi_CTRL_BUS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARREADY" *)
output wire s_axi_CTRL_BUS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RDATA" *)
output wire [31 : 0] s_axi_CTRL_BUS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RRESP" *)
output wire [1 : 0] s_axi_CTRL_BUS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RVALID" *)
output wire s_axi_CTRL_BUS_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL_BUS, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 1e+08, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, NUM_READ_TH\
READS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RREADY" *)
input wire s_axi_CTRL_BUS_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL_BUS:inStream:outStream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TVALID" *)
input wire inStream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TREADY" *)
output wire inStream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TDATA" *)
input wire [63 : 0] inStream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TDEST" *)
input wire [5 : 0] inStream_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TKEEP" *)
input wire [7 : 0] inStream_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TSTRB" *)
input wire [7 : 0] inStream_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TUSER" *)
input wire [1 : 0] inStream_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TLAST" *)
input wire [0 : 0] inStream_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inStream, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 inStream TID" *)
input wire [4 : 0] inStream_TID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TVALID" *)
output wire outStream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TREADY" *)
input wire outStream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TDATA" *)
output wire [63 : 0] outStream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TDEST" *)
output wire [5 : 0] outStream_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TKEEP" *)
output wire [7 : 0] outStream_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TSTRB" *)
output wire [7 : 0] outStream_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TUSER" *)
output wire [1 : 0] outStream_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TLAST" *)
output wire [0 : 0] outStream_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outStream, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 outStream TID" *)
output wire [4 : 0] outStream_TID;

  yolo_yolo_top #(
    .C_S_AXI_CTRL_BUS_ADDR_WIDTH(6),
    .C_S_AXI_CTRL_BUS_DATA_WIDTH(32)
  ) inst (
    .s_axi_CTRL_BUS_AWADDR(s_axi_CTRL_BUS_AWADDR),
    .s_axi_CTRL_BUS_AWVALID(s_axi_CTRL_BUS_AWVALID),
    .s_axi_CTRL_BUS_AWREADY(s_axi_CTRL_BUS_AWREADY),
    .s_axi_CTRL_BUS_WDATA(s_axi_CTRL_BUS_WDATA),
    .s_axi_CTRL_BUS_WSTRB(s_axi_CTRL_BUS_WSTRB),
    .s_axi_CTRL_BUS_WVALID(s_axi_CTRL_BUS_WVALID),
    .s_axi_CTRL_BUS_WREADY(s_axi_CTRL_BUS_WREADY),
    .s_axi_CTRL_BUS_BRESP(s_axi_CTRL_BUS_BRESP),
    .s_axi_CTRL_BUS_BVALID(s_axi_CTRL_BUS_BVALID),
    .s_axi_CTRL_BUS_BREADY(s_axi_CTRL_BUS_BREADY),
    .s_axi_CTRL_BUS_ARADDR(s_axi_CTRL_BUS_ARADDR),
    .s_axi_CTRL_BUS_ARVALID(s_axi_CTRL_BUS_ARVALID),
    .s_axi_CTRL_BUS_ARREADY(s_axi_CTRL_BUS_ARREADY),
    .s_axi_CTRL_BUS_RDATA(s_axi_CTRL_BUS_RDATA),
    .s_axi_CTRL_BUS_RRESP(s_axi_CTRL_BUS_RRESP),
    .s_axi_CTRL_BUS_RVALID(s_axi_CTRL_BUS_RVALID),
    .s_axi_CTRL_BUS_RREADY(s_axi_CTRL_BUS_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .inStream_TVALID(inStream_TVALID),
    .inStream_TREADY(inStream_TREADY),
    .inStream_TDATA(inStream_TDATA),
    .inStream_TDEST(inStream_TDEST),
    .inStream_TKEEP(inStream_TKEEP),
    .inStream_TSTRB(inStream_TSTRB),
    .inStream_TUSER(inStream_TUSER),
    .inStream_TLAST(inStream_TLAST),
    .inStream_TID(inStream_TID),
    .outStream_TVALID(outStream_TVALID),
    .outStream_TREADY(outStream_TREADY),
    .outStream_TDATA(outStream_TDATA),
    .outStream_TDEST(outStream_TDEST),
    .outStream_TKEEP(outStream_TKEEP),
    .outStream_TSTRB(outStream_TSTRB),
    .outStream_TUSER(outStream_TUSER),
    .outStream_TLAST(outStream_TLAST),
    .outStream_TID(outStream_TID)
  );
endmodule
