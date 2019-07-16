//  (c) Copyright 2011-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   arb_rr
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_switch_v1_1_19_arb_rr #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY        = "virtex7",
   parameter integer C_NUM_SI_SLOTS  = 8,
   parameter integer C_LOG_SI_SLOTS  = 3,
   parameter         C_ARB_ALGORITHM = 0
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire ACLK,
   input wire ARESET,
   input wire ACLKEN,

   input  wire [C_NUM_SI_SLOTS-1:0] ARB_REQ,
   input  wire                      ARB_DONE, 
   output wire [C_NUM_SI_SLOTS-1:0] ARB_GNT,
   output wire [C_LOG_SI_SLOTS-1:0] ARB_SEL
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
function [C_NUM_SI_SLOTS*C_LOG_SI_SLOTS-1:0] f_port_priority_init (
  input integer num_slaves
);
  begin : main
    integer i;
    for (i = 0; i < num_slaves; i = i + 1) begin
      f_port_priority_init[i*C_LOG_SI_SLOTS+:C_LOG_SI_SLOTS] = i[C_LOG_SI_SLOTS-1:0];
    end
  end
endfunction

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
wire                                     arb_busy_ns;
reg                                      arb_busy_r;

wire                                     advance;
wire [C_LOG_SI_SLOTS-1:0]                barrel_cntr_ns;
reg  [C_LOG_SI_SLOTS-1:0]                barrel_cntr;
wire [C_NUM_SI_SLOTS-1:0]                arb_req_rot;
wire [C_NUM_SI_SLOTS-1:0]                arb_req_i;
reg  [C_NUM_SI_SLOTS*C_LOG_SI_SLOTS-1:0] port_priority_r;
wire [C_NUM_SI_SLOTS*C_LOG_SI_SLOTS-1:0] port_priority_ns;
wire [C_LOG_SI_SLOTS-1:0]                sel_i;
wire                                     valid_i; 

wire [C_LOG_SI_SLOTS-1:0]                arb_sel_ns;
reg  [C_LOG_SI_SLOTS-1:0]                arb_sel_r;

wire [C_NUM_SI_SLOTS-1:0]                sel_decode_i;
wire [C_NUM_SI_SLOTS-1:0]                arb_gnt_ns;
reg  [C_NUM_SI_SLOTS-1:0]                arb_gnt_r;
////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

// Generate busy logic.  When arbiter is busy a new REQ can't be granted and
// priority will not advance.
assign arb_busy_ns = (valid_i) | (arb_busy_r & ~ARB_DONE);

always @(posedge ACLK) begin 
  if (ARESET) begin
    arb_busy_r <= 1'b0;
  end
  else if (ACLKEN) begin
    arb_busy_r <= arb_busy_ns;
  end
end

assign advance = ~arb_busy_r | (|arb_gnt_r);

assign barrel_cntr_ns = (barrel_cntr == C_NUM_SI_SLOTS-1) ? {C_LOG_SI_SLOTS{1'b0}} : barrel_cntr + 1'b1 ; 

always @(posedge ACLK) begin
  if (ARESET) begin
    barrel_cntr <= {C_LOG_SI_SLOTS{1'b0}};
  end
  else if (ACLKEN && C_ARB_ALGORITHM == 0) begin
    barrel_cntr <= advance ? barrel_cntr_ns : barrel_cntr;
  end
end

assign arb_req_i = ARB_REQ & ~arb_gnt_r;
assign arb_req_rot[C_NUM_SI_SLOTS-1:0] = {arb_req_i, arb_req_i} >> barrel_cntr;

// Port Priority implements round robin arbitration
always @(posedge ACLK) begin
  if (ARESET) begin
    port_priority_r <= f_port_priority_init(C_NUM_SI_SLOTS);
  end
  else if (ACLKEN && (C_ARB_ALGORITHM == 0)) begin
    port_priority_r <= advance ? port_priority_ns : port_priority_r;
  end
end

assign port_priority_ns[0+:(C_NUM_SI_SLOTS-1)*C_LOG_SI_SLOTS] = 
         port_priority_r[1*C_LOG_SI_SLOTS+:(C_NUM_SI_SLOTS-1)*C_LOG_SI_SLOTS];
assign port_priority_ns[(C_NUM_SI_SLOTS-1)*C_LOG_SI_SLOTS+:C_LOG_SI_SLOTS] = port_priority_r[0+:C_LOG_SI_SLOTS];

axis_switch_v1_1_19_dynamic_priority_encoder #(
  .C_FAMILY    ( C_FAMILY       ) ,
  .C_REQ_WIDTH ( C_NUM_SI_SLOTS ) ,
  .C_ENC_WIDTH ( C_LOG_SI_SLOTS ) 
)
dynamic_priority_encoder_0
(
  .REQ           ( arb_req_rot     ) ,
  .PORT_PRIORITY ( port_priority_r ) ,
  .SEL           ( sel_i           ) ,
  .VALID         ( valid_i         ) 
);

assign arb_sel_ns = valid_i & (~arb_busy_r | ARB_DONE) ? sel_i : arb_sel_r;

always @(posedge ACLK) begin 
  if (ARESET) begin
    arb_sel_r <= {C_LOG_SI_SLOTS{1'b0}};
  end
  else if (ACLKEN) begin
    arb_sel_r <= arb_sel_ns;
  end
end

assign ARB_SEL = arb_sel_r;

// Decode sel from integer to one-hot
generate
  genvar i;
  for (i = 0; i < C_NUM_SI_SLOTS; i = i + 1) begin : gen_sel_decode_one_hot
    assign sel_decode_i[i] = (i == sel_i); 
  end
endgenerate

assign arb_gnt_ns = valid_i & (~arb_busy_r | ARB_DONE) ? sel_decode_i : {C_LOG_SI_SLOTS{1'b0}};

always @(posedge ACLK) begin 
  if (ARESET) begin
    arb_gnt_r <= {C_LOG_SI_SLOTS{1'b0}};
  end
  else if (ACLKEN) begin
    arb_gnt_r <= arb_gnt_ns;
  end
end

assign ARB_GNT = arb_gnt_r;

endmodule // arb_rr

`default_nettype wire


//  (c) Copyright 2011-2015 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   arb_rr
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_switch_v1_1_19_arb_trr #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY        = "virtex7",
   parameter integer C_NUM_SI_SLOTS  = 8,
   parameter integer C_LOG_SI_SLOTS  = 3
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire aclk,
   input wire areset,
   input wire aclken,

   input  wire [C_NUM_SI_SLOTS-1:0] arb_req,
   input  wire                      arb_done, 
   output wire [C_NUM_SI_SLOTS-1:0] arb_gnt,
   output wire [C_LOG_SI_SLOTS-1:0] arb_sel
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
function [C_NUM_SI_SLOTS*C_LOG_SI_SLOTS-1:0] f_port_priority_init (
  input integer num_slaves
);
  begin : main
    integer i;
    for (i = 0; i < num_slaves; i = i + 1) begin
      f_port_priority_init[i*C_LOG_SI_SLOTS+:C_LOG_SI_SLOTS] = i[C_LOG_SI_SLOTS-1:0];
    end
  end
endfunction

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
reg  [C_LOG_SI_SLOTS-1:0]                sel_r;
wire [C_LOG_SI_SLOTS-1:0]                sel_i;
wire [C_NUM_SI_SLOTS-1:0]                arb_req_rot;
wire [C_NUM_SI_SLOTS-1:0]                arb_req_i;
wire                                     valid_i; 
reg  [C_LOG_SI_SLOTS-1:0]                barrel_cntr;
wire [C_LOG_SI_SLOTS-1:0]                barrel_cntr_ns;
wire                                     advance;
wire [C_NUM_SI_SLOTS*C_LOG_SI_SLOTS-1:0] port_priority_rot;
wire [C_NUM_SI_SLOTS*C_LOG_SI_SLOTS-1:0] port_priority_init = f_port_priority_init(C_NUM_SI_SLOTS);

reg  [C_NUM_SI_SLOTS-1:0]                arb_gnt_r;
reg                                      arb_busy_r;
wire [C_NUM_SI_SLOTS-1:0]                sel_decode_i;
////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

assign arb_sel = sel_r;

always @(posedge aclk) begin 
  if (aclken) begin 
    sel_r <= valid_i & (~arb_busy_r | arb_done) ? sel_i : sel_r;
  end
end

axis_switch_v1_1_19_dynamic_priority_encoder #(
  .C_FAMILY    ( C_FAMILY       ) ,
  .C_REQ_WIDTH ( C_NUM_SI_SLOTS ) ,
  .C_ENC_WIDTH ( C_LOG_SI_SLOTS ) 
)
dynamic_priority_encoder_0
(
  .REQ           ( arb_req_rot     ) ,
  .PORT_PRIORITY ( port_priority_rot ) ,
  .SEL           ( sel_i           ) ,
  .VALID         ( valid_i         ) 
);

assign arb_req_i = arb_req & ~arb_gnt_r;
assign arb_req_rot = {arb_req_i, arb_req_i} >> barrel_cntr;

always @(posedge aclk) begin
  if (areset) begin
    barrel_cntr <= {C_LOG_SI_SLOTS{1'b0}};
  end
  else if (aclken) begin
    barrel_cntr <= advance ? barrel_cntr_ns : barrel_cntr;
  end
end

assign barrel_cntr_ns = (sel_i == C_NUM_SI_SLOTS-1) ? {C_LOG_SI_SLOTS{1'b0}} : sel_i + 1'b1 ; 

assign port_priority_rot = {port_priority_init, port_priority_init} >> barrel_cntr*C_LOG_SI_SLOTS;

assign arb_gnt = arb_gnt_r;

always @(posedge aclk) begin 
  if (areset) begin
    arb_gnt_r <= {C_LOG_SI_SLOTS{1'b0}};
  end
  else if (aclken) begin
    arb_gnt_r <= valid_i & (~arb_busy_r | arb_done) ? sel_decode_i : {C_LOG_SI_SLOTS{1'b0}};
  end
end

always @(posedge aclk) begin 
  if (areset) begin
    arb_busy_r <= 1'b0;
  end
  else if (aclken) begin
    arb_busy_r <= valid_i & (~arb_busy_r|arb_done) ? 1'b1 : arb_done ? 1'b0 : arb_busy_r;
  end
end

// Decode sel from integer to one-hot
generate
  genvar i;
  for (i = 0; i < C_NUM_SI_SLOTS; i = i + 1) begin : gen_sel_decode_one_hot
    assign sel_decode_i[i] = (i == sel_i); 
  end
endgenerate

assign advance = arb_done;
endmodule // arb_trr

`default_nettype wire


//  (c) Copyright 2011-2014 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axisc_decoder
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_switch_v1_1_19_axisc_decoder #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY           = "virtex7",
   parameter integer C_AXIS_TDATA_WIDTH = 32,
   parameter integer C_AXIS_TID_WIDTH   = 1,
   parameter integer C_AXIS_TDEST_WIDTH = 1,
   parameter integer C_AXIS_TUSER_WIDTH = 1,
   parameter [31:0]  C_AXIS_SIGNAL_SET  = 32'hFF,
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present
   //   [1] => TDATA present
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   parameter integer C_TPAYLOAD_WIDTH  = 44,
   parameter integer C_NUM_MI_SLOTS    = 1,
   parameter integer C_DECODER_REG     = 1, 
   // C_DECODER_REG: Registers payload and ARB_REQ signal
   //   0 => BYPASS    = The channel is just wired through the module.
   //   1 => FWD_REV   = Both FWD and REV (fully-registered)
   parameter [C_NUM_MI_SLOTS-1:0] C_CONNECTIVITY = {C_NUM_MI_SLOTS{1'b1}},
   // Specifies connectivity matrix for sparse crossbar configurations
   parameter [C_NUM_MI_SLOTS*C_AXIS_TDEST_WIDTH-1:0] C_BASETDEST = {C_NUM_MI_SLOTS*C_AXIS_TDEST_WIDTH{1'b1}},
   // Array of TDEST base/high pairs for each master interface
   parameter [C_NUM_MI_SLOTS*C_AXIS_TDEST_WIDTH-1:0] C_HIGHTDEST = {C_NUM_MI_SLOTS*C_AXIS_TDEST_WIDTH{1'b0}},
   parameter integer C_ROUTING_MODE = 0
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire ACLK,
   input wire ARESET,
   input wire ACLKEN,

   // Slave side
   input  wire                          S_AXIS_TVALID,
   output wire                          S_AXIS_TREADY,
   input  wire [C_TPAYLOAD_WIDTH-1:0]   S_AXIS_TPAYLOAD,
   input  wire [C_AXIS_TDEST_WIDTH-1:0] S_AXIS_TDEST,

   // Master side
   output wire [C_NUM_MI_SLOTS-1:0]     M_AXIS_TVALID,
   input  wire [C_NUM_MI_SLOTS-1:0]     M_AXIS_TREADY,
   output wire [C_TPAYLOAD_WIDTH-1:0]   M_AXIS_TPAYLOAD,

   // ARBITER Side
   output wire                          ARB_LAST,
   output wire [C_AXIS_TID_WIDTH-1:0]   ARB_ID,
   output wire [C_AXIS_TDEST_WIDTH-1:0] ARB_DEST,
   output wire [C_AXIS_TUSER_WIDTH-1:0] ARB_USER,
   output wire [C_NUM_MI_SLOTS-1:0]     ARB_REQ,
   input  wire [C_NUM_MI_SLOTS-1:0]     ARB_DONE,
   input  wire [C_NUM_MI_SLOTS-1:0]     ARB_GNT,
   output wire [C_NUM_MI_SLOTS-1:0]     ARB_ACTIVE, // Status

   // err signals
   output wire                          DECODE_ERR,
   input  wire [1*4-1:0]                si_mux,
   input  wire [1-1:0]                  si_enable 
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
`include "axis_infrastructure_v1_1_0.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam TDW = C_AXIS_TDEST_WIDTH;
localparam P_TDEST_PRESENT = C_AXIS_SIGNAL_SET[G_INDX_SS_TDEST];

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

generate 
if (C_ROUTING_MODE == 0) begin : gen_tdest_routing
  ////////////////////////////////////////////////////////////////////////////////
  // Wires/Reg declarations
  ////////////////////////////////////////////////////////////////////////////////
  wire [C_NUM_MI_SLOTS-1:0]  busy_ns;
  reg  [C_NUM_MI_SLOTS-1:0]  busy_r;
  wire [C_NUM_MI_SLOTS-1:0]  dest_compare_match;
  wire [C_NUM_MI_SLOTS-1:0]  arb_req_ns;
  wire [C_NUM_MI_SLOTS-1:0]  arb_req_i;
  wire                       decode_err_ns;
  reg                        decode_err_r;
  wire                       tready_or_decode_err;
  wire                       m_axis_tvalid_payload;
  wire                       m_axis_tvalid_req;
  wire                       m_tready_from_decoded_slave;

  // This selects only the TREADY of the MI slot we are requesting.
  assign m_tready_from_decoded_slave = |(arb_req_i & M_AXIS_TREADY);

  assign busy_ns =  (ARB_GNT | busy_r) & ~ARB_DONE;

  always @(posedge ACLK) begin 
    if (ARESET) begin
      busy_r <= {C_NUM_MI_SLOTS{1'b0}};
    end else if (ACLKEN) begin
      busy_r <= busy_ns;
    end
  end

  assign ARB_ACTIVE = busy_r;

  genvar mi;

    if (P_TDEST_PRESENT) begin : gen_tdest_decoder
      for (mi = 0; mi < C_NUM_MI_SLOTS; mi = mi + 1) begin : gen_decode_loop
        if (C_CONNECTIVITY[mi] && (C_BASETDEST[mi*TDW+:TDW] <= C_HIGHTDEST[mi*TDW+:TDW])) begin : gen_master_connectivity
          assign dest_compare_match[mi] = ((S_AXIS_TDEST >= C_BASETDEST[mi*TDW+:TDW]) && (S_AXIS_TDEST <= C_HIGHTDEST[mi*TDW+:TDW])) 
                              ? 1'b1 : 1'b0;
         
          // Mux in the comparison only when S_AXIS_TVALID to avoid x propogation.
          assign arb_req_ns[mi] = S_AXIS_TVALID ? dest_compare_match[mi] : 1'b0; 
        end
        else begin : no_master_connectivity
          assign arb_req_ns[mi] = 1'b0;
        end
      end

      wire [C_NUM_MI_SLOTS-1:0] arb_req_out;

      axis_register_slice_v1_1_19_axisc_register_slice #(
        .C_FAMILY     ( C_FAMILY         ) ,
        .C_DATA_WIDTH ( C_TPAYLOAD_WIDTH ) ,
        .C_REG_CONFIG ( C_DECODER_REG     ) 
      )
      axisc_register_slice_0 (
        .ACLK           ( ACLK                  ) ,
        .ACLK2X         ( 1'b1                  ) ,
        .ARESET         ( ARESET                ) ,
        .ACLKEN         ( ACLKEN                ) ,
        .S_VALID        ( S_AXIS_TVALID         ) ,
        .S_READY        ( S_AXIS_TREADY         ) ,
        .S_PAYLOAD_DATA ( S_AXIS_TPAYLOAD       ) ,

        .M_VALID        ( m_axis_tvalid_payload ) , // Tvalid ignored, and the tvalid from the reg slice below is used.
        .M_READY        ( tready_or_decode_err  ) ,
        .M_PAYLOAD_DATA ( M_AXIS_TPAYLOAD       ) 
      );

      axis_register_slice_v1_1_19_axisc_register_slice #(
        .C_FAMILY     ( C_FAMILY       ) ,
        .C_DATA_WIDTH ( C_NUM_MI_SLOTS ) ,
        .C_REG_CONFIG ( C_DECODER_REG   ) 
      )
      axisc_register_slice_1 (
        .ACLK           ( ACLK                 ) ,
        .ACLK2X         ( 1'b1                 ) ,
        .ARESET         ( ARESET               ) ,
        .ACLKEN         ( ACLKEN               ) ,
        .S_VALID        ( S_AXIS_TVALID        ) ,
        .S_READY        (                      ) , // Ready output ignored since the Ready from reg_slice_0 is identical.
        .S_PAYLOAD_DATA ( arb_req_ns           ) ,

        .M_VALID        ( m_axis_tvalid_req    ) ,
        .M_READY        ( tready_or_decode_err ) ,
        .M_PAYLOAD_DATA ( arb_req_out          ) 
      );
      
      assign arb_req_i = m_axis_tvalid_req ? arb_req_out : {C_NUM_MI_SLOTS{1'b0}};

    end
    // If no tdest, then no tdest decoding can be performed. If single mi
    // system always decode to mi[0].
    else if (P_TDEST_PRESENT == 0 && C_NUM_MI_SLOTS == 1 && C_CONNECTIVITY[0] == 1'b1) begin : gen_no_tdest_decoder
      assign S_AXIS_TREADY = tready_or_decode_err;

      assign m_axis_tvalid_payload = S_AXIS_TVALID;
      assign M_AXIS_TPAYLOAD = S_AXIS_TPAYLOAD;
      assign m_axis_tvalid_req = S_AXIS_TVALID;
      assign arb_req_i = S_AXIS_TVALID;
    end
    // This case represents P_TDEST_PRESNT == 0 and C_NUM_MI_SLOTS > 1).  Need
    // tdets pins to route to multiple MI slots.
    else begin : gen_invalid_configuration 
      assign arb_req_i = {C_NUM_MI_SLOTS{1'b0}};
      assign S_AXIS_TREADY = 1'b0;
      assign m_axis_tvalid_payload = 1'b0;
      assign m_axis_tvalid_req = 1'b0;
      assign M_AXIS_TPAYLOAD = S_AXIS_TPAYLOAD;
    end

  assign M_AXIS_TVALID = arb_req_i;

  assign ARB_REQ = ~busy_r & arb_req_i;
  // Decode Err: Decode err occurs when M_AXIS_TVALID = 1'b1 but none of the ARB_REQ
  // have been asserted
  assign decode_err_ns = ~(|arb_req_i) & m_axis_tvalid_req;

  // decode_err is registered to minimize timing impact.  Results in a bubble
  // cycle when an err occurs
  always @(posedge ACLK) begin
    if (ARESET) begin
      decode_err_r <= {C_NUM_MI_SLOTS{1'b0}};
    end
    else if (ACLKEN) begin
      decode_err_r <= decode_err_ns & ~decode_err_r;
    end
  end

  assign tready_or_decode_err = m_tready_from_decoded_slave | decode_err_r;
  assign DECODE_ERR = decode_err_r;

  // Output ARBITER decision value from M_AXIS_TPAYLOAD
  axis_infrastructure_v1_1_0_util_vector2axis #(
    .C_TDATA_WIDTH    ( C_AXIS_TDATA_WIDTH ) ,
    .C_TID_WIDTH      ( C_AXIS_TID_WIDTH   ) ,
    .C_TDEST_WIDTH    ( C_AXIS_TDEST_WIDTH ) ,
    .C_TUSER_WIDTH    ( C_AXIS_TUSER_WIDTH ) ,
    .C_TPAYLOAD_WIDTH ( C_TPAYLOAD_WIDTH   ) ,
    .C_SIGNAL_SET     ( C_AXIS_SIGNAL_SET  ) 
  )
  util_vector2axis_0 (
    .TPAYLOAD ( M_AXIS_TPAYLOAD ) ,
    .TDATA    (                 ) ,
    .TSTRB    (                 ) ,
    .TKEEP    (                 ) ,
    .TLAST    ( ARB_LAST        ) ,
    .TID      ( ARB_ID          ) ,
    .TDEST    ( ARB_DEST        ) ,
    .TUSER    ( ARB_USER        ) 
  );
end
else begin : gen_static_routing
  ////////////////////////////////////////////////////////////////////////////////
  // Wires/Reg declarations
  ////////////////////////////////////////////////////////////////////////////////
  wire tready_mux;
  wire tvalid_mux;

  axis_register_slice_v1_1_19_axisc_register_slice #(
    .C_FAMILY     ( C_FAMILY         ) ,
    .C_DATA_WIDTH ( C_TPAYLOAD_WIDTH ) ,
    .C_REG_CONFIG ( C_DECODER_REG    ) 
  )
  inst_decoder_pipeline (
    .ACLK           ( ACLK                  ) ,
    .ARESET         ( ARESET | ~si_enable   ) ,
    .ACLKEN         ( ACLKEN                ) ,
    .S_VALID        ( S_AXIS_TVALID         ) ,
    .S_READY        ( S_AXIS_TREADY         ) ,
    .S_PAYLOAD_DATA ( S_AXIS_TPAYLOAD       ) ,
    .M_VALID        ( tvalid_mux            ) ,
    .M_READY        ( tready_mux            ) ,
    .M_PAYLOAD_DATA ( M_AXIS_TPAYLOAD       ) 
  );

  assign tready_mux = (C_DECODER_REG == 1) ? &M_AXIS_TREADY
                                           : &M_AXIS_TREADY & si_enable;
  assign M_AXIS_TVALID = {C_NUM_MI_SLOTS{tvalid_mux}};

  // TIE-OFFs
  assign ARB_LAST = 1'b0;
  assign ARB_ID = {C_AXIS_TID_WIDTH{1'b0}};
  assign ARB_DEST = {C_AXIS_TDEST_WIDTH{1'b0}};
  assign ARB_USER = {C_AXIS_TUSER_WIDTH{1'b0}};
  assign ARB_REQ  = {C_NUM_MI_SLOTS{1'b0}};
  assign ARB_ACTIVE = {C_NUM_MI_SLOTS{1'b0}};
  assign DECODE_ERR = 1'b0;
end
endgenerate

endmodule // axisc_decoder

`default_nettype wire


//  (c) Copyright 2011-2014 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axisc_transfer_mux
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_switch_v1_1_19_axisc_transfer_mux #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY           = "virtex7",
   parameter         C_TPAYLOAD_WIDTH   = 32,
   parameter integer C_AXIS_TDATA_WIDTH = 32,
   parameter integer C_AXIS_TID_WIDTH   = 1,
   parameter integer C_AXIS_TDEST_WIDTH = 1,
   parameter integer C_AXIS_TUSER_WIDTH = 1,
   parameter [31:0]  C_AXIS_SIGNAL_SET  = 32'hFF,
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present
   //   [1] => TDATA present
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   parameter integer C_NUM_SI_SLOTS     = 2,
   parameter integer C_LOG_SI_SLOTS     = 1,
   parameter integer C_ARB_ON_TLAST  = 1,
   // C_ARB_ON_TLAST: 
   //   0 => Ignore TLAST
   //   1 => Signal ARB_DONE on TLAST
   parameter integer C_ARB_ON_MAX_XFERS = 5,
   // C_ARB_ON_MAX_XFERS: 
   //  0 => Ignore number of transfers to signal DONE
   //  1+ => Signal ARB_DONE after x TRANSFERS
   parameter integer C_ARB_ON_NUM_CYCLES = 5,
   // C_ARB_ON_NUM_CYCLES  
   //  0 => Ignore TIMEOUT parameter
   //  1+ => Signal ARB_DONE after x cylces of TVALID low
   parameter integer C_OUTPUT_REG       = 1, 
   // C_OUTPUT_REG: Registers payload and ARB_REQ signal
   //   0 => BYPASS    = The channel is just wired through the module.
   //   1 => FWD_REV   = Both FWD and REV (fully-registered)
   parameter [C_NUM_SI_SLOTS-1:0] C_CONNECTIVITY = {C_NUM_SI_SLOTS{1'b1}},
   // Specifies connectivity matrix for sparse crossbar configurations
   parameter integer C_SINGLE_SLAVE_CONNECTIVITY = 1 , 
   parameter integer C_ROUTING_MODE = 0
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire ACLK,
   input wire ARESET,
   input wire ACLKEN,

   // Slave side
   input  wire [C_NUM_SI_SLOTS-1:0]                  S_AXIS_TVALID,
   output wire [C_NUM_SI_SLOTS-1:0]                  S_AXIS_TREADY,
   input  wire [C_NUM_SI_SLOTS*C_TPAYLOAD_WIDTH-1:0] S_AXIS_TPAYLOAD,

   // Master side
   output wire                                       M_AXIS_TVALID,
   input  wire                                       M_AXIS_TREADY,
   output wire [C_TPAYLOAD_WIDTH-1:0]                M_AXIS_TPAYLOAD,

   // Arbiter side
   input  wire [C_NUM_SI_SLOTS-1:0]                  ARB_GNT,
   input  wire [C_LOG_SI_SLOTS-1:0]                  ARB_SEL,
   output wire                                       ARB_DONE,

   // Static routing 
   input wire                                        mi_enable,
   input wire  [3:0]                                 mi_mux
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
`include "axis_infrastructure_v1_1_0.vh"

localparam P_LOG_NUM_SLAVE_SLOTS = f_clogb2(C_NUM_SI_SLOTS);
function [C_NUM_SI_SLOTS-1:0] f_onehot_to_binary ( 
  input integer  onehot
);
begin : main 
  integer i;
  for (i = 0; onehot[i] != 1; i = i + 1) begin
  end
  f_onehot_to_binary = i;
end
endfunction
////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
// Check if Connectivity is a power of a 2 which would mean that there is only
// 1 slave connected.
// localparam P_SINGLE_SLAVE_CONNECTIVITY = ((C_CONNECTIVITY & (C_CONNECTIVITY-1)) == 0);
localparam P_FIXED_MUX_VALUE = f_onehot_to_binary(C_CONNECTIVITY);

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
wire [C_TPAYLOAD_WIDTH-1:0] axis_tpayload_mux_out;
wire                        axis_tvalid_mux_out;
wire                        axis_tready_mux_in;
wire                        reg_slice_reset;
genvar                      si;

generate
if (C_ROUTING_MODE == 0) begin : gen_tdest_router

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
  wire [C_NUM_SI_SLOTS-1:0]   busy_ns;
  wire [C_NUM_SI_SLOTS-1:0]   busy_r;
  wire [C_LOG_SI_SLOTS-1:0]   sel_i;
  wire                        axis_tlast_i;
  wire [C_NUM_SI_SLOTS-1:0]   output_enable;

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////
  axis_switch_v1_1_19_axisc_arb_responder #( 
    .C_FAMILY                    ( C_FAMILY                    ) ,
    .C_ARB_GNT_WIDTH             ( C_NUM_SI_SLOTS              ) ,
    .C_ARB_ON_TLAST              ( C_ARB_ON_TLAST              ) ,
    .C_ARB_ON_MAX_XFERS          ( C_ARB_ON_MAX_XFERS          ) ,
    .C_ARB_ON_NUM_CYCLES         ( C_ARB_ON_NUM_CYCLES         ) ,
    .C_SINGLE_SLAVE_CONNECTIVITY ( C_SINGLE_SLAVE_CONNECTIVITY ) 
  )
  axisc_arb_responder (
    .ACLK        ( ACLK                ) ,
    .ARESET      ( ARESET              ) ,
    .ACLKEN      ( ACLKEN              ) ,
    .AXIS_TVALID ( axis_tvalid_mux_out ) ,
    .AXIS_TREADY ( axis_tready_mux_in  ) ,
    .AXIS_TLAST  ( axis_tlast_i        ) ,
    .ARB_GNT     ( ARB_GNT             ) ,
    .ARB_DONE    ( ARB_DONE            ) ,
    .ARB_BUSY    ( busy_r              ) 
  );

  assign sel_i = (C_SINGLE_SLAVE_CONNECTIVITY | C_NUM_SI_SLOTS == 1) ? P_FIXED_MUX_VALUE :
                 ARB_SEL;

  assign output_enable = ( C_NUM_SI_SLOTS == 1 ) ? 1'b1 : 
                         ( C_SINGLE_SLAVE_CONNECTIVITY ) ? C_CONNECTIVITY[C_NUM_SI_SLOTS-1:0] :
                         ARB_GNT | busy_r;

  axis_infrastructure_v1_1_0_mux_enc #(
    .C_FAMILY     ( C_FAMILY              ) ,
    .C_RATIO      ( C_NUM_SI_SLOTS        ) ,
    .C_SEL_WIDTH  ( P_LOG_NUM_SLAVE_SLOTS ) ,
    .C_DATA_WIDTH ( C_TPAYLOAD_WIDTH      ) 
  )
  mux_enc_0
  (
    .S  ( sel_i                 ) ,
    .A  ( S_AXIS_TPAYLOAD       ) ,
    .O  ( axis_tpayload_mux_out ) ,
    .OE ( 1'b1                  ) 
  );
  axis_infrastructure_v1_1_0_mux_enc #(
    .C_FAMILY     ( C_FAMILY              ) ,
    .C_RATIO      ( C_NUM_SI_SLOTS        ) ,
    .C_SEL_WIDTH  ( P_LOG_NUM_SLAVE_SLOTS ) ,
    .C_DATA_WIDTH ( 1                     ) 
  )
  mux_enc_1
  (
    .S  ( sel_i               ) ,
    .A  ( S_AXIS_TVALID       ) ,
    .O  ( axis_tvalid_mux_out ) ,
    .OE ( | output_enable     ) 
  );

  axis_infrastructure_v1_1_0_util_vector2axis #(
    .C_TDATA_WIDTH    ( C_AXIS_TDATA_WIDTH ) ,
    .C_TID_WIDTH      ( C_AXIS_TID_WIDTH   ) ,
    .C_TDEST_WIDTH    ( C_AXIS_TDEST_WIDTH ) ,
    .C_TUSER_WIDTH    ( C_AXIS_TUSER_WIDTH ) ,
    .C_TPAYLOAD_WIDTH ( C_TPAYLOAD_WIDTH   ) ,
    .C_SIGNAL_SET     ( C_AXIS_SIGNAL_SET  ) 
  )
  util_vector2axis_0 (
    .TPAYLOAD ( axis_tpayload_mux_out ) ,
    .TDATA    (                       ) ,
    .TSTRB    (                       ) ,
    .TKEEP    (                       ) ,
    .TLAST    ( axis_tlast_i          ) ,
    .TID      (                       ) ,
    .TDEST    (                       ) ,
    .TUSER    (                       ) 
  );

  assign S_AXIS_TREADY = {C_NUM_SI_SLOTS{axis_tready_mux_in}} & output_enable;

end
else begin : gen_static_router
////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////


  assign axis_tpayload_mux_out = S_AXIS_TPAYLOAD[mi_mux*C_TPAYLOAD_WIDTH+:C_TPAYLOAD_WIDTH];

  assign axis_tvalid_mux_out = C_OUTPUT_REG ? S_AXIS_TVALID[mi_mux]
                                            : S_AXIS_TVALID[mi_mux] & mi_enable;
  for (si = 0; si < C_NUM_SI_SLOTS; si = si + 1) begin : gen_si_tready
    assign S_AXIS_TREADY[si] = (si == mi_mux) ? axis_tready_mux_in | ~mi_enable : 1'b1;
  end

  // Tie-off 
  assign ARB_DONE = 1'b0;

end
endgenerate

assign reg_slice_reset = (C_ROUTING_MODE == 0) ? ARESET : ARESET | ~mi_enable;

// Output reg slice
axis_register_slice_v1_1_19_axisc_register_slice #(
  .C_FAMILY     ( C_FAMILY         ) ,
  .C_DATA_WIDTH ( C_TPAYLOAD_WIDTH ) ,
  .C_REG_CONFIG ( C_OUTPUT_REG     ) 
)
axisc_register_slice_0 (
  .ACLK           ( ACLK                  ) ,
  .ACLK2X         ( 1'b1                  ) ,
  .ARESET         ( reg_slice_reset       ) ,
  .ACLKEN         ( ACLKEN                ) ,
  .S_VALID        ( axis_tvalid_mux_out   ) ,
  .S_READY        ( axis_tready_mux_in    ) ,
  .S_PAYLOAD_DATA ( axis_tpayload_mux_out ) ,

  .M_VALID        ( M_AXIS_TVALID         ) ,
  .M_READY        ( M_AXIS_TREADY         ) ,
  .M_PAYLOAD_DATA ( M_AXIS_TPAYLOAD       ) 
);

endmodule // axisc_transfer_mux

`default_nettype wire


//  (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axisc_arb_responder
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_switch_v1_1_19_axisc_arb_responder #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY           = "virtex7",
   parameter integer C_ARB_GNT_WIDTH    = 1,
   // C_ARB_ON_TLAST: 
   //   0 => Ignore TLAST
   //   1 => Signal ARB_DONE on TLAST
   parameter integer C_ARB_ON_TLAST     = 1,
   // C_ARB_ON_MAX_XFERS: 
   //  0 => Ignore number of transfers to signal DONE
   //  1+ => Signal ARB_DONE after x TRANSFERS
   parameter integer C_ARB_ON_MAX_XFERS = 0,
   // C_ARB_ON_NUM_CYCLES: 
   //  0 => Ignore TIMEOUT parameter
   //  1+ => Signal ARB_DONE after x cylces of TVALID low
   parameter integer C_ARB_ON_NUM_CYCLES = 0,
   // C_SINGLE_SLAVE_CONNECTIVITY:
   // Indicates there is no need for arbiter, assert arb_done on every
   // VALID/READY.
   parameter integer C_SINGLE_SLAVE_CONNECTIVITY = 0
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire ACLK,
   input wire ARESET,
   input wire ACLKEN,

   // AXIS monitored signals
   input wire                           AXIS_TVALID,
   input wire                           AXIS_TREADY,
   input wire                           AXIS_TLAST,

   // Arbiter side
   input  wire [C_ARB_GNT_WIDTH-1:0]    ARB_GNT,
   output wire                          ARB_DONE,

   // Status Signals
   output wire [C_ARB_GNT_WIDTH-1:0]    ARB_BUSY
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
`include "axis_infrastructure_v1_1_0.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam integer P_XFER_CNT_WIDTH = f_clogb2(C_ARB_ON_MAX_XFERS);
localparam integer P_TIMEOUT_CNT_WIDTH = f_clogb2(C_ARB_ON_NUM_CYCLES+1);
localparam integer P_FORCE_MAX_XFERS_PER_ARB_ONE = (C_ARB_ON_TLAST == 0 
                                                    && C_ARB_ON_MAX_XFERS == 0 
                                                    && C_ARB_ON_NUM_CYCLES == 0) ? 1 : 0;



////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
wire [C_ARB_GNT_WIDTH-1:0]   busy_ns;
reg  [C_ARB_GNT_WIDTH-1:0]   busy_r;

wire tlast_done;
wire xfer_done;
wire timeout_done;
wire timeout_done_ns;
////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////
assign busy_ns = timeout_done_ns | ARB_DONE ? {C_ARB_GNT_WIDTH{1'b0}} : ARB_GNT | busy_r;

always @(posedge ACLK) begin 
  if (ARESET) begin
    busy_r <= {C_ARB_GNT_WIDTH{1'b0}};
  end else if (ACLKEN) begin
    busy_r <= busy_ns;
  end
end

assign ARB_BUSY = busy_r;

assign ARB_DONE = tlast_done | xfer_done | timeout_done;

generate 
  if (C_SINGLE_SLAVE_CONNECTIVITY | P_FORCE_MAX_XFERS_PER_ARB_ONE) begin : gen_default_response
    assign tlast_done = 1'b0;
    assign xfer_done = AXIS_TVALID & AXIS_TREADY;
    assign timeout_done = 1'b0;
    assign timeout_done_ns = 1'b0;
  end
  else begin : gen_configurable_response
    // Generate TLAST DONE block
    assign tlast_done = C_ARB_ON_TLAST & (AXIS_TVALID & AXIS_TREADY) ? AXIS_TLAST : 1'b0;

    // Generate XFER_DONE block
    if (C_ARB_ON_MAX_XFERS == 0) begin : gen_max_xfer_per_arb_cnt_disabled
      assign xfer_done = 1'b0;
    end
    else if (C_ARB_ON_MAX_XFERS == 1) begin : gen_max_xfers_per_arb_cnt_one
      assign xfer_done = AXIS_TVALID & AXIS_TREADY;
    end
    else begin : gen_max_xfer_per_arb_cntr
      reg [P_XFER_CNT_WIDTH-1:0] xfer_cnt;
      reg                        xfer_done_r;
      wire                       xfer_cnt_ns;


      always @(posedge ACLK) begin 
        if (ARESET) begin
          xfer_cnt <= {P_XFER_CNT_WIDTH{1'b0}};
        end else if (ACLKEN) begin
          xfer_cnt <= ARB_DONE ? {P_XFER_CNT_WIDTH{1'b0}} : 
                    (AXIS_TVALID & AXIS_TREADY) ? xfer_cnt + 1'b1 : xfer_cnt;
        end
        else begin 
          xfer_cnt <= xfer_cnt;
        end
      end

      always @(posedge ACLK) begin
        if (ARESET) begin
          xfer_done_r <= 1'b0;
        end else if (ACLKEN) begin
          xfer_done_r <= ARB_DONE ? 1'b0 : 
                         (AXIS_TVALID & AXIS_TREADY) ? (xfer_cnt == C_ARB_ON_MAX_XFERS-2) : xfer_done_r;
        end
        else begin
          xfer_done_r <= xfer_done_r;
        end
      end
      assign xfer_done = xfer_done_r & AXIS_TVALID & AXIS_TREADY;
    end

    // Generate TIMEOUT DONE block
    if (C_ARB_ON_NUM_CYCLES == 0) begin : gen_num_cycles_timeout_disabled
      assign timeout_done = 1'b0;
      assign timeout_done_ns = 1'b0;
    end
    else begin : gen_num_cycles_timeout_cntr
      reg [P_TIMEOUT_CNT_WIDTH-1:0] timeout_cnt;
      reg                           timeout_done_r;
      always @(posedge ACLK) begin 
        if (ARESET) begin
          timeout_cnt <= {P_TIMEOUT_CNT_WIDTH{1'b0}};
        end else if (ACLKEN) begin
          timeout_cnt <= AXIS_TVALID ? {P_TIMEOUT_CNT_WIDTH{1'b0}} : timeout_cnt + 1'b1;
        end else begin
          timeout_cnt <= timeout_cnt;
        end
      end

      assign timeout_done_ns = (|busy_r) ? (timeout_cnt == C_ARB_ON_NUM_CYCLES) & ~AXIS_TVALID : 1'b0;

      always @(posedge ACLK) begin
        if (ARESET) begin
          timeout_done_r <= 1'b0;
        end else if (ACLKEN) begin
          timeout_done_r <= timeout_done_ns;
        end
      end
      assign timeout_done = timeout_done_r;
    end
  end
endgenerate

endmodule // axisc_transfer_mux

`default_nettype wire


//  (c) Copyright 2011-2015 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axis_switch_arbiter
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_switch_v1_1_19_axis_switch_arbiter #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY        = "virtex7",
   parameter integer C_NUM_SI_SLOTS  = 8,
   parameter integer C_LOG_SI_SLOTS  = 3,
   parameter integer C_NUM_MI_SLOTS  = 2,
   parameter         C_ARB_ALGORITHM = 0,
   parameter         C_SINGLE_SLAVE_CONNECTIVITY_ARRAY = {C_NUM_MI_SLOTS{1'b0}} 
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire ACLK,
   input wire ARESETN,
   input wire ACLKEN,

   input  wire  [C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0] ARB_REQ,
   input  wire  [C_NUM_MI_SLOTS-1:0]                ARB_DONE,
   output wire  [C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0] ARB_GNT,
   output wire  [C_NUM_MI_SLOTS*C_LOG_SI_SLOTS-1:0] ARB_SEL
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
reg areset;

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

always @(posedge ACLK) begin
  areset <= ~ARESETN;
end

generate
  genvar i;
  for (i = 0; i < C_NUM_MI_SLOTS; i = i + 1) begin : gen_mi_arb
    if (C_SINGLE_SLAVE_CONNECTIVITY_ARRAY[i]) begin : gen_arb_tie_off
      assign ARB_GNT [i*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS] = ARB_REQ[i*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS];
      assign ARB_SEL [i*C_LOG_SI_SLOTS+:C_LOG_SI_SLOTS] = {C_LOG_SI_SLOTS{1'b0}};
    end else begin : gen_arb_algorithm
      if (C_ARB_ALGORITHM == 1) begin : gen_fixed_priority
        axis_switch_v1_1_19_arb_rr #(
          .C_FAMILY        ( C_FAMILY        ) ,
          .C_NUM_SI_SLOTS  ( C_NUM_SI_SLOTS  ) ,
          .C_LOG_SI_SLOTS  ( C_LOG_SI_SLOTS  ) ,
          .C_ARB_ALGORITHM ( 1               ) 
        )
        inst_arb_rr_1
        (
          .ACLK     ( ACLK                                       ) ,
          .ARESET   ( areset                                     ) ,
          .ACLKEN   ( ACLKEN                                     ) ,
          .ARB_REQ  ( ARB_REQ [i*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS] ) ,
          .ARB_DONE ( ARB_DONE[i]                                ) ,
          .ARB_SEL  ( ARB_SEL [i*C_LOG_SI_SLOTS+:C_LOG_SI_SLOTS] ) ,
          .ARB_GNT  ( ARB_GNT [i*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS] ) 
        );
      end
      else if (C_ARB_ALGORITHM == 0) begin : gen_round_robin
        axis_switch_v1_1_19_arb_rr #(
          .C_FAMILY        ( C_FAMILY        ) ,
          .C_NUM_SI_SLOTS  ( C_NUM_SI_SLOTS  ) ,
          .C_LOG_SI_SLOTS  ( C_LOG_SI_SLOTS  ) ,
          .C_ARB_ALGORITHM ( 0               ) 
        )
        inst_arb_rr_0
        (
          .ACLK     ( ACLK                                       ) ,
          .ARESET   ( areset                                     ) ,
          .ACLKEN   ( ACLKEN                                     ) ,
          .ARB_REQ  ( ARB_REQ [i*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS] ) ,
          .ARB_DONE ( ARB_DONE[i]                                ) ,
          .ARB_SEL  ( ARB_SEL [i*C_LOG_SI_SLOTS+:C_LOG_SI_SLOTS] ) ,
          .ARB_GNT  ( ARB_GNT [i*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS] ) 
        );
      end
      else if (C_ARB_ALGORITHM == 3) begin : gen_true_round_robin
        axis_switch_v1_1_19_arb_trr #(
          .C_FAMILY        ( C_FAMILY        ) ,
          .C_NUM_SI_SLOTS  ( C_NUM_SI_SLOTS  ) ,
          .C_LOG_SI_SLOTS  ( C_LOG_SI_SLOTS  )
        )
        inst_arb_trr
        (
          .aclk     ( ACLK                                       ) ,
          .areset   ( areset                                     ) ,
          .aclken   ( ACLKEN                                     ) ,
          .arb_req  ( ARB_REQ [i*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS] ) ,
          .arb_done ( ARB_DONE[i]                                ) ,
          .arb_sel  ( ARB_SEL [i*C_LOG_SI_SLOTS+:C_LOG_SI_SLOTS] ) ,
          .arb_gnt  ( ARB_GNT [i*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS] ) 
        );
      end
    end
  end
endgenerate

endmodule // axis_switch_arbiter

`default_nettype wire


//  (c) Copyright 2011-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   dynamic_priority_encoder
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_switch_v1_1_19_dynamic_priority_encoder #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY    = "virtex7",
   parameter integer C_REQ_WIDTH = 8,
   parameter integer C_ENC_WIDTH = 3
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   input  wire  [C_REQ_WIDTH-1:0]             REQ,
   input  wire  [C_REQ_WIDTH*C_ENC_WIDTH-1:0] PORT_PRIORITY,
   output wire  [C_ENC_WIDTH-1:0]             SEL,
   output wire                                VALID
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
// `include "axis_infrastructure_v1_1_0.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam P_NATIVE = 4; // Encoder defined for 4 inputs

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

// Priority encoder specified completed for up to 8 inputs and is configurable 
// with the localparam P_NATIVE.  If less than P_NATIVE inputs instantiate a 
// P_NATIVE input priority encoder and tie off upper bits.  Allow synthesis tool 
// to prune.  If more than P_NATIVE bits, then halve the numeber of inputs and
// recursively call two encoder instances for lsb and msb.  MUX output of lsb
// and msb with valid_lsb to get final result.
generate
if (C_REQ_WIDTH < P_NATIVE) begin : pri_encoder_padded

  wire [P_NATIVE-1:0]               req_i;
  wire [P_NATIVE*C_ENC_WIDTH-1:0]   port_priority_i;

  // Pad MSB of req with 0s.
  assign req_i = {{P_NATIVE-C_REQ_WIDTH{1'b0}}, REQ};
  assign port_priority_i = {{(P_NATIVE-C_REQ_WIDTH)*C_ENC_WIDTH{1'b0}}, PORT_PRIORITY};

  axis_switch_v1_1_19_dynamic_priority_encoder #(
    .C_FAMILY    ( C_FAMILY    ) ,
    .C_REQ_WIDTH ( P_NATIVE    ) ,
    .C_ENC_WIDTH ( C_ENC_WIDTH ) 
  )
  dynamic_priority_encoder_padded_0
  (
    .REQ           ( req_i           ) ,
    .PORT_PRIORITY ( port_priority_i ) ,
    .SEL           ( SEL             ) ,
    .VALID         ( VALID           ) 
  );
end
else if (C_REQ_WIDTH == P_NATIVE) begin : pri_encoder_4bit

  reg [C_ENC_WIDTH-1:0] sel_i;
  reg                   valid_i;

  // Select based on priority of 0 highest P_NATIVE lowest
  // The mod value with constant is used to avoid compilation warnings when
  // P_NATIVE < 8.
  always @* begin
    if ( REQ[0] ) begin 
      sel_i = PORT_PRIORITY[0*C_ENC_WIDTH+:C_ENC_WIDTH];
    end else if ( REQ[1%P_NATIVE] && P_NATIVE > 2) begin 
      sel_i = PORT_PRIORITY[1%P_NATIVE*C_ENC_WIDTH+:C_ENC_WIDTH];
    end else if ( REQ[2%P_NATIVE] && P_NATIVE > 3) begin 
      sel_i = PORT_PRIORITY[2%P_NATIVE*C_ENC_WIDTH+:C_ENC_WIDTH];
    end else if ( REQ[3%P_NATIVE] && P_NATIVE > 4) begin 
      sel_i = PORT_PRIORITY[3%P_NATIVE*C_ENC_WIDTH+:C_ENC_WIDTH];
    end else if ( REQ[4%P_NATIVE] && P_NATIVE > 5) begin 
      sel_i = PORT_PRIORITY[4%P_NATIVE*C_ENC_WIDTH+:C_ENC_WIDTH];
    end else if ( REQ[5%P_NATIVE] && P_NATIVE > 6) begin 
      sel_i = PORT_PRIORITY[5%P_NATIVE*C_ENC_WIDTH+:C_ENC_WIDTH];
    end else if ( REQ[6%P_NATIVE] && P_NATIVE > 7) begin 
      sel_i = PORT_PRIORITY[6%P_NATIVE*C_ENC_WIDTH+:C_ENC_WIDTH];
    end else begin
      sel_i = PORT_PRIORITY[(P_NATIVE-1)*C_ENC_WIDTH+:C_ENC_WIDTH];
    end
  end

  // Valid when any input value is 1
  always @* begin
    valid_i = |REQ;
  end

  assign SEL = sel_i;
  assign VALID = valid_i;
end
// (C_REQ_WIDTH > P_NATIVE) case
else begin : recursive_dynamic_priority_encoder

  wire [C_REQ_WIDTH/2-1:0]                             req_lsb;
  wire [C_REQ_WIDTH-(C_REQ_WIDTH/2)-1:0]               req_msb;
  wire [(C_REQ_WIDTH/2)*C_ENC_WIDTH-1:0]               port_priority_lsb;
  wire [(C_REQ_WIDTH-(C_REQ_WIDTH/2))*C_ENC_WIDTH-1:0] port_priority_msb;
  wire [C_ENC_WIDTH-1:0]                               sel_lsb;
  wire [C_ENC_WIDTH-1:0]                               sel_msb;
  wire                                                 valid_lsb;
  wire                                                 valid_msb;

  assign req_lsb = REQ[C_REQ_WIDTH/2-1:0];
  assign req_msb = REQ[C_REQ_WIDTH-1:C_REQ_WIDTH/2];
  assign port_priority_lsb = PORT_PRIORITY[(C_REQ_WIDTH/2)*C_ENC_WIDTH-1:0];
  assign port_priority_msb = PORT_PRIORITY[C_REQ_WIDTH*C_ENC_WIDTH-1:(C_REQ_WIDTH/2)*C_ENC_WIDTH];

  axis_switch_v1_1_19_dynamic_priority_encoder #(
    .C_FAMILY    ( C_FAMILY      ) ,
    .C_REQ_WIDTH ( C_REQ_WIDTH/2 ) ,
    .C_ENC_WIDTH ( C_ENC_WIDTH   ) 
  )
  dynamic_priority_encoder_lsb_0
  (
    .REQ           ( req_lsb           ) ,
    .PORT_PRIORITY ( port_priority_lsb ) ,
    .SEL           ( sel_lsb           ) ,
    .VALID         ( valid_lsb         ) 
  );

  axis_switch_v1_1_19_dynamic_priority_encoder #(
    .C_FAMILY    ( C_FAMILY                      ) ,
    .C_REQ_WIDTH ( C_REQ_WIDTH - (C_REQ_WIDTH/2) ) ,
    .C_ENC_WIDTH ( C_ENC_WIDTH                   ) 
  )
  dynamic_priority_encoder_msb_0
  (
    .REQ           ( req_msb           ) ,
    .PORT_PRIORITY ( port_priority_msb ) ,
    .SEL           ( sel_msb           ) ,
    .VALID         ( valid_msb         ) 
  );

  assign SEL = valid_lsb ? sel_lsb : sel_msb;
  assign VALID = valid_lsb | valid_msb;  
end
endgenerate

endmodule // dynamic_priority_encoder

`default_nettype wire


// (c) Copyright 2014 Xilinx, Inc. All rights reserved. 
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
///////////////////////////////////////////////////////////////////////////////
//
// File name: axi_ctrl_read.v
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
`default_nettype none

module axis_switch_v1_1_19_axi_ctrl_read #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  // Width of AXI-4-Lite address bus
  parameter integer C_ADDR_WIDTH        = 7,
  // Width of AXI-4-Lite data buses
  parameter integer C_DATA_WIDTH        = 32
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations     
///////////////////////////////////////////////////////////////////////////////
  // AXI4-Lite Slave Interface
  // Slave Interface System Signals           
  input  wire                               aclk        , 
  input  wire                               areset      , 
  // Slave Interface Read Address Ports
  input  wire                               arvalid     ,
  output wire                               arready     ,
  input  wire [C_ADDR_WIDTH-1:0]            araddr      , 
  // Slave Interface Read Data Ports
  output wire                               rvalid      , 
  input  wire                               rready      , 
  output wire [C_DATA_WIDTH-1:0]            rdata       , 
  output wire [1:0]                         rresp       ,

  input wire  [16*C_DATA_WIDTH-1:0]         reg_bank_0  ,
  input wire  [16*C_DATA_WIDTH-1:0]         reg_bank_1  , 
  input wire  [160-1:0]                     ctrl_reg_debug

);

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
// Outputs are encoded in register bits
//                                /--- RVALID
//                                |/-- ARREADY/READ
localparam [1:0] SM_IDLE     = 2'b00;
localparam [1:0] SM_READ     = 2'b01;
localparam [1:0] SM_RESP     = 2'b10;

localparam integer LP_DEBUG_CTRL_REG = 0;

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
reg  [1:0]              state       = 2'b0;
reg  [C_ADDR_WIDTH-1:0] addr_r      = {C_ADDR_WIDTH{1'b0}};
wire [3:0]              addr;
reg  [C_DATA_WIDTH-1:0] data        = {C_ADDR_WIDTH{1'b0}};
wire                    sel; 
wire [C_DATA_WIDTH-1:0] sel_bank_0;
wire [C_DATA_WIDTH-1:0] sel_bank_1;
wire                    read_enable;
wire [16*C_DATA_WIDTH-1:0] reg_bank_0_expanded;
////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
///////////////////////////////////////////////////////////////////////////////

// Assign axi_outputs
assign arready = state[0];
assign rvalid = state[1];
assign rdata  = data;
assign rresp  = 2'b0;

// State machine for AXI
always @(posedge aclk) begin 
  if (areset) begin
    state <= SM_IDLE;
  end
  else begin 
    case (state) 
      SM_IDLE:
        if (arvalid)
          state <= SM_READ;
        else 
          state <= SM_IDLE;
      SM_READ:
        state <= SM_RESP;
      SM_RESP:
        if (rready) 
          state <= SM_IDLE;
        else
          state <= SM_RESP;
      default:
        state <= SM_IDLE;
    endcase
  end
end

// Reg bank logic
always @(posedge aclk) begin 
  addr_r <= araddr;
end

assign addr = addr_r[2+:4];
assign sel  = ~addr_r[6];

assign read_enable = state[0];
assign sel_bank_0 = reg_bank_0_expanded[addr*C_DATA_WIDTH+:C_DATA_WIDTH];
                    
assign sel_bank_1 = reg_bank_1[addr*C_DATA_WIDTH+:C_DATA_WIDTH];

always @(posedge aclk) begin 
  if (read_enable) begin 
    data <= sel ? sel_bank_0 : sel_bank_1;
  end
end

assign reg_bank_0_expanded[0+:C_DATA_WIDTH] = reg_bank_0[0+:C_DATA_WIDTH];
assign reg_bank_0_expanded[1*C_DATA_WIDTH+:5*C_DATA_WIDTH] = (LP_DEBUG_CTRL_REG) ? ctrl_reg_debug : 160'h0;
assign reg_bank_0_expanded[6*C_DATA_WIDTH+:10*C_DATA_WIDTH] = 320'h0;

endmodule // axis_switch_v1_1_19_axi_ctrl_read.v

`default_nettype wire


// (c) Copyright 2014 Xilinx, Inc. All rights reserved. 
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
///////////////////////////////////////////////////////////////////////////////
//
// File name: axi_ctrl_write.v
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
`default_nettype none

module axis_switch_v1_1_19_axi_ctrl_write #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  // Width of AXI-4-Lite address bus
  parameter integer C_ADDR_WIDTH        = 7,
  // Width of AXI-4-Lite data buses
  parameter integer C_DATA_WIDTH        = 32
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations     
///////////////////////////////////////////////////////////////////////////////
  // AXI4-Lite Slave Interface
  // Slave Interface System Signals           
  input  wire                               aclk        , 
  input  wire                               areset      , 
  input  wire                               awvalid     , 
  output wire                               awready     , 
  input  wire [C_ADDR_WIDTH-1:0]            awaddr      , 
  input  wire                               wvalid      , 
  output wire                               wready      , 
  input  wire [C_DATA_WIDTH-1:0]            wdata       , 
  output wire                               bvalid      , 
  input  wire                               bready      , 
  output wire [1:0]                         bresp       ,

  output wire [1:0]                         enable      ,
  output wire [3:0]                         addr        ,
  output wire [C_DATA_WIDTH-1:0]            data        ,
  input wire                                busy

);

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam integer LP_SM_WIDTH = 3;
// Outputs are encoded in register bits
//                                          /--- bvalid
//                                          |/-- awready/wready/enable
localparam [LP_SM_WIDTH-1:0] SM_IDLE  = 3'b000;
localparam [LP_SM_WIDTH-1:0] SM_WRITE = 3'b001;
localparam [LP_SM_WIDTH-1:0] SM_RESP  = 3'b010;
localparam [LP_SM_WIDTH-1:0] SM_BUSY  = 3'b100;

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
(* fsm_encoding = "none" *) reg  [LP_SM_WIDTH-1:0]  state  = SM_IDLE;
reg  [C_ADDR_WIDTH-1:0] addr_r = {C_ADDR_WIDTH{1'b0}};
reg  [C_DATA_WIDTH-1:0] data_r = {C_DATA_WIDTH{1'b0}};

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
///////////////////////////////////////////////////////////////////////////////

// State machine for AXI
always @(posedge aclk) begin 
  if (areset) begin
    state <= SM_IDLE;
  end
  else begin 
    case (state) 
      SM_IDLE:
        state <= (awvalid & wvalid & ~busy) ? SM_WRITE : SM_IDLE;
      SM_WRITE:
        state <= SM_BUSY;
      SM_BUSY:
        state <= busy ? SM_BUSY : SM_RESP;
      SM_RESP:
        state <= bready ? SM_IDLE : SM_RESP;
      default:
        state <= SM_IDLE;
    endcase
  end
end

assign awready = state[0];
assign wready  = state[0];
assign bvalid  = state[1];
assign bresp   = 2'b0;

// Reg bank logic
always @(posedge aclk) begin 
  addr_r <= awaddr[0+:C_ADDR_WIDTH];
end
      
always @(posedge aclk) begin 
  data_r <= wdata;
end

assign addr = addr_r[2+:4];
assign data = data_r;
assign enable[0]    = ~addr_r[6] ? state[0] : 1'b0;
assign enable[1]    = addr_r[6] ? state[0] : 1'b0;

endmodule // axis_switch_v1_1_19_axi_ctrl_write.v

`default_nettype wire


// (c) Copyright 2014 Xilinx, Inc. All rights reserved. 
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
///////////////////////////////////////////////////////////////////////////////
//
// File name: axi_ctrl_top.v
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
`default_nettype none

module axis_switch_v1_1_19_axi_ctrl_top #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  // Width of AXI-4-Lite address bus
  parameter integer C_AXI_ADDR_WIDTH    = 7, 
  // Width of AXI-4-Lite data buses
  parameter integer C_AXI_DATA_WIDTH    = 32,
  // C_NUM_SI_SLOTS: Number of slave interfaces (input channels)
  parameter integer C_NUM_SI_SLOTS      = 1,
  // C_NUM_MI_SLOTS: Number of master interfaces (output channels)
  parameter integer C_NUM_MI_SLOTS      = 2,
  parameter [C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0] C_CONNECTIVITY = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS{1'b1}},
  parameter integer C_CTRL_REG_WIDTH = C_NUM_SI_SLOTS*5 + C_NUM_MI_SLOTS*5
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations     
///////////////////////////////////////////////////////////////////////////////
  // AXI4-Lite Slave Interface
  // Slave Interface System Signals           
  input  wire                               aclk              , 
  input  wire                               areset            , 
  // Slave Interface Write Address Ports
  input  wire                               s_axi_awvalid     , 
  output wire                               s_axi_awready     , 
  input  wire [C_AXI_ADDR_WIDTH-1:0]        s_axi_awaddr      , 
  // Slave Interface Write Data Ports
  input  wire                               s_axi_wvalid      , 
  output wire                               s_axi_wready      , 
  input  wire [C_AXI_DATA_WIDTH-1:0]        s_axi_wdata       , 
  // Slave Interface Write Response Ports
  output wire                               s_axi_bvalid      , 
  input  wire                               s_axi_bready      , 
  output wire [1:0]                         s_axi_bresp       , 
  // Slave Interface Read Address Ports
  input  wire                               s_axi_arvalid     , 
  output wire                               s_axi_arready     , 
  input  wire [C_AXI_ADDR_WIDTH-1:0]        s_axi_araddr      , 
  // Slave Interface Read Data Ports
  output wire                               s_axi_rvalid      , 
  input  wire                               s_axi_rready      , 
  output wire [C_AXI_DATA_WIDTH-1:0]        s_axi_rdata       , 
  output wire [1:0]                         s_axi_rresp       , 

  // Registers outputs
  output wire [16*C_AXI_DATA_WIDTH-1:0]     reg_mi_mux        ,
  output wire                               reg_commit        , 
  input  wire                               commit_reset      ,
  input  wire [C_CTRL_REG_WIDTH-1:0]        ctrl_reg
  
);
////////////////////////////////////////////////////////////////////////////////
// Localparams
////////////////////////////////////////////////////////////////////////////////
localparam [C_AXI_DATA_WIDTH-1:0]    LP_CTRL_REG_MASK   = 32'b0000_0000_0000_0010;
// Initial value will initiate a commit.
localparam [16*C_AXI_DATA_WIDTH-1:0] LP_CTRL_REG_INIT   = { {15{32'b0}}, 32'b0000_0000_0000_0010 };
localparam [C_AXI_DATA_WIDTH-1:0]    LP_MI_MUX_REG_MASK = 32'b1000_0000_0000_1111;
localparam [16*C_AXI_DATA_WIDTH-1:0] LP_MI_MUX_REG_INIT = {16{32'h8000_0000}};

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
wire                           rb0_we;
wire [3:0]                     rb0_waddr;
wire [C_AXI_DATA_WIDTH-1:0]    rb0_wdata;

wire [16*C_AXI_DATA_WIDTH-1:0] reg_bank_0;
wire [16*C_AXI_DATA_WIDTH-1:0] reg_bank_1;
wire [1:0]                     write_enable;
wire [3:0]                     write_addr;
wire [C_AXI_DATA_WIDTH-1:0]    write_data;
wire                           write_busy;
wire [160-1:0]                 ctrl_reg_debug;

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
///////////////////////////////////////////////////////////////////////////////

// Instantiate AXI4-Lite read channel module
axis_switch_v1_1_19_axi_ctrl_read # ( 
  .C_ADDR_WIDTH     ( C_AXI_ADDR_WIDTH ) ,
  .C_DATA_WIDTH     ( C_AXI_DATA_WIDTH )
)
inst_axi_ctrl_read (
  .aclk           ( aclk          ) , // I
  .areset         ( areset        ) , // I
  .arvalid        ( s_axi_arvalid ) , // I 
  .arready        ( s_axi_arready ) , // O 
  .araddr         ( s_axi_araddr  ) , // I 
  .rvalid         ( s_axi_rvalid  ) , // O 
  .rready         ( s_axi_rready  ) , // I
  .rresp          ( s_axi_rresp   ) , // O
  .rdata          ( s_axi_rdata   ) , // O 
  .reg_bank_0     ( reg_bank_0    ) , // I 
  .reg_bank_1     ( reg_bank_1    ) , // I
  .ctrl_reg_debug ( ctrl_reg_debug )  // I
);


// Instantiate AXI4-Lite write channel module
axis_switch_v1_1_19_axi_ctrl_write # ( 
  .C_ADDR_WIDTH     ( C_AXI_ADDR_WIDTH ) ,
  .C_DATA_WIDTH     ( C_AXI_DATA_WIDTH )
)
inst_axi_ctrl_write (
  .aclk           ( aclk           ) ,
  .areset         ( areset         ) ,
  .awvalid        ( s_axi_awvalid  ) , // I 
  .awready        ( s_axi_awready  ) , // O
  .awaddr         ( s_axi_awaddr   ) , // I 
  .wvalid         ( s_axi_wvalid   ) , // I 
  .wready         ( s_axi_wready   ) , // O
  .wdata          ( s_axi_wdata    ) , // I 
  .bvalid         ( s_axi_bvalid   ) , // O
  .bready         ( s_axi_bready   ) , // I 
  .bresp          ( s_axi_bresp    ) , // O
  .enable         ( write_enable   ) , // O
  .addr           ( write_addr     ) , // O
  .data           ( write_data     ) , // O
  .busy           ( write_busy     )   // I
);

// This reg bank holds 0x0-0x3C register maps
// 0x0: Control Register
//      2 - Commit
axis_switch_v1_1_19_reg_bank_16x32 #( 
  .C_ACTIVE_REG (1),
  .C_REG_MASK   (LP_CTRL_REG_MASK),
  .C_INIT       (LP_CTRL_REG_INIT)
)
inst_reg_bank_0
(
  .aclk   ( aclk       ) ,
  .areset ( areset     ) ,
  .we     ( rb0_we     ) ,
  .waddr  ( rb0_waddr  ) ,
  .wdata  ( rb0_wdata  ) ,
  .rdata  ( reg_bank_0 ) 
);

assign rb0_we    = commit_reset | write_enable[0];
assign rb0_waddr = commit_reset ? 4'b0 : write_addr;
assign rb0_wdata = commit_reset ? 32'h0 : write_data;

assign write_busy = reg_bank_0[1];
assign reg_commit = reg_bank_0[1];


// This reg bank holds 0x40-0x7C register maps
// 0x40: MI MUX 0
//       3:0 - MI Mux Value
//       31  - MI Disable
// 0x44: MI MUX 1
//       3:0 - MI Mux Value
//       31  - MI Disable
// 0x7C: MI MUX 15
//       3:0 - MI Mux Value
//       31  - MI Disable
axis_switch_v1_1_19_reg_bank_16x32 #( 
  .C_ACTIVE_REG (C_NUM_MI_SLOTS),
  .C_REG_MASK   (LP_MI_MUX_REG_MASK),
  .C_INIT       (LP_MI_MUX_REG_INIT)
)
inst_reg_bank_1
(
  .aclk   ( aclk            ) ,
  .areset ( areset          ) ,
  .we     ( write_enable[1] ) ,
  .waddr  ( write_addr      ) ,
  .wdata  ( write_data      ) ,
  .rdata  ( reg_bank_1      ) 
);

assign reg_mi_mux = reg_bank_1;


// 16 == Max number of slots, ever.
// ctrl_reg is expanded for debug
generate 
  genvar i;
  for (i = 0; i < 16; i = i + 1) begin : gen_ctrl_debug
    if (i < C_NUM_MI_SLOTS) begin : gen_mi_map
      // Assign mi mux values
      assign ctrl_reg_debug[i*4+:4]   = ctrl_reg[i*4+:4];
      // asssign mi enable values
      assign ctrl_reg_debug[16*4*2+i] = ctrl_reg[C_NUM_MI_SLOTS*4+i];
    end
    else begin : gen_mi_nomap
      // Assign mi mux values
      assign ctrl_reg_debug[i*4+:4]   = 4'h0;
      // asssign mi enable values
      assign ctrl_reg_debug[16*4*2+i] = 1'b0;
    end
    if (i < C_NUM_SI_SLOTS) begin : gen_si_map
      // Assign si mux values
      assign ctrl_reg_debug[16*4+i*4+:4] = ctrl_reg[C_NUM_MI_SLOTS*5+i*4+:4];
      // asssign si enable values
      assign ctrl_reg_debug[16*4*2+16+i] = ctrl_reg[C_NUM_SI_SLOTS*4+C_NUM_MI_SLOTS*5+i];
    end
    else begin :gen_si_nomap
      // Assign si mux values
      assign ctrl_reg_debug[16*4+i*4+:4] = 4'h0;
      // asssign si enable values
      assign ctrl_reg_debug[16*4*2+16+i] = 1'b0;
    end
  end
endgenerate


endmodule // axis_switch_v1_1_19_axi_ctrl_top.v

`default_nettype wire


//  (c) Copyright 2014 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

module axis_switch_v1_1_19_static_router_config_dp #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter integer C_NUM_MI_SLOTS = 16,
  parameter integer C_NUM_SI_SLOTS = 16,
  parameter [C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0] C_CONNECTIVITY = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS{1'b1}},
  parameter integer C_CTRL_REG_WIDTH = C_NUM_MI_SLOTS*5 + C_NUM_SI_SLOTS*5
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input  wire                        aclk,

   input  wire                        start,
   input  wire [16*32-1:0]            reg_mi_mux,

   output wire                        done,
   output wire [C_NUM_MI_SLOTS-1:0]   mi_enable,
   output wire [C_NUM_MI_SLOTS*4-1:0] mi_mux,
   output wire [C_NUM_SI_SLOTS-1:0]   si_enable,
   output wire [C_NUM_SI_SLOTS*4-1:0] si_mux

);
////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam integer LP_LOG_MAX_SLOTS = 4; 
localparam integer LP_NUM_MAX_SLOTS = 16;  

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
genvar mi, si;

// Init signals
reg                                           start_r = 1'b0;
reg                                           stg1_reset = 1'b0;
reg  [C_NUM_MI_SLOTS*LP_LOG_MAX_SLOTS-1:0]    mi_mux_in = {C_NUM_MI_SLOTS*LP_LOG_MAX_SLOTS{1'b0}};
reg  [C_NUM_MI_SLOTS-1:0]                     mi_mux_en_in = {C_NUM_MI_SLOTS{1'b0}};

// Stage 1
reg  [LP_LOG_MAX_SLOTS-1:0]                   mi_cntr = (C_NUM_MI_SLOTS[0+:LP_LOG_MAX_SLOTS]-1'b1);
reg  [LP_LOG_MAX_SLOTS-1:0]                   selector = 4'H0;
reg  [LP_LOG_MAX_SLOTS-1:0]                   selectee = 4'h0;
reg                                           selector_enable = 1'b0;
reg                                           stg1_done = 1'b1;
reg  [LP_NUM_MAX_SLOTS-1:0]                   mi_connectivity = {LP_NUM_MAX_SLOTS{1'b0}};

// Stage 2
reg                                           stg2_reset = 1'b0;
wire                                          connected;
reg  [C_NUM_SI_SLOTS*LP_LOG_MAX_SLOTS-1:0]    si_mux_r = {C_NUM_SI_SLOTS*LP_LOG_MAX_SLOTS{1'b0}};
reg  [C_NUM_MI_SLOTS-1:0]                     mi_enable_r = {C_NUM_MI_SLOTS{1'b0}};
reg  [LP_NUM_MAX_SLOTS-1:0]                   si_enable_r = {{LP_NUM_MAX_SLOTS-C_NUM_SI_SLOTS{1'b1}},{C_NUM_SI_SLOTS{1'b0}}};
reg                                           stg2_done = 1'b1;

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

// Assign outputs
assign done = stg2_done;
assign mi_mux = mi_mux_in;
assign si_mux = si_mux_r;
assign mi_enable = mi_enable_r;
assign si_enable = si_enable_r[0+:C_NUM_SI_SLOTS];

////////////////////////////////////////////////////////////////////////////////
// Init
always @(posedge aclk) begin 
  start_r <= start;
end

// generate a reset pulse
always @(posedge aclk) begin 
  stg1_reset <= start & ~start_r;
end

// Re-organize input register into nice to use vectors
generate 
  for (mi = 0; mi < C_NUM_MI_SLOTS; mi = mi + 1) begin : gen_mi_mux_in
    always @(posedge aclk) begin 
      mi_mux_in[mi*LP_LOG_MAX_SLOTS+:LP_LOG_MAX_SLOTS] <= stg1_reset ? reg_mi_mux[mi*32+:LP_LOG_MAX_SLOTS]
                                                          :  mi_mux_in[mi*LP_LOG_MAX_SLOTS+:LP_LOG_MAX_SLOTS];
    end
    always @(posedge aclk) begin 
      mi_mux_en_in[mi*1+:1] <= stg1_reset ? ~reg_mi_mux[(mi*32)+31+:1] : mi_mux_en_in[mi*1+:1] ;
    end
  end
endgenerate 

// counter is used to iterate through the mi mux registers
always @(posedge aclk) begin 
  if (stg1_reset) begin 
    mi_cntr <= {LP_LOG_MAX_SLOTS{1'b0}};
  end
  else begin 
    mi_cntr <= ~(mi_cntr == (C_NUM_MI_SLOTS[0+:LP_LOG_MAX_SLOTS]-1'b1)) ? mi_cntr + 1'b1 : mi_cntr;
  end
end

////////////////////////////////////////////////////////////////////////////////
// Stage 1 of the pipeline
always @(posedge aclk) begin 
  stg1_done <= stg1_reset ? 1'b0 : (mi_cntr == (C_NUM_MI_SLOTS[0+:LP_LOG_MAX_SLOTS]-1'b1));
end


// Current MI source
always @(posedge aclk) begin 
  selector <= mi_cntr;
end

// Current SI targeted
always @(posedge aclk) begin 
  selectee <= mi_mux_in[mi_cntr*LP_LOG_MAX_SLOTS+:LP_LOG_MAX_SLOTS];
end

always @(posedge aclk) begin 
  selector_enable <= mi_mux_en_in[mi_cntr+:1];
end

always @(posedge aclk) begin 
  mi_connectivity[0+:C_NUM_SI_SLOTS] <= C_CONNECTIVITY[mi_cntr*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS];
end

////////////////////////////////////////////////////////////////////////////////
// Stage 2 of the pipeline
always @(posedge aclk) begin 
  stg2_reset <= stg1_reset;
end

always @(posedge aclk) begin 
  stg2_done <= stg1_reset ? 1'b0 : stg1_done;
end

assign connected = mi_connectivity[selectee];
// Generate mux registers
generate
  for (si = 0; si < C_NUM_SI_SLOTS; si = si + 1) begin : gen_si_mux
    always @(posedge aclk) begin 
      si_mux_r[si*LP_LOG_MAX_SLOTS+:LP_LOG_MAX_SLOTS] <= ~si_enable[si] ? selector[0+:LP_LOG_MAX_SLOTS]
                                                           : si_mux_r[si*LP_LOG_MAX_SLOTS+:LP_LOG_MAX_SLOTS];
    end
  end
  // It's possible to target a non-existant SI, therefore we extend out the
  // si_enable signal to the max number of slots and enable the unused values,
  // this essentially marks them as invalid targets since they are already
  // 'used'.
  for (si = 0; si < LP_NUM_MAX_SLOTS; si = si + 1) begin : gen_si_enable
    always @(posedge aclk) begin 
      if (stg2_reset) begin 
        si_enable_r[si] <= (si < C_NUM_SI_SLOTS) ? 1'b0 : 1'b1;
      end
      else begin
        si_enable_r[si] <= ((si == selectee) & selector_enable & connected) | si_enable_r[si];
      end
    end
  end
  for (mi = 0; mi < C_NUM_MI_SLOTS; mi = mi + 1) begin : gen_mi_enable
    always @(posedge aclk) begin 
      if (stg2_reset) begin 
        mi_enable_r[mi] <= 1'b0;
      end
      else begin
        mi_enable_r[mi] <= (selector == mi) ? (~si_enable_r[selectee] & selector_enable & connected)|mi_enable_r[mi] : mi_enable_r[mi];
      end
    end
  end
endgenerate

endmodule // axis_switch_v1_1_19_static_router_config

`default_nettype wire


//  (c) Copyright 2014 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

module axis_switch_v1_1_19_static_router_config #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter integer C_NUM_MI_SLOTS = 16,
  parameter integer C_NUM_SI_SLOTS = 16,
  parameter [C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0] C_CONNECTIVITY = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS{1'b1}},
  parameter integer C_CTRL_REG_WIDTH = C_NUM_MI_SLOTS*5 + C_NUM_SI_SLOTS*5
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire                         aclk,
   input wire                         areset,
   input wire [16*32-1:0]             reg_mi_mux,
   input wire                         reg_commit,
   output wire                        commit_reset,
   output wire                        ctrl_req,
   input  wire                        ctrl_ack,
   output wire [C_CTRL_REG_WIDTH-1:0] ctrl_reg,
   output wire                        ctrl_soft_reset 

);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam SM_IDLE  = 3'b000; 
localparam SM_START = 3'b001; 
localparam SM_WAIT  = 3'b010; 
localparam SM_COMMIT = 3'b011; 
localparam SM_COMPLETE = 3'b100; 
localparam integer LP_LOG_MAX_SLOTS = 4; 
localparam integer LP_NUM_MAX_SLOTS = 16;  

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
reg  [C_CTRL_REG_WIDTH-1:0]                ctrl_reg_r = {C_CTRL_REG_WIDTH{1'b0}};
reg  [2:0]                                 state = SM_IDLE;
wire                                       start;
wire                                       done;
wire [C_NUM_MI_SLOTS-1:0]                  mi_enable;
wire [C_NUM_MI_SLOTS*LP_LOG_MAX_SLOTS-1:0] mi_mux;
wire [C_NUM_SI_SLOTS-1:0]                  si_enable;
wire [C_NUM_SI_SLOTS*LP_LOG_MAX_SLOTS-1:0] si_mux;
reg                                        ctrl_req_r = 1'b0;
reg                                        ctrl_soft_reset_r = 1'b0;
genvar mi, si;

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

// Assign outputs
assign ctrl_req = ctrl_req_r;
assign ctrl_reg = ctrl_reg_r;
assign ctrl_soft_reset = ctrl_soft_reset_r;
assign commit_reset = (state == SM_COMPLETE) ? 1'b1 : 1'b0;

// To make xdc timing easier, we merge all the registers into one.
always @(posedge aclk) begin 
  ctrl_reg_r <= {si_enable[0+:C_NUM_SI_SLOTS], si_mux[0+:C_NUM_SI_SLOTS*4], 
                 mi_enable[0+:C_NUM_MI_SLOTS], mi_mux[0+:C_NUM_MI_SLOTS*4]};
end

// enter switch soft reset when not idle.
always @(posedge aclk) begin 
  ctrl_soft_reset_r <= (state == SM_IDLE) ? 1'b0 : 1'b1;
end

// State machine controls calculations.
// ctrl_req_r is explicitely defined for since it is a source in the cdc
// handhshake.
always @(posedge aclk) begin 
  if (areset) begin
    state <= SM_IDLE;
    ctrl_req_r <= 1'b0;
  end
  else begin 
    case (state)
      SM_IDLE:
        if (reg_commit)
          state <= SM_START;
        else
          state <= SM_IDLE;

      SM_START:
        // Stay in start state until done goes low.
        if (done)
          state <= SM_START;
        else
          state <= SM_WAIT;

      SM_WAIT:
        if (done) begin
          state <= SM_COMMIT;
          ctrl_req_r <= 1'b1;
        end
        else begin
          state <= SM_WAIT;
        end

      SM_COMMIT:
        if (ctrl_ack) begin
          state <= SM_COMPLETE;
          ctrl_req_r <= 1'b0;
        end
        else begin
          state <= SM_COMMIT;
        end

      SM_COMPLETE:
        state <= SM_IDLE;

      default:
        state <= SM_IDLE;
    endcase
  end
end

assign start = (state == SM_START) ? 1'b1 : 1'b0;

axis_switch_v1_1_19_static_router_config_dp #(
  .C_NUM_MI_SLOTS   ( C_NUM_MI_SLOTS   ) ,
  .C_NUM_SI_SLOTS   ( C_NUM_SI_SLOTS   ) ,
  .C_CONNECTIVITY   ( C_CONNECTIVITY   ) 
)
inst_start_router_config_dp (
  .aclk                 ( aclk   ) , // I
  // Register interface
  .reg_mi_mux           ( reg_mi_mux ) , // I
  .start                ( start      ) , // I
  .done                 ( done       ) , // O
  // Router interface
  .mi_enable            ( mi_enable  ) , // O 
  .mi_mux               ( mi_mux     ) , // O
  .si_enable            ( si_enable  ) , // O
  .si_mux               ( si_mux     )   // O
);


endmodule // axis_switch_v1_1_19_static_router_config

`default_nettype wire


// (c) Copyright 2014 Xilinx, Inc. All rights reserved. 
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
///////////////////////////////////////////////////////////////////////////////
//
// File name: axi_ctrl_top.v
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
`default_nettype none

module axis_switch_v1_1_19_static_router #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  // Width of AXI-4-Lite address bus
  parameter integer C_AXI_ADDR_WIDTH              = 7, 
  // Width of AXI-4-Lite data buses
  parameter integer C_AXI_DATA_WIDTH              = 32,
  // C_NUM_SI_SLOTS: Number of slave interfaces (input channels)
  parameter integer C_NUM_SI_SLOTS                = 1,
  // C_NUM_MI_SLOTS: Number of master interfaces (output channels)
  parameter integer C_NUM_MI_SLOTS                = 2,
  parameter [C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0] C_CONNECTIVITY = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS{1'b1}},
  parameter integer C_CTRL_REG_WIDTH = C_NUM_SI_SLOTS*5 + C_NUM_MI_SLOTS*5
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations     
///////////////////////////////////////////////////////////////////////////////
  // AXI4-Lite Slave Interface
  // Slave Interface System Signals           
  input  wire                               aclk              , 
  input  wire                               areset            , 
  // Slave Interface Write Address Ports
  input  wire                               s_axi_awvalid     , 
  output wire                               s_axi_awready     , 
  input  wire [C_AXI_ADDR_WIDTH-1:0]        s_axi_awaddr      , 
  // Slave Interface Write Data Ports
  input  wire                               s_axi_wvalid      , 
  output wire                               s_axi_wready      , 
  input  wire [C_AXI_DATA_WIDTH-1:0]        s_axi_wdata       , 
  // Slave Interface Write Response Ports
  output wire                               s_axi_bvalid      , 
  input  wire                               s_axi_bready      , 
  output wire [1:0]                         s_axi_bresp       , 
  // Slave Interface Read Address Ports
  input  wire                               s_axi_arvalid     , 
  output wire                               s_axi_arready     , 
  input  wire [C_AXI_ADDR_WIDTH-1:0]        s_axi_araddr      , 
  // Slave Interface Read Data Ports
  output wire                               s_axi_rvalid      , 
  input  wire                               s_axi_rready      , 
  output wire [C_AXI_DATA_WIDTH-1:0]        s_axi_rdata       , 
  output wire [1:0]                         s_axi_rresp       , 

  // Router control outputs
  output wire                               ctrl_req        , 
  input  wire                               ctrl_ack        , 
  output wire [C_CTRL_REG_WIDTH-1:0]        ctrl_reg        ,
  // Soft reset output
  output wire                               ctrl_soft_reset
  
);

/////////////////////////////////////////////////////////////////////////////
// Functions
/////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
wire [16*32-1:0] reg_mi_mux;
wire             reg_commit;
wire             commit_reset;
////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
///////////////////////////////////////////////////////////////////////////////

axis_switch_v1_1_19_axi_ctrl_top #(
  .C_AXI_ADDR_WIDTH ( C_AXI_ADDR_WIDTH ) ,
  .C_AXI_DATA_WIDTH ( C_AXI_DATA_WIDTH ) ,
  .C_NUM_MI_SLOTS   ( C_NUM_MI_SLOTS   ) ,
  .C_NUM_SI_SLOTS   ( C_NUM_SI_SLOTS   ) ,
  .C_CONNECTIVITY   ( C_CONNECTIVITY   ) ,
  .C_CTRL_REG_WIDTH ( C_CTRL_REG_WIDTH )
 
)
inst_axi_ctrl_top (
  .aclk                  ( aclk    ) , // I
  .areset                ( areset  ) , // I
  // AXI4-Lite Interface
  .s_axi_awvalid         ( s_axi_awvalid ) , // I
  .s_axi_awready         ( s_axi_awready ) , // O
  .s_axi_awaddr          ( s_axi_awaddr  ) , // I
  .s_axi_wvalid          ( s_axi_wvalid  ) , // I
  .s_axi_wready          ( s_axi_wready  ) , // O
  .s_axi_wdata           ( s_axi_wdata   ) , // I
  .s_axi_bvalid          ( s_axi_bvalid  ) , // O
  .s_axi_bready          ( s_axi_bready  ) , // I
  .s_axi_bresp           ( s_axi_bresp   ) , // O
  .s_axi_arvalid         ( s_axi_arvalid ) , // I
  .s_axi_arready         ( s_axi_arready ) , // O
  .s_axi_araddr          ( s_axi_araddr  ) , // I
  .s_axi_rvalid          ( s_axi_rvalid  ) , // O
  .s_axi_rready          ( s_axi_rready  ) , // I
  .s_axi_rdata           ( s_axi_rdata   ) , // O
  .s_axi_rresp           ( s_axi_rresp   ) , // O
  // Router interface
  .reg_mi_mux            ( reg_mi_mux         ) , // O
  .reg_commit            ( reg_commit         ) , // O
  .commit_reset          ( commit_reset       ) , // I
  .ctrl_reg              ( ctrl_reg           )   // I (debug)
);

axis_switch_v1_1_19_static_router_config #(
  .C_NUM_MI_SLOTS   ( C_NUM_MI_SLOTS   ) ,
  .C_NUM_SI_SLOTS   ( C_NUM_SI_SLOTS   ) ,
  .C_CONNECTIVITY   ( C_CONNECTIVITY   ) 
)
inst_start_router_config (
  .aclk                 ( aclk   ) , // I
  .areset               ( areset ) , // I
  // Register interface
  .reg_mi_mux           ( reg_mi_mux        ) , // I
  .reg_commit           ( reg_commit        ) , // I
  .commit_reset         ( commit_reset      ) , // O
  // Router interface
  .ctrl_req           ( ctrl_req        ) , // O
  .ctrl_ack           ( ctrl_ack        ) , // I 
  .ctrl_reg           ( ctrl_reg        ) , // O
  .ctrl_soft_reset      ( ctrl_soft_reset   )   // O
);

endmodule // axis_switch_v1_1_19_static_router.v 

`default_nettype wire


//  (c) Copyright 2014 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

module axis_switch_v1_1_19_reg_bank_16x32 # (
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter integer C_ACTIVE_REG    = 8, // 1+
  // Bit mask of active bits in register set
  parameter integer C_REG_MASK      = 32'b1111_1111_1111_1111, 
  // Default init value
  parameter [16*32-1:0] C_INIT      = {16{32'b0}} 
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
  input wire                        aclk,
  input wire                        areset,
  input wire                        we,
  input wire  [ 3:0 ]               waddr,
  input wire  [ 32-1:0 ]            wdata,
  output wire [ 16*32-1:0 ]         rdata
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam LP_MAX = 16;
localparam LP_WIDTH = 32;
////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
reg [(LP_MAX*LP_WIDTH)-1:0] reg_data = C_INIT;
////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

generate
genvar i; 
  for (i = 0; i < LP_MAX; i = i + 1) begin : gen_reg
    always @(posedge aclk) begin 
      if (areset) begin 
        reg_data[i*LP_WIDTH+:LP_WIDTH] <= C_INIT[i*LP_WIDTH+:LP_WIDTH];
      end
      else if ((waddr == i) && we && (i < C_ACTIVE_REG)) begin 
        reg_data[i*LP_WIDTH+:LP_WIDTH] <= wdata;
      end
    end
  end
endgenerate

assign rdata = reg_data;

endmodule // axis_switch_v1_1_19_reg_bank_16x32

`default_nettype wire


//  (c) Copyright 2011-2014 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axis_switch
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_switch_v1_1_19_axis_switch #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY            = "virtex7",
   // C_NUM_SI_SLOTS: Number of slave interfaces (input channels)
   parameter integer C_NUM_SI_SLOTS      = 1,
   // C_LOG_SI_SLOTS: MAX(clog2(C_NUM_SI_SLOTS), 1)
   parameter integer C_LOG_SI_SLOTS      = 1,
   // C_NUM_MI_SLOTS: Number of master interfaces (output channels)
   parameter integer C_NUM_MI_SLOTS      = 2,
   parameter integer C_AXIS_TDATA_WIDTH  = 8,
   parameter integer C_AXIS_TID_WIDTH    = 1,
   parameter integer C_AXIS_TDEST_WIDTH  = 2,
   parameter integer C_AXIS_TUSER_WIDTH  = 1,
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present
   //   [1] => TDATA present
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   parameter [31:0]  C_AXIS_SIGNAL_SET   = 32'h43,
   // C_ARB_ON_MAX_XFERS: 
   //  0 => Ignore number of transfers to signal DONE
   //  1+ => Signal ARB_DONE after x TRANSFERS
   parameter integer C_ARB_ON_MAX_XFERS = 10,
   // C_ARB_ON_NUM_CYCLES: 
   //  0 => Ignore TIMEOUT parameter
   //  1+ => Signal ARB_DONE after x cylces of LOW TVALID
   parameter integer C_ARB_ON_NUM_CYCLES = 0,
   // C_ARB_ON_TLAST:
   //  0 => Ignore TLAST for signaling ARB_DONE 
   //  1 => Signal ARB_DONE on TLAST transfer
   parameter integer C_ARB_ON_TLAST = 0,
   // C_INCLUDE_ARBITER:
   //  0 => Enable external arbiter interface.
   //  1 => Enable built-in arbiter.
   parameter integer C_INCLUDE_ARBITER = 1,
   // C_ARBITER_ALGORITHM: Chooses arbiter algorithm
   // 0 = ROUND_ROBIN: Round-robin style arbiter
   // 1 = FIXED: Fixed priority arbiter (Port 0 highest priority, port 15 lowest
   // priority).
   parameter integer C_ARB_ALGORITHM = 0,
   // C_OUTPUT_REG: Enable output register slice
   parameter integer C_OUTPUT_REG        = 0,
   // C_DECODER_REG: Enable decoder (register slice + registered decoded
   // signals for registered arb_req output)
   parameter integer C_DECODER_REG       = 1,
   parameter [C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0] C_M_AXIS_CONNECTIVITY_ARRAY = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS{1'b1}},
   parameter [C_NUM_MI_SLOTS*C_AXIS_TDEST_WIDTH-1:0] C_M_AXIS_BASETDEST_ARRAY = {C_NUM_MI_SLOTS*C_AXIS_TDEST_WIDTH{1'b1}},
   parameter [C_NUM_MI_SLOTS*C_AXIS_TDEST_WIDTH-1:0] C_M_AXIS_HIGHTDEST_ARRAY = {C_NUM_MI_SLOTS*C_AXIS_TDEST_WIDTH{1'b0}},
   // C_ROUTING_MODE: 
   // 0 = TDEST Routing: Default routing method
   // 1 = STATIC: Static routing method using control registers
   parameter C_ROUTING_MODE                  = 0,
   // Width of AXI4-Lite address bus
   parameter C_S_AXI_CTRL_ADDR_WIDTH         = 7,
   // Width of AXI4-Lite data buses
   parameter C_S_AXI_CTRL_DATA_WIDTH         = 32,
   // specifies if s_axi_ctrl_aclk is the same as aclk.
   parameter C_COMMON_CLOCK              = 0

 )
 ( 
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////

   // System Signals
   input wire aclk,
   input wire aresetn,
   input wire aclken,

   // Slave side
   input  wire [C_NUM_SI_SLOTS-1:0]                                   s_axis_tvalid,
   output wire [C_NUM_SI_SLOTS-1:0]                                   s_axis_tready,
   input  wire [C_NUM_SI_SLOTS*C_AXIS_TDATA_WIDTH-1:0]                s_axis_tdata,
   input  wire [C_NUM_SI_SLOTS*C_AXIS_TDATA_WIDTH/8-1:0]              s_axis_tstrb,
   input  wire [C_NUM_SI_SLOTS*C_AXIS_TDATA_WIDTH/8-1:0]              s_axis_tkeep,
   input  wire [C_NUM_SI_SLOTS-1:0]                                   s_axis_tlast,
   input  wire [C_NUM_SI_SLOTS*C_AXIS_TID_WIDTH-1:0]                  s_axis_tid,
   input  wire [C_NUM_SI_SLOTS*C_AXIS_TDEST_WIDTH-1:0]                s_axis_tdest,
   input  wire [C_NUM_SI_SLOTS*C_AXIS_TUSER_WIDTH-1:0]                s_axis_tuser,

   // Master side
   output wire [C_NUM_MI_SLOTS-1:0]                                   m_axis_tvalid,
   input  wire [C_NUM_MI_SLOTS-1:0]                                   m_axis_tready,
   output wire [C_NUM_MI_SLOTS*C_AXIS_TDATA_WIDTH-1:0]                m_axis_tdata,
   output wire [C_NUM_MI_SLOTS*C_AXIS_TDATA_WIDTH/8-1:0]              m_axis_tstrb,
   output wire [C_NUM_MI_SLOTS*C_AXIS_TDATA_WIDTH/8-1:0]              m_axis_tkeep,
   output wire [C_NUM_MI_SLOTS-1:0]                                   m_axis_tlast,
   output wire [C_NUM_MI_SLOTS*C_AXIS_TID_WIDTH-1:0]                  m_axis_tid,
   output wire [C_NUM_MI_SLOTS*C_AXIS_TDEST_WIDTH-1:0]                m_axis_tdest,
   output wire [C_NUM_MI_SLOTS*C_AXIS_TUSER_WIDTH-1:0]                m_axis_tuser ,
   
   // Arbiter interface
   output wire [C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0]                    arb_req,
   output wire [C_NUM_MI_SLOTS-1:0]                                   arb_done,
   input  wire [C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0]                    arb_gnt,
   input  wire [C_NUM_MI_SLOTS*C_LOG_SI_SLOTS-1:0]                    arb_sel,
   output wire [C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0]                    arb_last,
   output wire [C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TID_WIDTH-1:0]   arb_id,
   output wire [C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TDEST_WIDTH-1:0] arb_dest,
   output wire [C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TUSER_WIDTH-1:0] arb_user,
   input wire  [C_NUM_SI_SLOTS-1:0]                                   s_req_suppress,

   // AXI CTRL port
   input wire                                s_axi_ctrl_aclk,
   input wire                                s_axi_ctrl_aresetn,

   input wire                                s_axi_ctrl_awvalid,
   output wire                               s_axi_ctrl_awready,
   input wire  [C_S_AXI_CTRL_ADDR_WIDTH-1:0] s_axi_ctrl_awaddr,
   // Slave Interface Write Data Ports
   input wire                                s_axi_ctrl_wvalid,
   output wire                               s_axi_ctrl_wready,
   input wire  [C_S_AXI_CTRL_DATA_WIDTH-1:0] s_axi_ctrl_wdata,
   // Slave Interface Write Response Ports
   output wire                               s_axi_ctrl_bvalid,
   input wire                                s_axi_ctrl_bready,
   output wire [1:0]                         s_axi_ctrl_bresp,
   // Slave Interface Read Address Ports
   input wire                                s_axi_ctrl_arvalid,
   output wire                               s_axi_ctrl_arready,
   input wire  [C_S_AXI_CTRL_ADDR_WIDTH-1:0] s_axi_ctrl_araddr,
   // Slave Interface Read Data Ports
   output wire                               s_axi_ctrl_rvalid,
   input wire                                s_axi_ctrl_rready,
   output wire [C_S_AXI_CTRL_DATA_WIDTH-1:0] s_axi_ctrl_rdata,
   output wire [1:0]                         s_axi_ctrl_rresp,

   // Err output
   output wire [C_NUM_SI_SLOTS-1:0]                                   s_decode_err
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
function [C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0] f_transform_mxn_to_nxm (
  input integer                                    m_width,
  input integer                                    n_width,
  input [C_NUM_SI_SLOTS*C_NUM_MI_SLOTS-1:0] x
);
begin : main
  integer i;
  integer j;
  for (j = 0; j < n_width; j = j+1) begin
    for (i = 0; i < m_width; i = i+1) begin
      f_transform_mxn_to_nxm[j*m_width+i] = x[j+n_width*i];
    end
  end
end
endfunction

function [C_NUM_MI_SLOTS-1:0] f_calc_single_slave_connectivity_array (
  input integer                                    num_masters,
  input [C_NUM_SI_SLOTS*C_NUM_MI_SLOTS-1:0] x
);
begin : main
  integer i;
  integer j;
  for (j = 0; j < num_masters; j = j+1) begin
    f_calc_single_slave_connectivity_array[j] = (x[j*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS] & (x[j*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS]-1)) ? 1'b0 : 1'b1;
  end
end
endfunction

`include "axis_infrastructure_v1_1_0.vh"


////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam P_DECODER_CONNECTIVITY_ARRAY = f_transform_mxn_to_nxm(C_NUM_MI_SLOTS, C_NUM_SI_SLOTS,C_M_AXIS_CONNECTIVITY_ARRAY);
localparam P_TPAYLOAD_WIDTH = f_payload_width(C_AXIS_TDATA_WIDTH, C_AXIS_TID_WIDTH, C_AXIS_TDEST_WIDTH, 
                                              C_AXIS_TUSER_WIDTH, C_AXIS_SIGNAL_SET);
localparam [C_NUM_MI_SLOTS-1:0] P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = f_calc_single_slave_connectivity_array(C_NUM_MI_SLOTS, C_M_AXIS_CONNECTIVITY_ARRAY);
localparam integer LP_NUM_SYNCHRONIZER_STAGES = 4;
localparam integer LP_MERGEDOWN_MUX = &C_M_AXIS_CONNECTIVITY_ARRAY ? 0 : 1;
localparam integer LP_CTRL_REG_WIDTH = C_NUM_SI_SLOTS*5 + C_NUM_MI_SLOTS*5;

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
reg areset_r;

wire [C_NUM_SI_SLOTS*P_TPAYLOAD_WIDTH-1:0]     s_axis_tpayload;

// Wires between arbiter/decoder/transfer_mux
wire [ C_NUM_SI_SLOTS*C_NUM_MI_SLOTS-1:0                    ] dec_tvalid;
wire [ C_NUM_SI_SLOTS*C_NUM_MI_SLOTS-1:0                    ] dec_tready;
wire [ C_NUM_SI_SLOTS*P_TPAYLOAD_WIDTH-1:0                  ] dec_tpayload;
wire [ C_NUM_SI_SLOTS*1-1:0                                 ] dec_tlast;
wire [ C_NUM_SI_SLOTS*C_AXIS_TID_WIDTH-1:0                  ] dec_tid;
wire [ C_NUM_SI_SLOTS*C_AXIS_TDEST_WIDTH-1:0                ] dec_tdest;
wire [ C_NUM_SI_SLOTS*C_AXIS_TUSER_WIDTH-1:0                ] dec_tuser;
wire [ C_NUM_SI_SLOTS*C_NUM_MI_SLOTS-1:0                    ] dec_arb_gnt;
wire [ C_NUM_SI_SLOTS*C_NUM_MI_SLOTS-1:0                    ] dec_arb_req;
wire [ C_NUM_SI_SLOTS*C_NUM_MI_SLOTS-1:0                    ] dec_arb_done;
wire [ C_NUM_SI_SLOTS*C_NUM_MI_SLOTS-1:0                    ] dec_arb_active;

wire [ C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0                    ] mux_tvalid;
wire [ C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0                    ] mux_tready;
wire [ C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*P_TPAYLOAD_WIDTH-1:0   ] mux_tpayload;
wire [ C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0                    ] arb_req_i;
wire [ C_NUM_MI_SLOTS-1:0                                   ] arb_done_i;
wire [ C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0                    ] arb_gnt_i;
wire [ C_NUM_MI_SLOTS*C_LOG_SI_SLOTS-1:0                    ] arb_sel_i;
wire [ C_NUM_MI_SLOTS*C_NUM_SI_SLOTS-1:0                    ] arb_last_i;
wire [ C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TID_WIDTH-1:0   ] arb_id_i;
wire [ C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TDEST_WIDTH-1:0 ] arb_dest_i;
wire [ C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TUSER_WIDTH-1:0 ] arb_user_i;
wire [ C_NUM_MI_SLOTS*P_TPAYLOAD_WIDTH-1:0                  ] tmo_tpayload;

// Static routing wires/regs
wire                        soft_reset;
wire [C_NUM_MI_SLOTS-1:0]   mi_enable;
wire [C_NUM_MI_SLOTS*4-1:0] mi_mux;
wire [C_NUM_SI_SLOTS-1:0]   si_enable;
wire [C_NUM_SI_SLOTS*4-1:0] si_mux;


////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////
always @(posedge aclk) begin 
  areset_r <= ~aresetn | soft_reset;
end

generate
  genvar si;
  genvar mi;
  for (si = 0; si < C_NUM_SI_SLOTS; si = si + 1) begin : gen_decoder
    axis_infrastructure_v1_1_0_util_axis2vector #(
      .C_TDATA_WIDTH    ( C_AXIS_TDATA_WIDTH ) ,
      .C_TID_WIDTH      ( C_AXIS_TID_WIDTH   ) ,
      .C_TDEST_WIDTH    ( C_AXIS_TDEST_WIDTH ) ,
      .C_TUSER_WIDTH    ( C_AXIS_TUSER_WIDTH ) ,
      .C_TPAYLOAD_WIDTH ( P_TPAYLOAD_WIDTH   ) ,
      .C_SIGNAL_SET     ( C_AXIS_SIGNAL_SET  ) 
    )
    util_axis2vector_0 (
      .TDATA    ( s_axis_tdata    [ si*C_AXIS_TDATA_WIDTH   +: C_AXIS_TDATA_WIDTH   ] ) ,
      .TSTRB    ( s_axis_tstrb    [ si*C_AXIS_TDATA_WIDTH/8 +: C_AXIS_TDATA_WIDTH/8 ] ) ,
      .TKEEP    ( s_axis_tkeep    [ si*C_AXIS_TDATA_WIDTH/8 +: C_AXIS_TDATA_WIDTH/8 ] ) ,
      .TLAST    ( s_axis_tlast    [ si                      +: 1                    ] ) ,
      .TID      ( s_axis_tid      [ si*C_AXIS_TID_WIDTH     +: C_AXIS_TID_WIDTH     ] ) ,
      .TDEST    ( s_axis_tdest    [ si*C_AXIS_TDEST_WIDTH   +: C_AXIS_TDEST_WIDTH   ] ) ,
      .TUSER    ( s_axis_tuser    [ si*C_AXIS_TUSER_WIDTH   +: C_AXIS_TUSER_WIDTH   ] ) ,
      .TPAYLOAD ( s_axis_tpayload [ si*P_TPAYLOAD_WIDTH     +: P_TPAYLOAD_WIDTH     ] ) 
    );

    axis_switch_v1_1_19_axisc_decoder #(
      .C_FAMILY           ( C_FAMILY                                                        ) ,
      .C_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH                                              ) ,
      .C_AXIS_TID_WIDTH   ( C_AXIS_TID_WIDTH                                                ) ,
      .C_AXIS_TDEST_WIDTH ( C_AXIS_TDEST_WIDTH                                              ) ,
      .C_AXIS_TUSER_WIDTH ( C_AXIS_TUSER_WIDTH                                              ) ,
      .C_AXIS_SIGNAL_SET  ( C_AXIS_SIGNAL_SET                                               ) ,
      .C_TPAYLOAD_WIDTH   ( P_TPAYLOAD_WIDTH                                                ) ,
      .C_NUM_MI_SLOTS     ( C_NUM_MI_SLOTS                                                  ) ,
      .C_DECODER_REG      ( C_DECODER_REG                                                   ) ,
      .C_CONNECTIVITY     ( P_DECODER_CONNECTIVITY_ARRAY[si*C_NUM_MI_SLOTS+:C_NUM_MI_SLOTS] ) ,
      .C_BASETDEST        ( C_M_AXIS_BASETDEST_ARRAY[0+:C_NUM_MI_SLOTS*C_AXIS_TDEST_WIDTH]  ) ,
      .C_HIGHTDEST        ( C_M_AXIS_HIGHTDEST_ARRAY[0+:C_NUM_MI_SLOTS*C_AXIS_TDEST_WIDTH]  ) ,
      .C_ROUTING_MODE     ( C_ROUTING_MODE                                                  )
    )
    axisc_decoder_0
    (
      .ACLK            ( aclk                                                            ) ,
      .ACLKEN          ( aclken                                                          ) ,
      .ARESET          ( areset_r                                                        ) ,
      .S_AXIS_TVALID   ( s_axis_tvalid   [ si                    +: 1                  ] ) ,
      .S_AXIS_TREADY   ( s_axis_tready   [ si                    +: 1                  ] ) ,
      .S_AXIS_TPAYLOAD ( s_axis_tpayload [ si*P_TPAYLOAD_WIDTH   +: P_TPAYLOAD_WIDTH   ] ) ,
      .S_AXIS_TDEST    ( s_axis_tdest    [ si*C_AXIS_TDEST_WIDTH +: C_AXIS_TDEST_WIDTH ] ) ,
      .M_AXIS_TVALID   ( dec_tvalid      [ si*C_NUM_MI_SLOTS     +: C_NUM_MI_SLOTS     ] ) ,
      .M_AXIS_TREADY   ( dec_tready      [ si*C_NUM_MI_SLOTS     +: C_NUM_MI_SLOTS     ] ) ,
      .M_AXIS_TPAYLOAD ( dec_tpayload    [ si*P_TPAYLOAD_WIDTH   +: P_TPAYLOAD_WIDTH   ] ) ,
      .ARB_LAST        ( dec_tlast       [ si                    +: 1                  ] ) ,
      .ARB_ID          ( dec_tid         [ si*C_AXIS_TID_WIDTH   +: C_AXIS_TID_WIDTH   ] ) ,
      .ARB_DEST        ( dec_tdest       [ si*C_AXIS_TDEST_WIDTH +: C_AXIS_TDEST_WIDTH ] ) ,
      .ARB_USER        ( dec_tuser       [ si*C_AXIS_TUSER_WIDTH +: C_AXIS_TUSER_WIDTH ] ) ,
      .ARB_REQ         ( dec_arb_req     [ si*C_NUM_MI_SLOTS     +: C_NUM_MI_SLOTS     ] ) ,
      .ARB_GNT         ( dec_arb_gnt     [ si*C_NUM_MI_SLOTS     +: C_NUM_MI_SLOTS     ] ) ,
      .ARB_DONE        ( dec_arb_done    [ si*C_NUM_MI_SLOTS     +: C_NUM_MI_SLOTS     ] ) ,
      .ARB_ACTIVE      ( dec_arb_active  [ si*C_NUM_MI_SLOTS     +: C_NUM_MI_SLOTS     ] ) ,
      .DECODE_ERR      ( s_decode_err    [ si                    +: 1                  ] ) ,
      .si_enable       ( si_enable       [ si                    +: 1                  ] ) ,
      .si_mux          ( si_mux          [ si*4                  +: 4                  ] )
    );
  end
  // These loops transform the output of the SI Decoders signals to arrange them into ARB
  // interface order
  for (mi = 0; mi < C_NUM_MI_SLOTS; mi = mi + 1) begin : gen_si2mi_master_transform
    for (si = 0; si < C_NUM_SI_SLOTS; si = si + 1) begin : gen_si2mi_slave_transform
      // These signals map 1:N from 1 per SI to multiple MI
      assign mux_tvalid   [ (mi*C_NUM_SI_SLOTS+si)                                        ] = dec_tvalid   [ si*C_NUM_MI_SLOTS+mi                      ] ;
      assign mux_tpayload [ (mi*C_NUM_SI_SLOTS+si)*P_TPAYLOAD_WIDTH+:P_TPAYLOAD_WIDTH     ] = dec_tpayload [ si*P_TPAYLOAD_WIDTH+:P_TPAYLOAD_WIDTH     ] ;
      assign arb_last_i   [ (mi*C_NUM_SI_SLOTS+si)                                        ] = dec_tlast    [ si                                        ] ;
      assign arb_id_i     [ (mi*C_NUM_SI_SLOTS+si)*C_AXIS_TID_WIDTH+:C_AXIS_TID_WIDTH     ] = dec_tid      [ si*C_AXIS_TID_WIDTH+:C_AXIS_TID_WIDTH     ] ;
      assign arb_dest_i   [ (mi*C_NUM_SI_SLOTS+si)*C_AXIS_TDEST_WIDTH+:C_AXIS_TDEST_WIDTH ] = dec_tdest    [ si*C_AXIS_TDEST_WIDTH+:C_AXIS_TDEST_WIDTH ] ;
      assign arb_user_i   [ (mi*C_NUM_SI_SLOTS+si)*C_AXIS_TUSER_WIDTH+:C_AXIS_TUSER_WIDTH ] = dec_tuser    [ si*C_AXIS_TUSER_WIDTH+:C_AXIS_TUSER_WIDTH ] ;
      // These signals map 1:1 from multiple per SI to multiple per MI
      assign arb_req_i    [ (mi*C_NUM_SI_SLOTS+si)                                        ] = dec_arb_req  [ si*C_NUM_MI_SLOTS+mi                   ] & ~s_req_suppress[si];
    end
  end
  // These loops transform the input to the Decoders signals to arrange them into 
  // slave interface order
  for (si = 0; si < C_NUM_SI_SLOTS; si = si + 1) begin : gen_mi2si_slave_transform
    for (mi = 0; mi < C_NUM_MI_SLOTS; mi = mi + 1) begin : gen_mi2si_master_transform
      assign dec_tready [ si*C_NUM_MI_SLOTS+mi ] = mux_tready[ mi*C_NUM_SI_SLOTS+si ];
      assign dec_arb_gnt[ si*C_NUM_MI_SLOTS+mi ] = arb_gnt_i [ mi*C_NUM_SI_SLOTS+si ];
      assign dec_arb_done[si*C_NUM_MI_SLOTS+mi ] = arb_done_i [ mi ];
    end
  end
  for (mi = 0; mi < C_NUM_MI_SLOTS; mi = mi + 1) begin : gen_transfer_mux
    axis_switch_v1_1_19_axisc_transfer_mux #(
      .C_FAMILY           ( C_FAMILY                                                ) ,
      .C_TPAYLOAD_WIDTH   ( P_TPAYLOAD_WIDTH                                        ) ,
      .C_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH                                      ) ,
      .C_AXIS_TID_WIDTH   ( C_AXIS_TID_WIDTH                                        ) ,
      .C_AXIS_TDEST_WIDTH ( C_AXIS_TDEST_WIDTH                                      ) ,
      .C_AXIS_TUSER_WIDTH ( C_AXIS_TUSER_WIDTH                                      ) ,
      .C_AXIS_SIGNAL_SET  ( C_AXIS_SIGNAL_SET                                       ) ,
      .C_ARB_ON_TLAST     ( C_ARB_ON_TLAST                                          ) ,
      .C_ARB_ON_MAX_XFERS ( C_ARB_ON_MAX_XFERS                                      ) ,
      .C_ARB_ON_NUM_CYCLES( C_ARB_ON_NUM_CYCLES                                     ) ,
      .C_NUM_SI_SLOTS     ( C_NUM_SI_SLOTS                                          ) ,
      .C_LOG_SI_SLOTS     ( C_LOG_SI_SLOTS                                          ) ,
      .C_OUTPUT_REG       ( C_OUTPUT_REG                                            ) ,
      .C_CONNECTIVITY     ( C_M_AXIS_CONNECTIVITY_ARRAY[mi*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS] ) ,
      .C_SINGLE_SLAVE_CONNECTIVITY ( P_SINGLE_SLAVE_CONNECTIVITY_ARRAY[mi] ) , 
      .C_ROUTING_MODE     ( C_ROUTING_MODE )
    )
    axisc_transfer_mux_0
    (
      .ACLK            ( aclk                                                                               ) ,
      .ACLKEN          ( aclken                                                                             ) ,
      .ARESET          ( areset_r                                                                           ) ,
      .S_AXIS_TVALID   ( mux_tvalid   [mi*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS]                                   ) ,
      .S_AXIS_TREADY   ( mux_tready   [mi*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS]                                   ) ,
      .S_AXIS_TPAYLOAD ( mux_tpayload [mi*C_NUM_SI_SLOTS*P_TPAYLOAD_WIDTH+:C_NUM_SI_SLOTS*P_TPAYLOAD_WIDTH] ) ,
      .M_AXIS_TVALID   ( m_axis_tvalid[mi+:1]                                                               ) ,
      .M_AXIS_TREADY   ( m_axis_tready[mi+:1]                                                               ) ,
      .M_AXIS_TPAYLOAD ( tmo_tpayload [mi*P_TPAYLOAD_WIDTH+:P_TPAYLOAD_WIDTH]                               ) ,
      .ARB_GNT         ( arb_gnt_i    [mi*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS]                                   ) ,
      .ARB_DONE        ( arb_done_i   [mi+:1]                                                               ) ,
      .ARB_SEL         ( arb_sel_i    [mi*C_LOG_SI_SLOTS+:C_LOG_SI_SLOTS]                                   ) ,
      .mi_enable       ( mi_enable    [mi+:1]                                                               ) ,
      .mi_mux          ( mi_mux       [mi*4+:4]                                                               )
    );

    axis_infrastructure_v1_1_0_util_vector2axis #(
      .C_TDATA_WIDTH    ( C_AXIS_TDATA_WIDTH ) ,
      .C_TID_WIDTH      ( C_AXIS_TID_WIDTH   ) ,
      .C_TDEST_WIDTH    ( C_AXIS_TDEST_WIDTH ) ,
      .C_TUSER_WIDTH    ( C_AXIS_TUSER_WIDTH ) ,
      .C_TPAYLOAD_WIDTH ( P_TPAYLOAD_WIDTH   ) ,
      .C_SIGNAL_SET     ( C_AXIS_SIGNAL_SET  ) 
    )
    util_vector2axis_0 (
      .TPAYLOAD ( tmo_tpayload[mi*P_TPAYLOAD_WIDTH+:P_TPAYLOAD_WIDTH]         ) ,
      .TDATA    ( m_axis_tdata[mi*C_AXIS_TDATA_WIDTH+:C_AXIS_TDATA_WIDTH]     ) ,
      .TSTRB    ( m_axis_tstrb[mi*C_AXIS_TDATA_WIDTH/8+:C_AXIS_TDATA_WIDTH/8] ) ,
      .TKEEP    ( m_axis_tkeep[mi*C_AXIS_TDATA_WIDTH/8+:C_AXIS_TDATA_WIDTH/8] ) ,
      .TLAST    ( m_axis_tlast[mi+:1]                                         ) ,
      .TID      ( m_axis_tid  [mi*C_AXIS_TID_WIDTH+:C_AXIS_TID_WIDTH]         ) ,
      .TDEST    ( m_axis_tdest[mi*C_AXIS_TDEST_WIDTH+:C_AXIS_TDEST_WIDTH]     ) ,
      .TUSER    ( m_axis_tuser[mi*C_AXIS_TUSER_WIDTH+:C_AXIS_TUSER_WIDTH]     ) 
    );
  end
  if (C_ROUTING_MODE == 1) begin : gen_no_arbiter
    assign arb_gnt_i = arb_req_i;
    assign arb_sel_i = {C_NUM_MI_SLOTS{1'b0}};
    assign arb_req = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS{1'b0}};
    assign arb_done = {C_NUM_MI_SLOTS{1'b0}};
    assign arb_last = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS{1'b0}};
    assign arb_id   = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TID_WIDTH{1'b0}};
    assign arb_dest   = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TDEST_WIDTH{1'b0}};
    assign arb_user   = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TUSER_WIDTH{1'b0}};
  end
  else if (C_INCLUDE_ARBITER) begin : gen_int_arbiter
    if (C_NUM_SI_SLOTS > 1) begin : gen_arbiter
      axis_switch_v1_1_19_axis_switch_arbiter #(
        .C_FAMILY        ( C_FAMILY            ) ,
        .C_NUM_SI_SLOTS  ( C_NUM_SI_SLOTS      ) ,
        .C_LOG_SI_SLOTS  ( C_LOG_SI_SLOTS      ) ,
        .C_NUM_MI_SLOTS  ( C_NUM_MI_SLOTS      ) ,
        .C_ARB_ALGORITHM ( C_ARB_ALGORITHM     ) ,
        .C_SINGLE_SLAVE_CONNECTIVITY_ARRAY ( P_SINGLE_SLAVE_CONNECTIVITY_ARRAY )
      )
      axis_switch_v1_1_19_axis_switch_arbiter (
        .ACLK     ( aclk       ) ,
        .ARESETN  ( aresetn    ) ,
        .ACLKEN   ( aclken     ) ,
        .ARB_REQ  ( arb_req_i  ) ,
        .ARB_DONE ( arb_done_i ) ,
        .ARB_SEL  ( arb_sel_i  ) ,
        .ARB_GNT  ( arb_gnt_i  ) 
      );
      assign arb_req  = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS{1'b0}};
      assign arb_done = {C_NUM_MI_SLOTS{1'b0}};
      assign arb_last = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS{1'b0}};
      assign arb_id   = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TID_WIDTH{1'b0}};
      assign arb_dest = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TDEST_WIDTH{1'b0}};
      assign arb_user = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TUSER_WIDTH{1'b0}};

    end else begin : gen_all_arb_tieoffs
      assign arb_gnt_i = arb_req_i;
      assign arb_sel_i = {C_NUM_MI_SLOTS{1'b0}};
      assign arb_req = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS{1'b0}};
      assign arb_done = {C_NUM_MI_SLOTS{1'b0}};
      assign arb_last = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS{1'b0}};
      assign arb_id   = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TID_WIDTH{1'b0}};
      assign arb_dest   = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TDEST_WIDTH{1'b0}};
      assign arb_user   = {C_NUM_MI_SLOTS*C_NUM_SI_SLOTS*C_AXIS_TUSER_WIDTH{1'b0}};
    end
  end else begin : gen_ext_arbiter
    assign arb_req   = arb_req_i;
    assign arb_gnt_i = arb_gnt;
    assign arb_sel_i = arb_sel;
    assign arb_done  = arb_done_i;
    assign arb_last  = arb_last_i;
    assign arb_id    = arb_id_i;
    assign arb_dest  = arb_dest_i;
    assign arb_user  = arb_user_i;
  end

  if (C_ROUTING_MODE == 1) begin : gen_static_router
    reg                         s_axi_ctrl_areset;
    wire                        ctrl_req;  
    wire [LP_CTRL_REG_WIDTH-1:0]ctrl_reg;  
    wire                        ctrl_ack;
    wire                        ctrl_soft_reset;

    always @(posedge s_axi_ctrl_aclk) begin 
      s_axi_ctrl_areset <= ~s_axi_ctrl_aresetn;
    end

    if (C_COMMON_CLOCK == 0) begin : gen_synch
      wire [LP_CTRL_REG_WIDTH-1:0] cdc_handshake_data_out;
      wire                         cdc_handshake_data_valid;
      reg [LP_CTRL_REG_WIDTH-1:0] ctrl_reg_synch = {LP_CTRL_REG_WIDTH{1'b0}};

      axis_infrastructure_v1_1_0_clock_synchronizer #(
        .C_NUM_STAGES ( LP_NUM_SYNCHRONIZER_STAGES )
      )
      inst_rst_synch (
        .clk (aclk),
        .synch_in (ctrl_soft_reset),
        .synch_out (soft_reset)
      );

      axis_infrastructure_v1_1_0_cdc_handshake #( 
        .C_NUM_SYNCHRONIZER_STAGES (LP_NUM_SYNCHRONIZER_STAGES),
        .C_WIDTH ( LP_CTRL_REG_WIDTH )
      )
      inst_cdc_handshake (
        .from_clk ( s_axi_ctrl_aclk ) ,
        .req      ( ctrl_req        ) ,
        .ack      ( ctrl_ack        ) ,
        .data_in  ( ctrl_reg        ) ,
        .to_clk   ( aclk            ) ,
        .data_valid( cdc_handshake_data_valid ) ,
        .data_out  ( cdc_handshake_data_out ) 
      );

      always @(posedge aclk) begin 
        if (cdc_handshake_data_valid == 1) begin 
          ctrl_reg_synch <= cdc_handshake_data_out;
        end
        else begin
          ctrl_reg_synch <= ctrl_reg_synch;
        end
      end

      assign mi_mux    = ctrl_reg_synch[0+:4*C_NUM_MI_SLOTS];
      assign mi_enable = ctrl_reg_synch[4*C_NUM_MI_SLOTS+:C_NUM_MI_SLOTS];
      assign si_mux    = ctrl_reg_synch[5*C_NUM_MI_SLOTS+:4*C_NUM_SI_SLOTS];
      assign si_enable = ctrl_reg_synch[5*C_NUM_MI_SLOTS+4*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS];

    end
    else begin : gen_no_synchronizer
      assign ctrl_ack   = ctrl_req;
      assign mi_mux    = ctrl_reg[0+:4*C_NUM_MI_SLOTS];
      assign mi_enable = ctrl_reg[4*C_NUM_MI_SLOTS+:C_NUM_MI_SLOTS];
      assign si_mux    = ctrl_reg[5*C_NUM_MI_SLOTS+:4*C_NUM_SI_SLOTS];
      assign si_enable = ctrl_reg[5*C_NUM_MI_SLOTS+4*C_NUM_SI_SLOTS+:C_NUM_SI_SLOTS];
      assign soft_reset = ctrl_soft_reset;
    end

    axis_switch_v1_1_19_static_router #(
      .C_AXI_ADDR_WIDTH ( C_S_AXI_CTRL_ADDR_WIDTH     ) ,
      .C_AXI_DATA_WIDTH ( C_S_AXI_CTRL_DATA_WIDTH     ) ,
      .C_NUM_MI_SLOTS   ( C_NUM_MI_SLOTS              ) ,
      .C_NUM_SI_SLOTS   ( C_NUM_SI_SLOTS              ) ,
      .C_CONNECTIVITY   ( C_M_AXIS_CONNECTIVITY_ARRAY ) ,
      .C_CTRL_REG_WIDTH ( LP_CTRL_REG_WIDTH           )
    )
    inst_static_router (
      .aclk                  ( s_axi_ctrl_aclk    ) , // I
      .areset                ( s_axi_ctrl_areset  ) , // I
      // AXI4-Lite Interface
      .s_axi_awvalid         ( s_axi_ctrl_awvalid ) , // I
      .s_axi_awready         ( s_axi_ctrl_awready ) , // O
      .s_axi_awaddr          ( s_axi_ctrl_awaddr  ) , // I
      .s_axi_wvalid          ( s_axi_ctrl_wvalid  ) , // I
      .s_axi_wready          ( s_axi_ctrl_wready  ) , // O
      .s_axi_wdata           ( s_axi_ctrl_wdata   ) , // I
      .s_axi_bvalid          ( s_axi_ctrl_bvalid  ) , // O
      .s_axi_bready          ( s_axi_ctrl_bready  ) , // I
      .s_axi_bresp           ( s_axi_ctrl_bresp   ) , // O
      .s_axi_arvalid         ( s_axi_ctrl_arvalid ) , // I
      .s_axi_arready         ( s_axi_ctrl_arready ) , // O
      .s_axi_araddr          ( s_axi_ctrl_araddr  ) , // I
      .s_axi_rvalid          ( s_axi_ctrl_rvalid  ) , // O
      .s_axi_rready          ( s_axi_ctrl_rready  ) , // I
      .s_axi_rdata           ( s_axi_ctrl_rdata   ) , // O
      .s_axi_rresp           ( s_axi_ctrl_rresp   ) , // O
      // Router interface
      .ctrl_req              ( ctrl_req           ) , // O
      .ctrl_ack              ( ctrl_ack           ) , // I
      .ctrl_reg              ( ctrl_reg           ) , // O
      // Soft reset
      .ctrl_soft_reset       ( ctrl_soft_reset    ) 
    );
  end
  else begin : gen_no_static_router
    assign soft_reset = 1'b0;
    assign mi_enable = {C_NUM_SI_SLOTS{1'b0}};
    assign mi_mux    = {C_NUM_MI_SLOTS*4{1'b0}};
    assign si_enable = {C_NUM_SI_SLOTS{1'b0}};
    assign si_mux    = {C_NUM_SI_SLOTS*4{1'b0}};
    assign s_axi_ctrl_awready = 1'b0;
    assign s_axi_ctrl_wready  = 1'b0;
    assign s_axi_ctrl_bvalid  = 1'b0;
    assign s_axi_ctrl_bresp   = 2'b0;
    assign s_axi_ctrl_arready = 1'b0;
    assign s_axi_ctrl_rvalid  = 1'b0;
    assign s_axi_ctrl_rdata   = {C_S_AXI_CTRL_DATA_WIDTH{1'b0}};
    assign s_axi_ctrl_rresp   = 1'b0;
  end

endgenerate

endmodule // axis_switch

`default_nettype wire


