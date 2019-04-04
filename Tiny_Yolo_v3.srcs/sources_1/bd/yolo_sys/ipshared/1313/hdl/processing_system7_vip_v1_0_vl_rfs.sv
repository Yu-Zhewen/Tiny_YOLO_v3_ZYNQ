/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_arb_wr.v
 *
 * Date : 2012-11
 *
 * Description : Module that arbitrates between 2 write requests from 2 ports.
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_arb_wr(
 rstn,
 sw_clk,
 qos1,
 qos2,
 prt_dv1,
 prt_dv2,
 prt_data1,
 prt_data2,
 prt_addr1,
 prt_addr2,
 prt_bytes1,
 prt_bytes2,
 prt_ack1,
 prt_ack2,
 prt_qos,
 prt_req,
 prt_data,
 prt_addr,
 prt_bytes,
 prt_ack

);
`include "processing_system7_vip_v1_0_3_local_params.v"
input rstn, sw_clk;
input [axi_qos_width-1:0] qos1,qos2;
input [max_burst_bits-1:0] prt_data1,prt_data2;
input [addr_width-1:0] prt_addr1,prt_addr2;
input [max_burst_bytes_width:0] prt_bytes1,prt_bytes2;
input prt_dv1, prt_dv2, prt_ack;
output reg prt_ack1,prt_ack2,prt_req;
output reg [max_burst_bits-1:0] prt_data;
output reg [addr_width-1:0] prt_addr;
output reg [max_burst_bytes_width:0] prt_bytes;
output reg [axi_qos_width-1:0] prt_qos;

parameter wait_req = 2'b00, serv_req1 = 2'b01, serv_req2 = 2'b10,wait_ack_low = 2'b11;
reg [1:0] state,temp_state;

always@(posedge sw_clk or negedge rstn)
begin
if(!rstn) begin
 state = wait_req;
 prt_req = 1'b0;
 prt_ack1 = 1'b0;
 prt_ack2 = 1'b0;
 prt_qos = 0;
end else begin
 case(state)
 wait_req:begin  
         state = wait_req;
         prt_ack1 = 1'b0;
         prt_ack2 = 1'b0; 
         prt_req = 1'b0;
         if(prt_dv1 && !prt_dv2) begin
           state = serv_req1;
           prt_req = 1;
           prt_data = prt_data1;
           prt_addr = prt_addr1;
           prt_bytes = prt_bytes1;
           prt_qos = qos1;
         end else if(!prt_dv1 && prt_dv2) begin
           state = serv_req2;
           prt_req = 1;
           prt_qos = qos2;
           prt_data = prt_data2;
           prt_addr = prt_addr2;
           prt_bytes = prt_bytes2;
         end else if(prt_dv1 && prt_dv2) begin
           if(qos1 > qos2) begin
             prt_req = 1;
             prt_qos = qos1;
             prt_data = prt_data1;
             prt_addr = prt_addr1;
             prt_bytes = prt_bytes1;
             state = serv_req1;
           end else if(qos1 < qos2) begin
             prt_req = 1;
             prt_qos = qos2;
             prt_data = prt_data2;
             prt_addr = prt_addr2;
             prt_bytes = prt_bytes2;
             state = serv_req2;
           end else begin
             prt_req = 1;
             prt_qos = qos1;
             prt_data = prt_data1;
             prt_addr = prt_addr1;
             prt_bytes = prt_bytes1;
             state = serv_req1;
           end
         end
       end 
 serv_req1:begin  
         state = serv_req1; 
         prt_ack2 = 1'b0;
         if(prt_ack) begin 
           prt_ack1 = 1'b1;
           prt_req = 0;
           if(prt_dv2) begin
             prt_req = 1;
             prt_qos = qos2;
             prt_data = prt_data2;
             prt_addr = prt_addr2;
             prt_bytes = prt_bytes2;
             state = serv_req2;
           end else begin
         //    state = wait_req;
         state = wait_ack_low;
           end
         end
       end 
 serv_req2:begin
         state = serv_req2; 
         prt_ack1 = 1'b0;
         if(prt_ack) begin 
           prt_ack2 = 1'b1;
           prt_req = 0;
           if(prt_dv1) begin
             prt_req = 1;
             prt_qos = qos1;
             prt_data = prt_data1;
             prt_addr = prt_addr1;
             prt_bytes = prt_bytes1;
             state = serv_req1;
           end else begin
         state = wait_ack_low;
         //    state = wait_req;
           end
         end
       end 
 wait_ack_low:begin
         prt_ack1 = 1'b0;
         prt_ack2 = 1'b0;
         state = wait_ack_low;
         if(!prt_ack)
           state = wait_req;
       end  
 endcase
end /// if else
end /// always
endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_arb_rd.v
 *
 * Date : 2012-11
 *
 * Description : Module that arbitrates between 2 read requests from 2 ports.
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_arb_rd(
 rstn,
 sw_clk,

 qos1,
 qos2,

 prt_req1,
 prt_req2,
 prt_bytes1,
 prt_bytes2,
 prt_addr1,
 prt_addr2,
 prt_data1,
 prt_data2,
 prt_dv1,
 prt_dv2,

 prt_req,
 prt_qos,
 prt_addr,
 prt_bytes,
 prt_data,
 prt_dv

);
`include "processing_system7_vip_v1_0_3_local_params.v"
input rstn, sw_clk;
input [axi_qos_width-1:0] qos1,qos2;
input prt_req1, prt_req2;
input [addr_width-1:0] prt_addr1, prt_addr2;
input [max_burst_bytes_width:0] prt_bytes1, prt_bytes2;
output reg prt_dv1, prt_dv2;
output reg [max_burst_bits-1:0] prt_data1,prt_data2;

output reg prt_req;
output reg [axi_qos_width-1:0] prt_qos;
output reg [addr_width-1:0] prt_addr;
output reg [max_burst_bytes_width:0] prt_bytes;
input [max_burst_bits-1:0] prt_data;
input prt_dv;

parameter wait_req = 2'b00, serv_req1 = 2'b01, serv_req2 = 2'b10,wait_dv_low = 2'b11;
reg [1:0] state;

always@(posedge sw_clk or negedge rstn)
begin
if(!rstn) begin
 state = wait_req;
 prt_req = 1'b0;
 prt_dv1 = 1'b0;
 prt_dv2 = 1'b0;
 prt_qos = 0;
end else begin
 case(state)
 wait_req:begin  
         state = wait_req;
         prt_dv1 = 1'b0;
         prt_dv2 = 1'b0;
         prt_req = 0;
         if(prt_req1 && !prt_req2) begin
           state = serv_req1;
           prt_req = 1;
           prt_qos = qos1;
           prt_addr = prt_addr1;
           prt_bytes = prt_bytes1;
         end else if(!prt_req1 && prt_req2) begin
           state = serv_req2;
           prt_req = 1;
           prt_qos = qos2;
           prt_addr = prt_addr2;
           prt_bytes = prt_bytes2;
         end else if(prt_req1 && prt_req2) begin
           if(qos1 > qos2) begin
             prt_req = 1;
             prt_qos = qos1;
             prt_addr = prt_addr1;
             prt_bytes = prt_bytes1;
             state = serv_req1;
           end else if(qos1 < qos2) begin
             prt_req = 1;
             prt_addr = prt_addr2;
             prt_qos = qos2;
             prt_bytes = prt_bytes2;
             state = serv_req2;
           end else begin
             prt_req = 1;
             prt_qos = qos1;
             prt_addr = prt_addr1;
             prt_bytes = prt_bytes1;
             state = serv_req1;
           end
         end
       end 
 serv_req1:begin  
         state = serv_req1; 
         prt_dv2 = 1'b0;
         if(prt_dv) begin 
           prt_dv1 = 1'b1;
           prt_data1 = prt_data;
           prt_req = 0;
           if(prt_req2) begin
             prt_req = 1;
             prt_qos = qos2;
             prt_addr = prt_addr2;
             prt_bytes = prt_bytes2;
             state = serv_req2;
           end else begin
             state = wait_dv_low;
             //state = wait_req;
           end
         end
       end 
 serv_req2:begin
         state = serv_req2; 
         prt_dv1 = 1'b0;
         if(prt_dv) begin 
           prt_dv2 = 1'b1;
           prt_data2 = prt_data;
           prt_req = 0;
           if(prt_req1) begin
             prt_req = 1;
             prt_qos = qos1;
             prt_addr = prt_addr1;
             prt_bytes = prt_bytes1;
             state = serv_req1;
           end else begin
             state = wait_dv_low;
             //state = wait_req;
           end
         end
       end 

 wait_dv_low:begin
         prt_dv1 = 1'b0;
         prt_dv2 = 1'b0;
         state = wait_dv_low;
         if(!prt_dv)
           state = wait_req;
       end  
 endcase
end /// if else
end /// always
endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_arb_wr_4.v
 *
 * Date : 2012-11
 *
 * Description : Module that arbitrates between 4 write requests from 4 ports.
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_arb_wr_4(
 rstn,
 sw_clk,

 qos1,
 qos2,
 qos3,
 qos4,

 prt_dv1,
 prt_dv2,
 prt_dv3,
 prt_dv4,

 prt_data1,
 prt_data2,
 prt_data3,
 prt_data4,

 prt_addr1,
 prt_addr2,
 prt_addr3,
 prt_addr4,

 prt_bytes1,
 prt_bytes2,
 prt_bytes3,
 prt_bytes4,

 prt_ack1,
 prt_ack2,
 prt_ack3,
 prt_ack4,

 prt_qos,
 prt_req,
 prt_data,
 prt_addr,
 prt_bytes,
 prt_ack

);
`include "processing_system7_vip_v1_0_3_local_params.v"
input rstn, sw_clk;
input [axi_qos_width-1:0] qos1,qos2,qos3,qos4;
input [max_burst_bits-1:0] prt_data1,prt_data2,prt_data3,prt_data4;
input [addr_width-1:0] prt_addr1,prt_addr2,prt_addr3,prt_addr4;
input [max_burst_bytes_width:0] prt_bytes1,prt_bytes2,prt_bytes3,prt_bytes4;
input prt_dv1, prt_dv2,prt_dv3, prt_dv4, prt_ack;
output reg prt_ack1,prt_ack2,prt_ack3,prt_ack4,prt_req;
output reg [max_burst_bits-1:0] prt_data;
output reg [addr_width-1:0] prt_addr;
output reg [max_burst_bytes_width:0] prt_bytes;
output reg [axi_qos_width-1:0] prt_qos;
parameter wait_req = 3'b000, serv_req1 = 3'b001, serv_req2 = 3'b010, serv_req3 = 3'b011, serv_req4 = 4'b100,wait_ack_low = 3'b101;
reg [2:0] state;

always@(posedge sw_clk or negedge rstn)
begin
if(!rstn) begin
 state = wait_req;
 prt_req = 1'b0;
 prt_ack1 = 1'b0;
 prt_ack2 = 1'b0;
 prt_ack3 = 1'b0;
 prt_ack4 = 1'b0;
 prt_qos = 0;
end else begin
 case(state)
 wait_req:begin  
         state = wait_req;
         prt_ack1 = 1'b0;
         prt_ack2 = 1'b0;
         prt_ack3 = 1'b0;
         prt_ack4 = 1'b0;
         prt_req = 0;
         if(prt_dv1) begin
           state = serv_req1;
           prt_req = 1;
           prt_qos = qos1;
           prt_data = prt_data1;
           prt_addr = prt_addr1;
           prt_bytes = prt_bytes1;
         end else if(prt_dv2) begin
           state = serv_req2;
           prt_req = 1;
           prt_qos = qos2;
           prt_data = prt_data2;
           prt_addr = prt_addr2;
           prt_bytes = prt_bytes2;
         end else if(prt_dv3) begin
           state = serv_req3;
           prt_req = 1;
           prt_qos = qos3;
           prt_data = prt_data3;
           prt_addr = prt_addr3;
           prt_bytes = prt_bytes3;
         end else if(prt_dv4) begin
           prt_req = 1;
           prt_qos = qos4;
           prt_data = prt_data4;
           prt_addr = prt_addr4;
           prt_bytes = prt_bytes4;
           state = serv_req4;
         end
       end 
 serv_req1:begin  
         state = serv_req1;
         prt_ack2 = 1'b0;
         prt_ack3 = 1'b0;
         prt_ack4 = 1'b0;
       if(prt_ack)begin 
           prt_ack1 = 1'b1;
           //state = wait_req;
           state = wait_ack_low;
           prt_req = 0;
         if(prt_dv2) begin
           state = serv_req2;
           prt_qos = qos2;
           prt_req = 1;
           prt_data = prt_data2;
           prt_addr = prt_addr2;
           prt_bytes = prt_bytes2;
         end else if(prt_dv3) begin
           state = serv_req3;
           prt_req = 1;
           prt_qos = qos3;
           prt_data = prt_data3;
           prt_addr = prt_addr3;
           prt_bytes = prt_bytes3;
         end else if(prt_dv4) begin
           prt_req = 1;
           prt_qos = qos4;
           prt_data = prt_data4;
           prt_addr = prt_addr4;
           prt_bytes = prt_bytes4;
           state = serv_req4;
         end
       end 
       end
 serv_req2:begin  
         state = serv_req2;
         prt_ack1 = 1'b0;
         prt_ack3 = 1'b0;
         prt_ack4 = 1'b0;
       if(prt_ack)begin 
           prt_ack2 = 1'b1;
           //state = wait_req;
           state = wait_ack_low;
           prt_req = 0;
         if(prt_dv3) begin
           state = serv_req3;
           prt_qos = qos3;
           prt_req = 1;
           prt_data = prt_data3;
           prt_addr = prt_addr3;
           prt_bytes = prt_bytes3;
         end else if(prt_dv4) begin
           state = serv_req4;
           prt_req = 1;
           prt_qos = qos4;
           prt_data = prt_data4;
           prt_addr = prt_addr4;
           prt_bytes = prt_bytes4;
         end else if(prt_dv1) begin
           prt_req = 1;
           prt_qos = qos1;
           prt_data = prt_data1;
           prt_addr = prt_addr1;
           prt_bytes = prt_bytes1;
           state = serv_req1;
         end
       end
       end 
 serv_req3:begin  
         state = serv_req3;
         prt_ack1 = 1'b0;
         prt_ack2 = 1'b0;
         prt_ack4 = 1'b0;
       if(prt_ack)begin 
           prt_ack3 = 1'b1;
//           state = wait_req;
           state = wait_ack_low;
           prt_req = 0;
         if(prt_dv4) begin
           state = serv_req4;
           prt_qos = qos4;
           prt_req = 1;
           prt_data = prt_data4;
           prt_addr = prt_addr4;
           prt_bytes = prt_bytes4;
         end else if(prt_dv1) begin
           state = serv_req1;
           prt_req = 1;
           prt_qos = qos1;
           prt_data = prt_data1;
           prt_addr = prt_addr1;
           prt_bytes = prt_bytes1;
         end else if(prt_dv2) begin
           prt_req = 1;
           prt_qos = qos2;
           prt_data = prt_data2;
           prt_addr = prt_addr2;
           prt_bytes = prt_bytes2;
           state = serv_req2;
         end
       end
       end 
 serv_req4:begin  
         state = serv_req4;
         prt_ack1 = 1'b0;
         prt_ack2 = 1'b0;
         prt_ack3 = 1'b0;
       if(prt_ack)begin 
           prt_ack4 = 1'b1;
           //state = wait_req;
           state = wait_ack_low;
           prt_req = 0;
         if(prt_dv1) begin
           state = serv_req1;
           prt_req = 1;
           prt_qos = qos1;
           prt_data = prt_data1;
           prt_addr = prt_addr1;
           prt_bytes = prt_bytes1;
         end else if(prt_dv2) begin
           state = serv_req2;
           prt_req = 1;
           prt_qos = qos2;
           prt_data = prt_data2;
           prt_addr = prt_addr2;
           prt_bytes = prt_bytes2;
         end else if(prt_dv3) begin
           prt_req = 1;
           prt_qos = qos3;
           prt_data = prt_data3;
           prt_addr = prt_addr3;
           prt_bytes = prt_bytes3;
           state = serv_req3;
         end
       end
       end 
 wait_ack_low:begin
         state = wait_ack_low;
         prt_ack1 = 1'b0;
         prt_ack2 = 1'b0;
         prt_ack3 = 1'b0;
         prt_ack4 = 1'b0;
         if(!prt_ack)
           state = wait_req;
       end  
 endcase
end /// if else
end /// always
endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_arb_rd_4.v
 *
 * Date : 2012-11
 *
 * Description : Module that arbitrates between 4 read requests from 4 ports.
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_arb_rd_4(
 rstn,
 sw_clk,

 qos1,
 qos2,
 qos3,
 qos4,

 prt_req1,
 prt_req2,
 prt_req3,
 prt_req4,

 prt_data1,
 prt_data2,
 prt_data3,
 prt_data4,

 prt_addr1,
 prt_addr2,
 prt_addr3,
 prt_addr4,

 prt_bytes1,
 prt_bytes2,
 prt_bytes3,
 prt_bytes4,

 prt_dv1,
 prt_dv2,
 prt_dv3,
 prt_dv4,

 prt_qos,
 prt_req,
 prt_data,
 prt_addr,
 prt_bytes,
 prt_dv

);
`include "processing_system7_vip_v1_0_3_local_params.v"
input rstn, sw_clk;
input [axi_qos_width-1:0] qos1,qos2,qos3,qos4;
input prt_req1, prt_req2,prt_req3, prt_req4, prt_dv;
output reg [max_burst_bits-1:0] prt_data1,prt_data2,prt_data3,prt_data4;
input [addr_width-1:0] prt_addr1,prt_addr2,prt_addr3,prt_addr4;
input [max_burst_bytes_width:0] prt_bytes1,prt_bytes2,prt_bytes3,prt_bytes4;
output reg prt_dv1,prt_dv2,prt_dv3,prt_dv4,prt_req;
input [max_burst_bits-1:0] prt_data;
output reg [addr_width-1:0] prt_addr;
output reg [max_burst_bytes_width:0] prt_bytes;
output reg [axi_qos_width-1:0] prt_qos;

parameter wait_req = 3'b000, serv_req1 = 3'b001, serv_req2 = 3'b010, serv_req3 = 3'b011, serv_req4 = 3'b100, wait_dv_low=3'b101;
reg [2:0] state;

always@(posedge sw_clk or negedge rstn)
begin
if(!rstn) begin
 state = wait_req;
 prt_req = 1'b0;
 prt_dv1 = 1'b0;
 prt_dv2 = 1'b0;
 prt_dv3 = 1'b0;
 prt_dv4 = 1'b0;
 prt_qos =    0;
end else begin
 case(state)
 wait_req:begin  
         state = wait_req;
         prt_dv1 = 1'b0;
         prt_dv2 = 1'b0;
         prt_dv3 = 1'b0;
         prt_dv4 = 1'b0;
         prt_req = 1'b0;
         if(prt_req1) begin
           state = serv_req1;
           prt_req = 1;
           prt_qos = qos1;
           prt_addr = prt_addr1;
           prt_bytes = prt_bytes1;
         end else if(prt_req2) begin
           state = serv_req2;
           prt_req = 1;
           prt_qos = qos2;
           prt_addr = prt_addr2;
           prt_bytes = prt_bytes2;
         end else if(prt_req3) begin
           state = serv_req3;
           prt_req = 1;
           prt_qos = qos3;
           prt_addr = prt_addr3;
           prt_bytes = prt_bytes3;
         end else if(prt_req4) begin
           prt_req = 1;
           prt_addr = prt_addr4;
           prt_qos = qos4;
           prt_bytes = prt_bytes4;
           state = serv_req4;
         end
       end 
 serv_req1:begin  
         state = serv_req1;
         prt_dv2 = 1'b0;
         prt_dv3 = 1'b0;
         prt_dv4 = 1'b0;
       if(prt_dv)begin 
           prt_dv1 = 1'b1;
           prt_data1 = prt_data;
           //state = wait_req;
           state = wait_dv_low;
           prt_req = 1'b0;
         if(prt_req2) begin
           state = serv_req2;
           prt_qos = qos2;
           prt_req = 1;
           prt_addr = prt_addr2;
           prt_bytes = prt_bytes2;
         end else if(prt_req3) begin
           state = serv_req3;
           prt_qos = qos3;
           prt_req = 1;
           prt_addr = prt_addr3;
           prt_bytes = prt_bytes3;
         end else if(prt_req4) begin
           prt_req = 1;
           prt_qos = qos4;
           prt_addr = prt_addr4;
           prt_bytes = prt_bytes4;
           state = serv_req4;
         end
       end 
       end
 serv_req2:begin  
         state = serv_req2;
         prt_dv1 = 1'b0;
         prt_dv3 = 1'b0;
         prt_dv4 = 1'b0;
       if(prt_dv)begin 
           prt_dv2 = 1'b1;
           prt_data2 = prt_data;
           //state = wait_req;
           state = wait_dv_low;
           prt_req = 1'b0;
         if(prt_req3) begin
           state = serv_req3;
           prt_req = 1;
           prt_qos = qos3;
           prt_addr = prt_addr3;
           prt_bytes = prt_bytes3;
         end else if(prt_req4) begin
           state = serv_req4;
           prt_req = 1;
           prt_qos = qos4;
           prt_addr = prt_addr4;
           prt_bytes = prt_bytes4;
         end else if(prt_req1) begin
           prt_req = 1;
           prt_addr = prt_addr1;
           prt_qos = qos1;
           prt_bytes = prt_bytes1;
           state = serv_req1;
         end
       end
       end 
 serv_req3:begin  
         state = serv_req3;
         prt_dv1 = 1'b0;
         prt_dv2 = 1'b0;
         prt_dv4 = 1'b0;
       if(prt_dv)begin 
           prt_dv3 = 1'b1;
           prt_data3 = prt_data;
           //state = wait_req;
           state = wait_dv_low;
           prt_req = 1'b0;
         if(prt_req4) begin
           state = serv_req4;
           prt_qos = qos4;
           prt_req = 1;
           prt_addr = prt_addr4;
           prt_bytes = prt_bytes4;
         end else if(prt_req1) begin
           state = serv_req1;
           prt_req = 1;
           prt_qos = qos1;
           prt_addr = prt_addr1;
           prt_bytes = prt_bytes1;
         end else if(prt_req2) begin
           prt_req = 1;
           prt_qos = qos2;
           prt_addr = prt_addr2;
           prt_bytes = prt_bytes2;
           state = serv_req2;
         end
       end
       end 
 serv_req4:begin  
         state = serv_req4;
         prt_dv1 = 1'b0;
         prt_dv2 = 1'b0;
         prt_dv3 = 1'b0;
       if(prt_dv)begin 
           prt_dv4 = 1'b1;
           prt_data4 = prt_data;
           //state = wait_req;
           state = wait_dv_low;
           prt_req = 1'b0;
         if(prt_req1) begin
           state = serv_req1;
           prt_qos = qos1;
           prt_req = 1;
           prt_addr = prt_addr1;
           prt_bytes = prt_bytes1;
         end else if(prt_req2) begin
           state = serv_req2;
           prt_req = 1;
           prt_qos = qos2;
           prt_addr = prt_addr2;
           prt_bytes = prt_bytes2;
         end else if(prt_req3) begin
           prt_req = 1;
           prt_addr = prt_addr3;
           prt_qos = qos3;
           prt_bytes = prt_bytes3;
           state = serv_req3;
         end
       end
       end 
 wait_dv_low:begin
         state = wait_dv_low;
         prt_dv1 = 1'b0;
         prt_dv2 = 1'b0;
         prt_dv3 = 1'b0;
         prt_dv4 = 1'b0;
         if(!prt_dv)
           state = wait_req;
       end  
 endcase
end /// if else
end /// always
endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_arb_hp2_3.v
 *
 * Date : 2012-11
 *
 * Description : Module that arbitrates between RD/WR requests from 2 ports.
 *               Used for modelling the Top_Interconnect switch.
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_arb_hp2_3(
 sw_clk,
 rstn,
 w_qos_hp2,
 r_qos_hp2,
 w_qos_hp3,
 r_qos_hp3,

 wr_ack_ddr_hp2,
 wr_data_hp2,
 wr_addr_hp2,
 wr_bytes_hp2,
 wr_dv_ddr_hp2,
 rd_req_ddr_hp2,
 rd_addr_hp2,
 rd_bytes_hp2,
 rd_data_ddr_hp2,
 rd_dv_ddr_hp2,

 wr_ack_ddr_hp3,
 wr_data_hp3,
 wr_addr_hp3,
 wr_bytes_hp3,
 wr_dv_ddr_hp3,
 rd_req_ddr_hp3,
 rd_addr_hp3,
 rd_bytes_hp3,
 rd_data_ddr_hp3,
 rd_dv_ddr_hp3,

 ddr_wr_ack,
 ddr_wr_dv,
 ddr_rd_req,
 ddr_rd_dv,
 ddr_rd_qos,
 ddr_wr_qos,
 
 ddr_wr_addr,
 ddr_wr_data,
 ddr_wr_bytes,
 ddr_rd_addr,
 ddr_rd_data,
 ddr_rd_bytes

);
`include "processing_system7_vip_v1_0_3_local_params.v"
input sw_clk;
input rstn;
input [axi_qos_width-1:0] w_qos_hp2;
input [axi_qos_width-1:0] r_qos_hp2;
input [axi_qos_width-1:0] w_qos_hp3;
input [axi_qos_width-1:0] r_qos_hp3;
input [axi_qos_width-1:0] ddr_rd_qos;
input [axi_qos_width-1:0] ddr_wr_qos;

output wr_ack_ddr_hp2;
input [max_burst_bits-1:0] wr_data_hp2;
input [addr_width-1:0] wr_addr_hp2;
input [max_burst_bytes_width:0] wr_bytes_hp2;
output wr_dv_ddr_hp2;

input rd_req_ddr_hp2;
input [addr_width-1:0] rd_addr_hp2;
input [max_burst_bytes_width:0] rd_bytes_hp2;
output [max_burst_bits-1:0] rd_data_ddr_hp2;
output rd_dv_ddr_hp2;
 
output wr_ack_ddr_hp3;
input [max_burst_bits-1:0] wr_data_hp3;
input [addr_width-1:0] wr_addr_hp3;
input [max_burst_bytes_width:0] wr_bytes_hp3;
output wr_dv_ddr_hp3;

input rd_req_ddr_hp3;
input [addr_width-1:0] rd_addr_hp3;
input [max_burst_bytes_width:0] rd_bytes_hp3;
output [max_burst_bits-1:0] rd_data_ddr_hp3;
output rd_dv_ddr_hp3;
 
input ddr_wr_ack;
output ddr_wr_dv;
output [addr_width-1:0]ddr_wr_addr;
output [max_burst_bits-1:0]ddr_wr_data;
output [max_burst_bytes_width:0]ddr_wr_bytes;

input ddr_rd_dv;
input [max_burst_bits-1:0] ddr_rd_data;
output ddr_rd_req;
output [addr_width-1:0] ddr_rd_addr;
output [max_burst_bytes_width:0] ddr_rd_bytes;




processing_system7_vip_v1_0_3_arb_wr ddr_hp_wr(
 .rstn(rstn),
 .sw_clk(sw_clk),
 .qos1(w_qos_hp2),
 .qos2(w_qos_hp3),
 .prt_dv1(wr_dv_ddr_hp2),
 .prt_dv2(wr_dv_ddr_hp3),
 .prt_data1(wr_data_hp2),
 .prt_data2(wr_data_hp3),
 .prt_addr1(wr_addr_hp2),
 .prt_addr2(wr_addr_hp3),
 .prt_bytes1(wr_bytes_hp2),
 .prt_bytes2(wr_bytes_hp3),
 .prt_ack1(wr_ack_ddr_hp2),
 .prt_ack2(wr_ack_ddr_hp3),
 .prt_req(ddr_wr_dv),
 .prt_qos(ddr_wr_qos),
 .prt_data(ddr_wr_data),
 .prt_addr(ddr_wr_addr),
 .prt_bytes(ddr_wr_bytes),
 .prt_ack(ddr_wr_ack)
);

processing_system7_vip_v1_0_3_arb_rd ddr_hp_rd(
 .rstn(rstn),
 .sw_clk(sw_clk),
 .qos1(r_qos_hp2),
 .qos2(r_qos_hp3),
 .prt_req1(rd_req_ddr_hp2),
 .prt_req2(rd_req_ddr_hp3),
 .prt_data1(rd_data_ddr_hp2),
 .prt_data2(rd_data_ddr_hp3),
 .prt_addr1(rd_addr_hp2),
 .prt_addr2(rd_addr_hp3),
 .prt_bytes1(rd_bytes_hp2),
 .prt_bytes2(rd_bytes_hp3),
 .prt_dv1(rd_dv_ddr_hp2),
 .prt_dv2(rd_dv_ddr_hp3),
 .prt_req(ddr_rd_req),
 .prt_qos(ddr_rd_qos),
 .prt_data(ddr_rd_data),
 .prt_addr(ddr_rd_addr),
 .prt_bytes(ddr_rd_bytes),
 .prt_dv(ddr_rd_dv)
);

endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_arb_hp0_1.v
 *
 * Date : 2012-11
 *
 * Description : Module that arbitrates between RD/WR requests from 2 ports.
 *               Used for modelling the Top_Interconnect switch.
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_arb_hp0_1(
 sw_clk,
 rstn,
 w_qos_hp0,
 r_qos_hp0,
 w_qos_hp1,
 r_qos_hp1,

 wr_ack_ddr_hp0,
 wr_data_hp0,
 wr_addr_hp0,
 wr_bytes_hp0,
 wr_dv_ddr_hp0,
 rd_req_ddr_hp0,
 rd_addr_hp0,
 rd_bytes_hp0,
 rd_data_ddr_hp0,
 rd_dv_ddr_hp0,

 wr_ack_ddr_hp1,
 wr_data_hp1,
 wr_addr_hp1,
 wr_bytes_hp1,
 wr_dv_ddr_hp1,
 rd_req_ddr_hp1,
 rd_addr_hp1,
 rd_bytes_hp1,
 rd_data_ddr_hp1,
 rd_dv_ddr_hp1,

 ddr_wr_ack,
 ddr_wr_dv,
 ddr_rd_req,
 ddr_rd_dv,
 ddr_rd_qos,
 ddr_wr_qos,
 
 ddr_wr_addr,
 ddr_wr_data,
 ddr_wr_bytes,
 ddr_rd_addr,
 ddr_rd_data,
 ddr_rd_bytes

);
`include "processing_system7_vip_v1_0_3_local_params.v"
input sw_clk;
input rstn;
input [axi_qos_width-1:0] w_qos_hp0;
input [axi_qos_width-1:0] r_qos_hp0;
input [axi_qos_width-1:0] w_qos_hp1;
input [axi_qos_width-1:0] r_qos_hp1;
input [axi_qos_width-1:0] ddr_rd_qos;
input [axi_qos_width-1:0] ddr_wr_qos;

output wr_ack_ddr_hp0;
input [max_burst_bits-1:0] wr_data_hp0;
input [addr_width-1:0] wr_addr_hp0;
input [max_burst_bytes_width:0] wr_bytes_hp0;
output wr_dv_ddr_hp0;

input rd_req_ddr_hp0;
input [addr_width-1:0] rd_addr_hp0;
input [max_burst_bytes_width:0] rd_bytes_hp0;
output [max_burst_bits-1:0] rd_data_ddr_hp0;
output rd_dv_ddr_hp0;
 
output wr_ack_ddr_hp1;
input [max_burst_bits-1:0] wr_data_hp1;
input [addr_width-1:0] wr_addr_hp1;
input [max_burst_bytes_width:0] wr_bytes_hp1;
output wr_dv_ddr_hp1;

input rd_req_ddr_hp1;
input [addr_width-1:0] rd_addr_hp1;
input [max_burst_bytes_width:0] rd_bytes_hp1;
output [max_burst_bits-1:0] rd_data_ddr_hp1;
output rd_dv_ddr_hp1;
 
input ddr_wr_ack;
output ddr_wr_dv;
output [addr_width-1:0]ddr_wr_addr;
output [max_burst_bits-1:0]ddr_wr_data;
output [max_burst_bytes_width:0]ddr_wr_bytes;

input ddr_rd_dv;
input [max_burst_bits-1:0] ddr_rd_data;
output ddr_rd_req;
output [addr_width-1:0] ddr_rd_addr;
output [max_burst_bytes_width:0] ddr_rd_bytes;




processing_system7_vip_v1_0_3_arb_wr ddr_hp_wr(
 .rstn(rstn),
 .sw_clk(sw_clk),
 .qos1(w_qos_hp0),
 .qos2(w_qos_hp1),
 .prt_dv1(wr_dv_ddr_hp0),
 .prt_dv2(wr_dv_ddr_hp1),
 .prt_data1(wr_data_hp0),
 .prt_data2(wr_data_hp1),
 .prt_addr1(wr_addr_hp0),
 .prt_addr2(wr_addr_hp1),
 .prt_bytes1(wr_bytes_hp0),
 .prt_bytes2(wr_bytes_hp1),
 .prt_ack1(wr_ack_ddr_hp0),
 .prt_ack2(wr_ack_ddr_hp1),
 .prt_req(ddr_wr_dv),
 .prt_qos(ddr_wr_qos),
 .prt_data(ddr_wr_data),
 .prt_addr(ddr_wr_addr),
 .prt_bytes(ddr_wr_bytes),
 .prt_ack(ddr_wr_ack)
);

processing_system7_vip_v1_0_3_arb_rd ddr_hp_rd(
 .rstn(rstn),
 .sw_clk(sw_clk),
 .qos1(r_qos_hp0),
 .qos2(r_qos_hp1),
 .prt_req1(rd_req_ddr_hp0),
 .prt_req2(rd_req_ddr_hp1),
 .prt_data1(rd_data_ddr_hp0),
 .prt_data2(rd_data_ddr_hp1),
 .prt_addr1(rd_addr_hp0),
 .prt_addr2(rd_addr_hp1),
 .prt_bytes1(rd_bytes_hp0),
 .prt_bytes2(rd_bytes_hp1),
 .prt_dv1(rd_dv_ddr_hp0),
 .prt_dv2(rd_dv_ddr_hp1),
 .prt_qos(ddr_rd_qos),
 .prt_req(ddr_rd_req),
 .prt_data(ddr_rd_data),
 .prt_addr(ddr_rd_addr),
 .prt_bytes(ddr_rd_bytes),
 .prt_dv(ddr_rd_dv)
);

endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_ssw_hp.v
 *
 * Date : 2012-11
 *
 * Description : SSW switch Model
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_ssw_hp(
 sw_clk,
 rstn,
 w_qos_hp0,
 r_qos_hp0,
 w_qos_hp1,
 r_qos_hp1,
 w_qos_hp2,
 r_qos_hp2,
 w_qos_hp3,
 r_qos_hp3,

 wr_ack_ddr_hp0,
 wr_data_hp0,
 wr_addr_hp0,
 wr_bytes_hp0,
 wr_dv_ddr_hp0,
 rd_req_ddr_hp0,
 rd_addr_hp0,
 rd_bytes_hp0,
 rd_data_ddr_hp0,
 rd_dv_ddr_hp0,

 rd_data_ocm_hp0,
 wr_ack_ocm_hp0,
 wr_dv_ocm_hp0,
 rd_req_ocm_hp0,
 rd_dv_ocm_hp0,

 wr_ack_ddr_hp1,
 wr_data_hp1,
 wr_addr_hp1,
 wr_bytes_hp1,
 wr_dv_ddr_hp1,
 rd_req_ddr_hp1,
 rd_addr_hp1,
 rd_bytes_hp1,
 rd_data_ddr_hp1,
 rd_data_ocm_hp1,
 rd_dv_ddr_hp1,

 wr_ack_ocm_hp1,
 wr_dv_ocm_hp1,
 rd_req_ocm_hp1,
 rd_dv_ocm_hp1,

 wr_ack_ddr_hp2,
 wr_data_hp2,
 wr_addr_hp2,
 wr_bytes_hp2,
 wr_dv_ddr_hp2,
 rd_req_ddr_hp2,
 rd_addr_hp2,
 rd_bytes_hp2,
 rd_data_ddr_hp2,
 rd_data_ocm_hp2,
 rd_dv_ddr_hp2,

 wr_ack_ocm_hp2,
 wr_dv_ocm_hp2,
 rd_req_ocm_hp2,
 rd_dv_ocm_hp2,

 wr_ack_ddr_hp3,
 wr_data_hp3,
 wr_addr_hp3,
 wr_bytes_hp3,
 wr_dv_ddr_hp3,
 rd_req_ddr_hp3,
 rd_addr_hp3,
 rd_bytes_hp3,
 rd_data_ocm_hp3,
 rd_data_ddr_hp3,
 rd_dv_ddr_hp3,

 wr_ack_ocm_hp3,
 wr_dv_ocm_hp3,
 rd_req_ocm_hp3,
 rd_dv_ocm_hp3,

 ddr_wr_ack0,
 ddr_wr_dv0,
 ddr_rd_req0,
 ddr_rd_dv0,
 ddr_rd_qos0,
 ddr_wr_qos0,

 ddr_wr_addr0,
 ddr_wr_data0,
 ddr_wr_bytes0,
 ddr_rd_addr0,
 ddr_rd_data0,
 ddr_rd_bytes0,

 ddr_wr_ack1,
 ddr_wr_dv1,
 ddr_rd_req1,
 ddr_rd_dv1,
 ddr_rd_qos1,
 ddr_wr_qos1,
 ddr_wr_addr1,
 ddr_wr_data1,
 ddr_wr_bytes1,
 ddr_rd_addr1,
 ddr_rd_data1,
 ddr_rd_bytes1,

 ocm_wr_ack,
 ocm_wr_dv,
 ocm_rd_req,
 ocm_rd_dv,

 ocm_wr_qos,
 ocm_rd_qos, 
 ocm_wr_addr,
 ocm_wr_data,
 ocm_wr_bytes,
 ocm_rd_addr,
 ocm_rd_data,
 ocm_rd_bytes
 


);

input sw_clk;
input rstn;
input [3:0] w_qos_hp0;
input [3:0] r_qos_hp0;
input [3:0] w_qos_hp1;
input [3:0] r_qos_hp1;
input [3:0] w_qos_hp2;
input [3:0] r_qos_hp2;
input [3:0] w_qos_hp3;
input [3:0] r_qos_hp3;

output [3:0] ddr_rd_qos0;
output [3:0] ddr_wr_qos0;
output [3:0] ddr_rd_qos1;
output [3:0] ddr_wr_qos1;
output [3:0] ocm_wr_qos;
output [3:0] ocm_rd_qos; 

output wr_ack_ddr_hp0;
input [1023:0] wr_data_hp0;
input [31:0] wr_addr_hp0;
input [7:0] wr_bytes_hp0;
output wr_dv_ddr_hp0;

input rd_req_ddr_hp0;
input [31:0] rd_addr_hp0;
input [7:0] rd_bytes_hp0;
output [1023:0] rd_data_ddr_hp0;
output rd_dv_ddr_hp0;
 
output wr_ack_ddr_hp1;
input [1023:0] wr_data_hp1;
input [31:0] wr_addr_hp1;
input [7:0] wr_bytes_hp1;
output wr_dv_ddr_hp1;

input rd_req_ddr_hp1;
input [31:0] rd_addr_hp1;
input [7:0] rd_bytes_hp1;
output [1023:0] rd_data_ddr_hp1;
output rd_dv_ddr_hp1;

output wr_ack_ddr_hp2;
input [1023:0] wr_data_hp2;
input [31:0] wr_addr_hp2;
input [7:0] wr_bytes_hp2;
output wr_dv_ddr_hp2;

input rd_req_ddr_hp2;
input [31:0] rd_addr_hp2;
input [7:0] rd_bytes_hp2;
output [1023:0] rd_data_ddr_hp2;
output rd_dv_ddr_hp2;
 
output wr_ack_ddr_hp3;
input [1023:0] wr_data_hp3;
input [31:0] wr_addr_hp3;
input [7:0] wr_bytes_hp3;
output wr_dv_ddr_hp3;

input rd_req_ddr_hp3;
input [31:0] rd_addr_hp3;
input [7:0] rd_bytes_hp3;
output [1023:0] rd_data_ddr_hp3;
output rd_dv_ddr_hp3;

input ddr_wr_ack0;
output ddr_wr_dv0;
output [31:0]ddr_wr_addr0;
output [1023:0]ddr_wr_data0;
output [7:0]ddr_wr_bytes0;

input ddr_rd_dv0;
input [1023:0] ddr_rd_data0;
output ddr_rd_req0;
output [31:0] ddr_rd_addr0;
output [7:0] ddr_rd_bytes0;

input ddr_wr_ack1;
output ddr_wr_dv1;
output [31:0]ddr_wr_addr1;
output [1023:0]ddr_wr_data1;
output [7:0]ddr_wr_bytes1;

input ddr_rd_dv1;
input [1023:0] ddr_rd_data1;
output ddr_rd_req1;
output [31:0] ddr_rd_addr1;
output [7:0] ddr_rd_bytes1;

output wr_ack_ocm_hp0;
input wr_dv_ocm_hp0;
input rd_req_ocm_hp0;
output rd_dv_ocm_hp0;
output [1023:0] rd_data_ocm_hp0;

output wr_ack_ocm_hp1;
input wr_dv_ocm_hp1;
input rd_req_ocm_hp1;
output rd_dv_ocm_hp1;
output [1023:0] rd_data_ocm_hp1;

output wr_ack_ocm_hp2;
input wr_dv_ocm_hp2;
input rd_req_ocm_hp2;
output rd_dv_ocm_hp2;
output [1023:0] rd_data_ocm_hp2;

output wr_ack_ocm_hp3;
input wr_dv_ocm_hp3;
input rd_req_ocm_hp3;
output rd_dv_ocm_hp3;
output [1023:0] rd_data_ocm_hp3;

input ocm_wr_ack;
output ocm_wr_dv;
output [31:0]ocm_wr_addr;
output [1023:0]ocm_wr_data;
output [7:0]ocm_wr_bytes;

input ocm_rd_dv;
input [1023:0] ocm_rd_data;
output ocm_rd_req;
output [31:0] ocm_rd_addr;
output [7:0] ocm_rd_bytes;

/* FOR DDR */
processing_system7_vip_v1_0_3_arb_hp0_1 ddr_hp01 (
 .sw_clk(sw_clk),
 .rstn(rstn),
 .w_qos_hp0(w_qos_hp0),
 .r_qos_hp0(r_qos_hp0),
 .w_qos_hp1(w_qos_hp1),
 .r_qos_hp1(r_qos_hp1),
   
 .wr_ack_ddr_hp0(wr_ack_ddr_hp0),
 .wr_data_hp0(wr_data_hp0),
 .wr_addr_hp0(wr_addr_hp0),
 .wr_bytes_hp0(wr_bytes_hp0),
 .wr_dv_ddr_hp0(wr_dv_ddr_hp0),
 .rd_req_ddr_hp0(rd_req_ddr_hp0),
 .rd_addr_hp0(rd_addr_hp0),
 .rd_bytes_hp0(rd_bytes_hp0),
 .rd_data_ddr_hp0(rd_data_ddr_hp0),
 .rd_dv_ddr_hp0(rd_dv_ddr_hp0),
   
 .wr_ack_ddr_hp1(wr_ack_ddr_hp1),
 .wr_data_hp1(wr_data_hp1),
 .wr_addr_hp1(wr_addr_hp1),
 .wr_bytes_hp1(wr_bytes_hp1),
 .wr_dv_ddr_hp1(wr_dv_ddr_hp1),
 .rd_req_ddr_hp1(rd_req_ddr_hp1),
 .rd_addr_hp1(rd_addr_hp1),
 .rd_bytes_hp1(rd_bytes_hp1),
 .rd_data_ddr_hp1(rd_data_ddr_hp1),
 .rd_dv_ddr_hp1(rd_dv_ddr_hp1),
   
 .ddr_wr_ack(ddr_wr_ack0),
 .ddr_wr_dv(ddr_wr_dv0),
 .ddr_rd_req(ddr_rd_req0),
 .ddr_rd_dv(ddr_rd_dv0),
 .ddr_rd_qos(ddr_rd_qos0),
 .ddr_wr_qos(ddr_wr_qos0), 
 .ddr_wr_addr(ddr_wr_addr0),
 .ddr_wr_data(ddr_wr_data0),
 .ddr_wr_bytes(ddr_wr_bytes0),
 .ddr_rd_addr(ddr_rd_addr0),
 .ddr_rd_data(ddr_rd_data0),
 .ddr_rd_bytes(ddr_rd_bytes0)
);

/* FOR DDR */
processing_system7_vip_v1_0_3_arb_hp2_3 ddr_hp23 (
 .sw_clk(sw_clk),
 .rstn(rstn),
 .w_qos_hp2(w_qos_hp2),
 .r_qos_hp2(r_qos_hp2),
 .w_qos_hp3(w_qos_hp3),
 .r_qos_hp3(r_qos_hp3),
   
 .wr_ack_ddr_hp2(wr_ack_ddr_hp2),
 .wr_data_hp2(wr_data_hp2),
 .wr_addr_hp2(wr_addr_hp2),
 .wr_bytes_hp2(wr_bytes_hp2),
 .wr_dv_ddr_hp2(wr_dv_ddr_hp2),
 .rd_req_ddr_hp2(rd_req_ddr_hp2),
 .rd_addr_hp2(rd_addr_hp2),
 .rd_bytes_hp2(rd_bytes_hp2),
 .rd_data_ddr_hp2(rd_data_ddr_hp2),
 .rd_dv_ddr_hp2(rd_dv_ddr_hp2),
   
 .wr_ack_ddr_hp3(wr_ack_ddr_hp3),
 .wr_data_hp3(wr_data_hp3),
 .wr_addr_hp3(wr_addr_hp3),
 .wr_bytes_hp3(wr_bytes_hp3),
 .wr_dv_ddr_hp3(wr_dv_ddr_hp3),
 .rd_req_ddr_hp3(rd_req_ddr_hp3),
 .rd_addr_hp3(rd_addr_hp3),
 .rd_bytes_hp3(rd_bytes_hp3),
 .rd_data_ddr_hp3(rd_data_ddr_hp3),
 .rd_dv_ddr_hp3(rd_dv_ddr_hp3),
   
 .ddr_wr_ack(ddr_wr_ack1),
 .ddr_wr_dv(ddr_wr_dv1),
 .ddr_rd_req(ddr_rd_req1),
 .ddr_rd_dv(ddr_rd_dv1),
 .ddr_rd_qos(ddr_rd_qos1),
 .ddr_wr_qos(ddr_wr_qos1), 

 .ddr_wr_addr(ddr_wr_addr1),
 .ddr_wr_data(ddr_wr_data1),
 .ddr_wr_bytes(ddr_wr_bytes1),
 .ddr_rd_addr(ddr_rd_addr1),
 .ddr_rd_data(ddr_rd_data1),
 .ddr_rd_bytes(ddr_rd_bytes1)
);


/* FOR OCM_WR */
processing_system7_vip_v1_0_3_arb_wr_4 ocm_wr_hp(
 .rstn(rstn),
 .sw_clk(sw_clk),
   
 .qos1(w_qos_hp0),
 .qos2(w_qos_hp1),
 .qos3(w_qos_hp2),
 .qos4(w_qos_hp3),
   
 .prt_dv1(wr_dv_ocm_hp0),
 .prt_dv2(wr_dv_ocm_hp1),
 .prt_dv3(wr_dv_ocm_hp2),
 .prt_dv4(wr_dv_ocm_hp3),
   
 .prt_data1(wr_data_hp0),
 .prt_data2(wr_data_hp1),
 .prt_data3(wr_data_hp2),
 .prt_data4(wr_data_hp3),
   
 .prt_addr1(wr_addr_hp0),
 .prt_addr2(wr_addr_hp1),
 .prt_addr3(wr_addr_hp2),
 .prt_addr4(wr_addr_hp3),
   
 .prt_bytes1(wr_bytes_hp0),
 .prt_bytes2(wr_bytes_hp1),
 .prt_bytes3(wr_bytes_hp2),
 .prt_bytes4(wr_bytes_hp3),
   
 .prt_ack1(wr_ack_ocm_hp0),
 .prt_ack2(wr_ack_ocm_hp1),
 .prt_ack3(wr_ack_ocm_hp2),
 .prt_ack4(wr_ack_ocm_hp3),
   
 .prt_qos(ocm_wr_qos),
 .prt_req(ocm_wr_dv),
 .prt_data(ocm_wr_data),
 .prt_addr(ocm_wr_addr),
 .prt_bytes(ocm_wr_bytes),
 .prt_ack(ocm_wr_ack)

);

/* FOR OCM_RD */
processing_system7_vip_v1_0_3_arb_rd_4 ocm_rd_hp(
 .rstn(rstn),
 .sw_clk(sw_clk),
   
 .qos1(r_qos_hp0),
 .qos2(r_qos_hp1),
 .qos3(r_qos_hp2),
 .qos4(r_qos_hp3),
   
 .prt_req1(rd_req_ocm_hp0),
 .prt_req2(rd_req_ocm_hp1),
 .prt_req3(rd_req_ocm_hp2),
 .prt_req4(rd_req_ocm_hp3),
   
 .prt_data1(rd_data_ocm_hp0),
 .prt_data2(rd_data_ocm_hp1),
 .prt_data3(rd_data_ocm_hp2),
 .prt_data4(rd_data_ocm_hp3),
   
 .prt_addr1(rd_addr_hp0),
 .prt_addr2(rd_addr_hp1),
 .prt_addr3(rd_addr_hp2),
 .prt_addr4(rd_addr_hp3),
   
 .prt_bytes1(rd_bytes_hp0),
 .prt_bytes2(rd_bytes_hp1),
 .prt_bytes3(rd_bytes_hp2),
 .prt_bytes4(rd_bytes_hp3),
   
 .prt_dv1(rd_dv_ocm_hp0),
 .prt_dv2(rd_dv_ocm_hp1),
 .prt_dv3(rd_dv_ocm_hp2),
 .prt_dv4(rd_dv_ocm_hp3),
   
 .prt_qos(ocm_rd_qos),
 .prt_req(ocm_rd_req),
 .prt_data(ocm_rd_data),
 .prt_addr(ocm_rd_addr),
 .prt_bytes(ocm_rd_bytes),
 .prt_dv(ocm_rd_dv)

);


endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_sparse_mem.v
 *
 * Date : 2012-11
 *
 * Description : Sparse Memory Model
 *
 *****************************************************************************/

/*** WA for CR # 695818 ***/
`ifdef XILINX_SIMULATOR
   `define XSIM_ISIM
`endif
`ifdef XILINX_ISIM
   `define XSIM_ISIM
`endif

 `timescale 1ns/1ps
module processing_system7_vip_v1_0_3_sparse_mem();

`include "processing_system7_vip_v1_0_3_local_params.v"

parameter mem_size = 32'h4000_0000; /// 1GB mem size
parameter xsim_mem_size = 32'h1000_0000; ///256 MB mem size (x4 for XSIM/ISIM)


`ifdef XSIM_ISIM
 reg [data_width-1:0] ddr_mem0 [0:(xsim_mem_size/mem_width)-1]; // 256MB mem
 reg [data_width-1:0] ddr_mem1 [0:(xsim_mem_size/mem_width)-1]; // 256MB mem
 reg [data_width-1:0] ddr_mem2 [0:(xsim_mem_size/mem_width)-1]; // 256MB mem
 reg [data_width-1:0] ddr_mem3 [0:(xsim_mem_size/mem_width)-1]; // 256MB mem
`else
 reg /*sparse*/ [data_width-1:0] ddr_mem [0:(mem_size/mem_width)-1]; // 'h10_0000 to 'h3FFF_FFFF - 1G mem
`endif

event mem_updated;
reg check_we;
reg [addr_width-1:0] check_up_add;
reg [data_width-1:0] updated_data;

/* preload memory from file */
task automatic pre_load_mem_from_file;
input [(max_chars*8)-1:0] file_name;
input [addr_width-1:0] start_addr;
input [int_width-1:0] no_of_bytes;
`ifdef XSIM_ISIM
  case(start_addr[31:28])
    4'd0 : $readmemh(file_name,ddr_mem0,start_addr>>shft_addr_bits);
    4'd1 : $readmemh(file_name,ddr_mem1,start_addr>>shft_addr_bits);
    4'd2 : $readmemh(file_name,ddr_mem2,start_addr>>shft_addr_bits);
    4'd3 : $readmemh(file_name,ddr_mem3,start_addr>>shft_addr_bits);
  endcase
`else
  $readmemh(file_name,ddr_mem,start_addr>>shft_addr_bits);
`endif
endtask

/* preload memory with some random data */
task automatic pre_load_mem;
input [1:0]  data_type;
input [addr_width-1:0] start_addr;
input [int_width-1:0] no_of_bytes;
integer i;
reg [addr_width-1:0] addr;
begin
addr = start_addr >> shft_addr_bits;
for (i = 0; i < no_of_bytes; i = i + mem_width) begin
   case(data_type)
     ALL_RANDOM : set_data(addr , $random);
     ALL_ZEROS  : set_data(addr , 32'h0000_0000);
     ALL_ONES   : set_data(addr , 32'hFFFF_FFFF);
     default    : set_data(addr , $random);
   endcase
   addr = addr+1;
end 
end
endtask

/* wait for memory update at certain location */
task automatic wait_mem_update;
input[addr_width-1:0] address;
output[data_width-1:0] dataout;
begin
  check_up_add = address >> shft_addr_bits;
  check_we = 1;
  @(mem_updated); 
  dataout = updated_data;
  check_we = 0;
end
endtask

/* internal task to write data in memory */
task automatic set_data;
input [addr_width-1:0] addr;
input [data_width-1:0] data;
begin
if(check_we && (addr === check_up_add)) begin
 updated_data = data;
 -> mem_updated;
end
`ifdef XSIM_ISIM
  case(addr[31:26])
    6'd0 : ddr_mem0[addr[25:0]] = data;
    6'd1 : ddr_mem1[addr[25:0]] = data;
    6'd2 : ddr_mem2[addr[25:0]] = data;
    6'd3 : ddr_mem3[addr[25:0]] = data;
  endcase
`else
  ddr_mem[addr] = data;
`endif
end
endtask

/* internal task to read data from memory */
task automatic get_data;
input [addr_width-1:0] addr;
output [data_width-1:0] data;
begin
`ifdef XSIM_ISIM
  case(addr[31:26])
    6'd0 : data = ddr_mem0[addr[25:0]];
    6'd1 : data = ddr_mem1[addr[25:0]];
    6'd2 : data = ddr_mem2[addr[25:0]];
    6'd3 : data = ddr_mem3[addr[25:0]];
  endcase
`else
  data = ddr_mem[addr];
`endif
end
endtask

/* Write memory */
task write_mem;
input [max_burst_bits-1 :0] data;
input [addr_width-1:0] start_addr;
input [max_burst_bytes_width:0] no_of_bytes;
reg [addr_width-1:0] addr;
reg [max_burst_bits-1 :0] wr_temp_data;
reg [data_width-1:0] pre_pad_data,post_pad_data,temp_data;
integer bytes_left;
integer pre_pad_bytes;
integer post_pad_bytes;
begin
addr = start_addr >> shft_addr_bits;
wr_temp_data = data;

`ifdef XLNX_INT_DBG
   $display("[%0d] : %0s : Writing DDR Memory starting address (0x%0h) with %0d bytes.\n Data (0x%0h)",$time, DISP_INT_INFO, start_addr, no_of_bytes, data); 
`endif

temp_data = wr_temp_data[data_width-1:0];
bytes_left = no_of_bytes;
/* when the no. of bytes to be updated is less than mem_width */
if(bytes_left < mem_width) begin
 /* first data word in the burst , if unaligned address, the adjust the wr_data accordingly for first write*/
 if(start_addr[shft_addr_bits-1:0] > 0) begin
   //temp_data     = ddr_mem[addr];
   get_data(addr,temp_data);
   pre_pad_bytes = mem_width - start_addr[shft_addr_bits-1:0];
   repeat(pre_pad_bytes) temp_data = temp_data << 8;
   repeat(pre_pad_bytes) begin
     temp_data = temp_data >> 8;
     temp_data[data_width-1:data_width-8] = wr_temp_data[7:0];
     wr_temp_data = wr_temp_data >> 8;
   end
   bytes_left = bytes_left + pre_pad_bytes;
 end
 /* This is needed for post padding the data ...*/
 post_pad_bytes = mem_width - bytes_left;
 //post_pad_data  = ddr_mem[addr];
 get_data(addr,post_pad_data);
 repeat(post_pad_bytes) temp_data = temp_data << 8;
 repeat(bytes_left) post_pad_data = post_pad_data >> 8;
 repeat(post_pad_bytes) begin
   temp_data = temp_data >> 8;
   temp_data[data_width-1:data_width-8] = post_pad_data[7:0];
   post_pad_data = post_pad_data >> 8; 
 end
 //ddr_mem[addr] = temp_data;
 set_data(addr,temp_data);
end else begin
 /* first data word in the burst , if unaligned address, the adjust the wr_data accordingly for first write*/
 if(start_addr[shft_addr_bits-1:0] > 0) begin
  //temp_data     = ddr_mem[addr];
  get_data(addr,temp_data);
  pre_pad_bytes = mem_width - start_addr[shft_addr_bits-1:0];
  repeat(pre_pad_bytes) temp_data = temp_data << 8;
  repeat(pre_pad_bytes) begin
    temp_data = temp_data >> 8;
    temp_data[data_width-1:data_width-8] = wr_temp_data[7:0];
    wr_temp_data = wr_temp_data >> 8;
    bytes_left = bytes_left -1;  
  end
 end else begin
  wr_temp_data = wr_temp_data >> data_width;  
  bytes_left = bytes_left - mem_width;
 end
 /* first data word end */
 //ddr_mem[addr] = temp_data;
 set_data(addr,temp_data);
 addr = addr + 1;
 while(bytes_left > (mem_width-1) ) begin  /// for unaliged address necessary to check for mem_wd-1 , accordingly we have to pad post bytes.
  //ddr_mem[addr] = wr_temp_data[data_width-1:0];
  set_data(addr,wr_temp_data[data_width-1:0]);
  addr = addr+1;
  wr_temp_data = wr_temp_data >> data_width;
  bytes_left = bytes_left - mem_width;
 end
 
 //post_pad_data   = ddr_mem[addr];
 get_data(addr,post_pad_data);
 post_pad_bytes  = mem_width - bytes_left;
 /* This is needed for last transfer in unaliged burst */
 if(bytes_left > 0) begin
   temp_data = wr_temp_data[data_width-1:0];
   repeat(post_pad_bytes) temp_data = temp_data << 8;
   repeat(bytes_left) post_pad_data = post_pad_data >> 8;
   repeat(post_pad_bytes) begin
     temp_data = temp_data >> 8;
     temp_data[data_width-1:data_width-8] = post_pad_data[7:0];
     post_pad_data = post_pad_data >> 8; 
   end
   //ddr_mem[addr] = temp_data;
   set_data(addr,temp_data);
 end
end
`ifdef XLNX_INT_DBG $display("[%0d] : %0s : DONE -> Writing DDR Memory starting address (0x%0h)",$time, DISP_INT_INFO, start_addr ); 
`endif
end
endtask

/* read_memory */
task read_mem;
output[max_burst_bits-1 :0] data;
input [addr_width-1:0] start_addr;
input [max_burst_bytes_width :0] no_of_bytes;
integer i;
reg [addr_width-1:0] addr;
reg [data_width-1:0] temp_rd_data;
reg [max_burst_bits-1:0] temp_data;
integer pre_bytes;
integer bytes_left;
begin
addr = start_addr >> shft_addr_bits;
pre_bytes  = start_addr[shft_addr_bits-1:0];
bytes_left = no_of_bytes;

`ifdef XLNX_INT_DBG
   $display("[%0d] : %0s : Reading DDR Memory starting address (0x%0h) -> %0d bytes",$time, DISP_INT_INFO, start_addr,no_of_bytes ); 
`endif 

/* Get first data ... if unaligned address */
//temp_data[(max_burst * max_data_burst)-1 : (max_burst * max_data_burst)- data_width] = ddr_mem[addr];
get_data(addr,temp_data[max_burst_bits-1 : max_burst_bits-data_width]);

if(no_of_bytes < mem_width ) begin
  temp_data = temp_data >> (pre_bytes * 8);
  repeat(max_burst_bytes - mem_width)
   temp_data = temp_data >> 8;

end else begin
  bytes_left = bytes_left - (mem_width - pre_bytes);
  addr  = addr+1;
  /* Got first data */
  while (bytes_left > (mem_width-1) ) begin
   temp_data = temp_data >> data_width;
   //temp_data[(max_burst * max_data_burst)-1 : (max_burst * max_data_burst)- data_width] = ddr_mem[addr];
   get_data(addr,temp_data[max_burst_bits-1 : max_burst_bits-data_width]);
   addr = addr+1;
   bytes_left = bytes_left - mem_width;
  end 

  /* Get last valid data in the burst*/
  //temp_rd_data = ddr_mem[addr];
  get_data(addr,temp_rd_data);
  while(bytes_left > 0) begin
    temp_data = temp_data >> 8;
    temp_data[max_burst_bits-1 : max_burst_bits-8] = temp_rd_data[7:0];
    temp_rd_data = temp_rd_data >> 8;
    bytes_left = bytes_left - 1;
  end
  /* align to the brst_byte length */
  repeat(max_burst_bytes - no_of_bytes)
    temp_data = temp_data >> 8;
end 
data = temp_data;
`ifdef XLNX_INT_DBG
   $display("[%0d] : %0s : DONE -> Reading DDR Memory starting address (0x%0h), Data returned(0x%0h)",$time, DISP_INT_INFO, start_addr, data ); 
`endif 
end
endtask

/* backdoor read to memory */
task peek_mem_to_file;
input [(max_chars*8)-1:0] file_name;
input [addr_width-1:0] start_addr;
input [int_width-1:0] no_of_bytes;

integer rd_fd;
integer bytes;
reg [addr_width-1:0] addr;
reg [data_width-1:0] rd_data;
begin
rd_fd = $fopen(file_name,"w");
bytes = no_of_bytes;

addr = start_addr >> shft_addr_bits;
while (bytes > 0) begin
  get_data(addr,rd_data);
  $fdisplayh(rd_fd,rd_data);
  bytes = bytes - 4;
  addr = addr + 1;
end
end
endtask

endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_reg_map.v
 *
 * Date : 2012-11
 *
 * Description : Controller for Register Map Memory
 *
 *****************************************************************************/
/*** WA for CR # 695818 ***/
`ifdef XILINX_SIMULATOR
   `define XSIM_ISIM
`endif
`ifdef XILINX_ISIM
   `define XSIM_ISIM
`endif

 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_reg_map();

`include "processing_system7_vip_v1_0_3_local_params.v"

/* Register definitions */
`include "processing_system7_vip_v1_0_3_reg_params.v"

parameter mem_size = 32'h2000_0000; ///as the memory is implemented 4 byte wide
parameter xsim_mem_size = 32'h1000_0000; ///as the memory is implemented 4 byte wide 256 MB 

`ifdef XSIM_ISIM
 reg [data_width-1:0] reg_mem0 [0:(xsim_mem_size/mem_width)-1]; // 256MB mem
 reg [data_width-1:0] reg_mem1 [0:(xsim_mem_size/mem_width)-1]; // 256MB mem
 parameter addr_offset_bits = 26;
`else
 reg /*sparse*/ [data_width-1:0] reg_mem [0:(mem_size/mem_width)-1]; //  512 MB needed for reg space
 parameter addr_offset_bits = 27;
`endif

/* preload reset_values from file */
task automatic pre_load_rst_values;
input dummy;
begin
 `include "processing_system7_vip_v1_0_3_reg_init.v" /* This file has list of set_reset_data() calls to set the reset value for each register*/
end
endtask

/* writes the reset data into the reg memory */
task automatic set_reset_data;
input [addr_width-1:0] address;
input [data_width-1:0] data;
reg   [addr_width-1:0] addr;
begin
addr = address >> 2; 
`ifdef XSIM_ISIM
  case(addr[addr_width-1:addr_offset_bits])
    14 : reg_mem0[addr[addr_offset_bits-1:0]] = data;
    15 : reg_mem1[addr[addr_offset_bits-1:0]] = data;
  endcase
`else
  reg_mem[addr[addr_offset_bits-1:0]] = data;
`endif
end
endtask

/* writes the data into the reg memory */
task automatic set_data;
input [addr_width-1:0] addr;
input [data_width-1:0] data;
begin
`ifdef XSIM_ISIM
  case(addr[addr_width-1:addr_offset_bits])
    6'h0E : reg_mem0[addr[addr_offset_bits-1:0]] = data;
    6'h0F : reg_mem1[addr[addr_offset_bits-1:0]] = data;
  endcase
`else
  reg_mem[addr[addr_offset_bits-1:0]] = data;
`endif
end
endtask

/* get the read data from reg mem */
task automatic get_data;
input [addr_width-1:0] addr;
output [data_width-1:0] data;
begin
`ifdef XSIM_ISIM
  case(addr[addr_width-1:addr_offset_bits])
    6'h0E : data = reg_mem0[addr[addr_offset_bits-1:0]];
    6'h0F : data = reg_mem1[addr[addr_offset_bits-1:0]];
  endcase
`else
  data = reg_mem[addr[addr_offset_bits-1:0]];
`endif
end
endtask

/* read chunk of registers */
task read_reg_mem;
output[max_burst_bits-1 :0] data;
input [addr_width-1:0] start_addr;
input [max_burst_bytes_width:0] no_of_bytes;
integer i;
reg [addr_width-1:0] addr;
reg [data_width-1:0] temp_rd_data;
reg [max_burst_bits-1:0] temp_data;
integer bytes_left;
begin
addr = start_addr >> shft_addr_bits;
bytes_left = no_of_bytes;

`ifdef XLNX_INT_DBG
   $display("[%0d] : %0s : Reading Register Map starting address (0x%0h) -> %0d bytes",$time, DISP_INT_INFO, start_addr,no_of_bytes ); 
`endif 

/* Get first data ... if unaligned address */
get_data(addr,temp_data[max_burst_bits-1 : max_burst_bits- data_width]);

if(no_of_bytes < mem_width ) begin
  repeat(max_burst_bytes - mem_width)
   temp_data = temp_data >> 8;

end else begin
  bytes_left = bytes_left - mem_width;
  addr  = addr+1;
  /* Got first data */
  while (bytes_left > (mem_width-1) ) begin
   temp_data = temp_data >> data_width;
   get_data(addr,temp_data[max_burst_bits-1 : max_burst_bits-data_width]);
   addr = addr+1;
   bytes_left = bytes_left - mem_width;
  end 

  /* Get last valid data in the burst*/
  get_data(addr,temp_rd_data);
  while(bytes_left > 0) begin
    temp_data = temp_data >> 8;
    temp_data[max_burst_bits-1 : max_burst_bits-8] = temp_rd_data[7:0];
    temp_rd_data = temp_rd_data >> 8;
    bytes_left = bytes_left - 1;
  end
  /* align to the brst_byte length */
  repeat(max_burst_bytes - no_of_bytes)
    temp_data = temp_data >> 8;
end 
data = temp_data;
`ifdef XLNX_INT_DBG
   $display("[%0d] : %0s : DONE -> Reading Register Map starting address (0x%0h), Data returned(0x%0h)",$time, DISP_INT_INFO, start_addr, data ); 
`endif 
end
endtask

initial 
begin
 pre_load_rst_values(1);
end

endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_ocm_mem.v
 *
 * Date : 2012-11
 *
 * Description : Mimics OCM model
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_ocm_mem();
`include "processing_system7_vip_v1_0_3_local_params.v"

parameter mem_size = 32'h4_0000; /// 256 KB 
parameter mem_addr_width = clogb2(mem_size/mem_width);

reg [data_width-1:0] ocm_memory [0:(mem_size/mem_width)-1]; /// 256 KB memory 

/* preload memory from file */
task automatic pre_load_mem_from_file;
input [(max_chars*8)-1:0] file_name;
input [addr_width-1:0] start_addr;
input [int_width-1:0] no_of_bytes;
 $readmemh(file_name,ocm_memory,start_addr>>shft_addr_bits);
endtask

/* preload memory with some random data */
task automatic pre_load_mem;
input [1:0]  data_type;
input [addr_width-1:0] start_addr;
input [int_width-1:0] no_of_bytes;
integer i;
reg [mem_addr_width-1:0] addr;
begin
addr = start_addr >> shft_addr_bits;

for (i = 0; i < no_of_bytes; i = i + mem_width) begin
   case(data_type)
     ALL_RANDOM : ocm_memory[addr] = $random;
     ALL_ZEROS  : ocm_memory[addr] = 32'h0000_0000;
     ALL_ONES   : ocm_memory[addr] = 32'hFFFF_FFFF;
     default    : ocm_memory[addr] = $random;
   endcase
   addr = addr+1;
end 
end
endtask

/* Write memory */
task write_mem;
input [max_burst_bits-1 :0] data;
input [addr_width-1:0] start_addr;
input [max_burst_bytes_width:0] no_of_bytes;
reg [mem_addr_width-1:0] addr;
reg [max_burst_bits-1 :0] wr_temp_data;
reg [data_width-1:0] pre_pad_data,post_pad_data,temp_data;
integer bytes_left;
integer pre_pad_bytes;
integer post_pad_bytes;
begin
addr = start_addr >> shft_addr_bits;
wr_temp_data = data;

`ifdef XLNX_INT_DBG
   $display("[%0d] : %0s : Writing OCM Memory starting address (0x%0h) with %0d bytes.\n Data (0x%0h)",$time, DISP_INT_INFO, start_addr, no_of_bytes, data); 
`endif

temp_data = wr_temp_data[data_width-1:0];
bytes_left = no_of_bytes;
/* when the no. of bytes to be updated is less than mem_width */
if(bytes_left < mem_width) begin
 /* first data word in the burst , if unaligned address, the adjust the wr_data accordingly for first write*/
 if(start_addr[shft_addr_bits-1:0] > 0) begin
   temp_data     = ocm_memory[addr];
   pre_pad_bytes = mem_width - start_addr[shft_addr_bits-1:0];
   repeat(pre_pad_bytes) temp_data = temp_data << 8;
   repeat(pre_pad_bytes) begin
     temp_data = temp_data >> 8;
     temp_data[data_width-1:data_width-8] = wr_temp_data[7:0];
     wr_temp_data = wr_temp_data >> 8;
   end
   bytes_left = bytes_left + pre_pad_bytes;
 end
 /* This is needed for post padding the data ...*/
 post_pad_bytes = mem_width - bytes_left;
 post_pad_data  = ocm_memory[addr];
 repeat(post_pad_bytes) temp_data = temp_data << 8;
 repeat(bytes_left) post_pad_data = post_pad_data >> 8;
 repeat(post_pad_bytes) begin
   temp_data = temp_data >> 8;
   temp_data[data_width-1:data_width-8] = post_pad_data[7:0];
   post_pad_data = post_pad_data >> 8; 
 end
 ocm_memory[addr] = temp_data;
end else begin
 /* first data word in the burst , if unaligned address, the adjust the wr_data accordingly for first write*/
 if(start_addr[shft_addr_bits-1:0] > 0) begin
  temp_data     = ocm_memory[addr];
  pre_pad_bytes = mem_width - start_addr[shft_addr_bits-1:0];
  repeat(pre_pad_bytes) temp_data = temp_data << 8;
  repeat(pre_pad_bytes) begin
    temp_data = temp_data >> 8;
    temp_data[data_width-1:data_width-8] = wr_temp_data[7:0];
    wr_temp_data = wr_temp_data >> 8;
    bytes_left = bytes_left -1;  
  end
 end else begin
  wr_temp_data = wr_temp_data >> data_width;  
  bytes_left = bytes_left - mem_width;
 end
 /* first data word end */
 ocm_memory[addr] = temp_data;
 addr = addr + 1;
 while(bytes_left > (mem_width-1) ) begin  /// for unaliged address necessary to check for mem_wd-1 , accordingly we have to pad post bytes.
  ocm_memory[addr] = wr_temp_data[data_width-1:0];
  addr = addr+1;
  wr_temp_data = wr_temp_data >> data_width;
  bytes_left = bytes_left - mem_width;
 end
 
 post_pad_data   = ocm_memory[addr];
 post_pad_bytes  = mem_width - bytes_left;
 /* This is needed for last transfer in unaliged burst */
 if(bytes_left > 0) begin
   temp_data = wr_temp_data[data_width-1:0];
   repeat(post_pad_bytes) temp_data = temp_data << 8;
   repeat(bytes_left) post_pad_data = post_pad_data >> 8;
   repeat(post_pad_bytes) begin
     temp_data = temp_data >> 8;
     temp_data[data_width-1:data_width-8] = post_pad_data[7:0];
     post_pad_data = post_pad_data >> 8; 
   end
   ocm_memory[addr] = temp_data;
 end
end
`ifdef XLNX_INT_DBG $display("[%0d] : %0s : DONE -> Writing OCM Memory starting address (0x%0h)",$time, DISP_INT_INFO, start_addr ); 
`endif
end
endtask

/* read_memory */
task read_mem;
output[max_burst_bits-1 :0] data;
input [addr_width-1:0] start_addr;
input [max_burst_bytes_width:0] no_of_bytes;
integer i;
reg [mem_addr_width-1:0] addr;
reg [data_width-1:0] temp_rd_data;
reg [max_burst_bits-1:0] temp_data;
integer pre_bytes;
integer bytes_left;
begin
addr = start_addr >> shft_addr_bits;
pre_bytes  = start_addr[shft_addr_bits-1:0];
bytes_left = no_of_bytes;

`ifdef XLNX_INT_DBG
   $display("[%0d] : %0s : Reading OCM Memory starting address (0x%0h) -> %0d bytes",$time, DISP_INT_INFO, start_addr,no_of_bytes ); 
`endif 

/* Get first data ... if unaligned address */
temp_data[max_burst_bits-1 : max_burst_bits-data_width] = ocm_memory[addr];

if(no_of_bytes < mem_width ) begin
  temp_data = temp_data >> (pre_bytes * 8);
  repeat(max_burst_bytes - mem_width)
   temp_data = temp_data >> 8;

end else begin
  bytes_left = bytes_left - (mem_width - pre_bytes);
  addr  = addr+1;
  /* Got first data */
  while (bytes_left > (mem_width-1) ) begin
   temp_data = temp_data >> data_width;
   temp_data[max_burst_bits-1 : max_burst_bits-data_width] = ocm_memory[addr];
   addr = addr+1;
   bytes_left = bytes_left - mem_width;
  end 

  /* Get last valid data in the burst*/
  temp_rd_data = ocm_memory[addr];
  while(bytes_left > 0) begin
    temp_data = temp_data >> 8;
    temp_data[max_burst_bits-1 : max_burst_bits-8] = temp_rd_data[7:0];
    temp_rd_data = temp_rd_data >> 8;
    bytes_left = bytes_left - 1;
  end
  /* align to the brst_byte length */
  repeat(max_burst_bytes - no_of_bytes)
    temp_data = temp_data >> 8;
end 
data = temp_data;
`ifdef XLNX_INT_DBG
   $display("[%0d] : %0s : DONE -> Reading OCM Memory starting address (0x%0h), Data returned(0x%0h)",$time, DISP_INT_INFO, start_addr, data ); 
`endif 
end
endtask

/* backdoor read to memory */
task peek_mem_to_file;
input [(max_chars*8)-1:0] file_name;
input [addr_width-1:0] start_addr;
input [int_width-1:0] no_of_bytes;

integer rd_fd;
integer bytes;
reg [addr_width-1:0] addr;
reg [data_width-1:0] rd_data;
begin
rd_fd = $fopen(file_name,"w");
bytes = no_of_bytes;

addr = start_addr >> shft_addr_bits;
while (bytes > 0) begin
  rd_data = ocm_memory[addr];
  $fdisplayh(rd_fd,rd_data);
  bytes = bytes - 4;
  addr = addr + 1;
end
end
endtask

endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_intr_wr_mem.v
 *
 * Date : 2012-11
 *
 * Description : Mimics interconnect for Writes between AFI and DDRC/OCM
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_intr_wr_mem(
sw_clk,
rstn,
 
full,

WR_DATA_ACK_OCM,
WR_DATA_ACK_DDR,
WR_ADDR,
WR_DATA,
WR_BYTES,
WR_QOS,
WR_DATA_VALID_OCM,
WR_DATA_VALID_DDR
);

`include "processing_system7_vip_v1_0_3_local_params.v"
/* local parameters for interconnect wr fifo model */

input sw_clk, rstn;
output full; 

input WR_DATA_ACK_DDR, WR_DATA_ACK_OCM;
output reg WR_DATA_VALID_DDR, WR_DATA_VALID_OCM;
output reg [max_burst_bits-1:0] WR_DATA;
output reg [addr_width-1:0] WR_ADDR;
output reg [max_burst_bytes_width:0] WR_BYTES;
output reg [axi_qos_width-1:0] WR_QOS;
reg [intr_cnt_width-1:0] wr_ptr = 0, rd_ptr = 0;
reg [wr_fifo_data_bits-1:0] wr_fifo [0:intr_max_outstanding-1];
wire empty;

assign empty = (wr_ptr === rd_ptr)?1'b1: 1'b0;
assign full  = ((wr_ptr[intr_cnt_width-1]!== rd_ptr[intr_cnt_width-1]) && (wr_ptr[intr_cnt_width-2:0] === rd_ptr[intr_cnt_width-2:0]))?1'b1 :1'b0;

parameter SEND_DATA = 0,  WAIT_ACK = 1;
reg state;

task automatic write_mem;
input [wr_fifo_data_bits-1:0] data;
begin
 wr_fifo[wr_ptr[intr_cnt_width-2:0]] = data;
 if(wr_ptr[intr_cnt_width-2:0] === intr_max_outstanding-1) 
   wr_ptr[intr_cnt_width-2:0] = 0;
 else 
   wr_ptr = wr_ptr + 1;
end
endtask

always@(negedge rstn or posedge sw_clk)
begin
if(!rstn) begin
 wr_ptr = 0;
 rd_ptr = 0;
 WR_DATA_VALID_DDR = 1'b0;
 WR_DATA_VALID_OCM = 1'b0;
 WR_QOS = 0;
 state = SEND_DATA;
end else begin
 case(state)
 SEND_DATA :begin
    state = SEND_DATA;
    WR_DATA_VALID_OCM = 1'b0;
    WR_DATA_VALID_DDR = 1'b0;
    if(!empty) begin
      WR_DATA  = wr_fifo[rd_ptr[intr_cnt_width-2:0]][wr_data_msb : wr_data_lsb];
      WR_ADDR  = wr_fifo[rd_ptr[intr_cnt_width-2:0]][wr_addr_msb : wr_addr_lsb];
      WR_BYTES = wr_fifo[rd_ptr[intr_cnt_width-2:0]][wr_bytes_msb : wr_bytes_lsb];
      WR_QOS   = wr_fifo[rd_ptr[intr_cnt_width-2:0]][wr_qos_msb : wr_qos_lsb];
      state  = WAIT_ACK;
      case(decode_address(wr_fifo[rd_ptr[intr_cnt_width-2:0]][wr_addr_msb : wr_addr_lsb]))
       OCM_MEM : WR_DATA_VALID_OCM = 1;
       DDR_MEM : WR_DATA_VALID_DDR = 1;
       default : state = SEND_DATA;
      endcase 
      if(rd_ptr[intr_cnt_width-2:0] === intr_max_outstanding-1) begin
	    rd_ptr[intr_cnt_width-2:0] = 0;
	   end else begin
        rd_ptr = rd_ptr+1;
	   end
    end
    end
 WAIT_ACK :begin
    state = WAIT_ACK;
    if(WR_DATA_ACK_OCM | WR_DATA_ACK_DDR) begin 
      WR_DATA_VALID_OCM = 1'b0;
      WR_DATA_VALID_DDR = 1'b0;
      state = SEND_DATA;
    end
    end
 endcase
end
end

endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_intr_rd_mem.v
 *
 * Date : 2012-11
 *
 * Description : Mimics interconnect for Reads between AFI and DDRC/OCM
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_intr_rd_mem(
sw_clk,
rstn,
 
full,
empty,

req,
invalid_rd_req,
rd_info,

RD_DATA_OCM,
RD_DATA_DDR,
RD_DATA_VALID_OCM,
RD_DATA_VALID_DDR

);
`include "processing_system7_vip_v1_0_3_local_params.v"

input sw_clk, rstn;
output full, empty;

input RD_DATA_VALID_DDR, RD_DATA_VALID_OCM;
input [max_burst_bits-1:0] RD_DATA_DDR, RD_DATA_OCM;
input req, invalid_rd_req;
input [rd_info_bits-1:0] rd_info;

reg [intr_cnt_width-1:0] wr_ptr = 0, rd_ptr = 0;
reg [rd_afi_fifo_bits-1:0] rd_fifo [0:intr_max_outstanding-1]; // Data, addr, size, burst, len, RID, RRESP, valid bytes
wire full, empty;


assign empty = (wr_ptr === rd_ptr)?1'b1: 1'b0;
assign full  = ((wr_ptr[intr_cnt_width-1]!== rd_ptr[intr_cnt_width-1]) && (wr_ptr[intr_cnt_width-2:0] === rd_ptr[intr_cnt_width-2:0]))?1'b1 :1'b0;

/* read from the fifo */
task read_mem;
output [rd_afi_fifo_bits-1:0] data;
begin
 data = rd_fifo[rd_ptr[intr_cnt_width-1:0]];
 if(rd_ptr[intr_cnt_width-2:0] === intr_max_outstanding-1) 
   rd_ptr[intr_cnt_width-2:0] = 0;
 else 
   rd_ptr = rd_ptr + 1;
end
endtask

reg state;
reg invalid_rd;
/* write in the fifo */
always@(negedge rstn or posedge sw_clk)
begin
if(!rstn) begin
 wr_ptr  = 0;
 rd_ptr  = 0;
 state   = 0;
 invalid_rd  = 0;
end else begin
 case (state)
 0 : begin
  state  = 0;  
  invalid_rd  = 0;
  if(req)begin
   state     = 1;
   invalid_rd  = invalid_rd_req;
  end
 end
 1 : begin
  state     = 1;
  if(RD_DATA_VALID_OCM | RD_DATA_VALID_DDR | invalid_rd) begin 
   if(RD_DATA_VALID_DDR)
     rd_fifo[wr_ptr[intr_cnt_width-2:0]]  = {RD_DATA_DDR,rd_info};
   else if(RD_DATA_VALID_OCM)
     rd_fifo[wr_ptr[intr_cnt_width-2:0]]  = {RD_DATA_OCM,rd_info};
   else 
     rd_fifo[wr_ptr[intr_cnt_width-2:0]]  = rd_info;
   if(wr_ptr[intr_cnt_width-2:0] === intr_max_outstanding-1) 
     wr_ptr[intr_cnt_width-2:0]  = 0;
   else 
     wr_ptr  = wr_ptr + 1;
   state   = 0;
   invalid_rd  = 0;
  end
 end
 endcase
end
end

endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_fmsw_gp.v
 *
 * Date : 2012-11
 *
 * Description : Mimics FMSW switch.
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_fmsw_gp(
 sw_clk,
 rstn,

 w_qos_gp0,
 r_qos_gp0,
 wr_ack_ocm_gp0,
 wr_ack_ddr_gp0,
 wr_data_gp0,
 wr_addr_gp0,
 wr_bytes_gp0,
 wr_dv_ocm_gp0,
 wr_dv_ddr_gp0,
 rd_req_ocm_gp0,
 rd_req_ddr_gp0,
 rd_req_reg_gp0,
 rd_addr_gp0,
 rd_bytes_gp0,
 rd_data_ocm_gp0,
 rd_data_ddr_gp0,
 rd_data_reg_gp0,
 rd_dv_ocm_gp0,
 rd_dv_ddr_gp0,
 rd_dv_reg_gp0,
 
 w_qos_gp1,
 r_qos_gp1,
 wr_ack_ocm_gp1,
 wr_ack_ddr_gp1,
 wr_data_gp1,
 wr_addr_gp1,
 wr_bytes_gp1,
 wr_dv_ocm_gp1,
 wr_dv_ddr_gp1,
 rd_req_ocm_gp1,
 rd_req_ddr_gp1,
 rd_req_reg_gp1,
 rd_addr_gp1,
 rd_bytes_gp1,
 rd_data_ocm_gp1,
 rd_data_ddr_gp1,
 rd_data_reg_gp1,
 rd_dv_ocm_gp1,
 rd_dv_ddr_gp1,
 rd_dv_reg_gp1,

 ocm_wr_ack,
 ocm_wr_dv,
 ocm_rd_req,
 ocm_rd_dv,
 ddr_wr_ack,
 ddr_wr_dv,
 ddr_rd_req,
 ddr_rd_dv,

 reg_rd_req,
 reg_rd_dv,

 ocm_wr_qos,
 ddr_wr_qos,
 ocm_rd_qos,
 ddr_rd_qos,
 reg_rd_qos,

 ocm_wr_addr,
 ocm_wr_data,
 ocm_wr_bytes,
 ocm_rd_addr,
 ocm_rd_data,
 ocm_rd_bytes,

 ddr_wr_addr,
 ddr_wr_data,
 ddr_wr_bytes,
 ddr_rd_addr,
 ddr_rd_data,
 ddr_rd_bytes,

 reg_rd_addr,
 reg_rd_data,
 reg_rd_bytes

);

`include "processing_system7_vip_v1_0_3_local_params.v"

input sw_clk;
input rstn;

input [axi_qos_width-1:0]w_qos_gp0;
input [axi_qos_width-1:0]r_qos_gp0;
input [axi_qos_width-1:0]w_qos_gp1;
input [axi_qos_width-1:0]r_qos_gp1;

output [axi_qos_width-1:0]ocm_wr_qos;
output [axi_qos_width-1:0]ocm_rd_qos;
output [axi_qos_width-1:0]ddr_wr_qos;
output [axi_qos_width-1:0]ddr_rd_qos;
output [axi_qos_width-1:0]reg_rd_qos;

output wr_ack_ocm_gp0;
output wr_ack_ddr_gp0;
input [max_burst_bits-1:0] wr_data_gp0;
input [addr_width-1:0] wr_addr_gp0;
input [max_burst_bytes_width:0] wr_bytes_gp0;
output wr_dv_ocm_gp0;
output wr_dv_ddr_gp0;

input rd_req_ocm_gp0;
input rd_req_ddr_gp0;
input rd_req_reg_gp0;
input [addr_width-1:0] rd_addr_gp0;
input [max_burst_bytes_width:0] rd_bytes_gp0;
output [max_burst_bits-1:0] rd_data_ocm_gp0;
output [max_burst_bits-1:0] rd_data_ddr_gp0;
output [max_burst_bits-1:0] rd_data_reg_gp0;
output rd_dv_ocm_gp0;
output rd_dv_ddr_gp0;
output rd_dv_reg_gp0;
 
output wr_ack_ocm_gp1;
output wr_ack_ddr_gp1;
input [max_burst_bits-1:0] wr_data_gp1;
input [addr_width-1:0] wr_addr_gp1;
input [max_burst_bytes_width:0] wr_bytes_gp1;
output wr_dv_ocm_gp1;
output wr_dv_ddr_gp1;

input rd_req_ocm_gp1;
input rd_req_ddr_gp1;
input rd_req_reg_gp1;
input [addr_width-1:0] rd_addr_gp1;
input [max_burst_bytes_width:0] rd_bytes_gp1;
output [max_burst_bits-1:0] rd_data_ocm_gp1;
output [max_burst_bits-1:0] rd_data_ddr_gp1;
output [max_burst_bits-1:0] rd_data_reg_gp1;
output rd_dv_ocm_gp1;
output rd_dv_ddr_gp1;
output rd_dv_reg_gp1;
 
 
input ocm_wr_ack;
output ocm_wr_dv;
output [addr_width-1:0]ocm_wr_addr;
output [max_burst_bits-1:0]ocm_wr_data;
output [max_burst_bytes_width:0]ocm_wr_bytes;

input ocm_rd_dv;
input [max_burst_bits-1:0] ocm_rd_data;
output ocm_rd_req;
output [addr_width-1:0] ocm_rd_addr;
output [max_burst_bytes_width:0] ocm_rd_bytes;

input ddr_wr_ack;
output ddr_wr_dv;
output [addr_width-1:0]ddr_wr_addr;
output [max_burst_bits-1:0]ddr_wr_data;
output [max_burst_bytes_width:0]ddr_wr_bytes;

input ddr_rd_dv;
input [max_burst_bits-1:0] ddr_rd_data;
output ddr_rd_req;
output [addr_width-1:0] ddr_rd_addr;
output [max_burst_bytes_width:0] ddr_rd_bytes;

input reg_rd_dv;
input [max_burst_bits-1:0] reg_rd_data;
output reg_rd_req;
output [addr_width-1:0] reg_rd_addr;
output [max_burst_bytes_width:0] reg_rd_bytes;



processing_system7_vip_v1_0_3_arb_wr ocm_gp_wr(
 .rstn(rstn),
 .sw_clk(sw_clk),
 .qos1(w_qos_gp0),
 .qos2(w_qos_gp1),
 .prt_dv1(wr_dv_ocm_gp0),
 .prt_dv2(wr_dv_ocm_gp1),
 .prt_data1(wr_data_gp0),
 .prt_data2(wr_data_gp1),
 .prt_addr1(wr_addr_gp0),
 .prt_addr2(wr_addr_gp1),
 .prt_bytes1(wr_bytes_gp0),
 .prt_bytes2(wr_bytes_gp1),
 .prt_ack1(wr_ack_ocm_gp0),
 .prt_ack2(wr_ack_ocm_gp1),
 .prt_req(ocm_wr_dv),
 .prt_qos(ocm_wr_qos),
 .prt_data(ocm_wr_data),
 .prt_addr(ocm_wr_addr),
 .prt_bytes(ocm_wr_bytes),
 .prt_ack(ocm_wr_ack)
);

processing_system7_vip_v1_0_3_arb_wr ddr_gp_wr(
 .rstn(rstn),
 .sw_clk(sw_clk),
 .qos1(w_qos_gp0),
 .qos2(w_qos_gp1),
 .prt_dv1(wr_dv_ddr_gp0),
 .prt_dv2(wr_dv_ddr_gp1),
 .prt_data1(wr_data_gp0),
 .prt_data2(wr_data_gp1),
 .prt_addr1(wr_addr_gp0),
 .prt_addr2(wr_addr_gp1),
 .prt_bytes1(wr_bytes_gp0),
 .prt_bytes2(wr_bytes_gp1),
 .prt_ack1(wr_ack_ddr_gp0),
 .prt_ack2(wr_ack_ddr_gp1),
 .prt_req(ddr_wr_dv),
 .prt_qos(ddr_wr_qos),
 .prt_data(ddr_wr_data),
 .prt_addr(ddr_wr_addr),
 .prt_bytes(ddr_wr_bytes),
 .prt_ack(ddr_wr_ack)
);

processing_system7_vip_v1_0_3_arb_rd ocm_gp_rd(
 .rstn(rstn),
 .sw_clk(sw_clk),
 .qos1(r_qos_gp0),
 .qos2(r_qos_gp1),
 .prt_req1(rd_req_ocm_gp0),
 .prt_req2(rd_req_ocm_gp1),
 .prt_data1(rd_data_ocm_gp0),
 .prt_data2(rd_data_ocm_gp1),
 .prt_addr1(rd_addr_gp0),
 .prt_addr2(rd_addr_gp1),
 .prt_bytes1(rd_bytes_gp0),
 .prt_bytes2(rd_bytes_gp1),
 .prt_dv1(rd_dv_ocm_gp0),
 .prt_dv2(rd_dv_ocm_gp1),
 .prt_req(ocm_rd_req),
 .prt_qos(ocm_rd_qos),
 .prt_data(ocm_rd_data),
 .prt_addr(ocm_rd_addr),
 .prt_bytes(ocm_rd_bytes),
 .prt_dv(ocm_rd_dv)
);

processing_system7_vip_v1_0_3_arb_rd ddr_gp_rd(
 .rstn(rstn),
 .sw_clk(sw_clk),
 .qos1(r_qos_gp0),
 .qos2(r_qos_gp1),
 .prt_req1(rd_req_ddr_gp0),
 .prt_req2(rd_req_ddr_gp1),
 .prt_data1(rd_data_ddr_gp0),
 .prt_data2(rd_data_ddr_gp1),
 .prt_addr1(rd_addr_gp0),
 .prt_addr2(rd_addr_gp1),
 .prt_bytes1(rd_bytes_gp0),
 .prt_bytes2(rd_bytes_gp1),
 .prt_dv1(rd_dv_ddr_gp0),
 .prt_dv2(rd_dv_ddr_gp1),
 .prt_req(ddr_rd_req),
 .prt_qos(ddr_rd_qos),
 .prt_data(ddr_rd_data),
 .prt_addr(ddr_rd_addr),
 .prt_bytes(ddr_rd_bytes),
 .prt_dv(ddr_rd_dv)
);

processing_system7_vip_v1_0_3_arb_rd reg_gp_rd(
 .rstn(rstn),
 .sw_clk(sw_clk),
 .qos1(r_qos_gp0),
 .qos2(r_qos_gp1),
 .prt_req1(rd_req_reg_gp0),
 .prt_req2(rd_req_reg_gp1),
 .prt_data1(rd_data_reg_gp0),
 .prt_data2(rd_data_reg_gp1),
 .prt_addr1(rd_addr_gp0),
 .prt_addr2(rd_addr_gp1),
 .prt_bytes1(rd_bytes_gp0),
 .prt_bytes2(rd_bytes_gp1),
 .prt_dv1(rd_dv_reg_gp0),
 .prt_dv2(rd_dv_reg_gp1),
 .prt_req(reg_rd_req),
 .prt_qos(reg_rd_qos),
 .prt_data(reg_rd_data),
 .prt_addr(reg_rd_addr),
 .prt_bytes(reg_rd_bytes),
 .prt_dv(reg_rd_dv)
);


endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_regc.v
 *
 * Date : 2012-11
 *
 * Description : Controller for Register Map Memory
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_regc(
 rstn,
 sw_clk,

/* Goes to port 0 of REG */
 reg_rd_req_port0,
 reg_rd_dv_port0,
 reg_rd_addr_port0,
 reg_rd_data_port0,
 reg_rd_bytes_port0,
 reg_rd_qos_port0,


/* Goes to port 1 of REG */
 reg_rd_req_port1,
 reg_rd_dv_port1,
 reg_rd_addr_port1,
 reg_rd_data_port1,
 reg_rd_bytes_port1,
 reg_rd_qos_port1 

);

input rstn;
input sw_clk;

input reg_rd_req_port0;
output reg_rd_dv_port0;
input[31:0] reg_rd_addr_port0;
output[1023:0] reg_rd_data_port0;
input[7:0] reg_rd_bytes_port0;
input [3:0] reg_rd_qos_port0;

input reg_rd_req_port1;
output reg_rd_dv_port1;
input[31:0] reg_rd_addr_port1;
output[1023:0] reg_rd_data_port1;
input[7:0] reg_rd_bytes_port1;
input[3:0] reg_rd_qos_port1;

wire [3:0] rd_qos;
reg [1023:0] rd_data;
wire [31:0] rd_addr;
wire [7:0] rd_bytes;
reg rd_dv;
wire rd_req;

processing_system7_vip_v1_0_3_arb_rd reg_read_ports (
 .rstn(rstn),
 .sw_clk(sw_clk),
   
 .qos1(reg_rd_qos_port0),
 .qos2(reg_rd_qos_port1),
   
 .prt_req1(reg_rd_req_port0),
 .prt_req2(reg_rd_req_port1),
   
 .prt_data1(reg_rd_data_port0),
 .prt_data2(reg_rd_data_port1),
   
 .prt_addr1(reg_rd_addr_port0),
 .prt_addr2(reg_rd_addr_port1),
   
 .prt_bytes1(reg_rd_bytes_port0),
 .prt_bytes2(reg_rd_bytes_port1),
   
 .prt_dv1(reg_rd_dv_port0),
 .prt_dv2(reg_rd_dv_port1),
   
 .prt_qos(rd_qos),
 .prt_req(rd_req),
 .prt_data(rd_data),
 .prt_addr(rd_addr),
 .prt_bytes(rd_bytes),
 .prt_dv(rd_dv)

);

processing_system7_vip_v1_0_3_reg_map regm();

reg state;
always@(posedge sw_clk or negedge rstn)
begin
if(!rstn) begin
 rd_dv <= 0;
 state <= 0;
end else begin
 case(state) 
 0:begin
     state <= 0;
     rd_dv <= 0;
     if(rd_req) begin
       regm.read_reg_mem(rd_data,rd_addr, rd_bytes); 
       rd_dv <= 1;
       state <= 1;
     end

   end
 1:begin
       rd_dv  <= 0;
       state <= 0;
   end 

 endcase
end /// if
end// always

endmodule 


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_ocmc.v
 *
 * Date : 2012-11
 *
 * Description : Controller for OCM model
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_ocmc(
 rstn,
 sw_clk,

/* Goes to port 0 of OCM */
 ocm_wr_ack_port0,
 ocm_wr_dv_port0,
 ocm_rd_req_port0,
 ocm_rd_dv_port0,
 ocm_wr_addr_port0,
 ocm_wr_data_port0,
 ocm_wr_bytes_port0,
 ocm_rd_addr_port0,
 ocm_rd_data_port0,
 ocm_rd_bytes_port0,
 ocm_wr_qos_port0,
 ocm_rd_qos_port0,


/* Goes to port 1 of OCM */
 ocm_wr_ack_port1,
 ocm_wr_dv_port1,
 ocm_rd_req_port1,
 ocm_rd_dv_port1,
 ocm_wr_addr_port1,
 ocm_wr_data_port1,
 ocm_wr_bytes_port1,
 ocm_rd_addr_port1,
 ocm_rd_data_port1,
 ocm_rd_bytes_port1,
 ocm_wr_qos_port1,
 ocm_rd_qos_port1 

);

`include "processing_system7_vip_v1_0_3_local_params.v"
input rstn;
input sw_clk;

output ocm_wr_ack_port0;
input ocm_wr_dv_port0;
input ocm_rd_req_port0;
output ocm_rd_dv_port0;
input[addr_width-1:0] ocm_wr_addr_port0;
input[max_burst_bits-1:0] ocm_wr_data_port0;
input[max_burst_bytes_width:0] ocm_wr_bytes_port0;
input[addr_width-1:0] ocm_rd_addr_port0;
output[max_burst_bits-1:0] ocm_rd_data_port0;
input[max_burst_bytes_width:0] ocm_rd_bytes_port0;
input [axi_qos_width-1:0] ocm_wr_qos_port0;
input [axi_qos_width-1:0] ocm_rd_qos_port0;

output ocm_wr_ack_port1;
input ocm_wr_dv_port1;
input ocm_rd_req_port1;
output ocm_rd_dv_port1;
input[addr_width-1:0] ocm_wr_addr_port1;
input[max_burst_bits-1:0] ocm_wr_data_port1;
input[max_burst_bytes_width:0] ocm_wr_bytes_port1;
input[addr_width-1:0] ocm_rd_addr_port1;
output[max_burst_bits-1:0] ocm_rd_data_port1;
input[max_burst_bytes_width:0] ocm_rd_bytes_port1;
input[axi_qos_width-1:0] ocm_wr_qos_port1;
input[axi_qos_width-1:0] ocm_rd_qos_port1;

wire [axi_qos_width-1:0] wr_qos;
wire wr_req;
wire [max_burst_bits-1:0] wr_data;
wire [addr_width-1:0] wr_addr;
wire [max_burst_bytes_width:0] wr_bytes;
reg wr_ack;

wire [axi_qos_width-1:0] rd_qos;
reg [max_burst_bits-1:0] rd_data;
wire [addr_width-1:0] rd_addr;
wire [max_burst_bytes_width:0] rd_bytes;
reg rd_dv;
wire rd_req;

processing_system7_vip_v1_0_3_arb_wr ocm_write_ports (
 .rstn(rstn),
 .sw_clk(sw_clk),
   
 .qos1(ocm_wr_qos_port0),
 .qos2(ocm_wr_qos_port1),
   
 .prt_dv1(ocm_wr_dv_port0),
 .prt_dv2(ocm_wr_dv_port1),
   
 .prt_data1(ocm_wr_data_port0),
 .prt_data2(ocm_wr_data_port1),
   
 .prt_addr1(ocm_wr_addr_port0),
 .prt_addr2(ocm_wr_addr_port1),
   
 .prt_bytes1(ocm_wr_bytes_port0),
 .prt_bytes2(ocm_wr_bytes_port1),
   
 .prt_ack1(ocm_wr_ack_port0),
 .prt_ack2(ocm_wr_ack_port1),
   
 .prt_qos(wr_qos),
 .prt_req(wr_req),
 .prt_data(wr_data),
 .prt_addr(wr_addr),
 .prt_bytes(wr_bytes),
 .prt_ack(wr_ack)

);

processing_system7_vip_v1_0_3_arb_rd ocm_read_ports (
 .rstn(rstn),
 .sw_clk(sw_clk),
   
 .qos1(ocm_rd_qos_port0),
 .qos2(ocm_rd_qos_port1),
   
 .prt_req1(ocm_rd_req_port0),
 .prt_req2(ocm_rd_req_port1),
   
 .prt_data1(ocm_rd_data_port0),
 .prt_data2(ocm_rd_data_port1),
   
 .prt_addr1(ocm_rd_addr_port0),
 .prt_addr2(ocm_rd_addr_port1),
   
 .prt_bytes1(ocm_rd_bytes_port0),
 .prt_bytes2(ocm_rd_bytes_port1),
   
 .prt_dv1(ocm_rd_dv_port0),
 .prt_dv2(ocm_rd_dv_port1),
   
 .prt_qos(rd_qos),
 .prt_req(rd_req),
 .prt_data(rd_data),
 .prt_addr(rd_addr),
 .prt_bytes(rd_bytes),
 .prt_dv(rd_dv)

);

processing_system7_vip_v1_0_3_ocm_mem ocm();

reg [1:0] state;
always@(posedge sw_clk or negedge rstn)
begin
if(!rstn) begin
 wr_ack <= 0; 
 rd_dv <= 0;
 state <= 2'd0;
end else begin
 case(state) 
 0:begin
     state <= 0;
     wr_ack <= 0;
     rd_dv <= 0;
     if(wr_req) begin
       ocm.write_mem(wr_data , wr_addr, wr_bytes); 
       wr_ack <= 1;
       state <= 1;
     end
     if(rd_req) begin
       ocm.read_mem(rd_data,rd_addr, rd_bytes); 
       rd_dv <= 1;
       state <= 1;
     end

   end
 1:begin
       wr_ack <= 0;
       rd_dv  <= 0;
       state <= 0;
   end 

 endcase
end /// if
end// always

endmodule 


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_interconnect_model.v
 *
 * Date : 2012-11
 *
 * Description : Mimics Top_interconnect Switch.
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_interconnect_model (
 rstn,
 sw_clk, 
 
 w_qos_gp0,
 w_qos_gp1,
 w_qos_hp0,
 w_qos_hp1,
 w_qos_hp2,
 w_qos_hp3,

 r_qos_gp0,
 r_qos_gp1,
 r_qos_hp0,
 r_qos_hp1,
 r_qos_hp2,
 r_qos_hp3,

 wr_ack_ddr_gp0,
 wr_ack_ocm_gp0,
 wr_data_gp0,
 wr_addr_gp0,
 wr_bytes_gp0,
 wr_dv_ddr_gp0,
 wr_dv_ocm_gp0,

 rd_req_ddr_gp0,
 rd_req_ocm_gp0,
 rd_req_reg_gp0,
 rd_addr_gp0,
 rd_bytes_gp0,
 rd_data_ddr_gp0,
 rd_data_ocm_gp0,
 rd_data_reg_gp0,
 rd_dv_ddr_gp0,
 rd_dv_ocm_gp0,
 rd_dv_reg_gp0,

 wr_ack_ddr_gp1,
 wr_ack_ocm_gp1,
 wr_data_gp1,
 wr_addr_gp1,
 wr_bytes_gp1,
 wr_dv_ddr_gp1,
 wr_dv_ocm_gp1,
 rd_req_ddr_gp1,
 rd_req_ocm_gp1,
 rd_req_reg_gp1,
 rd_addr_gp1,
 rd_bytes_gp1,
 rd_data_ddr_gp1,
 rd_data_ocm_gp1,
 rd_data_reg_gp1,
 rd_dv_ddr_gp1,
 rd_dv_ocm_gp1,
 rd_dv_reg_gp1,

 wr_ack_ddr_hp0,
 wr_ack_ocm_hp0,
 wr_data_hp0,
 wr_addr_hp0,
 wr_bytes_hp0,
 wr_dv_ddr_hp0,
 wr_dv_ocm_hp0,
 rd_req_ddr_hp0,
 rd_req_ocm_hp0,
 rd_addr_hp0,
 rd_bytes_hp0,
 rd_data_ddr_hp0,
 rd_data_ocm_hp0,
 rd_dv_ddr_hp0,
 rd_dv_ocm_hp0,

 wr_ack_ddr_hp1,
 wr_ack_ocm_hp1,
 wr_data_hp1,
 wr_addr_hp1,
 wr_bytes_hp1,
 wr_dv_ddr_hp1,
 wr_dv_ocm_hp1,
 rd_req_ddr_hp1,
 rd_req_ocm_hp1,
 rd_addr_hp1,
 rd_bytes_hp1,
 rd_data_ddr_hp1,
 rd_data_ocm_hp1,
 rd_dv_ddr_hp1,
 rd_dv_ocm_hp1,

 wr_ack_ddr_hp2,
 wr_ack_ocm_hp2,
 wr_data_hp2,
 wr_addr_hp2,
 wr_bytes_hp2,
 wr_dv_ddr_hp2,
 wr_dv_ocm_hp2,
 rd_req_ddr_hp2,
 rd_req_ocm_hp2,
 rd_addr_hp2,
 rd_bytes_hp2,
 rd_data_ddr_hp2,
 rd_data_ocm_hp2,
 rd_dv_ddr_hp2,
 rd_dv_ocm_hp2,

 wr_ack_ddr_hp3,
 wr_ack_ocm_hp3,
 wr_data_hp3,
 wr_addr_hp3,
 wr_bytes_hp3,
 wr_dv_ddr_hp3,
 wr_dv_ocm_hp3,
 rd_req_ddr_hp3,
 rd_req_ocm_hp3,
 rd_addr_hp3,
 rd_bytes_hp3,
 rd_data_ddr_hp3,
 rd_data_ocm_hp3,
 rd_dv_ddr_hp3,
 rd_dv_ocm_hp3,

/* Goes to port 1 of DDR */
 ddr_wr_ack_port1,
 ddr_wr_dv_port1,
 ddr_rd_req_port1,
 ddr_rd_dv_port1,
 ddr_wr_addr_port1,
 ddr_wr_data_port1,
 ddr_wr_bytes_port1,
 ddr_rd_addr_port1,
 ddr_rd_data_port1,
 ddr_rd_bytes_port1,
 ddr_wr_qos_port1,
 ddr_rd_qos_port1,

/* Goes to port2 of DDR */
 ddr_wr_ack_port2,
 ddr_wr_dv_port2,
 ddr_rd_req_port2,
 ddr_rd_dv_port2,
 ddr_wr_addr_port2,
 ddr_wr_data_port2,
 ddr_wr_bytes_port2,
 ddr_rd_addr_port2,
 ddr_rd_data_port2,
 ddr_rd_bytes_port2,
 ddr_wr_qos_port2,
 ddr_rd_qos_port2,

/* Goes to port3 of DDR */
 ddr_wr_ack_port3,
 ddr_wr_dv_port3,
 ddr_rd_req_port3,
 ddr_rd_dv_port3,
 ddr_wr_addr_port3,
 ddr_wr_data_port3,
 ddr_wr_bytes_port3,
 ddr_rd_addr_port3,
 ddr_rd_data_port3,
 ddr_rd_bytes_port3,
 ddr_wr_qos_port3,
 ddr_rd_qos_port3,

/* Goes to port1 of OCM */
 ocm_wr_qos_port1,
 ocm_rd_qos_port1,
 ocm_wr_dv_port1,
 ocm_wr_data_port1,
 ocm_wr_addr_port1,
 ocm_wr_bytes_port1,
 ocm_wr_ack_port1,
 ocm_rd_req_port1,
 ocm_rd_data_port1,
 ocm_rd_addr_port1,
 ocm_rd_bytes_port1,
 ocm_rd_dv_port1,

/* Goes to port1 for RegMap  */
 reg_rd_qos_port1,
 reg_rd_req_port1,
 reg_rd_data_port1,
 reg_rd_addr_port1,
 reg_rd_bytes_port1,
 reg_rd_dv_port1

);
`include "processing_system7_vip_v1_0_3_local_params.v"

input rstn;
input sw_clk;

input [axi_qos_width-1:0] w_qos_gp0;
input [axi_qos_width-1:0] w_qos_gp1;
input [axi_qos_width-1:0] w_qos_hp0;
input [axi_qos_width-1:0] w_qos_hp1;
input [axi_qos_width-1:0] w_qos_hp2;
input [axi_qos_width-1:0] w_qos_hp3;

input [axi_qos_width-1:0] r_qos_gp0;
input [axi_qos_width-1:0] r_qos_gp1;
input [axi_qos_width-1:0] r_qos_hp0;
input [axi_qos_width-1:0] r_qos_hp1;
input [axi_qos_width-1:0] r_qos_hp2;
input [axi_qos_width-1:0] r_qos_hp3;
 
output [axi_qos_width-1:0] ocm_wr_qos_port1;
output [axi_qos_width-1:0] ocm_rd_qos_port1;

output wr_ack_ddr_gp0;
output wr_ack_ocm_gp0;
input[max_burst_bits-1:0] wr_data_gp0;
input[addr_width-1:0] wr_addr_gp0;
input[max_burst_bytes_width:0] wr_bytes_gp0;
input wr_dv_ddr_gp0;
input wr_dv_ocm_gp0;
input rd_req_ddr_gp0;
input rd_req_ocm_gp0;
input rd_req_reg_gp0;
input[addr_width-1:0] rd_addr_gp0;
input[max_burst_bytes_width:0] rd_bytes_gp0;
output[max_burst_bits-1:0] rd_data_ddr_gp0;
output[max_burst_bits-1:0] rd_data_ocm_gp0;
output[max_burst_bits-1:0] rd_data_reg_gp0;
output rd_dv_ddr_gp0;
output rd_dv_ocm_gp0;
output rd_dv_reg_gp0;

output wr_ack_ddr_gp1;
output wr_ack_ocm_gp1;
input[max_burst_bits-1:0] wr_data_gp1;
input[addr_width-1:0] wr_addr_gp1;
input[max_burst_bytes_width:0] wr_bytes_gp1;
input wr_dv_ddr_gp1;
input wr_dv_ocm_gp1;
input rd_req_ddr_gp1;
input rd_req_ocm_gp1;
input rd_req_reg_gp1;
input[addr_width-1:0] rd_addr_gp1;
input[max_burst_bytes_width:0] rd_bytes_gp1;
output[max_burst_bits-1:0] rd_data_ddr_gp1;
output[max_burst_bits-1:0] rd_data_ocm_gp1;
output[max_burst_bits-1:0] rd_data_reg_gp1;
output rd_dv_ddr_gp1;
output rd_dv_ocm_gp1;
output rd_dv_reg_gp1;

output wr_ack_ddr_hp0;
output wr_ack_ocm_hp0;
input[max_burst_bits-1:0] wr_data_hp0;
input[addr_width-1:0] wr_addr_hp0;
input[max_burst_bytes_width:0] wr_bytes_hp0;
input wr_dv_ddr_hp0;
input wr_dv_ocm_hp0;
input rd_req_ddr_hp0;
input rd_req_ocm_hp0;
input[addr_width-1:0] rd_addr_hp0;
input[max_burst_bytes_width:0] rd_bytes_hp0;
output[max_burst_bits-1:0] rd_data_ddr_hp0;
output[max_burst_bits-1:0] rd_data_ocm_hp0;
output rd_dv_ddr_hp0;
output rd_dv_ocm_hp0;

output wr_ack_ddr_hp1;
output wr_ack_ocm_hp1;
input[max_burst_bits-1:0] wr_data_hp1;
input[addr_width-1:0] wr_addr_hp1;
input[max_burst_bytes_width:0] wr_bytes_hp1;
input wr_dv_ddr_hp1;
input wr_dv_ocm_hp1;
input rd_req_ddr_hp1;
input rd_req_ocm_hp1;
input[addr_width-1:0] rd_addr_hp1;
input[max_burst_bytes_width:0] rd_bytes_hp1;
output[max_burst_bits-1:0] rd_data_ddr_hp1;
output[max_burst_bits-1:0] rd_data_ocm_hp1;
output rd_dv_ddr_hp1;
output rd_dv_ocm_hp1;

output wr_ack_ddr_hp2;
output wr_ack_ocm_hp2;
input[max_burst_bits-1:0] wr_data_hp2;
input[addr_width-1:0] wr_addr_hp2;
input[max_burst_bytes_width:0] wr_bytes_hp2;
input wr_dv_ddr_hp2;
input wr_dv_ocm_hp2;
input rd_req_ddr_hp2;
input rd_req_ocm_hp2;
input[addr_width-1:0] rd_addr_hp2;
input[max_burst_bytes_width:0] rd_bytes_hp2;
output[max_burst_bits-1:0] rd_data_ddr_hp2;
output[max_burst_bits-1:0] rd_data_ocm_hp2;
output rd_dv_ddr_hp2;
output rd_dv_ocm_hp2;

output wr_ack_ddr_hp3;
output wr_ack_ocm_hp3;
input[max_burst_bits-1:0] wr_data_hp3;
input[addr_width-1:0] wr_addr_hp3;
input[max_burst_bytes_width:0] wr_bytes_hp3;
input wr_dv_ddr_hp3;
input wr_dv_ocm_hp3;
input rd_req_ddr_hp3;
input rd_req_ocm_hp3;
input[addr_width-1:0] rd_addr_hp3;
input[max_burst_bytes_width:0] rd_bytes_hp3;
output[max_burst_bits-1:0] rd_data_ddr_hp3;
output[max_burst_bits-1:0] rd_data_ocm_hp3;
output rd_dv_ddr_hp3;
output rd_dv_ocm_hp3;

/* Goes to port 1 of DDR */
input ddr_wr_ack_port1;
output ddr_wr_dv_port1;
output ddr_rd_req_port1;
input ddr_rd_dv_port1;
output[addr_width-1:0] ddr_wr_addr_port1;
output[max_burst_bits-1:0] ddr_wr_data_port1;
output[max_burst_bytes_width:0] ddr_wr_bytes_port1;
output[addr_width-1:0] ddr_rd_addr_port1;
input[max_burst_bits-1:0] ddr_rd_data_port1;
output[max_burst_bytes_width:0] ddr_rd_bytes_port1;
output [axi_qos_width-1:0] ddr_wr_qos_port1;
output [axi_qos_width-1:0] ddr_rd_qos_port1;

/* Goes to port2 of DDR */
input ddr_wr_ack_port2;
output ddr_wr_dv_port2;
output ddr_rd_req_port2;
input ddr_rd_dv_port2;
output[addr_width-1:0] ddr_wr_addr_port2;
output[max_burst_bits-1:0] ddr_wr_data_port2;
output[max_burst_bytes_width:0] ddr_wr_bytes_port2;
output[addr_width-1:0] ddr_rd_addr_port2;
input[max_burst_bits-1:0] ddr_rd_data_port2;
output[max_burst_bytes_width:0] ddr_rd_bytes_port2;
output [axi_qos_width-1:0] ddr_wr_qos_port2;
output [axi_qos_width-1:0] ddr_rd_qos_port2;

/* Goes to port3 of DDR */
input ddr_wr_ack_port3;
output ddr_wr_dv_port3;
output ddr_rd_req_port3;
input ddr_rd_dv_port3;
output[addr_width-1:0] ddr_wr_addr_port3;
output[max_burst_bits-1:0] ddr_wr_data_port3;
output[max_burst_bytes_width:0] ddr_wr_bytes_port3;
output[addr_width-1:0] ddr_rd_addr_port3;
input[max_burst_bits-1:0] ddr_rd_data_port3;
output[max_burst_bytes_width:0] ddr_rd_bytes_port3;
output [axi_qos_width-1:0] ddr_wr_qos_port3;
output [axi_qos_width-1:0] ddr_rd_qos_port3;

/* Goes to port1 of OCM */
input ocm_wr_ack_port1;
output ocm_wr_dv_port1;
output ocm_rd_req_port1;
input ocm_rd_dv_port1;
output[max_burst_bits-1:0] ocm_wr_data_port1;
output[addr_width-1:0] ocm_wr_addr_port1;
output[max_burst_bytes_width:0] ocm_wr_bytes_port1;
input[max_burst_bits-1:0] ocm_rd_data_port1;
output[addr_width-1:0] ocm_rd_addr_port1;
output[max_burst_bytes_width:0] ocm_rd_bytes_port1;

/* Goes to port1 of REG */
output [axi_qos_width-1:0] reg_rd_qos_port1;  
output reg_rd_req_port1;
input reg_rd_dv_port1;
input[max_burst_bits-1:0] reg_rd_data_port1;
output[addr_width-1:0] reg_rd_addr_port1;
output[max_burst_bytes_width:0] reg_rd_bytes_port1;

wire ocm_wr_dv_osw0;
wire ocm_wr_dv_osw1;
wire[max_burst_bits-1:0] ocm_wr_data_osw0;
wire[max_burst_bits-1:0] ocm_wr_data_osw1;
wire[addr_width-1:0] ocm_wr_addr_osw0;
wire[addr_width-1:0] ocm_wr_addr_osw1;
wire[max_burst_bytes_width:0] ocm_wr_bytes_osw0;
wire[max_burst_bytes_width:0] ocm_wr_bytes_osw1;
wire ocm_wr_ack_osw0;
wire ocm_wr_ack_osw1;
wire ocm_rd_req_osw0;
wire ocm_rd_req_osw1;
wire[max_burst_bits-1:0] ocm_rd_data_osw0;
wire[max_burst_bits-1:0] ocm_rd_data_osw1;
wire[addr_width-1:0] ocm_rd_addr_osw0;
wire[addr_width-1:0] ocm_rd_addr_osw1;
wire[max_burst_bytes_width:0] ocm_rd_bytes_osw0;
wire[max_burst_bytes_width:0] ocm_rd_bytes_osw1;
wire ocm_rd_dv_osw0;
wire ocm_rd_dv_osw1;

wire [axi_qos_width-1:0] ocm_wr_qos_osw0;
wire [axi_qos_width-1:0] ocm_wr_qos_osw1;
wire [axi_qos_width-1:0] ocm_rd_qos_osw0;
wire [axi_qos_width-1:0] ocm_rd_qos_osw1;


processing_system7_vip_v1_0_3_fmsw_gp fmsw (
 .sw_clk(sw_clk),
 .rstn(rstn),
   
 .w_qos_gp0(w_qos_gp0),
 .r_qos_gp0(r_qos_gp0),
 .wr_ack_ocm_gp0(wr_ack_ocm_gp0),
 .wr_ack_ddr_gp0(wr_ack_ddr_gp0),
 .wr_data_gp0(wr_data_gp0),
 .wr_addr_gp0(wr_addr_gp0),
 .wr_bytes_gp0(wr_bytes_gp0),
 .wr_dv_ocm_gp0(wr_dv_ocm_gp0),
 .wr_dv_ddr_gp0(wr_dv_ddr_gp0),
 .rd_req_ocm_gp0(rd_req_ocm_gp0),
 .rd_req_ddr_gp0(rd_req_ddr_gp0),
 .rd_req_reg_gp0(rd_req_reg_gp0),
 .rd_addr_gp0(rd_addr_gp0),
 .rd_bytes_gp0(rd_bytes_gp0),
 .rd_data_ddr_gp0(rd_data_ddr_gp0),
 .rd_data_ocm_gp0(rd_data_ocm_gp0),
 .rd_data_reg_gp0(rd_data_reg_gp0),
 .rd_dv_ocm_gp0(rd_dv_ocm_gp0),
 .rd_dv_ddr_gp0(rd_dv_ddr_gp0),
 .rd_dv_reg_gp0(rd_dv_reg_gp0),
 
 .w_qos_gp1(w_qos_gp1),
 .r_qos_gp1(r_qos_gp1),
 .wr_ack_ocm_gp1(wr_ack_ocm_gp1),
 .wr_ack_ddr_gp1(wr_ack_ddr_gp1),
 .wr_data_gp1(wr_data_gp1),
 .wr_addr_gp1(wr_addr_gp1),
 .wr_bytes_gp1(wr_bytes_gp1),
 .wr_dv_ocm_gp1(wr_dv_ocm_gp1),
 .wr_dv_ddr_gp1(wr_dv_ddr_gp1),
 .rd_req_ocm_gp1(rd_req_ocm_gp1),
 .rd_req_ddr_gp1(rd_req_ddr_gp1),
 .rd_req_reg_gp1(rd_req_reg_gp1),
 .rd_addr_gp1(rd_addr_gp1),
 .rd_bytes_gp1(rd_bytes_gp1),
 .rd_data_ddr_gp1(rd_data_ddr_gp1),
 .rd_data_ocm_gp1(rd_data_ocm_gp1),
 .rd_data_reg_gp1(rd_data_reg_gp1),
 .rd_dv_ocm_gp1(rd_dv_ocm_gp1),
 .rd_dv_ddr_gp1(rd_dv_ddr_gp1),
 .rd_dv_reg_gp1(rd_dv_reg_gp1),
    
 .ocm_wr_ack (ocm_wr_ack_osw0),
 .ocm_wr_dv  (ocm_wr_dv_osw0),
 .ocm_rd_req (ocm_rd_req_osw0),
 .ocm_rd_dv  (ocm_rd_dv_osw0),
 .ocm_wr_addr(ocm_wr_addr_osw0),
 .ocm_wr_data(ocm_wr_data_osw0),
 .ocm_wr_bytes(ocm_wr_bytes_osw0),
 .ocm_rd_addr(ocm_rd_addr_osw0),
 .ocm_rd_data(ocm_rd_data_osw0),
 .ocm_rd_bytes(ocm_rd_bytes_osw0),

 .ocm_wr_qos(ocm_wr_qos_osw0),
 .ocm_rd_qos(ocm_rd_qos_osw0),
 
 .ddr_wr_qos(ddr_wr_qos_port1),
 .ddr_rd_qos(ddr_rd_qos_port1),

 .reg_rd_qos(reg_rd_qos_port1),

 .ddr_wr_ack(ddr_wr_ack_port1),
 .ddr_wr_dv(ddr_wr_dv_port1),
 .ddr_rd_req(ddr_rd_req_port1),
 .ddr_rd_dv(ddr_rd_dv_port1),
 .ddr_wr_addr(ddr_wr_addr_port1),
 .ddr_wr_data(ddr_wr_data_port1),
 .ddr_wr_bytes(ddr_wr_bytes_port1),
 .ddr_rd_addr(ddr_rd_addr_port1),
 .ddr_rd_data(ddr_rd_data_port1),
 .ddr_rd_bytes(ddr_rd_bytes_port1),

 .reg_rd_req(reg_rd_req_port1),
 .reg_rd_dv(reg_rd_dv_port1),
 .reg_rd_addr(reg_rd_addr_port1),
 .reg_rd_data(reg_rd_data_port1),
 .reg_rd_bytes(reg_rd_bytes_port1)
);


processing_system7_vip_v1_0_3_ssw_hp ssw(
 .sw_clk(sw_clk),
 .rstn(rstn),
 .w_qos_hp0(w_qos_hp0),
 .r_qos_hp0(r_qos_hp0),
 .w_qos_hp1(w_qos_hp1),
 .r_qos_hp1(r_qos_hp1),
 .w_qos_hp2(w_qos_hp2),
 .r_qos_hp2(r_qos_hp2),
 .w_qos_hp3(w_qos_hp3),
 .r_qos_hp3(r_qos_hp3),
   
 .wr_ack_ddr_hp0(wr_ack_ddr_hp0),
 .wr_data_hp0(wr_data_hp0),
 .wr_addr_hp0(wr_addr_hp0),
 .wr_bytes_hp0(wr_bytes_hp0),
 .wr_dv_ddr_hp0(wr_dv_ddr_hp0),
 .rd_req_ddr_hp0(rd_req_ddr_hp0),
 .rd_addr_hp0(rd_addr_hp0),
 .rd_bytes_hp0(rd_bytes_hp0),
 .rd_data_ddr_hp0(rd_data_ddr_hp0),
 .rd_data_ocm_hp0(rd_data_ocm_hp0),
 .rd_dv_ddr_hp0(rd_dv_ddr_hp0),
   
 .wr_ack_ocm_hp0(wr_ack_ocm_hp0),
 .wr_dv_ocm_hp0(wr_dv_ocm_hp0),
 .rd_req_ocm_hp0(rd_req_ocm_hp0),
 .rd_dv_ocm_hp0(rd_dv_ocm_hp0),
   
 .wr_ack_ddr_hp1(wr_ack_ddr_hp1),
 .wr_data_hp1(wr_data_hp1),
 .wr_addr_hp1(wr_addr_hp1),
 .wr_bytes_hp1(wr_bytes_hp1),
 .wr_dv_ddr_hp1(wr_dv_ddr_hp1),
 .rd_req_ddr_hp1(rd_req_ddr_hp1),
 .rd_addr_hp1(rd_addr_hp1),
 .rd_bytes_hp1(rd_bytes_hp1),
 .rd_data_ddr_hp1(rd_data_ddr_hp1),
 .rd_data_ocm_hp1(rd_data_ocm_hp1),
 .rd_dv_ddr_hp1(rd_dv_ddr_hp1),
   
 .wr_ack_ocm_hp1(wr_ack_ocm_hp1),
 .wr_dv_ocm_hp1(wr_dv_ocm_hp1),
 .rd_req_ocm_hp1(rd_req_ocm_hp1),
 .rd_dv_ocm_hp1(rd_dv_ocm_hp1),
   
 .wr_ack_ddr_hp2(wr_ack_ddr_hp2),
 .wr_data_hp2(wr_data_hp2),
 .wr_addr_hp2(wr_addr_hp2),
 .wr_bytes_hp2(wr_bytes_hp2),
 .wr_dv_ddr_hp2(wr_dv_ddr_hp2),
 .rd_req_ddr_hp2(rd_req_ddr_hp2),
 .rd_addr_hp2(rd_addr_hp2),
 .rd_bytes_hp2(rd_bytes_hp2),
 .rd_data_ddr_hp2(rd_data_ddr_hp2),
 .rd_data_ocm_hp2(rd_data_ocm_hp2),
 .rd_dv_ddr_hp2(rd_dv_ddr_hp2),
   
 .wr_ack_ocm_hp2(wr_ack_ocm_hp2),
 .wr_dv_ocm_hp2(wr_dv_ocm_hp2),
 .rd_req_ocm_hp2(rd_req_ocm_hp2),
 .rd_dv_ocm_hp2(rd_dv_ocm_hp2),
   
 .wr_ack_ddr_hp3(wr_ack_ddr_hp3),
 .wr_data_hp3(wr_data_hp3),
 .wr_addr_hp3(wr_addr_hp3),
 .wr_bytes_hp3(wr_bytes_hp3),
 .wr_dv_ddr_hp3(wr_dv_ddr_hp3),
 .rd_req_ddr_hp3(rd_req_ddr_hp3),
 .rd_addr_hp3(rd_addr_hp3),
 .rd_bytes_hp3(rd_bytes_hp3),
 .rd_data_ddr_hp3(rd_data_ddr_hp3),
 .rd_data_ocm_hp3(rd_data_ocm_hp3),
 .rd_dv_ddr_hp3(rd_dv_ddr_hp3),
   
 .wr_ack_ocm_hp3(wr_ack_ocm_hp3),
 .wr_dv_ocm_hp3(wr_dv_ocm_hp3),
 .rd_req_ocm_hp3(rd_req_ocm_hp3),
 .rd_dv_ocm_hp3(rd_dv_ocm_hp3),
   
 .ddr_wr_ack0(ddr_wr_ack_port2),
 .ddr_wr_dv0(ddr_wr_dv_port2),
 .ddr_rd_req0(ddr_rd_req_port2),
 .ddr_rd_dv0(ddr_rd_dv_port2),
 .ddr_wr_addr0(ddr_wr_addr_port2),
 .ddr_wr_data0(ddr_wr_data_port2),
 .ddr_wr_bytes0(ddr_wr_bytes_port2),
 .ddr_rd_addr0(ddr_rd_addr_port2),
 .ddr_rd_data0(ddr_rd_data_port2),
 .ddr_rd_bytes0(ddr_rd_bytes_port2),
 .ddr_wr_qos0(ddr_wr_qos_port2),
 .ddr_rd_qos0(ddr_rd_qos_port2),
    
 .ddr_wr_ack1(ddr_wr_ack_port3),
 .ddr_wr_dv1(ddr_wr_dv_port3),
 .ddr_rd_req1(ddr_rd_req_port3),
 .ddr_rd_dv1(ddr_rd_dv_port3),
 .ddr_wr_addr1(ddr_wr_addr_port3),
 .ddr_wr_data1(ddr_wr_data_port3),
 .ddr_wr_bytes1(ddr_wr_bytes_port3),
 .ddr_rd_addr1(ddr_rd_addr_port3),
 .ddr_rd_data1(ddr_rd_data_port3),
 .ddr_rd_bytes1(ddr_rd_bytes_port3),
 .ddr_wr_qos1(ddr_wr_qos_port3),
 .ddr_rd_qos1(ddr_rd_qos_port3),

 .ocm_wr_qos(ocm_wr_qos_osw1),
 .ocm_rd_qos(ocm_rd_qos_osw1),
 
 .ocm_wr_ack (ocm_wr_ack_osw1),
 .ocm_wr_dv  (ocm_wr_dv_osw1),
 .ocm_rd_req (ocm_rd_req_osw1),
 .ocm_rd_dv  (ocm_rd_dv_osw1),
 .ocm_wr_addr(ocm_wr_addr_osw1),
 .ocm_wr_data(ocm_wr_data_osw1),
 .ocm_wr_bytes(ocm_wr_bytes_osw1),
 .ocm_rd_addr(ocm_rd_addr_osw1),
 .ocm_rd_data(ocm_rd_data_osw1),
 .ocm_rd_bytes(ocm_rd_bytes_osw1)

);

processing_system7_vip_v1_0_3_arb_wr osw_wr (
 .rstn(rstn),
 .sw_clk(sw_clk),
 .qos1(ocm_wr_qos_osw0), /// chk
 .qos2(ocm_wr_qos_osw1), /// chk
 .prt_dv1(ocm_wr_dv_osw0),
 .prt_dv2(ocm_wr_dv_osw1),
 .prt_data1(ocm_wr_data_osw0),
 .prt_data2(ocm_wr_data_osw1),
 .prt_addr1(ocm_wr_addr_osw0),
 .prt_addr2(ocm_wr_addr_osw1),
 .prt_bytes1(ocm_wr_bytes_osw0),
 .prt_bytes2(ocm_wr_bytes_osw1),
 .prt_ack1(ocm_wr_ack_osw0),
 .prt_ack2(ocm_wr_ack_osw1),
 .prt_req(ocm_wr_dv_port1),
 .prt_qos(ocm_wr_qos_port1),
 .prt_data(ocm_wr_data_port1),
 .prt_addr(ocm_wr_addr_port1),
 .prt_bytes(ocm_wr_bytes_port1),
 .prt_ack(ocm_wr_ack_port1)
);

processing_system7_vip_v1_0_3_arb_rd osw_rd(
 .rstn(rstn),
 .sw_clk(sw_clk),
 .qos1(ocm_rd_qos_osw0), // chk
 .qos2(ocm_rd_qos_osw1), // chk
 .prt_req1(ocm_rd_req_osw0),
 .prt_req2(ocm_rd_req_osw1),
 .prt_data1(ocm_rd_data_osw0),
 .prt_data2(ocm_rd_data_osw1),
 .prt_addr1(ocm_rd_addr_osw0),
 .prt_addr2(ocm_rd_addr_osw1),
 .prt_bytes1(ocm_rd_bytes_osw0),
 .prt_bytes2(ocm_rd_bytes_osw1),
 .prt_dv1(ocm_rd_dv_osw0),
 .prt_dv2(ocm_rd_dv_osw1),
 .prt_req(ocm_rd_req_port1),
 .prt_qos(ocm_rd_qos_port1),
 .prt_data(ocm_rd_data_port1),
 .prt_addr(ocm_rd_addr_port1),
 .prt_bytes(ocm_rd_bytes_port1),
 .prt_dv(ocm_rd_dv_port1)
);

endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_gen_reset.v
 *
 * Date : 2012-11
 *
 * Description : Module that generates FPGA_RESETs and synchronizes RESETs to the
 *               respective clocks.
 *****************************************************************************/
 `timescale 1ns/1ps
module processing_system7_vip_v1_0_3_gen_reset(
 por_rst_n,
 sys_rst_n,
 rst_out_n,

 m_axi_gp0_clk,
 m_axi_gp1_clk,
 s_axi_gp0_clk,
 s_axi_gp1_clk,
 s_axi_hp0_clk,
 s_axi_hp1_clk,
 s_axi_hp2_clk,
 s_axi_hp3_clk,
 s_axi_acp_clk,

 m_axi_gp0_rstn,
 m_axi_gp1_rstn,
 s_axi_gp0_rstn,
 s_axi_gp1_rstn,
 s_axi_hp0_rstn,
 s_axi_hp1_rstn,
 s_axi_hp2_rstn,
 s_axi_hp3_rstn,
 s_axi_acp_rstn,

 fclk_reset3_n,
 fclk_reset2_n,
 fclk_reset1_n,
 fclk_reset0_n,

 fpga_acp_reset_n,
 fpga_gp_m0_reset_n,
 fpga_gp_m1_reset_n,
 fpga_gp_s0_reset_n,
 fpga_gp_s1_reset_n,
 fpga_hp_s0_reset_n,
 fpga_hp_s1_reset_n,
 fpga_hp_s2_reset_n,
 fpga_hp_s3_reset_n

);

input por_rst_n;
input sys_rst_n;
input m_axi_gp0_clk;
input m_axi_gp1_clk;
input s_axi_gp0_clk;
input s_axi_gp1_clk;
input s_axi_hp0_clk;
input s_axi_hp1_clk;
input s_axi_hp2_clk;
input s_axi_hp3_clk;
input s_axi_acp_clk;

output reg m_axi_gp0_rstn;
output reg m_axi_gp1_rstn;
output reg s_axi_gp0_rstn;
output reg s_axi_gp1_rstn;
output reg s_axi_hp0_rstn;
output reg s_axi_hp1_rstn;
output reg s_axi_hp2_rstn;
output reg s_axi_hp3_rstn;
output reg s_axi_acp_rstn;

output rst_out_n;
output fclk_reset3_n;
output fclk_reset2_n;
output fclk_reset1_n;
output fclk_reset0_n;

output fpga_acp_reset_n;
output fpga_gp_m0_reset_n;
output fpga_gp_m1_reset_n;
output fpga_gp_s0_reset_n;
output fpga_gp_s1_reset_n;
output fpga_hp_s0_reset_n;
output fpga_hp_s1_reset_n;
output fpga_hp_s2_reset_n;
output fpga_hp_s3_reset_n;

reg [31:0] fabric_rst_n;

reg r_m_axi_gp0_rstn;
reg r_m_axi_gp1_rstn;
reg r_s_axi_gp0_rstn;
reg r_s_axi_gp1_rstn;
reg r_s_axi_hp0_rstn;
reg r_s_axi_hp1_rstn;
reg r_s_axi_hp2_rstn;
reg r_s_axi_hp3_rstn;
reg r_s_axi_acp_rstn;

assign rst_out_n = por_rst_n & sys_rst_n;

assign fclk_reset0_n = !fabric_rst_n[0];
assign fclk_reset1_n = !fabric_rst_n[1];
assign fclk_reset2_n = !fabric_rst_n[2];
assign fclk_reset3_n = !fabric_rst_n[3];

assign fpga_acp_reset_n = !fabric_rst_n[24];

assign fpga_hp_s3_reset_n = !fabric_rst_n[23];
assign fpga_hp_s2_reset_n = !fabric_rst_n[22];
assign fpga_hp_s1_reset_n = !fabric_rst_n[21];
assign fpga_hp_s0_reset_n = !fabric_rst_n[20];

assign fpga_gp_s1_reset_n = !fabric_rst_n[17];
assign fpga_gp_s0_reset_n = !fabric_rst_n[16];
assign fpga_gp_m1_reset_n = !fabric_rst_n[13];
assign fpga_gp_m0_reset_n = !fabric_rst_n[12];

task fpga_soft_reset;
input[31:0] reset_ctrl;
 begin 
  fabric_rst_n[0] = reset_ctrl[0];
  fabric_rst_n[1] = reset_ctrl[1];
  fabric_rst_n[2] = reset_ctrl[2];
  fabric_rst_n[3] = reset_ctrl[3];
  
  fabric_rst_n[12] = reset_ctrl[12];
  fabric_rst_n[13] = reset_ctrl[13];
  fabric_rst_n[16] = reset_ctrl[16];
  fabric_rst_n[17] = reset_ctrl[17];
  
  fabric_rst_n[20] = reset_ctrl[20];
  fabric_rst_n[21] = reset_ctrl[21];
  fabric_rst_n[22] = reset_ctrl[22];
  fabric_rst_n[23] = reset_ctrl[23];
  
  fabric_rst_n[24] = reset_ctrl[24];
 end
endtask

always@(negedge por_rst_n or negedge sys_rst_n) fabric_rst_n = 32'h01f3_300f;

always@(posedge m_axi_gp0_clk or negedge (por_rst_n & sys_rst_n))
  begin 
    if (!(por_rst_n & sys_rst_n))
      m_axi_gp0_rstn = 1'b0;
	else
      m_axi_gp0_rstn = 1'b1;
  end

always@(posedge m_axi_gp1_clk or negedge (por_rst_n & sys_rst_n))
  begin 
    if (!(por_rst_n & sys_rst_n))
      m_axi_gp1_rstn = 1'b0;
	else
      m_axi_gp1_rstn = 1'b1;
  end

always@(posedge s_axi_gp0_clk or negedge (por_rst_n & sys_rst_n))
  begin 
    if (!(por_rst_n & sys_rst_n))
      s_axi_gp0_rstn = 1'b0;
	else
      s_axi_gp0_rstn = 1'b1;
  end

always@(posedge s_axi_gp1_clk or negedge (por_rst_n & sys_rst_n))
  begin 
    if (!(por_rst_n & sys_rst_n))
      s_axi_gp1_rstn = 1'b0;
	else
      s_axi_gp1_rstn = 1'b1;
  end

always@(posedge s_axi_hp0_clk or negedge (por_rst_n & sys_rst_n))
  begin 
    if (!(por_rst_n & sys_rst_n))
      s_axi_hp0_rstn = 1'b0;
	else
      s_axi_hp0_rstn = 1'b1;
  end

always@(posedge s_axi_hp1_clk or negedge (por_rst_n & sys_rst_n))
  begin 
    if (!(por_rst_n & sys_rst_n))
      s_axi_hp1_rstn = 1'b0;
	else
      s_axi_hp1_rstn = 1'b1;
  end

always@(posedge s_axi_hp2_clk or negedge (por_rst_n & sys_rst_n))
  begin 
    if (!(por_rst_n & sys_rst_n))
      s_axi_hp2_rstn = 1'b0;
	else
      s_axi_hp2_rstn = 1'b1;
  end

always@(posedge s_axi_hp3_clk or negedge (por_rst_n & sys_rst_n))
  begin 
    if (!(por_rst_n & sys_rst_n))
      s_axi_hp3_rstn = 1'b0;
	else
      s_axi_hp3_rstn = 1'b1;
  end

always@(posedge s_axi_acp_clk or negedge (por_rst_n & sys_rst_n))
  begin 
    if (!(por_rst_n & sys_rst_n))
      s_axi_acp_rstn = 1'b0;
	else
      s_axi_acp_rstn = 1'b1;
  end


always@(*) begin
  if ((por_rst_n!= 1'b0) && (por_rst_n!= 1'b1) && (sys_rst_n !=  1'b0) && (sys_rst_n != 1'b1)) begin
     $display(" Error:processing_system7_vip_v1_0_3_gen_reset.  PS_PORB and PS_SRSTB must be driven to known state");
     $finish();
  end
end

endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_gen_clock.v
 *
 * Date : 2012-11
 *
 * Description : Module that generates FCLK clocks and internal clock for Zynq VIP. 
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_gen_clock(
 ps_clk, 
 sw_clk,
 
 fclk_clk3,
 fclk_clk2,
 fclk_clk1,
 fclk_clk0
);

input ps_clk;
output sw_clk;

output fclk_clk3;
output fclk_clk2;
output fclk_clk1;
output fclk_clk0;

parameter freq_clk3 = 50;
parameter freq_clk2 = 50;
parameter freq_clk1 = 50;
parameter freq_clk0 = 50;

reg clk0 = 1'b0;
reg clk1 = 1'b0;
reg clk2 = 1'b0;
reg clk3 = 1'b0;
reg sw_clk = 1'b0;

assign fclk_clk0 = clk0;
assign fclk_clk1 = clk1;
assign fclk_clk2 = clk2;
assign fclk_clk3 = clk3;
 
real clk3_p = (1000.00/freq_clk3)/2;
real clk2_p = (1000.00/freq_clk2)/2;
real clk1_p = (1000.00/freq_clk1)/2;
real clk0_p = (1000.00/freq_clk0)/2;

always #(clk3_p) clk3 = !clk3;
always #(clk2_p) clk2 = !clk2;
always #(clk1_p) clk1 = !clk1;
always #(clk0_p) clk0 = !clk0;

always #(0.5) sw_clk = !sw_clk;


endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_ddrc.v
 *
 * Date : 2012-11
 *
 * Description : Module that acts as controller for sparse memory (DDR).
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3_ddrc(
 rstn,
 sw_clk,

/* Goes to port 0 of DDR */
 ddr_wr_ack_port0,
 ddr_wr_dv_port0,
 ddr_rd_req_port0,
 ddr_rd_dv_port0,
 ddr_wr_addr_port0,
 ddr_wr_data_port0,
 ddr_wr_bytes_port0,
 ddr_rd_addr_port0,
 ddr_rd_data_port0,
 ddr_rd_bytes_port0,
 ddr_wr_qos_port0,
 ddr_rd_qos_port0,


/* Goes to port 1 of DDR */
 ddr_wr_ack_port1,
 ddr_wr_dv_port1,
 ddr_rd_req_port1,
 ddr_rd_dv_port1,
 ddr_wr_addr_port1,
 ddr_wr_data_port1,
 ddr_wr_bytes_port1,
 ddr_rd_addr_port1,
 ddr_rd_data_port1,
 ddr_rd_bytes_port1,
 ddr_wr_qos_port1,
 ddr_rd_qos_port1,

/* Goes to port2 of DDR */
 ddr_wr_ack_port2,
 ddr_wr_dv_port2,
 ddr_rd_req_port2,
 ddr_rd_dv_port2,
 ddr_wr_addr_port2,
 ddr_wr_data_port2,
 ddr_wr_bytes_port2,
 ddr_rd_addr_port2,
 ddr_rd_data_port2,
 ddr_rd_bytes_port2,
 ddr_wr_qos_port2,
 ddr_rd_qos_port2,

/* Goes to port3 of DDR */
 ddr_wr_ack_port3,
 ddr_wr_dv_port3,
 ddr_rd_req_port3,
 ddr_rd_dv_port3,
 ddr_wr_addr_port3,
 ddr_wr_data_port3,
 ddr_wr_bytes_port3,
 ddr_rd_addr_port3,
 ddr_rd_data_port3,
 ddr_rd_bytes_port3,
 ddr_wr_qos_port3,
 ddr_rd_qos_port3 

);

`include "processing_system7_vip_v1_0_3_local_params.v"

input rstn;
input sw_clk;

output ddr_wr_ack_port0;
input ddr_wr_dv_port0;
input ddr_rd_req_port0;
output ddr_rd_dv_port0;
input[addr_width-1:0] ddr_wr_addr_port0;
input[max_burst_bits-1:0] ddr_wr_data_port0;
input[max_burst_bytes_width:0] ddr_wr_bytes_port0;
input[addr_width-1:0] ddr_rd_addr_port0;
output[max_burst_bits-1:0] ddr_rd_data_port0;
input[max_burst_bytes_width:0] ddr_rd_bytes_port0;
input [axi_qos_width-1:0] ddr_wr_qos_port0;
input [axi_qos_width-1:0] ddr_rd_qos_port0;

output ddr_wr_ack_port1;
input ddr_wr_dv_port1;
input ddr_rd_req_port1;
output ddr_rd_dv_port1;
input[addr_width-1:0] ddr_wr_addr_port1;
input[max_burst_bits-1:0] ddr_wr_data_port1;
input[max_burst_bytes_width:0] ddr_wr_bytes_port1;
input[addr_width-1:0] ddr_rd_addr_port1;
output[max_burst_bits-1:0] ddr_rd_data_port1;
input[max_burst_bytes_width:0] ddr_rd_bytes_port1;
input[axi_qos_width-1:0] ddr_wr_qos_port1;
input[axi_qos_width-1:0] ddr_rd_qos_port1;

output ddr_wr_ack_port2;
input ddr_wr_dv_port2;
input ddr_rd_req_port2;
output ddr_rd_dv_port2;
input[addr_width-1:0] ddr_wr_addr_port2;
input[max_burst_bits-1:0] ddr_wr_data_port2;
input[max_burst_bytes_width:0] ddr_wr_bytes_port2;
input[addr_width-1:0] ddr_rd_addr_port2;
output[max_burst_bits-1:0] ddr_rd_data_port2;
input[max_burst_bytes_width:0] ddr_rd_bytes_port2;
input[axi_qos_width-1:0] ddr_wr_qos_port2;
input[axi_qos_width-1:0] ddr_rd_qos_port2;

output ddr_wr_ack_port3;
input ddr_wr_dv_port3;
input ddr_rd_req_port3;
output ddr_rd_dv_port3;
input[addr_width-1:0] ddr_wr_addr_port3;
input[max_burst_bits-1:0] ddr_wr_data_port3;
input[max_burst_bytes_width:0] ddr_wr_bytes_port3;
input[addr_width-1:0] ddr_rd_addr_port3;
output[max_burst_bits-1:0] ddr_rd_data_port3;
input[max_burst_bytes_width:0] ddr_rd_bytes_port3;
input[axi_qos_width-1:0] ddr_wr_qos_port3;
input[axi_qos_width-1:0] ddr_rd_qos_port3;

wire [axi_qos_width-1:0] wr_qos;
wire wr_req;
wire [max_burst_bits-1:0] wr_data;
wire [addr_width-1:0] wr_addr;
wire [max_burst_bytes_width:0] wr_bytes;
reg wr_ack;

wire [axi_qos_width-1:0] rd_qos;
reg [max_burst_bits-1:0] rd_data;
wire [addr_width-1:0] rd_addr;
wire [max_burst_bytes_width:0] rd_bytes;
reg rd_dv;
wire rd_req;

processing_system7_vip_v1_0_3_arb_wr_4 ddr_write_ports (
 .rstn(rstn),
 .sw_clk(sw_clk),
   
 .qos1(ddr_wr_qos_port0),
 .qos2(ddr_wr_qos_port1),
 .qos3(ddr_wr_qos_port2),
 .qos4(ddr_wr_qos_port3),
   
 .prt_dv1(ddr_wr_dv_port0),
 .prt_dv2(ddr_wr_dv_port1),
 .prt_dv3(ddr_wr_dv_port2),
 .prt_dv4(ddr_wr_dv_port3),
   
 .prt_data1(ddr_wr_data_port0),
 .prt_data2(ddr_wr_data_port1),
 .prt_data3(ddr_wr_data_port2),
 .prt_data4(ddr_wr_data_port3),
   
 .prt_addr1(ddr_wr_addr_port0),
 .prt_addr2(ddr_wr_addr_port1),
 .prt_addr3(ddr_wr_addr_port2),
 .prt_addr4(ddr_wr_addr_port3),
   
 .prt_bytes1(ddr_wr_bytes_port0),
 .prt_bytes2(ddr_wr_bytes_port1),
 .prt_bytes3(ddr_wr_bytes_port2),
 .prt_bytes4(ddr_wr_bytes_port3),
   
 .prt_ack1(ddr_wr_ack_port0),
 .prt_ack2(ddr_wr_ack_port1),
 .prt_ack3(ddr_wr_ack_port2),
 .prt_ack4(ddr_wr_ack_port3),
   
 .prt_qos(wr_qos),
 .prt_req(wr_req),
 .prt_data(wr_data),
 .prt_addr(wr_addr),
 .prt_bytes(wr_bytes),
 .prt_ack(wr_ack)

);

processing_system7_vip_v1_0_3_arb_rd_4 ddr_read_ports (
 .rstn(rstn),
 .sw_clk(sw_clk),
   
 .qos1(ddr_rd_qos_port0),
 .qos2(ddr_rd_qos_port1),
 .qos3(ddr_rd_qos_port2),
 .qos4(ddr_rd_qos_port3),
   
 .prt_req1(ddr_rd_req_port0),
 .prt_req2(ddr_rd_req_port1),
 .prt_req3(ddr_rd_req_port2),
 .prt_req4(ddr_rd_req_port3),
   
 .prt_data1(ddr_rd_data_port0),
 .prt_data2(ddr_rd_data_port1),
 .prt_data3(ddr_rd_data_port2),
 .prt_data4(ddr_rd_data_port3),
   
 .prt_addr1(ddr_rd_addr_port0),
 .prt_addr2(ddr_rd_addr_port1),
 .prt_addr3(ddr_rd_addr_port2),
 .prt_addr4(ddr_rd_addr_port3),
   
 .prt_bytes1(ddr_rd_bytes_port0),
 .prt_bytes2(ddr_rd_bytes_port1),
 .prt_bytes3(ddr_rd_bytes_port2),
 .prt_bytes4(ddr_rd_bytes_port3),
   
 .prt_dv1(ddr_rd_dv_port0),
 .prt_dv2(ddr_rd_dv_port1),
 .prt_dv3(ddr_rd_dv_port2),
 .prt_dv4(ddr_rd_dv_port3),
   
 .prt_qos(rd_qos),
 .prt_req(rd_req),
 .prt_data(rd_data),
 .prt_addr(rd_addr),
 .prt_bytes(rd_bytes),
 .prt_dv(rd_dv)

);

processing_system7_vip_v1_0_3_sparse_mem ddr();

reg [1:0] state;
always@(posedge sw_clk or negedge rstn)
begin
if(!rstn) begin
 wr_ack <= 0; 
 rd_dv <= 0;
 state <= 2'd0;
end else begin
 case(state) 
 0:begin
     state <= 0;
     wr_ack <= 0;
     rd_dv <= 0;
     if(wr_req) begin
       ddr.write_mem(wr_data , wr_addr, wr_bytes); 
       wr_ack <= 1;
       state <= 1;
     end
     if(rd_req) begin
       ddr.read_mem(rd_data,rd_addr, rd_bytes); 
       rd_dv <= 1;
       state <= 1;
     end

   end
 1:begin
       wr_ack <= 0;
       rd_dv  <= 0;
       state <= 0;
   end 

 endcase
end /// if
end// always

endmodule 


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_axi_slave.v
 *
 * Date : 2012-11
 *
 * Description : Model that acts as PS AXI Slave  port interface. 
 *               It uses AXI3 Slave  VIP
 *****************************************************************************/
 `timescale 1ns/1ps

import axi_vip_pkg::*;

module processing_system7_vip_v1_0_3_axi_slave (
  S_RESETN,

  S_ARREADY,
  S_AWREADY,
  S_BVALID,
  S_RLAST,
  S_RVALID,
  S_WREADY,
  S_BRESP,
  S_RRESP,
  S_RDATA,
  S_BID,
  S_RID,
  S_ACLK,
  S_ARVALID,
  S_AWVALID,
  S_BREADY,
  S_RREADY,
  S_WLAST,
  S_WVALID,
  S_ARBURST,
  S_ARLOCK,
  S_ARSIZE,
  S_AWBURST,
  S_AWLOCK,
  S_AWSIZE,
  S_ARPROT,
  S_AWPROT,
  S_ARADDR,
  S_AWADDR,
  S_WDATA,
  S_ARCACHE,
  S_ARLEN,
  S_AWCACHE,
  S_AWLEN,
  S_WSTRB,
  S_ARID,
  S_AWID,
  S_WID,
  
  S_AWQOS,
  S_ARQOS,

  SW_CLK,
  WR_DATA_ACK_OCM,
  WR_DATA_ACK_DDR,
  WR_ADDR,
  WR_DATA,
  WR_BYTES,
  WR_DATA_VALID_OCM,
  WR_DATA_VALID_DDR,
  WR_QOS,

  RD_QOS, 
  RD_REQ_DDR,
  RD_REQ_OCM,
  RD_REQ_REG,
  RD_ADDR,
  RD_DATA_OCM,
  RD_DATA_DDR,
  RD_DATA_REG,
  RD_BYTES,
  RD_DATA_VALID_OCM,
  RD_DATA_VALID_DDR,
  RD_DATA_VALID_REG

);
  parameter enable_this_port = 0;  
  parameter slave_name = "Slave";
  parameter data_bus_width = 32;
  parameter address_bus_width = 32;
  parameter id_bus_width = 6;
  parameter slave_base_address = 0;
  parameter slave_high_address = 4;
  parameter max_outstanding_transactions = 8;
  parameter exclusive_access_supported = 0;
  parameter max_wr_outstanding_transactions = 8;
  parameter max_rd_outstanding_transactions = 8;
  
  `include "processing_system7_vip_v1_0_3_local_params.v"

  /* Local parameters only for this module */
  /* Internal counters that are used as Read/Write pointers to the fifo's that store all the transaction info on all channles.
     This parameter is used to define the width of these pointers --> depending on Maximum outstanding transactions supported.
     1-bit extra width than the no.of.bits needed to represent the outstanding transactions
     Extra bit helps in generating the empty and full flags
  */
  parameter int_wr_cntr_width = clogb2(max_wr_outstanding_transactions+1);
  parameter int_rd_cntr_width = clogb2(max_rd_outstanding_transactions+1);

  /* RESP data */
  parameter rsp_fifo_bits = axi_rsp_width+id_bus_width; 
  parameter rsp_lsb = 0;
  parameter rsp_msb = axi_rsp_width-1;
  parameter rsp_id_lsb = rsp_msb + 1;  
  parameter rsp_id_msb = rsp_id_lsb + id_bus_width-1;  

  input  S_RESETN;

  output  S_ARREADY;
  output  S_AWREADY;
  output  S_BVALID;
  output  S_RLAST;
  output  S_RVALID;
  output  S_WREADY;
  output  [axi_rsp_width-1:0] S_BRESP;
  output  [axi_rsp_width-1:0] S_RRESP;
  output  [data_bus_width-1:0] S_RDATA;
  output  [id_bus_width-1:0] S_BID;
  output  [id_bus_width-1:0] S_RID;
  input S_ACLK;
  input S_ARVALID;
  input S_AWVALID;
  input S_BREADY;
  input S_RREADY;
  input S_WLAST;
  input S_WVALID;
  input [axi_brst_type_width-1:0] S_ARBURST;
  input [axi_lock_width-1:0] S_ARLOCK;
  input [axi_size_width-1:0] S_ARSIZE;
  input [axi_brst_type_width-1:0] S_AWBURST;
  input [axi_lock_width-1:0] S_AWLOCK;
  input [axi_size_width-1:0] S_AWSIZE;
  input [axi_prot_width-1:0] S_ARPROT;
  input [axi_prot_width-1:0] S_AWPROT;
  input [address_bus_width-1:0] S_ARADDR;
  input [address_bus_width-1:0] S_AWADDR;
  input [data_bus_width-1:0] S_WDATA;
  input [axi_cache_width-1:0] S_ARCACHE;
  input [axi_cache_width-1:0] S_ARLEN;
  
  input [axi_qos_width-1:0] S_ARQOS;
 
  input [axi_cache_width-1:0] S_AWCACHE;
  input [axi_len_width-1:0] S_AWLEN;

  input [axi_qos_width-1:0] S_AWQOS;
  input [(data_bus_width/8)-1:0] S_WSTRB;
  input [id_bus_width-1:0] S_ARID;
  input [id_bus_width-1:0] S_AWID;
  input [id_bus_width-1:0] S_WID;

  input SW_CLK;
  input WR_DATA_ACK_DDR, WR_DATA_ACK_OCM;
  output reg WR_DATA_VALID_DDR, WR_DATA_VALID_OCM;
  output reg [max_burst_bits-1:0] WR_DATA;
  output reg [addr_width-1:0] WR_ADDR;
  output reg [max_burst_bytes_width:0] WR_BYTES;
  output reg RD_REQ_OCM, RD_REQ_DDR, RD_REQ_REG;
  output reg [addr_width-1:0] RD_ADDR;
  input [max_burst_bits-1:0] RD_DATA_DDR,RD_DATA_OCM, RD_DATA_REG;
  output reg[max_burst_bytes_width:0] RD_BYTES;
  input RD_DATA_VALID_OCM,RD_DATA_VALID_DDR, RD_DATA_VALID_REG;
  output reg [axi_qos_width-1:0] WR_QOS, RD_QOS;
  wire net_ARVALID;
  wire net_AWVALID;
  wire net_WVALID;
  bit [31:0] static_count;

  real s_aclk_period;

   axi_slv_agent #(1,address_bus_width, data_bus_width, data_bus_width, id_bus_width,id_bus_width,0,0,0,0,0,1,1,1,1,0,1,1,1,1,1,1) slv;

   axi_vip_v1_1_1_top #(
     .C_AXI_PROTOCOL(1),
     .C_AXI_INTERFACE_MODE(2),
     .C_AXI_ADDR_WIDTH(address_bus_width),
     .C_AXI_WDATA_WIDTH(data_bus_width),
     .C_AXI_RDATA_WIDTH(data_bus_width),
     .C_AXI_WID_WIDTH(id_bus_width),
     .C_AXI_RID_WIDTH(id_bus_width),
     .C_AXI_AWUSER_WIDTH(0),
     .C_AXI_ARUSER_WIDTH(0),
     .C_AXI_WUSER_WIDTH(0),
     .C_AXI_RUSER_WIDTH(0),
     .C_AXI_BUSER_WIDTH(0),
     .C_AXI_SUPPORTS_NARROW(1),
     .C_AXI_HAS_BURST(1),
     .C_AXI_HAS_LOCK(1),
     .C_AXI_HAS_CACHE(1),
     .C_AXI_HAS_REGION(0),
     .C_AXI_HAS_PROT(1),
     .C_AXI_HAS_QOS(1),
     .C_AXI_HAS_WSTRB(1),
     .C_AXI_HAS_BRESP(1),
     .C_AXI_HAS_RRESP(1),
 	 .C_AXI_HAS_ARESETN(1)
   ) slave (
     .aclk(S_ACLK),
     .aclken(1'B1),
     .aresetn(S_RESETN),
     .s_axi_awid(S_AWID),
     .s_axi_awaddr(S_AWADDR),
     .s_axi_awlen(S_AWLEN),
     .s_axi_awsize(S_AWSIZE),
     .s_axi_awburst(S_AWBURST),
     .s_axi_awlock(S_AWLOCK),
     .s_axi_awcache(S_AWCACHE),
     .s_axi_awprot(S_AWPROT),
     .s_axi_awregion(4'B0),
     .s_axi_awqos(4'h0),
     .s_axi_awuser(1'B0),
     .s_axi_awvalid(S_AWVALID),
     .s_axi_awready(S_AWREADY),
     .s_axi_wid(S_WID),
     .s_axi_wdata(S_WDATA),
     .s_axi_wstrb(S_WSTRB),
     .s_axi_wlast(S_WLAST),
     .s_axi_wuser(1'B0),
     .s_axi_wvalid(S_WVALID),
     .s_axi_wready(S_WREADY),
     .s_axi_bid(S_BID),
     .s_axi_bresp(S_BRESP),
     .s_axi_buser(),
     .s_axi_bvalid(S_BVALID),
     .s_axi_bready(S_BREADY),
     .s_axi_arid(S_ARID),
     .s_axi_araddr(S_ARADDR),
     .s_axi_arlen(S_ARLEN),
     .s_axi_arsize(S_ARSIZE),
     .s_axi_arburst(S_ARBURST),
     .s_axi_arlock(S_ARLOCK),
     .s_axi_arcache(S_ARCACHE),
     .s_axi_arprot(S_ARPROT),
     .s_axi_arregion(4'B0),
     .s_axi_arqos(S_ARQOS),
     .s_axi_aruser(1'B0),
     .s_axi_arvalid(S_ARVALID),
     .s_axi_arready(S_ARREADY),
     .s_axi_rid(S_RID),
     .s_axi_rdata(S_RDATA),
     .s_axi_rresp(S_RRESP),
     .s_axi_rlast(S_RLAST),
     .s_axi_ruser(),
     .s_axi_rvalid(S_RVALID),
     .s_axi_rready(S_RREADY),
     .m_axi_awid(),
     .m_axi_awaddr(),
     .m_axi_awlen(),
     .m_axi_awsize(),
     .m_axi_awburst(),
     .m_axi_awlock(),
     .m_axi_awcache(),
     .m_axi_awprot(),
     .m_axi_awregion(),
     .m_axi_awqos(),
     .m_axi_awuser(),
     .m_axi_awvalid(),
     .m_axi_awready(1'b0),
     .m_axi_wid(),
     .m_axi_wdata(),
     .m_axi_wstrb(),
     .m_axi_wlast(),
     .m_axi_wuser(),
     .m_axi_wvalid(),
     .m_axi_wready(1'b0),
     .m_axi_bid(12'h000),
     .m_axi_bresp(2'b00),
     .m_axi_buser(1'B0),
     .m_axi_bvalid(1'b0),
     .m_axi_bready(),
     .m_axi_arid(),
     .m_axi_araddr(),
     .m_axi_arlen(),
     .m_axi_arsize(),
     .m_axi_arburst(),
     .m_axi_arlock(),
     .m_axi_arcache(),
     .m_axi_arprot(),
     .m_axi_arregion(),
     .m_axi_arqos(),
     .m_axi_aruser(),
     .m_axi_arvalid(),
     .m_axi_arready(1'b0),
     .m_axi_rid(12'h000),
     .m_axi_rdata(32'h00000000),
     .m_axi_rresp(2'b00),
     .m_axi_rlast(1'b0),
     .m_axi_ruser(1'B0),
     .m_axi_rvalid(1'b0),
     .m_axi_rready()
   );

   xil_axi_cmd_beat twc, trc;
   xil_axi_write_beat twd;
   xil_axi_read_beat trd;
   axi_transaction twr, trr;
   axi_ready_gen           awready_gen;
   axi_ready_gen           wready_gen;
   axi_ready_gen           arready_gen;
   integer i,j,k;

  initial begin
   slv = new("slv",slave.IF);
   twr = new("twr");
   trr = new("trr");
   wready_gen = slv.wr_driver.create_ready("wready");
   slv.monitor.axi_wr_cmd_port.set_enabled();
   slv.monitor.axi_wr_beat_port.set_enabled();
   slv.monitor.axi_rd_cmd_port.set_enabled();
   slv.wr_driver.set_transaction_depth(max_wr_outstanding_transactions);
   slv.rd_driver.set_transaction_depth(max_rd_outstanding_transactions);
   slv.start_slave();
  end

  /* Latency type and Debug/Error Control */
  reg[1:0] latency_type = RANDOM_CASE;
  reg DEBUG_INFO = 1; 
  reg STOP_ON_ERROR = 1'b1; 

  /* WR_FIFO stores 32-bit address, valid data and valid bytes for each AXI Write burst transaction */
  reg [wr_fifo_data_bits-1:0] wr_fifo [0:max_wr_outstanding_transactions-1];
  reg [int_wr_cntr_width-1:0]    wr_fifo_wr_ptr = 0, wr_fifo_rd_ptr = 0;
  wire wr_fifo_empty;

  /* Store the awvalid receive time --- necessary for calculating the latency in sending the bresp*/
  reg [7:0] aw_time_cnt = 0, bresp_time_cnt = 0;
  real awvalid_receive_time[0:max_wr_outstanding_transactions]; // store the time when a new awvalid is received
  reg  awvalid_flag[0:max_wr_outstanding_transactions]; // indicates awvalid is received 

  /* Address Write Channel handshake*/
  reg[int_wr_cntr_width-1:0] aw_cnt = 0;// count of awvalid

  /* various FIFOs for storing the ADDR channel info */
  reg [axi_size_width-1:0]  awsize [0:max_wr_outstanding_transactions-1];
  reg [axi_prot_width-1:0]  awprot [0:max_wr_outstanding_transactions-1];
  reg [axi_lock_width-1:0]  awlock [0:max_wr_outstanding_transactions-1];
  reg [axi_cache_width-1:0]  awcache [0:max_wr_outstanding_transactions-1];
  reg [axi_brst_type_width-1:0]  awbrst [0:max_wr_outstanding_transactions-1];
  reg [axi_len_width-1:0]  awlen [0:max_wr_outstanding_transactions-1];
  reg aw_flag [0:max_wr_outstanding_transactions-1];
  reg [addr_width-1:0] awaddr [0:max_wr_outstanding_transactions-1];
  reg [id_bus_width-1:0] awid [0:max_wr_outstanding_transactions-1];
  reg [axi_qos_width-1:0] awqos [0:max_wr_outstanding_transactions-1];
  wire aw_fifo_full; // indicates awvalid_fifo is full (max outstanding transactions reached)

  /* internal fifos to store burst write data, ID & strobes*/
  reg [(data_bus_width*axi_burst_len)-1:0] burst_data [0:max_wr_outstanding_transactions-1];
  reg [max_burst_bytes_width:0] burst_valid_bytes [0:max_wr_outstanding_transactions-1]; /// total valid bytes received in a complete burst transfer
  reg [max_burst_bytes_width:0] valid_bytes = 0; /// total valid bytes received in a complete burst transfer
  reg wlast_flag [0:max_wr_outstanding_transactions-1]; // flag  to indicate WLAST received
  wire wd_fifo_full;

  /* Write Data Channel and Write Response handshake signals*/
  reg [int_wr_cntr_width-1:0] wd_cnt = 0;
  reg [(data_bus_width*axi_burst_len)-1:0] aligned_wr_data;
  reg [addr_width-1:0] aligned_wr_addr;
  reg [max_burst_bytes_width:0] valid_data_bytes;
  reg [int_wr_cntr_width-1:0] wr_bresp_cnt = 0;
  reg [axi_rsp_width-1:0] bresp;
  reg [rsp_fifo_bits-1:0] fifo_bresp [0:max_wr_outstanding_transactions-1]; // store the ID and its corresponding response
  reg enable_write_bresp;
  reg [int_wr_cntr_width-1:0] rd_bresp_cnt = 0;
  integer wr_latency_count;
  reg  wr_delayed;
  wire bresp_fifo_empty;

  /* states for managing read/write to WR_FIFO */ 
  parameter SEND_DATA = 0,  WAIT_ACK = 1;
  reg state;

  /* Qos*/
  reg [axi_qos_width-1:0] ar_qos, aw_qos;

  initial begin
   if(DEBUG_INFO) begin
    if(enable_this_port)
     $display("[%0d] : %0s : %0s : Port is ENABLED.",$time, DISP_INFO, slave_name);
    else
     $display("[%0d] : %0s : %0s : Port is DISABLED.",$time, DISP_INFO, slave_name);
   end
  end

//initial slave.set_disable_reset_value_checks(1); 
  initial begin
     repeat(2) @(posedge S_ACLK);
     if(!enable_this_port) begin
//      slave.set_channel_level_info(0);
//      slave.set_function_level_info(0);
     end 
//   slave.RESPONSE_TIMEOUT = 0;
  end
  /*--------------------------------------------------------------------------------*/

  /* Set Latency type to be used */
  task set_latency_type;
    input[1:0] lat;
  begin
   if(enable_this_port) 
    latency_type = lat;
   else begin
    if(DEBUG_INFO)
     $display("[%0d] : %0s : %0s : Port is disabled. 'Latency Profile' will not be set...",$time, DISP_WARN, slave_name);
   end
  end
  endtask
  /*--------------------------------------------------------------------------------*/

  /* Set ARQoS to be used */
  task set_arqos;
    input[axi_qos_width-1:0] qos;
  begin
   if(enable_this_port) 
    ar_qos = qos;
   else begin
    if(DEBUG_INFO)
     $display("[%0d] : %0s : %0s : Port is disabled. 'ARQOS' will not be set...",$time, DISP_WARN, slave_name);
   end

  end
  endtask
  /*--------------------------------------------------------------------------------*/

  /* Set AWQoS to be used */
  task set_awqos;
    input[axi_qos_width-1:0] qos;
  begin
   if(enable_this_port) 
    aw_qos = qos;
   else begin
    if(DEBUG_INFO)
     $display("[%0d] : %0s : %0s : Port is disabled. 'AWQOS' will not be set...",$time, DISP_WARN, slave_name);
   end
  end
  endtask
  /*--------------------------------------------------------------------------------*/
  /* get the wr latency number */
  function [31:0] get_wr_lat_number;
  input dummy;
  reg[1:0] temp;
  begin 
   case(latency_type)
    BEST_CASE   : if(slave_name == axi_acp_name) get_wr_lat_number = acp_wr_min; else get_wr_lat_number = gp_wr_min;            
    AVG_CASE    : if(slave_name == axi_acp_name) get_wr_lat_number = acp_wr_avg; else get_wr_lat_number = gp_wr_avg;            
    WORST_CASE  : if(slave_name == axi_acp_name) get_wr_lat_number = acp_wr_max; else get_wr_lat_number = gp_wr_max;            
    default     : begin  // RANDOM_CASE
                   temp = $random;
                   case(temp) 
                    2'b00   : if(slave_name == axi_acp_name) get_wr_lat_number = ($random()%10+ acp_wr_min); else get_wr_lat_number = ($random()%10+ gp_wr_min); 
                    2'b01   : if(slave_name == axi_acp_name) get_wr_lat_number = ($random()%40+ acp_wr_avg); else get_wr_lat_number = ($random()%40+ gp_wr_avg); 
                    default : if(slave_name == axi_acp_name) get_wr_lat_number = ($random()%60+ acp_wr_max); else get_wr_lat_number = ($random()%60+ gp_wr_max); 
                   endcase        
                  end
   endcase
  end
  endfunction
 /*--------------------------------------------------------------------------------*/

  /* get the rd latency number */
  function [31:0] get_rd_lat_number;
  input dummy;
  reg[1:0] temp;
  begin 
   case(latency_type)
    BEST_CASE   : if(slave_name == axi_acp_name) get_rd_lat_number = acp_rd_min; else get_rd_lat_number = gp_rd_min;            
    AVG_CASE    : if(slave_name == axi_acp_name) get_rd_lat_number = acp_rd_avg; else get_rd_lat_number = gp_rd_avg;            
    WORST_CASE  : if(slave_name == axi_acp_name) get_rd_lat_number = acp_rd_max; else get_rd_lat_number = gp_rd_max;            
    default     : begin  // RANDOM_CASE
                   temp = $random;
                   case(temp) 
                    2'b00   : if(slave_name == axi_acp_name) get_rd_lat_number = ($random()%10+ acp_rd_min); else get_rd_lat_number = ($random()%10+ gp_rd_min); 
                    2'b01   : if(slave_name == axi_acp_name) get_rd_lat_number = ($random()%40+ acp_rd_avg); else get_rd_lat_number = ($random()%40+ gp_rd_avg); 
                    default : if(slave_name == axi_acp_name) get_rd_lat_number = ($random()%60+ acp_rd_max); else get_rd_lat_number = ($random()%60+ gp_rd_max); 
                   endcase        
                  end
   endcase
  end
  endfunction
 /*--------------------------------------------------------------------------------*/

  /* Store the Clock cycle time period */
  always@(S_RESETN)
  begin
   if(S_RESETN) begin
    @(posedge S_ACLK);
    s_aclk_period = $time;
    @(posedge S_ACLK);
    s_aclk_period = $time - s_aclk_period;
   end
  end
 /*--------------------------------------------------------------------------------*/

 /* Check for any WRITE/READs when this port is disabled */
 always@(S_AWVALID or S_WVALID or S_ARVALID)
 begin
  if((S_AWVALID | S_WVALID | S_ARVALID) && !enable_this_port) begin
    $display("[%0d] : %0s : %0s : Port is disabled. AXI transaction is initiated on this port ...\nSimulation will halt ..",$time, DISP_ERR, slave_name);
    $stop;
  end
 end

 /*--------------------------------------------------------------------------------*/

 
  assign net_ARVALID = enable_this_port ? S_ARVALID : 1'b0;
  assign net_AWVALID = enable_this_port ? S_AWVALID : 1'b0;
  assign net_WVALID  = enable_this_port ? S_WVALID : 1'b0;

  assign wr_fifo_empty = (wr_fifo_wr_ptr === wr_fifo_rd_ptr)?1'b1: 1'b0;
  assign aw_fifo_full = ((aw_cnt[int_wr_cntr_width-1] !== rd_bresp_cnt[int_wr_cntr_width-1]) && (aw_cnt[int_wr_cntr_width-2:0] === rd_bresp_cnt[int_wr_cntr_width-2:0]))?1'b1 :1'b0; /// complete this
  assign wd_fifo_full = ((wd_cnt[int_wr_cntr_width-1] !== rd_bresp_cnt[int_wr_cntr_width-1]) && (wd_cnt[int_wr_cntr_width-2:0] === rd_bresp_cnt[int_wr_cntr_width-2:0]))?1'b1 :1'b0; /// complete this
  assign bresp_fifo_empty = (wr_bresp_cnt === rd_bresp_cnt)?1'b1:1'b0;
 

  /* Store the awvalid receive time --- necessary for calculating the bresp latency */
  always@(negedge S_RESETN or posedge S_ACLK)
  begin
  if(!S_RESETN)
   aw_time_cnt = 0;
  else begin
  if(net_AWVALID && S_AWREADY) begin
     awvalid_receive_time[aw_time_cnt] = $time;
     awvalid_flag[aw_time_cnt] = 1'b1;
     aw_time_cnt = aw_time_cnt + 1;
     if(aw_time_cnt === max_wr_outstanding_transactions) aw_time_cnt = 0; 
   end
  end // else
  end /// always
  /*--------------------------------------------------------------------------------*/
  always@(posedge S_ACLK)
  begin
  if(net_AWVALID && S_AWREADY) begin
    if(S_AWQOS === 0) awqos[aw_cnt[int_wr_cntr_width-2:0]] = aw_qos; 
    else awqos[aw_cnt[int_wr_cntr_width-2:0]] = S_AWQOS; 
  end
  end
  /*--------------------------------------------------------------------------------*/
  
  always@(aw_fifo_full)
  begin
  if(aw_fifo_full && DEBUG_INFO) 
    $display("[%0d] : %0s : %0s : Reached the maximum outstanding Write transactions limit (%0d). Blocking all future Write transactions until at least 1 of the outstanding Write transaction has completed.",$time, DISP_INFO, slave_name,max_wr_outstanding_transactions);
  end
  /*--------------------------------------------------------------------------------*/
  
  /* Address Write Channel handshake*/
  always@(negedge S_RESETN or posedge S_ACLK)
  begin
  if(!S_RESETN) begin
    aw_cnt = 0;
  end else begin
    if(!aw_fifo_full) begin 
        slv.monitor.axi_wr_cmd_port.get(twc);
        awaddr[aw_cnt[int_wr_cntr_width-2:0]] = twc.addr;
        awlen[aw_cnt[int_wr_cntr_width-2:0]]  = twc.len;
        awsize[aw_cnt[int_wr_cntr_width-2:0]] = twc.size;
        awbrst[aw_cnt[int_wr_cntr_width-2:0]] = twc.burst;
        awlock[aw_cnt[int_wr_cntr_width-2:0]] = twc.lock;
        awcache[aw_cnt[int_wr_cntr_width-2:0]]= twc.cache;
        awprot[aw_cnt[int_wr_cntr_width-2:0]] = twc.prot;
        awid[aw_cnt[int_wr_cntr_width-2:0]]   = twc.id;
        aw_flag[aw_cnt[int_wr_cntr_width-2:0]] = 1;
        aw_cnt   = aw_cnt + 1;
        if(aw_cnt[int_wr_cntr_width-2:0] === (max_wr_outstanding_transactions-1)) begin
          aw_cnt[int_wr_cntr_width-1] = ~aw_cnt[int_wr_cntr_width-1];
          aw_cnt[int_wr_cntr_width-2:0] = 0;
        end
    end // if (!aw_fifo_full)
  end /// if else
  end /// always
  /*--------------------------------------------------------------------------------*/

  /* Write Data Channel Handshake */
  always@(negedge S_RESETN or posedge S_ACLK)
  begin
  if(!S_RESETN) begin
   wd_cnt = 0;
  end else begin
    if(!wd_fifo_full && S_WVALID) begin
      slv.monitor.axi_wr_beat_port.get(twd);
      for(i = 0; i < (2**awsize[wr_bresp_cnt[int_wr_cntr_width-2:0]]); i = i+1) begin
	    burst_data[wd_cnt[int_wr_cntr_width-2:0]][((valid_bytes*8)+(i*8))+:8] = twd.data[i];
      end
      valid_bytes = valid_bytes+(2**awsize[wr_bresp_cnt[int_wr_cntr_width-2:0]]);
      if (twd.last) begin
        wlast_flag[wd_cnt[int_wr_cntr_width-2:0]] = 1'b1;
        burst_valid_bytes[wd_cnt[int_wr_cntr_width-2:0]] = valid_bytes;
		valid_bytes = 0;
        wd_cnt   = wd_cnt + 1;
        if(wd_cnt[int_wr_cntr_width-2:0] === (max_wr_outstanding_transactions-1)) begin
          wd_cnt[int_wr_cntr_width-1] = ~wd_cnt[int_wr_cntr_width-1];
          wd_cnt[int_wr_cntr_width-2:0] = 0;
        end
  	  end
    end /// if
  end /// else
  end /// always
  
  /* Align the wrap data for write transaction */
  task automatic get_wrap_aligned_wr_data;
  output [(data_bus_width*axi_burst_len)-1:0] aligned_data;
  output [addr_width-1:0] start_addr; /// aligned start address
  input  [addr_width-1:0] addr;
  input  [(data_bus_width*axi_burst_len)-1:0] b_data;
  input  [max_burst_bytes_width:0] v_bytes;
  reg    [(data_bus_width*axi_burst_len)-1:0] temp_data, wrp_data;
  integer wrp_bytes;
  integer i;
  begin
    start_addr = (addr/v_bytes) * v_bytes;
    wrp_bytes = addr - start_addr;
    wrp_data = b_data;
    temp_data = 0;
    wrp_data = wrp_data << ((data_bus_width*axi_burst_len) - (v_bytes*8));
    while(wrp_bytes > 0) begin /// get the data that is wrapped
      temp_data = temp_data << 8;
      temp_data[7:0] = wrp_data[(data_bus_width*axi_burst_len)-1 : (data_bus_width*axi_burst_len)-8];
      wrp_data = wrp_data << 8;
      wrp_bytes = wrp_bytes - 1;
    end
    wrp_bytes = addr - start_addr;
    wrp_data = b_data << (wrp_bytes*8);
    
    aligned_data = (temp_data | wrp_data);
  end
  endtask
  /*--------------------------------------------------------------------------------*/
   
  /* Calculate the Response for each read/write transaction */
  function [axi_rsp_width-1:0] calculate_resp;
  input rd_wr; // indicates Read(1) or Write(0) transaction 
  input [addr_width-1:0] awaddr; 
  input [axi_prot_width-1:0] awprot;
  reg [axi_rsp_width-1:0] rsp;
  begin
    rsp = AXI_OK;
    /* Address Decode */
    if(decode_address(awaddr) === INVALID_MEM_TYPE) begin
     rsp = AXI_SLV_ERR; //slave error
     $display("[%0d] : %0s : %0s : AXI Access to Invalid location(0x%0h) ",$time, DISP_ERR, slave_name, awaddr);
    end
    if(!rd_wr && decode_address(awaddr) === REG_MEM) begin
     rsp = AXI_SLV_ERR; //slave error
     $display("[%0d] : %0s : %0s : AXI Write to Register Map(0x%0h) is not supported ",$time, DISP_ERR, slave_name, awaddr);
    end
    if(secure_access_enabled && awprot[1])
     rsp = AXI_DEC_ERR; // decode error
    calculate_resp = rsp;
  end
  endfunction
  /*--------------------------------------------------------------------------------*/

  /* Store the Write response for each write transaction */
  always@(negedge S_RESETN or posedge S_ACLK)
  begin
  if(!S_RESETN) begin
   wr_bresp_cnt = 0;
   wr_fifo_wr_ptr = 0;
  end else begin
   enable_write_bresp = aw_flag[wr_bresp_cnt[int_wr_cntr_width-2:0]] && wlast_flag[wr_bresp_cnt[int_wr_cntr_width-2:0]];
   /* calculate bresp only when AWVALID && WLAST is received */
   if(enable_write_bresp) begin
     aw_flag[wr_bresp_cnt[int_wr_cntr_width-2:0]]    = 0;
     wlast_flag[wr_bresp_cnt[int_wr_cntr_width-2:0]] = 0;
  
     bresp = calculate_resp(1'b0, awaddr[wr_bresp_cnt[int_wr_cntr_width-2:0]],awprot[wr_bresp_cnt[int_wr_cntr_width-2:0]]);
     fifo_bresp[wr_bresp_cnt[int_wr_cntr_width-2:0]] = {awid[wr_bresp_cnt[int_wr_cntr_width-2:0]],bresp};
     /* Fill WR data FIFO */
     if(bresp === AXI_OK) begin
       if(awbrst[wr_bresp_cnt[int_wr_cntr_width-2:0]] === AXI_WRAP) begin /// wrap type? then align the data
         get_wrap_aligned_wr_data(aligned_wr_data,aligned_wr_addr, awaddr[wr_bresp_cnt[int_wr_cntr_width-2:0]],burst_data[wr_bresp_cnt[int_wr_cntr_width-2:0]],burst_valid_bytes[wr_bresp_cnt[int_wr_cntr_width-2:0]]);      /// gives wrapped start address
       end else begin
         aligned_wr_data = burst_data[wr_bresp_cnt[int_wr_cntr_width-2:0]]; 
         aligned_wr_addr = awaddr[wr_bresp_cnt[int_wr_cntr_width-2:0]] ;
       end
       valid_data_bytes = burst_valid_bytes[wr_bresp_cnt[int_wr_cntr_width-2:0]];
     end else 
       valid_data_bytes = 0;  

     wr_fifo[wr_fifo_wr_ptr[int_wr_cntr_width-2:0]] = {awqos[wr_bresp_cnt[int_wr_cntr_width-2:0]], aligned_wr_data, aligned_wr_addr, valid_data_bytes};
     wr_fifo_wr_ptr = wr_fifo_wr_ptr + 1; 
     wr_bresp_cnt = wr_bresp_cnt+1;
     if(wr_bresp_cnt[int_wr_cntr_width-2:0] === (max_wr_outstanding_transactions-1)) begin
       wr_bresp_cnt[int_wr_cntr_width-1] = ~ wr_bresp_cnt[int_wr_cntr_width-1];
       wr_bresp_cnt[int_wr_cntr_width-2:0] = 0;
     end
   end
  end // else
  end // always
  /*--------------------------------------------------------------------------------*/

  /* Send Write Response Channel handshake */
  always@(negedge S_RESETN or posedge S_ACLK)
  begin
  if(!S_RESETN) begin
   rd_bresp_cnt = 0;
   wr_latency_count = get_wr_lat_number(1);
   wr_delayed = 0;
   bresp_time_cnt = 0; 
  end else begin
  if(static_count < 32 ) begin
    wready_gen.set_ready_policy(XIL_AXI_READY_GEN_SINGLE); 
    wready_gen.set_low_time(0); 
    wready_gen.set_high_time(1); 
    slv.wr_driver.send_wready(wready_gen);
  end
   if(awvalid_flag[bresp_time_cnt] && (($time - awvalid_receive_time[bresp_time_cnt])/s_aclk_period >= wr_latency_count))
     wr_delayed = 1;
   if(!bresp_fifo_empty && wr_delayed) begin
     slv.wr_driver.get_wr_reactive(twr);
	 twr.set_id(fifo_bresp[rd_bresp_cnt[int_wr_cntr_width-2:0]][rsp_id_msb : rsp_id_lsb]);
     case(fifo_bresp[rd_bresp_cnt[int_wr_cntr_width-2:0]][rsp_msb : rsp_lsb])
	  2'b00: twr.set_bresp(XIL_AXI_RESP_OKAY);
	  2'b01: twr.set_bresp(XIL_AXI_RESP_EXOKAY);
	  2'b10: twr.set_bresp(XIL_AXI_RESP_SLVERR);
	  2'b11: twr.set_bresp(XIL_AXI_RESP_DECERR);
	 endcase
   if(static_count > 32) begin
   wready_gen.set_ready_policy(XIL_AXI_READY_GEN_SINGLE); 
   wready_gen.set_low_time(3); 
   wready_gen.set_high_time(3); 
   wready_gen.set_low_time_range(3,6); 
   wready_gen.set_high_time_range(3,6); 
   slv.wr_driver.send_wready(wready_gen);
  end
   // wr_delayed = 1'b0;
       slv.wr_driver.send(twr);
     wr_delayed = 0;
     awvalid_flag[bresp_time_cnt] = 1'b0;
     bresp_time_cnt = bresp_time_cnt+1;
     rd_bresp_cnt = rd_bresp_cnt + 1;
     if(rd_bresp_cnt[int_wr_cntr_width-2:0] === (max_wr_outstanding_transactions-1)) begin
       rd_bresp_cnt[int_wr_cntr_width-1] = ~ rd_bresp_cnt[int_wr_cntr_width-1];
       rd_bresp_cnt[int_wr_cntr_width-2:0] = 0;
     end
     if(bresp_time_cnt === max_wr_outstanding_transactions) begin
       bresp_time_cnt = 0; 
     end
     wr_latency_count = get_wr_lat_number(1);
     	 static_count++;
   end 
   	 static_count++;
  end // else
end
  /*--------------------------------------------------------------------------------*/

  /* Reading from the wr_fifo */
  always@(negedge S_RESETN or posedge SW_CLK) begin
  if(!S_RESETN) begin 
   WR_DATA_VALID_DDR = 1'b0;
   WR_DATA_VALID_OCM = 1'b0;
   wr_fifo_rd_ptr = 0;
   state = SEND_DATA;
   WR_QOS = 0;
  end else begin
   case(state)
   SEND_DATA :begin
      state = SEND_DATA;
      WR_DATA_VALID_OCM = 0;
      WR_DATA_VALID_DDR = 0;
      if(!wr_fifo_empty) begin
        WR_DATA  = wr_fifo[wr_fifo_rd_ptr[int_wr_cntr_width-2:0]][wr_data_msb : wr_data_lsb];
        WR_ADDR  = wr_fifo[wr_fifo_rd_ptr[int_wr_cntr_width-2:0]][wr_addr_msb : wr_addr_lsb];
        WR_BYTES = wr_fifo[wr_fifo_rd_ptr[int_wr_cntr_width-2:0]][wr_bytes_msb : wr_bytes_lsb];
        WR_QOS   = wr_fifo[wr_fifo_rd_ptr[int_wr_cntr_width-2:0]][wr_qos_msb : wr_qos_lsb];
        state = WAIT_ACK;
        case (decode_address(wr_fifo[wr_fifo_rd_ptr[int_wr_cntr_width-2:0]][wr_addr_msb : wr_addr_lsb]))
         OCM_MEM : WR_DATA_VALID_OCM = 1;
         DDR_MEM : WR_DATA_VALID_DDR = 1;
         default : state = SEND_DATA;
        endcase
        wr_fifo_rd_ptr = wr_fifo_rd_ptr+1;
      end
      end
   WAIT_ACK :begin
      state = WAIT_ACK;
      if(WR_DATA_ACK_OCM | WR_DATA_ACK_DDR) begin 
        WR_DATA_VALID_OCM = 1'b0;
        WR_DATA_VALID_DDR = 1'b0;
        state = SEND_DATA;
      end
      end
   endcase
  end
  end
  /*--------------------------------------------------------------------------------*/
/*-------------------------------- WRITE HANDSHAKE END ----------------------------------------*/

/*-------------------------------- READ HANDSHAKE ---------------------------------------------*/

  /* READ CHANNELS */
  /* Store the arvalid receive time --- necessary for calculating latency in sending the rresp latency */
  reg [7:0] ar_time_cnt = 0,rresp_time_cnt = 0;
  real arvalid_receive_time[0:max_rd_outstanding_transactions]; // store the time when a new arvalid is received
  reg arvalid_flag[0:max_rd_outstanding_transactions]; // store the time when a new arvalid is received
  reg [int_rd_cntr_width-1:0] ar_cnt = 0; // counter for arvalid info

  /* various FIFOs for storing the ADDR channel info */
  reg [axi_size_width-1:0]  arsize [0:max_rd_outstanding_transactions-1];
  reg [axi_prot_width-1:0]  arprot [0:max_rd_outstanding_transactions-1];
  reg [axi_brst_type_width-1:0]  arbrst [0:max_rd_outstanding_transactions-1];
  reg [axi_len_width-1:0]  arlen [0:max_rd_outstanding_transactions-1];
  reg [axi_cache_width-1:0]  arcache [0:max_rd_outstanding_transactions-1];
  reg [axi_lock_width-1:0]  arlock [0:max_rd_outstanding_transactions-1];
  reg ar_flag [0:max_rd_outstanding_transactions-1];
  reg [addr_width-1:0] araddr [0:max_rd_outstanding_transactions-1];
  reg [id_bus_width-1:0]  arid [0:max_rd_outstanding_transactions-1];
  reg [axi_qos_width-1:0]  arqos [0:max_rd_outstanding_transactions-1];
  wire ar_fifo_full; // indicates arvalid_fifo is full (max outstanding transactions reached)

  reg [int_rd_cntr_width-1:0] rd_cnt = 0;
  reg [int_rd_cntr_width-1:0] wr_rresp_cnt = 0;
  reg [axi_rsp_width-1:0] rresp;
  reg [rsp_fifo_bits-1:0] fifo_rresp [0:max_rd_outstanding_transactions-1]; // store the ID and its corresponding response

  /* Send Read Response  & Data Channel handshake */
  integer rd_latency_count;
  reg  rd_delayed;

  reg [max_burst_bits-1:0] read_fifo [0:max_rd_outstanding_transactions-1]; /// Store only AXI Burst Data ..
  reg [int_rd_cntr_width-1:0] rd_fifo_wr_ptr = 0, rd_fifo_rd_ptr = 0;
  wire read_fifo_full; 
 
  assign read_fifo_full = (rd_fifo_wr_ptr[int_rd_cntr_width-1] !== rd_fifo_rd_ptr[int_rd_cntr_width-1] && rd_fifo_wr_ptr[int_rd_cntr_width-2:0] === rd_fifo_rd_ptr[int_rd_cntr_width-2:0])?1'b1: 1'b0;
  assign read_fifo_empty = (rd_fifo_wr_ptr === rd_fifo_rd_ptr)?1'b1: 1'b0;
  assign ar_fifo_full = ((ar_cnt[int_rd_cntr_width-1] !== rd_cnt[int_rd_cntr_width-1]) && (ar_cnt[int_rd_cntr_width-2:0] === rd_cnt[int_rd_cntr_width-2:0]))?1'b1 :1'b0; 

  /* Store the arvalid receive time --- necessary for calculating the bresp latency */
  always@(negedge S_RESETN or posedge S_ACLK)
  begin
  if(!S_RESETN)
   ar_time_cnt = 0;
  else begin
  if(net_ARVALID && S_ARREADY) begin
     arvalid_receive_time[ar_time_cnt] = $time;
     arvalid_flag[ar_time_cnt] = 1'b1;
     ar_time_cnt = ar_time_cnt + 1;
     if(ar_time_cnt === max_rd_outstanding_transactions)
       ar_time_cnt = 0; 
   end 
  end // else
  end /// always
  /*--------------------------------------------------------------------------------*/
  always@(posedge S_ACLK)
  begin
  if(net_ARVALID && S_ARREADY) begin
    if(S_ARQOS === 0) arqos[aw_cnt[int_rd_cntr_width-2:0]] = ar_qos; 
    else arqos[aw_cnt[int_rd_cntr_width-2:0]] = S_ARQOS; 
  end
  end
  /*--------------------------------------------------------------------------------*/
  
  always@(ar_fifo_full)
  begin
  if(ar_fifo_full && DEBUG_INFO) 
    $display("[%0d] : %0s : %0s : Reached the maximum outstanding Read transactions limit (%0d). Blocking all future Read transactions until at least 1 of the outstanding Read transaction has completed.",$time, DISP_INFO, slave_name,max_rd_outstanding_transactions);
  end
  /*--------------------------------------------------------------------------------*/
  
  /* Address Read  Channel handshake*/
  always@(negedge S_RESETN or posedge S_ACLK)
  begin
  if(!S_RESETN) begin
    ar_cnt = 0;
  end else begin
    if(!ar_fifo_full) begin
      slv.monitor.axi_rd_cmd_port.get(trc);
      araddr[ar_cnt[int_rd_cntr_width-2:0]] = trc.addr;
      arlen[ar_cnt[int_rd_cntr_width-2:0]]  = trc.len;
      arsize[ar_cnt[int_rd_cntr_width-2:0]] = trc.size;
      arbrst[ar_cnt[int_rd_cntr_width-2:0]] = trc.burst;
      arlock[ar_cnt[int_rd_cntr_width-2:0]] = trc.lock;
      arcache[ar_cnt[int_rd_cntr_width-2:0]]= trc.cache;
      arprot[ar_cnt[int_rd_cntr_width-2:0]] = trc.prot;
      arid[ar_cnt[int_rd_cntr_width-2:0]]   = trc.id;
      ar_flag[ar_cnt[int_rd_cntr_width-2:0]] = 1'b1;
        ar_cnt = ar_cnt+1;
        if(ar_cnt[int_rd_cntr_width-2:0] === max_rd_outstanding_transactions-1) begin
          ar_cnt[int_rd_cntr_width-1] = ~ ar_cnt[int_rd_cntr_width-1];
          ar_cnt[int_rd_cntr_width-2:0] = 0;
        end 
    end /// if(!ar_fifo_full)
  end /// if else
  end /// always*/
  /*--------------------------------------------------------------------------------*/

  /* Align Wrap data for read transaction*/
  task automatic get_wrap_aligned_rd_data;
  output [(data_bus_width*axi_burst_len)-1:0] aligned_data;
  input [addr_width-1:0] addr;
  input [(data_bus_width*axi_burst_len)-1:0] b_data;
  input [max_burst_bytes_width:0] v_bytes;
  reg [addr_width-1:0] start_addr;
  reg [(data_bus_width*axi_burst_len)-1:0] temp_data, wrp_data;
  integer wrp_bytes;
  integer i;
  begin
    start_addr = (addr/v_bytes) * v_bytes;
    wrp_bytes = addr - start_addr;
    wrp_data  = b_data;
    temp_data = 0;
    while(wrp_bytes > 0) begin /// get the data that is wrapped
     temp_data = temp_data >> 8;
     temp_data[(data_bus_width*axi_burst_len)-1 : (data_bus_width*axi_burst_len)-8] = wrp_data[7:0];
     wrp_data = wrp_data >> 8;
     wrp_bytes = wrp_bytes - 1;
    end
    temp_data = temp_data >> ((data_bus_width*axi_burst_len) - (v_bytes*8));
    wrp_bytes = addr - start_addr;
    wrp_data = b_data >> (wrp_bytes*8);
    
    aligned_data = (temp_data | wrp_data);
  end
  endtask
  /*--------------------------------------------------------------------------------*/
   
  parameter RD_DATA_REQ = 1'b0, WAIT_RD_VALID = 1'b1;
  reg [addr_width-1:0] temp_read_address;
  reg [max_burst_bytes_width:0] temp_rd_valid_bytes;
  reg rd_fifo_state; 
  reg invalid_rd_req;
  /* get the data from memory && also calculate the rresp*/
  always@(negedge S_RESETN or posedge SW_CLK)
  begin
  if(!S_RESETN)begin
   rd_fifo_wr_ptr = 0; 
   wr_rresp_cnt =0;
   rd_fifo_state = RD_DATA_REQ;
   temp_rd_valid_bytes = 0;
   temp_read_address = 0;
   RD_REQ_DDR = 0;
   RD_REQ_OCM = 0;
   RD_REQ_REG = 0;
   RD_QOS  = 0;
   invalid_rd_req = 0;
  end else begin
   case(rd_fifo_state)
    RD_DATA_REQ : begin
     rd_fifo_state = RD_DATA_REQ;
     RD_REQ_DDR = 0;
     RD_REQ_OCM = 0;
     RD_REQ_REG = 0;
     RD_QOS  = 0;
     if(ar_flag[wr_rresp_cnt[int_rd_cntr_width-2:0]] && !read_fifo_full) begin
       ar_flag[wr_rresp_cnt[int_rd_cntr_width-2:0]] = 0;
       rresp = calculate_resp(1'b1, araddr[wr_rresp_cnt[int_rd_cntr_width-2:0]],arprot[wr_rresp_cnt[int_rd_cntr_width-2:0]]);
       fifo_rresp[wr_rresp_cnt[int_rd_cntr_width-2:0]] = {arid[wr_rresp_cnt[int_rd_cntr_width-2:0]],rresp};
       temp_rd_valid_bytes = (arlen[wr_rresp_cnt[int_rd_cntr_width-2:0]]+1)*(2**arsize[wr_rresp_cnt[int_rd_cntr_width-2:0]]);//data_bus_width/8;

       if(arbrst[wr_rresp_cnt[int_rd_cntr_width-2:0]] === AXI_WRAP) /// wrap begin
        temp_read_address = (araddr[wr_rresp_cnt[int_rd_cntr_width-2:0]]/temp_rd_valid_bytes) * temp_rd_valid_bytes;
       else 
        temp_read_address = araddr[wr_rresp_cnt[int_rd_cntr_width-2:0]];
       if(rresp === AXI_OK) begin 
        case(decode_address(temp_read_address))//decode_address(araddr[wr_rresp_cnt[int_rd_cntr_width-2:0]]);
          OCM_MEM : RD_REQ_OCM = 1;
          DDR_MEM : RD_REQ_DDR = 1;
          REG_MEM : RD_REQ_REG = 1;
          default : invalid_rd_req = 1;
        endcase
       end else
        invalid_rd_req = 1;
        
       RD_QOS     = arqos[wr_rresp_cnt[int_rd_cntr_width-2:0]];
       RD_ADDR    = temp_read_address; ///araddr[wr_rresp_cnt[int_rd_cntr_width-2:0]];
       RD_BYTES   = temp_rd_valid_bytes;
       rd_fifo_state = WAIT_RD_VALID;
       wr_rresp_cnt = wr_rresp_cnt + 1;
       if(wr_rresp_cnt[int_rd_cntr_width-2:0] === max_rd_outstanding_transactions-1) begin
         wr_rresp_cnt[int_rd_cntr_width-1] = ~ wr_rresp_cnt[int_rd_cntr_width-1];
         wr_rresp_cnt[int_rd_cntr_width-2:0] = 0;
       end
     end
    end
    WAIT_RD_VALID : begin    
     rd_fifo_state = WAIT_RD_VALID; 
     if(RD_DATA_VALID_OCM | RD_DATA_VALID_DDR | RD_DATA_VALID_REG | invalid_rd_req) begin ///temp_dec == 2'b11) begin
       if(RD_DATA_VALID_DDR)
         read_fifo[rd_fifo_wr_ptr[int_rd_cntr_width-2:0]] = RD_DATA_DDR;
       else if(RD_DATA_VALID_OCM)
         read_fifo[rd_fifo_wr_ptr[int_rd_cntr_width-2:0]] = RD_DATA_OCM;
       else if(RD_DATA_VALID_REG)
         read_fifo[rd_fifo_wr_ptr[int_rd_cntr_width-2:0]] = RD_DATA_REG;
       else
         read_fifo[rd_fifo_wr_ptr[int_rd_cntr_width-2:0]] = 0;
       rd_fifo_wr_ptr = rd_fifo_wr_ptr + 1;
       RD_REQ_DDR = 0;
       RD_REQ_OCM = 0;
       RD_REQ_REG = 0;
       RD_QOS  = 0;
       invalid_rd_req = 0;
       rd_fifo_state = RD_DATA_REQ;
     end
    end
   endcase
  end /// else
  end /// always

  /*--------------------------------------------------------------------------------*/
  reg[max_burst_bytes_width:0] rd_v_b;
  reg [(data_bus_width*axi_burst_len)-1:0] temp_read_data;
  reg [(data_bus_width*axi_burst_len)-1:0] temp_wrap_data;
  reg[(axi_rsp_width*axi_burst_len)-1:0] temp_read_rsp;

  xil_axi_data_beat new_data;


  /* Read Data Channel handshake */
  always@(negedge S_RESETN or posedge S_ACLK)
  begin
  if(!S_RESETN)begin
   rd_fifo_rd_ptr = 0;
   rd_cnt = 0;
   rd_latency_count = get_rd_lat_number(1);
   rd_delayed = 0;
   rresp_time_cnt = 0;
   rd_v_b = 0;
  end else begin
     if(net_ARVALID && S_ARREADY)
       slv.rd_driver.get_rd_reactive(trr);
     if(arvalid_flag[rresp_time_cnt] && ((($time - arvalid_receive_time[rresp_time_cnt])/s_aclk_period) >= rd_latency_count)) 
       rd_delayed = 1;
     if(!read_fifo_empty && rd_delayed)begin
       rd_delayed = 0;  
       arvalid_flag[rresp_time_cnt] = 1'b0;
       rd_v_b = ((arlen[rd_cnt[int_rd_cntr_width-2:0]]+1)*(2**arsize[rd_cnt[int_rd_cntr_width-2:0]]));
       temp_read_data =  read_fifo[rd_fifo_rd_ptr[int_rd_cntr_width-2:0]];
       rd_fifo_rd_ptr = rd_fifo_rd_ptr+1;

       if(arbrst[rd_cnt[int_rd_cntr_width-2:0]]=== AXI_WRAP) begin
         get_wrap_aligned_rd_data(temp_wrap_data, araddr[rd_cnt[int_rd_cntr_width-2:0]], temp_read_data, rd_v_b);
         temp_read_data = temp_wrap_data;
       end 
       temp_read_rsp = 0;
       repeat(axi_burst_len) begin
         temp_read_rsp = temp_read_rsp >> axi_rsp_width;
         temp_read_rsp[(axi_rsp_width*axi_burst_len)-1:(axi_rsp_width*axi_burst_len)-axi_rsp_width] = fifo_rresp[rd_cnt[int_rd_cntr_width-2:0]][rsp_msb : rsp_lsb];
       end 
	   case (arsize[rd_cnt[int_rd_cntr_width-2:0]])
         3'b000: trr.size = XIL_AXI_SIZE_1BYTE;
         3'b001: trr.size = XIL_AXI_SIZE_2BYTE;
         3'b010: trr.size = XIL_AXI_SIZE_4BYTE;
         3'b011: trr.size = XIL_AXI_SIZE_8BYTE;
         3'b100: trr.size = XIL_AXI_SIZE_16BYTE;
         3'b101: trr.size = XIL_AXI_SIZE_32BYTE;
         3'b110: trr.size = XIL_AXI_SIZE_64BYTE;
         3'b111: trr.size = XIL_AXI_SIZE_128BYTE;
       endcase
	   trr.len = arlen[rd_cnt[int_rd_cntr_width-2:0]];
	   trr.id = (arid[rd_cnt[int_rd_cntr_width-2:0]]);
//	   trr.data  = new[((2**arsize[rd_cnt[int_rd_cntr_width-2:0]])*(arlen[rd_cnt[int_rd_cntr_width-2:0]]+1))];
	   trr.rresp = new[((2**arsize[rd_cnt[int_rd_cntr_width-2:0]])*(arlen[rd_cnt[int_rd_cntr_width-2:0]]+1))];
       for(j = 0; j < (arlen[rd_cnt[int_rd_cntr_width-2:0]]+1); j = j+1) begin
         for(k = 0; k < (2**arsize[rd_cnt[int_rd_cntr_width-2:0]]); k = k+1) begin
		   new_data[(k*8)+:8] = temp_read_data[7:0];
		   temp_read_data = temp_read_data >> 8;
		 end
         trr.set_data_beat(j, new_data);
	     case(temp_read_rsp[(j*2)+:2])
	       2'b00: trr.rresp[j] = XIL_AXI_RESP_OKAY;
	       2'b01: trr.rresp[j] = XIL_AXI_RESP_EXOKAY;
	       2'b10: trr.rresp[j] = XIL_AXI_RESP_SLVERR;
	       2'b11: trr.rresp[j] = XIL_AXI_RESP_DECERR;
	     endcase
       end
       slv.rd_driver.send(trr);
       rd_cnt = rd_cnt + 1; 
       rresp_time_cnt = rresp_time_cnt+1;
       if(rresp_time_cnt === max_rd_outstanding_transactions) rresp_time_cnt = 0;
       if(rd_cnt[int_rd_cntr_width-2:0] === (max_rd_outstanding_transactions-1)) begin
         rd_cnt[int_rd_cntr_width-1] = ~ rd_cnt[int_rd_cntr_width-1];
         rd_cnt[int_rd_cntr_width-2:0] = 0;
       end
       rd_latency_count = get_rd_lat_number(1);
     end
  end /// else
  end /// always
endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_axi_master.v
 *
 * Date : 2012-11
 *
 * Description : Model that acts as PS AXI Master port interface. 
 *               It uses AXI3 Master VIP
 *****************************************************************************/
 `timescale 1ns/1ps

import axi_vip_pkg::*;

module processing_system7_vip_v1_0_3_axi_master (
    M_RESETN,
    M_ARVALID,
    M_AWVALID,
    M_BREADY,
    M_RREADY,
    M_WLAST,
    M_WVALID,
    M_ARID,
    M_AWID,
    M_WID,
    M_ARBURST,
    M_ARLOCK,
    M_ARSIZE,
    M_AWBURST,
    M_AWLOCK,
    M_AWSIZE,
    M_ARPROT,
    M_AWPROT,
    M_ARADDR,
    M_AWADDR,
    M_WDATA,
    M_ARCACHE,
    M_ARLEN,
    M_AWCACHE,
    M_AWLEN,
    M_ARQOS,  // not connected to AXI VIP
    M_AWQOS,  // not connected to AXI VIP
    M_WSTRB,
    M_ACLK,
    M_ARREADY,
    M_AWREADY,
    M_BVALID,
    M_RLAST,
    M_RVALID,
    M_WREADY,
    M_BID,
    M_RID,
    M_BRESP,
    M_RRESP,
    M_RDATA

);
   parameter enable_this_port = 0;  
   parameter master_name = "Master";
   parameter data_bus_width = 32;
   parameter address_bus_width = 32;
   parameter id_bus_width = 6;
   parameter max_outstanding_transactions = 8;
   parameter exclusive_access_supported = 0;
   parameter ID = 12'hC00;
   `include "processing_system7_vip_v1_0_3_local_params.v"
    /* IDs for Masters 
       // l2m1 (CPU000)
       12'b11_000_000_00_00    
       12'b11_010_000_00_00     
       12'b11_011_000_00_00   
       12'b11_100_000_00_00   
       12'b11_101_000_00_00   
       12'b11_110_000_00_00     
       12'b11_111_000_00_00     
       // l2m1 (CPU001)
       12'b11_000_001_00_00    
       12'b11_010_001_00_00     
       12'b11_011_001_00_00    
       12'b11_100_001_00_00    
       12'b11_101_001_00_00    
       12'b11_110_001_00_00     
       12'b11_111_001_00_00    
   */

   input  M_RESETN;

   output M_ARVALID;
   output M_AWVALID;
   output M_BREADY;
   output M_RREADY;
   output M_WLAST;
   output M_WVALID;
   output [id_bus_width-1:0] M_ARID;
   output [id_bus_width-1:0] M_AWID;
   output [id_bus_width-1:0] M_WID;
   output [axi_brst_type_width-1:0] M_ARBURST;
   output [axi_lock_width-1:0] M_ARLOCK;
   output [axi_size_width-1:0] M_ARSIZE;
   output [axi_brst_type_width-1:0] M_AWBURST;
   output [axi_lock_width-1:0] M_AWLOCK;
   output [axi_size_width-1:0] M_AWSIZE;
   output [axi_prot_width-1:0] M_ARPROT;
   output [axi_prot_width-1:0] M_AWPROT;
   output [address_bus_width-1:0] M_ARADDR;
   output [address_bus_width-1:0] M_AWADDR;
   output [data_bus_width-1:0] M_WDATA;
   output [axi_cache_width-1:0] M_ARCACHE;
   output [axi_len_width-1:0] M_ARLEN;
   output [axi_qos_width-1:0] M_ARQOS;  // not connected to AXI VIP
   output [axi_cache_width-1:0] M_AWCACHE;
   output [axi_len_width-1:0] M_AWLEN;
   output [axi_qos_width-1:0] M_AWQOS;  // not connected to AXI VIP
   output [(data_bus_width/8)-1:0] M_WSTRB;
   input M_ACLK;
   input M_ARREADY;
   input M_AWREADY;
   input M_BVALID;
   input M_RLAST;
   input M_RVALID;
   input M_WREADY;
   input [id_bus_width-1:0] M_BID;
   input [id_bus_width-1:0] M_RID;
   input [axi_rsp_width-1:0] M_BRESP;
   input [axi_rsp_width-1:0] M_RRESP;
   input [data_bus_width-1:0] M_RDATA;

   wire net_RESETN;
   wire net_RVALID;
   wire net_BVALID;
   reg DEBUG_INFO = 1'b1; 
   reg STOP_ON_ERROR = 1'b1; 

   integer use_id_no = 0;

   assign M_ARQOS = 'b0;
   assign M_AWQOS = 'b0;
   assign net_RESETN = M_RESETN; //ENABLE_THIS_PORT ? M_RESETN : 1'b0;
   assign net_RVALID = enable_this_port ? M_RVALID : 1'b0;
   assign net_BVALID = enable_this_port ? M_BVALID : 1'b0;

  initial begin
   if(DEBUG_INFO) begin
    if(enable_this_port)
     $display("[%0d] : %0s : %0s : Port is ENABLED.",$time, DISP_INFO, master_name);
    else
     $display("[%0d] : %0s : %0s : Port is DISABLED.",$time, DISP_INFO, master_name);
   end
  end

   initial master.IF.xilinx_slave_ready_check_enable = 0; 
   initial begin
     repeat(2) @(posedge M_ACLK);
     if(!enable_this_port) begin
//      master.set_channel_level_info(0);
//      master.set_function_level_info(0);
     end
//     master.RESPONSE_TIMEOUT = 0;
   end

   axi_mst_agent #(1,address_bus_width, data_bus_width, data_bus_width, id_bus_width,id_bus_width,0,0,0,0,0,1,1,1,1,0,1,1,1,1,1,1) mst;

   axi_vip_v1_1_1_top #(
     .C_AXI_PROTOCOL(1),
     .C_AXI_INTERFACE_MODE(0),
     .C_AXI_ADDR_WIDTH(address_bus_width),
     .C_AXI_WDATA_WIDTH(data_bus_width),
     .C_AXI_RDATA_WIDTH(data_bus_width),
     .C_AXI_WID_WIDTH(id_bus_width),
     .C_AXI_RID_WIDTH(id_bus_width),
     .C_AXI_AWUSER_WIDTH(0),
     .C_AXI_ARUSER_WIDTH(0),
     .C_AXI_WUSER_WIDTH(0),
     .C_AXI_RUSER_WIDTH(0),
     .C_AXI_BUSER_WIDTH(0),
     .C_AXI_SUPPORTS_NARROW(1),
     .C_AXI_HAS_BURST(1),
     .C_AXI_HAS_LOCK(1),
     .C_AXI_HAS_CACHE(1),
     .C_AXI_HAS_REGION(0),
     .C_AXI_HAS_PROT(1),
     .C_AXI_HAS_QOS(1),
     .C_AXI_HAS_WSTRB(1),
     .C_AXI_HAS_BRESP(1),
     .C_AXI_HAS_RRESP(1),
	 .C_AXI_HAS_ARESETN(1)
   ) master (
     .aclk(M_ACLK),
     .aclken(1'B1),
     .aresetn(net_RESETN),
     .s_axi_awid(12'h000),
     .s_axi_awaddr(32'B0),
     .s_axi_awlen(4'h0),
     .s_axi_awsize(3'B0),
     .s_axi_awburst(2'B0),
     .s_axi_awlock(2'b00),
     .s_axi_awcache(4'B0),
     .s_axi_awprot(3'B0),
     .s_axi_awregion(4'B0),
     .s_axi_awqos(4'B0),
     .s_axi_awuser(1'B0),
     .s_axi_awvalid(1'B0),
     .s_axi_awready(),
     .s_axi_wid(12'h000),
     .s_axi_wdata(32'B0),
     .s_axi_wstrb(4'B0),
     .s_axi_wlast(1'B0),
     .s_axi_wuser(1'B0),
     .s_axi_wvalid(1'B0),
     .s_axi_wready(),
     .s_axi_bid(),
     .s_axi_bresp(),
     .s_axi_buser(),
     .s_axi_bvalid(),
     .s_axi_bready(1'B0),
     .s_axi_arid(12'h000),
     .s_axi_araddr(32'B0),
     .s_axi_arlen(4'h0),
     .s_axi_arsize(3'B0),
     .s_axi_arburst(2'B0),
     .s_axi_arlock(2'b00),
     .s_axi_arcache(4'B0),
     .s_axi_arprot(3'B0),
     .s_axi_arregion(4'B0),
     .s_axi_arqos(4'B0),
     .s_axi_aruser(1'B0),
     .s_axi_arvalid(1'B0),
     .s_axi_arready(),
     .s_axi_rid(),
     .s_axi_rdata(),
     .s_axi_rresp(),
     .s_axi_rlast(),
     .s_axi_ruser(),
     .s_axi_rvalid(),
     .s_axi_rready(1'B0),
     .m_axi_awid(M_AWID),
     .m_axi_awaddr(M_AWADDR),
     .m_axi_awlen(M_AWLEN),
     .m_axi_awsize(M_AWSIZE),
     .m_axi_awburst(M_AWBURST),
     .m_axi_awlock(M_AWLOCK),
     .m_axi_awcache(M_AWCACHE),
     .m_axi_awprot(M_AWPROT),
     .m_axi_awregion(),
     .m_axi_awqos(),
     .m_axi_awuser(),
     .m_axi_awvalid(M_AWVALID),
     .m_axi_awready(M_AWREADY),
     .m_axi_wid(M_WID),
     .m_axi_wdata(M_WDATA),
     .m_axi_wstrb(M_WSTRB),
     .m_axi_wlast(M_WLAST),
     .m_axi_wuser(),
     .m_axi_wvalid(M_WVALID),
     .m_axi_wready(M_WREADY),
     .m_axi_bid(M_BID),
     .m_axi_bresp(M_BRESP),
     .m_axi_buser(1'B0),
     .m_axi_bvalid(M_BVALID),
     .m_axi_bready(M_BREADY),
     .m_axi_arid(M_ARID),
     .m_axi_araddr(M_ARADDR),
     .m_axi_arlen(M_ARLEN),
     .m_axi_arsize(M_ARSIZE),
     .m_axi_arburst(M_ARBURST),
     .m_axi_arlock(M_ARLOCK),
     .m_axi_arcache(M_ARCACHE),
     .m_axi_arprot(M_ARPROT),
     .m_axi_arregion(),
     .m_axi_arqos(M_ARQOS),
     .m_axi_aruser(),
     .m_axi_arvalid(M_ARVALID),
     .m_axi_arready(M_ARREADY),
     .m_axi_rid(M_RID),
     .m_axi_rdata(M_RDATA),
     .m_axi_rresp(M_RRESP),
     .m_axi_rlast(M_RLAST),
     .m_axi_ruser(1'B0),
     .m_axi_rvalid(M_RVALID),
     .m_axi_rready(M_RREADY)
   );

   axi_transaction tw, tr;
   axi_monitor_transaction tr_m, tw_m;
   axi_ready_gen           bready_gen;
   axi_ready_gen           rready_gen;

  initial begin
   mst = new("mst",master.IF);
   tr_m = new("master monitor trans");
   mst.start_master();
  end

/* Call to VIP APIs */
task automatic read_burst(input [address_bus_width-1:0] addr,input [axi_len_width-1:0] len,input [axi_size_width-1:0] siz,input [axi_brst_type_width-1:0] burst,input [axi_lock_width-1:0] lck,input [axi_cache_width-1:0] cache,input [axi_prot_width-1:0] prot,output [(axi_mgp_data_width*axi_burst_len)-1:0] data, output [(axi_rsp_width*axi_burst_len)-1:0] response);
 integer i;
 xil_axi_burst_t burst_i;
 xil_axi_size_t  size_i;
 xil_axi_data_beat new_data;
 xil_axi_lock_t  lock_i;
 integer datasize;
 case (burst)
   2'b00: burst_i = XIL_AXI_BURST_TYPE_FIXED;
   2'b01: burst_i = XIL_AXI_BURST_TYPE_INCR;
   2'b10: burst_i = XIL_AXI_BURST_TYPE_WRAP;
   2'b11: burst_i = XIL_AXI_BURST_TYPE_RSVD;
 endcase
 case (siz)
   3'b000: size_i = XIL_AXI_SIZE_1BYTE;
   3'b001: size_i = XIL_AXI_SIZE_2BYTE;
   3'b010: size_i = XIL_AXI_SIZE_4BYTE;
   3'b011: size_i = XIL_AXI_SIZE_8BYTE;
   3'b100: size_i = XIL_AXI_SIZE_16BYTE;
   3'b101: size_i = XIL_AXI_SIZE_32BYTE;
   3'b110: size_i = XIL_AXI_SIZE_64BYTE;
   3'b111: size_i = XIL_AXI_SIZE_128BYTE;
 endcase
 case (lck)
   2'b00: lock_i = XIL_AXI_ALOCK_NOLOCK;
   2'b01: lock_i = XIL_AXI_ALOCK_EXCL;
   2'b10: lock_i = XIL_AXI_ALOCK_LOCKED;
   2'b11: lock_i = XIL_AXI_ALOCK_RSVD;
 endcase
 if(enable_this_port)begin
  fork 
    begin
      rready_gen = mst.rd_driver.create_ready("rready");
      rready_gen.set_ready_policy(XIL_AXI_READY_GEN_OSC);
      rready_gen.set_high_time(len+1);
      mst.rd_driver.send_rready(rready_gen);
	end
	begin
      tr = mst.rd_driver.create_transaction("write_tran");
      mst.rd_driver.set_transaction_depth(max_outstanding_transactions);
      assert(tr.randomize());
      tr.set_read_cmd(addr,burst_i,ID,len,size_i);
      tr.set_cache(cache);
      tr.set_lock(lock_i);
      tr.set_prot(prot);
      mst.rd_driver.send(tr);
	end
  join
   mst.monitor.item_collected_port.get(tr_m);
   datasize = 0;
   for(i = 0; i < (len+1); i = i+1) begin
     new_data = tr_m.get_data_beat(i);
     for(int k = 0; k < (2**siz); k = k+1) begin
	   data[(datasize*8)+:8] = new_data[(k*8)+:8];
	   datasize = datasize+1;
	 end
	 response = response << 2;
     response[1:0] = tr_m.rresp[i];
   end
 end else begin
   $display("[%0d] : %0s : %0s : Port is disabled. 'read_burst' will not be executed...",$time, DISP_ERR, master_name);
   if(STOP_ON_ERROR) $stop;
 end
endtask 

task automatic write_burst(input [address_bus_width-1:0] addr,input [axi_len_width-1:0] len,input [axi_size_width-1:0] siz,input [axi_brst_type_width-1:0] burst,input [axi_lock_width-1:0] lck,input [axi_cache_width-1:0] cache,input [axi_prot_width-1:0] prot,input [(axi_mgp_data_width*axi_burst_len)-1:0] data,input integer datasize, output [axi_rsp_width-1:0] response);
 integer i,j;
 xil_axi_burst_t burst_i;
 xil_axi_size_t  size_i;
 xil_axi_lock_t  lock_i;
 xil_axi_data_beat new_data;
 xil_axi_strb_beat new_strb;

 case (burst)
   2'b00: burst_i = XIL_AXI_BURST_TYPE_FIXED;
   2'b01: burst_i = XIL_AXI_BURST_TYPE_INCR;
   2'b10: burst_i = XIL_AXI_BURST_TYPE_WRAP;
   2'b11: burst_i = XIL_AXI_BURST_TYPE_RSVD;
 endcase
 case (siz)
   3'b000: size_i = XIL_AXI_SIZE_1BYTE;
   3'b001: size_i = XIL_AXI_SIZE_2BYTE;
   3'b010: size_i = XIL_AXI_SIZE_4BYTE;
   3'b011: size_i = XIL_AXI_SIZE_8BYTE;
   3'b100: size_i = XIL_AXI_SIZE_16BYTE;
   3'b101: size_i = XIL_AXI_SIZE_32BYTE;
   3'b110: size_i = XIL_AXI_SIZE_64BYTE;
   3'b111: size_i = XIL_AXI_SIZE_128BYTE;
 endcase
 case (lck)
   2'b00: lock_i = XIL_AXI_ALOCK_NOLOCK;
   2'b01: lock_i = XIL_AXI_ALOCK_EXCL;
   2'b10: lock_i = XIL_AXI_ALOCK_LOCKED;
   2'b11: lock_i = XIL_AXI_ALOCK_RSVD;
 endcase
 if(enable_this_port)begin
   fork 
     begin
       bready_gen = mst.wr_driver.create_ready("bready");
       bready_gen.set_ready_policy(XIL_AXI_READY_GEN_OSC);
       bready_gen.set_high_time(1);
       mst.wr_driver.send_bready(bready_gen);
     end
     begin
       tw = mst.wr_driver.create_transaction("write_tran");
       mst.wr_driver.set_transaction_depth(max_outstanding_transactions);
       assert(tw.randomize());
       tw.set_write_cmd(addr,burst_i,ID,len,size_i);
       tw.set_cache(cache);
       tw.set_lock(lock_i);
       tw.set_prot(prot);
       for(i = 0; i < (len+1); i = i+1) begin
         for(j = 0; j < (2**siz); j = j+1) begin
           new_data[j*8+:8] = data[7:0];
		   new_strb[j*1+:1] = 1'b1;
           data = data >> 8;
		 end
         tw.set_data_beat(i, new_data);
		 tw.set_strb_beat(i, new_strb);
       end
       mst.wr_driver.send(tw);
     end
   join
   mst.monitor.item_collected_port.get(tw_m);
   response = tw_m.bresp;
 end else begin
   $display("[%0d] : %0s : %0s : Port is disabled. 'write_burst' will not be executed...",$time, DISP_ERR, master_name);
   if(STOP_ON_ERROR) $stop;
 end
endtask 

task automatic write_burst_concurrent(input [address_bus_width-1:0] addr,input [axi_len_width-1:0] len,input [axi_size_width-1:0] siz,input [axi_brst_type_width-1:0] burst,input [axi_lock_width-1:0] lck,input [axi_cache_width-1:0] cache,input [axi_prot_width-1:0] prot,input [(axi_mgp_data_width*axi_burst_len)-1:0] data,input integer datasize, output [axi_rsp_width-1:0] response);
 integer i;
 if(enable_this_port)begin
   write_burst(addr,len,siz,burst,lck,cache,prot,data,datasize,response);
 end else begin
   $display("[%0d] : %0s : %0s : Port is disabled. 'write_burst_concurrent' will not be executed...",$time, DISP_ERR, master_name);
   if(STOP_ON_ERROR) $stop;
 end
endtask 

/* local */
function automatic[id_bus_width-1:0] get_id;
input dummy; 
begin
 case(use_id_no)
  // l2m1 (CPU000)
  0 : get_id = 12'b11_000_000_00_00;   
  1 : get_id = 12'b11_010_000_00_00;    
  2 : get_id = 12'b11_011_000_00_00;  
  3 : get_id = 12'b11_100_000_00_00;  
  4 : get_id = 12'b11_101_000_00_00;  
  5 : get_id = 12'b11_110_000_00_00;    
  6 : get_id = 12'b11_111_000_00_00;    
  // l2m1 (CPU001)
  7 : get_id = 12'b11_000_001_00_00;   
  8 : get_id = 12'b11_010_001_00_00;    
  9 : get_id = 12'b11_011_001_00_00;   
 10 : get_id = 12'b11_100_001_00_00;   
 11 : get_id = 12'b11_101_001_00_00;   
 12 : get_id = 12'b11_110_001_00_00;    
 13 : get_id = 12'b11_111_001_00_00;   
 endcase
 if(use_id_no == 13)
  use_id_no = 0;
 else
  use_id_no = use_id_no+1;
end
endfunction

/* Write data from file */
task automatic write_from_file;
input [(max_chars*8)-1:0] file_name;
input [addr_width-1:0] start_addr;
input [int_width-1:0] wr_size;
output [axi_rsp_width-1:0] response;
reg [axi_rsp_width-1:0] wresp,rwrsp;
reg [addr_width-1:0] addr;
reg [(axi_burst_len*data_bus_width)-1 : 0] wr_data;
integer bytes;
integer trnsfr_bytes;
integer wr_fd;
integer succ;
integer trnsfr_lngth;
reg concurrent; 
integer i;

reg [id_bus_width-1:0] wr_id;
reg [axi_size_width-1:0] siz;
reg [axi_brst_type_width-1:0] burst;
reg [axi_lock_width-1:0] lck;
reg [axi_cache_width-1:0] cache;
reg [axi_prot_width-1:0] prot; 
begin
if(!enable_this_port) begin
 $display("[%0d] : %0s : %0s : Port is disabled. 'write_from_file' will not be executed...",$time, DISP_ERR, master_name);
 if(STOP_ON_ERROR) $stop;
end else begin
 siz =  2; 
 burst = 1;
 lck = 0;
 cache = 0;
 prot = 0;

 addr = start_addr;
 bytes = wr_size;
 wresp = 0;
 concurrent = $random; 
 if(bytes > (axi_burst_len * data_bus_width/8))
  trnsfr_bytes = (axi_burst_len * data_bus_width/8);
 else
  trnsfr_bytes = bytes;
 
 if(bytes > (axi_burst_len * data_bus_width/8))
  trnsfr_lngth = axi_burst_len-1;
 else if(bytes%(data_bus_width/8) == 0)
  trnsfr_lngth = bytes/(data_bus_width/8) - 1;
 else 
  trnsfr_lngth = bytes/(data_bus_width/8);
 
 wr_id = ID;
 wr_fd = $fopen(file_name,"r");
 
 while (bytes > 0) begin
   repeat(axi_burst_len) begin /// get the data for 1 AXI burst transaction
    wr_data = wr_data >> data_bus_width;
    succ = $fscanf(wr_fd,"%h",wr_data[(axi_burst_len*data_bus_width)-1 :(axi_burst_len*data_bus_width)-data_bus_width ]); /// write as 4 bytes (data_bus_width) ..
   end
   write_burst(addr, trnsfr_lngth, siz, burst, lck, cache, prot, wr_data, trnsfr_bytes, rwrsp);
   bytes = bytes - trnsfr_bytes;
   addr = addr + trnsfr_bytes;
   if(bytes >= (axi_burst_len * data_bus_width/8) )
    trnsfr_bytes = (axi_burst_len * data_bus_width/8); //
   else
    trnsfr_bytes = bytes;
 
   if(bytes > (axi_burst_len * data_bus_width/8))
    trnsfr_lngth = axi_burst_len-1;
   else if(bytes%(data_bus_width/8) == 0)
    trnsfr_lngth = bytes/(data_bus_width/8) - 1;
   else 
    trnsfr_lngth = bytes/(data_bus_width/8);
 
   wresp = wresp | rwrsp;
 end /// while 
 response = wresp;
end
end
endtask

/* Read data to file */
task automatic read_to_file;
input [(max_chars*8)-1:0] file_name;
input [addr_width-1:0] start_addr;
input [int_width-1:0] rd_size;
output [axi_rsp_width-1:0] response;
reg [axi_rsp_width-1:0] rresp, rrrsp;
reg [addr_width-1:0] addr;
integer bytes;
integer trnsfr_lngth;
reg [(axi_burst_len*data_bus_width)-1 :0] rd_data;
integer rd_fd;
reg [id_bus_width-1:0] rd_id;

reg [axi_size_width-1:0] siz;
reg [axi_brst_type_width-1:0] burst;
reg [axi_lock_width-1:0] lck;
reg [axi_cache_width-1:0] cache;
reg [axi_prot_width-1:0] prot; 
begin
if(!enable_this_port) begin
 $display("[%0d] : %0s : %0s : Port is disabled. 'read_to_file' will not be executed...",$time, DISP_ERR, master_name);
 if(STOP_ON_ERROR) $stop;
end else begin
  siz =  2; 
  burst = 1;
  lck = 0;
  cache = 0;
  prot = 0;

  addr = start_addr;
  rresp = 0;
  bytes = rd_size;
  
  rd_id = ID;
  
  if(bytes > (axi_burst_len * data_bus_width/8))
   trnsfr_lngth = axi_burst_len-1;
  else if(bytes%(data_bus_width/8) == 0)
   trnsfr_lngth = bytes/(data_bus_width/8) - 1;
  else 
   trnsfr_lngth = bytes/(data_bus_width/8);
 
  rd_fd = $fopen(file_name,"w");
  
  while (bytes > 0) begin
    read_burst(addr, trnsfr_lngth, siz, burst, lck, cache, prot, rd_data, rrrsp);
    repeat(trnsfr_lngth+1) begin
     $fdisplayh(rd_fd,rd_data[data_bus_width-1:0]);
     rd_data = rd_data >> data_bus_width;
    end
    
    addr = addr + (trnsfr_lngth+1)*4;

    if(bytes >= (axi_burst_len * data_bus_width/8) )
     bytes = bytes - (axi_burst_len * data_bus_width/8); //
    else
     bytes = 0;
 
    if(bytes > (axi_burst_len * data_bus_width/8))
     trnsfr_lngth = axi_burst_len-1;
    else if(bytes%(data_bus_width/8) == 0)
     trnsfr_lngth = bytes/(data_bus_width/8) - 1;
    else 
     trnsfr_lngth = bytes/(data_bus_width/8);

    rresp = rresp | rrrsp;
  end /// while 
  response = rresp;
end
end
endtask

/* Write data (used for transfer size <= 128 Bytes */
task automatic write_data;
input [addr_width-1:0] start_addr;
input [max_transfer_bytes_width:0] wr_size;
input [(max_transfer_bytes*8)-1:0] w_data;
output [axi_rsp_width-1:0] response;
reg [axi_rsp_width-1:0] wresp,rwrsp;
reg [addr_width-1:0] addr;
reg [7:0] bytes,tmp_bytes;
integer trnsfr_bytes;
reg [(max_transfer_bytes*8)-1:0] wr_data;
integer trnsfr_lngth;
reg concurrent; 

reg [id_bus_width-1:0] wr_id;
reg [axi_size_width-1:0] siz;
reg [axi_brst_type_width-1:0] burst;
reg [axi_lock_width-1:0] lck;
reg [axi_cache_width-1:0] cache;
reg [axi_prot_width-1:0] prot; 

integer pad_bytes;
begin
if(!enable_this_port) begin
 $display("[%0d] : %0s : %0s : Port is disabled. 'write_data' will not be executed...",$time, DISP_ERR, master_name);
 if(STOP_ON_ERROR) $stop;
end else begin
 addr = start_addr;
 bytes = wr_size;
 wresp = 0;
 wr_data = w_data;
 concurrent = $random; 
 siz =  2; 
 burst = 1;
 lck = 0;
 cache = 0;
 prot = 0;
 pad_bytes = start_addr[clogb2(data_bus_width/8)-1:0];
 wr_id = ID;
 if(bytes+pad_bytes > (data_bus_width/8*axi_burst_len)) begin /// for unaligned address
   trnsfr_bytes = (data_bus_width*axi_burst_len)/8 - pad_bytes;//start_addr[1:0]; 
   trnsfr_lngth = axi_burst_len-1;
 end else begin 
   trnsfr_bytes = bytes;
   tmp_bytes   = bytes + pad_bytes;//start_addr[1:0];
   if(tmp_bytes%(data_bus_width/8) == 0)
     trnsfr_lngth = tmp_bytes/(data_bus_width/8) - 1;
   else 
     trnsfr_lngth = tmp_bytes/(data_bus_width/8);
 end

 while (bytes > 0) begin
   write_burst(addr, trnsfr_lngth,  siz, burst, lck, cache, prot, wr_data[(axi_burst_len*data_bus_width)-1:0], trnsfr_bytes, rwrsp);
   wr_data = wr_data >> (trnsfr_bytes*8);
   bytes = bytes - trnsfr_bytes;
   addr = addr + trnsfr_bytes;
   if(bytes  > (axi_burst_len * data_bus_width/8)) begin
    trnsfr_bytes = (axi_burst_len * data_bus_width/8) - pad_bytes;//start_addr[1:0]; 
    trnsfr_lngth = axi_burst_len-1;
   end else begin 
     trnsfr_bytes = bytes;
     tmp_bytes = bytes + pad_bytes;//start_addr[1:0];
     if(tmp_bytes%(data_bus_width/8) == 0)
       trnsfr_lngth = tmp_bytes/(data_bus_width/8) - 1;
     else 
       trnsfr_lngth = tmp_bytes/(data_bus_width/8);
   end
   wresp = wresp | rwrsp;
 end /// while 
 response = wresp;
end
end
endtask

/* Read data (used for transfer size <= 128 Bytes */
task automatic read_data;
input [addr_width-1:0] start_addr;
input [max_transfer_bytes_width:0] rd_size;
output [(max_transfer_bytes*8)-1:0] r_data;
output [axi_rsp_width-1:0] response;
reg [axi_rsp_width-1:0] rresp,rdrsp;
reg [addr_width-1:0] addr;
reg [max_transfer_bytes_width:0] bytes,tmp_bytes;
integer trnsfr_bytes;
reg [(max_transfer_bytes*8)-1 : 0] rd_data;
reg [(axi_burst_len*data_bus_width)-1:0] rcv_rd_data;
integer total_rcvd_bytes;
integer trnsfr_lngth;
integer i;
reg [id_bus_width-1:0] rd_id;

reg [axi_size_width-1:0] siz;
reg [axi_brst_type_width-1:0] burst;
reg [axi_lock_width-1:0] lck;
reg [axi_cache_width-1:0] cache;
reg [axi_prot_width-1:0] prot; 

integer pad_bytes;

begin
if(!enable_this_port) begin
 $display("[%0d] : %0s : %0s : Port is disabled. 'read_data' will not be executed...",$time, DISP_ERR, master_name);
 if(STOP_ON_ERROR) $stop;
end else begin
 addr = start_addr;
 bytes = rd_size;
 rresp = 0;
 total_rcvd_bytes = 0;
 rd_data = 0; 
 rd_id = ID;

 siz =  2; 
 burst = 1;
 lck = 0;
 cache = 0;
 prot = 0;
 pad_bytes = start_addr[clogb2(data_bus_width/8)-1:0];

 if(bytes+ pad_bytes > (axi_burst_len * data_bus_width/8)) begin /// for unaligned address
   trnsfr_bytes = (axi_burst_len * data_bus_width/8) - pad_bytes;//start_addr[1:0]; 
   trnsfr_lngth = axi_burst_len-1;
 end else begin 
   trnsfr_bytes = bytes;
   tmp_bytes = bytes + pad_bytes;//start_addr[1:0];
   if(tmp_bytes%(data_bus_width/8) == 0)
     trnsfr_lngth = tmp_bytes/(data_bus_width/8) - 1;
   else 
     trnsfr_lngth = tmp_bytes/(data_bus_width/8);
 end
 while (bytes > 0) begin
   read_burst(addr, trnsfr_lngth, siz, burst, lck, cache, prot, rcv_rd_data, rdrsp);
   for(i = 0; i < trnsfr_bytes; i = i+1) begin
     rd_data = rd_data >> 8;
     rd_data[(max_transfer_bytes*8)-1 : (max_transfer_bytes*8)-8] = rcv_rd_data[7:0];
     rcv_rd_data =  rcv_rd_data >> 8;
     total_rcvd_bytes = total_rcvd_bytes+1;
   end
   bytes = bytes - trnsfr_bytes;
   addr = addr + trnsfr_bytes;
   if(bytes  > (axi_burst_len * data_bus_width/8)) begin
    trnsfr_bytes = (axi_burst_len * data_bus_width/8) - pad_bytes;//start_addr[1:0]; 
    trnsfr_lngth = 15;
   end else begin 
     trnsfr_bytes = bytes;
     tmp_bytes = bytes + pad_bytes;//start_addr[1:0];
     if(tmp_bytes%(data_bus_width/8) == 0)
       trnsfr_lngth = tmp_bytes/(data_bus_width/8) - 1;
     else 
       trnsfr_lngth = tmp_bytes/(data_bus_width/8);
   end
   rresp = rresp | rdrsp;
 end /// while 
 rd_data =  rd_data >> (max_transfer_bytes - total_rcvd_bytes)*8;
 r_data = rd_data;
 response = rresp;
end
end
endtask


/* Wait Register Update in PL */
/* Issue a series of 1 burst length reads until the expected data pattern is received */

task automatic wait_reg_update;
input [addr_width-1:0] addri;
input [data_width-1:0] datai;
input [data_width-1:0] maski;
input [int_width-1:0] time_interval;
input [int_width-1:0] time_out;
output [data_width-1:0] data_o;
output upd_done;

reg [addr_width-1:0] addr;
reg [data_width-1:0] data_i;
reg [data_width-1:0] mask_i;
integer time_int;
integer timeout;

reg [axi_rsp_width-1:0] rdrsp;
reg [id_bus_width-1:0] rd_id;
reg [axi_size_width-1:0] siz;
reg [axi_brst_type_width-1:0] burst;
reg [axi_lock_width-1:0] lck;
reg [axi_cache_width-1:0] cache;
reg [axi_prot_width-1:0] prot; 
reg [data_width-1:0] rcv_data;
integer trnsfr_lngth; 
reg rd_loop;
reg timed_out; 
integer i;
integer cycle_cnt;

begin
addr = addri;
data_i = datai;
mask_i = maski;
time_int = time_interval;
timeout = time_out;
timed_out = 0;
cycle_cnt = 0;

if(!enable_this_port) begin
 $display("[%0d] : %0s : %0s : Port is disabled. 'wait_reg_update' will not be executed...",$time, DISP_ERR, master_name);
 upd_done = 0;
 if(STOP_ON_ERROR) $stop;
end else begin
 rd_id = ID;
 siz =  2; 
 burst = 1;
 lck = 0;
 cache = 0;
 prot = 0;
 trnsfr_lngth = 0;
 rd_loop = 1;
 fork 
  begin
    while(!timed_out & rd_loop) begin
      cycle_cnt = cycle_cnt + 1;
      if(cycle_cnt >= timeout) timed_out = 1;
      @(posedge M_ACLK);
    end
  end
  begin
    while (rd_loop) begin 
     if(DEBUG_INFO)
       $display("[%0d] : %0s : %0s : Reading Register mapped at Address(0x%0h) ",$time, master_name, DISP_INFO, addr); 
     read_burst(addr, trnsfr_lngth, siz, burst, lck, cache, prot, rcv_data, rdrsp);
     if(DEBUG_INFO)
       $display("[%0d] : %0s : %0s : Reading Register returned (0x%0h) ",$time, master_name, DISP_INFO, rcv_data); 
     if(((rcv_data & ~mask_i) === (data_i & ~mask_i)) | timed_out)
       rd_loop = 0;
     else
       repeat(time_int) @(posedge M_ACLK);
    end /// while 
  end 
 join
 data_o = rcv_data & ~mask_i; 
 if(timed_out) begin
   $display("[%0d] : %0s : %0s : 'wait_reg_update' timed out ... Register is not updated ",$time, DISP_ERR, master_name);
   if(STOP_ON_ERROR) $stop;
 end else
   upd_done = 1;
end
end
endtask

endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3_afi_slave.v
 *
 * Date : 2012-11
 *
 * Description : Model that acts as AFI port interface. It uses AXI3 Slave VIP
 *               from Cadence.
 *****************************************************************************/
 `timescale 1ns/1ps

import axi_vip_pkg::*;

module processing_system7_vip_v1_0_3_afi_slave (
  S_RESETN,

  S_ARREADY,
  S_AWREADY,
  S_BVALID,
  S_RLAST,
  S_RVALID,
  S_WREADY,
  S_BRESP,
  S_RRESP,
  S_RDATA,
  S_BID,
  S_RID,
  S_ACLK,
  S_ARVALID,
  S_AWVALID,
  S_BREADY,
  S_RREADY,
  S_WLAST,
  S_WVALID,
  S_ARBURST,
  S_ARLOCK,
  S_ARSIZE,
  S_AWBURST,
  S_AWLOCK,
  S_AWSIZE,
  S_ARPROT,
  S_AWPROT,
  S_ARADDR,
  S_AWADDR,
  S_WDATA,
  S_ARCACHE,
  S_ARLEN,
  S_AWCACHE,
  S_AWLEN,
  S_WSTRB,
  S_ARID,
  S_AWID,
  S_WID,
  
  S_AWQOS,
  S_ARQOS,

  SW_CLK,
  WR_DATA_ACK_OCM,
  WR_DATA_ACK_DDR,
  WR_ADDR,
  WR_DATA,
  WR_BYTES,
  WR_DATA_VALID_OCM,
  WR_DATA_VALID_DDR,
  WR_QOS,
  
  RD_REQ_DDR,
  RD_REQ_OCM,
  RD_ADDR,
  RD_DATA_OCM,
  RD_DATA_DDR,
  RD_BYTES,
  RD_QOS,
  RD_DATA_VALID_OCM,
  RD_DATA_VALID_DDR,
  S_RDISSUECAP1_EN,
  S_WRISSUECAP1_EN,
  S_RCOUNT,
  S_WCOUNT,
  S_RACOUNT,
  S_WACOUNT

);
  parameter enable_this_port = 0;  
  parameter slave_name = "Slave";
  parameter data_bus_width = 32;
  parameter address_bus_width = 32;
  parameter id_bus_width = 6;
  parameter slave_base_address = 0;
  parameter slave_high_address = 4;
  parameter max_outstanding_transactions = 8;
  parameter exclusive_access_supported = 0;

  `include "processing_system7_vip_v1_0_3_local_params.v"

  /* Local parameters only for this module */
  /* Internal counters that are used as Read/Write pointers to the fifo's that store all the transaction info on all channles.
     This parameter is used to define the width of these pointers --> depending on Maximum outstanding transactions supported.
     1-bit extra width than the no.of.bits needed to represent the outstanding transactions
     Extra bit helps in generating the empty and full flags
  */
  parameter int_cntr_width = clogb2(max_outstanding_transactions)+1;

  /* RESP data */
  parameter rsp_fifo_bits = axi_rsp_width+id_bus_width; 
  parameter rsp_lsb = 0;
  parameter rsp_msb = axi_rsp_width-1;
  parameter rsp_id_lsb = rsp_msb + 1;  
  parameter rsp_id_msb = rsp_id_lsb + id_bus_width-1;  

  input  S_RESETN;

  output  S_ARREADY;
  output  S_AWREADY;
  output  S_BVALID;
  output  S_RLAST;
  output  S_RVALID;
  output  S_WREADY;
  output  [axi_rsp_width-1:0] S_BRESP;
  output  [axi_rsp_width-1:0] S_RRESP;
  output  [data_bus_width-1:0] S_RDATA;
  output  [id_bus_width-1:0] S_BID;
  output  [id_bus_width-1:0] S_RID;
  input S_ACLK;
  input S_ARVALID;
  input S_AWVALID;
  input S_BREADY;
  input S_RREADY;
  input S_WLAST;
  input S_WVALID;
  input [axi_brst_type_width-1:0] S_ARBURST;
  input [axi_lock_width-1:0] S_ARLOCK;
  input [axi_size_width-1:0] S_ARSIZE;
  input [axi_brst_type_width-1:0] S_AWBURST;
  input [axi_lock_width-1:0] S_AWLOCK;
  input [axi_size_width-1:0] S_AWSIZE;
  input [axi_prot_width-1:0] S_ARPROT;
  input [axi_prot_width-1:0] S_AWPROT;
  input [address_bus_width-1:0] S_ARADDR;
  input [address_bus_width-1:0] S_AWADDR;
  input [data_bus_width-1:0] S_WDATA;
  input [axi_cache_width-1:0] S_ARCACHE;
  input [axi_cache_width-1:0] S_ARLEN;
  
  input [axi_qos_width-1:0] S_ARQOS;
 
  input [axi_cache_width-1:0] S_AWCACHE;
  input [axi_len_width-1:0] S_AWLEN;

  input [axi_qos_width-1:0] S_AWQOS;
  input [(data_bus_width/8)-1:0] S_WSTRB;
  input [id_bus_width-1:0] S_ARID;
  input [id_bus_width-1:0] S_AWID;
  input [id_bus_width-1:0] S_WID;

  input SW_CLK;
  input WR_DATA_ACK_DDR, WR_DATA_ACK_OCM;
  output WR_DATA_VALID_DDR, WR_DATA_VALID_OCM;
  output [max_burst_bits-1:0] WR_DATA;
  output [addr_width-1:0] WR_ADDR;
  output [max_transfer_bytes_width:0] WR_BYTES;
  output reg RD_REQ_OCM, RD_REQ_DDR;
  output reg [addr_width-1:0] RD_ADDR;
  input [max_burst_bits-1:0] RD_DATA_DDR,RD_DATA_OCM;
  output reg[max_transfer_bytes_width:0] RD_BYTES;
  input RD_DATA_VALID_OCM,RD_DATA_VALID_DDR;
  output [axi_qos_width-1:0] WR_QOS;
  output reg [axi_qos_width-1:0] RD_QOS;
 
  input S_RDISSUECAP1_EN;
  input S_WRISSUECAP1_EN;

  output [7:0] S_RCOUNT;
  output [7:0] S_WCOUNT;
  output [2:0] S_RACOUNT;
  output [5:0] S_WACOUNT;

  wire net_ARVALID;
  wire net_AWVALID;
  wire net_WVALID;

  real s_aclk_period;

     axi_slv_agent #(1,address_bus_width, data_bus_width, data_bus_width, id_bus_width,id_bus_width,0,0,0,0,0,1,1,1,1,0,1,1,1,1,1,1) slv;

   axi_vip_v1_1_1_top #(
     .C_AXI_PROTOCOL(1),
     .C_AXI_INTERFACE_MODE(2),
     .C_AXI_ADDR_WIDTH(address_bus_width),
     .C_AXI_WDATA_WIDTH(data_bus_width),
     .C_AXI_RDATA_WIDTH(data_bus_width),
     .C_AXI_WID_WIDTH(id_bus_width),
     .C_AXI_RID_WIDTH(id_bus_width),
     .C_AXI_AWUSER_WIDTH(0),
     .C_AXI_ARUSER_WIDTH(0),
     .C_AXI_WUSER_WIDTH(0),
     .C_AXI_RUSER_WIDTH(0),
     .C_AXI_BUSER_WIDTH(0),
     .C_AXI_SUPPORTS_NARROW(1),
     .C_AXI_HAS_BURST(1),
     .C_AXI_HAS_LOCK(1),
     .C_AXI_HAS_CACHE(1),
     .C_AXI_HAS_REGION(0),
     .C_AXI_HAS_PROT(1),
     .C_AXI_HAS_QOS(1),
     .C_AXI_HAS_WSTRB(1),
     .C_AXI_HAS_BRESP(1),
     .C_AXI_HAS_RRESP(1),
	 .C_AXI_HAS_ARESETN(1)
   ) slave (
     .aclk(S_ACLK),
     .aclken(1'B1),
     .aresetn(S_RESETN),
     .s_axi_awid(S_AWID),
     .s_axi_awaddr(S_AWADDR),
     .s_axi_awlen(S_AWLEN),
     .s_axi_awsize(S_AWSIZE),
     .s_axi_awburst(S_AWBURST),
     .s_axi_awlock(S_AWLOCK),
     .s_axi_awcache(S_AWCACHE),
     .s_axi_awprot(S_AWPROT),
     .s_axi_awregion(4'B0),
     .s_axi_awqos(S_AWQOS),
     .s_axi_awuser(1'B0),
     .s_axi_awvalid(S_AWVALID),
     .s_axi_awready(S_AWREADY),
     .s_axi_wid(S_WID),
     .s_axi_wdata(S_WDATA),
     .s_axi_wstrb(S_WSTRB),
     .s_axi_wlast(S_WLAST),
     .s_axi_wuser(1'B0),
     .s_axi_wvalid(S_WVALID),
     .s_axi_wready(S_WREADY),
     .s_axi_bid(S_BID),
     .s_axi_bresp(S_BRESP),
     .s_axi_buser(),
     .s_axi_bvalid(S_BVALID),
     .s_axi_bready(S_BREADY),
     .s_axi_arid(S_ARID),
     .s_axi_araddr(S_ARADDR),
     .s_axi_arlen(S_ARLEN),
     .s_axi_arsize(S_ARSIZE),
     .s_axi_arburst(S_ARBURST),
     .s_axi_arlock(S_ARLOCK),
     .s_axi_arcache(S_ARCACHE),
     .s_axi_arprot(S_ARPROT),
     .s_axi_arregion(4'B0),
     .s_axi_arqos(S_ARQOS),
     .s_axi_aruser(1'B0),
     .s_axi_arvalid(S_ARVALID),
     .s_axi_arready(S_ARREADY),
     .s_axi_rid(S_RID),
     .s_axi_rdata(S_RDATA),
     .s_axi_rresp(S_RRESP),
     .s_axi_rlast(S_RLAST),
     .s_axi_ruser(),
     .s_axi_rvalid(S_RVALID),
     .s_axi_rready(S_RREADY),
     .m_axi_awid(),
     .m_axi_awaddr(),
     .m_axi_awlen(),
     .m_axi_awsize(),
     .m_axi_awburst(),
     .m_axi_awlock(),
     .m_axi_awcache(),
     .m_axi_awprot(),
     .m_axi_awregion(),
     .m_axi_awqos(),
     .m_axi_awuser(),
     .m_axi_awvalid(),
     .m_axi_awready(1'b0),
     .m_axi_wid(),
     .m_axi_wdata(),
     .m_axi_wstrb(),
     .m_axi_wlast(),
     .m_axi_wuser(),
     .m_axi_wvalid(),
     .m_axi_wready(1'b0),
     .m_axi_bid(12'h000),
     .m_axi_bresp(2'b00),
     .m_axi_buser(1'B0),
     .m_axi_bvalid(1'b0),
     .m_axi_bready(),
     .m_axi_arid(),
     .m_axi_araddr(),
     .m_axi_arlen(),
     .m_axi_arsize(),
     .m_axi_arburst(),
     .m_axi_arlock(),
     .m_axi_arcache(),
     .m_axi_arprot(),
     .m_axi_arregion(),
     .m_axi_arqos(),
     .m_axi_aruser(),
     .m_axi_arvalid(),
     .m_axi_arready(1'b0),
     .m_axi_rid(12'h000),
     .m_axi_rdata(32'h00000000),
     .m_axi_rresp(2'b00),
     .m_axi_rlast(1'b0),
     .m_axi_ruser(1'B0),
     .m_axi_rvalid(1'b0),
     .m_axi_rready()
   );

   xil_axi_cmd_beat twc, trc;
   xil_axi_write_beat twd;
   xil_axi_read_beat trd;
   axi_transaction twr, trr;
   axi_ready_gen           awready_gen;
   axi_ready_gen           wready_gen;
   axi_ready_gen           arready_gen;
   integer i,j,k;

  initial begin
   slv = new("slv",slave.IF);
   twr = new("twr");
   trr = new("trr");
   slv.monitor.axi_wr_cmd_port.set_enabled();
   slv.monitor.axi_wr_beat_port.set_enabled();
   slv.monitor.axi_rd_cmd_port.set_enabled();
   slv.wr_driver.set_transaction_depth(max_outstanding_transactions);
   slv.rd_driver.set_transaction_depth(max_outstanding_transactions);
   slv.start_slave();
  end

  wire wr_intr_fifo_full;
  reg temp_wr_intr_fifo_full; 

  /* Interconnect WR_FIFO model instance */
  processing_system7_vip_v1_0_3_intr_wr_mem wr_intr_fifo(SW_CLK, S_RESETN, wr_intr_fifo_full, WR_DATA_ACK_OCM, WR_DATA_ACK_DDR, WR_ADDR, WR_DATA, WR_BYTES, WR_QOS, WR_DATA_VALID_OCM, WR_DATA_VALID_DDR);

  /* Register the async 'full' signal to S_ACLK clock */
  always@(posedge S_ACLK) temp_wr_intr_fifo_full = wr_intr_fifo_full;

  /* Latency type and Debug/Error Control */
  reg[1:0] latency_type = RANDOM_CASE;
  reg DEBUG_INFO = 1; 
  reg STOP_ON_ERROR = 1'b1; 

  /* Internal nets/regs for calling slave VIP API's*/
  reg [wr_afi_fifo_data_bits-1:0] wr_fifo [0:max_outstanding_transactions-1];
  reg [int_cntr_width-1:0] wr_fifo_wr_ptr = 0, wr_fifo_rd_ptr = 0;
  wire wr_fifo_empty;

  /* Store the awvalid receive time --- necessary for calculating the bresp latency */
  reg [7:0] aw_time_cnt = 0,bresp_time_cnt = 0;
  real awvalid_receive_time[0:max_outstanding_transactions]; // store the time when a new awvalid is received
  reg  awvalid_flag[0:max_outstanding_transactions]; // store the time when a new awvalid is received

  /* Address Write Channel handshake*/
  reg[int_cntr_width-1:0] aw_cnt = 0;//

  /* various FIFOs for storing the ADDR channel info */
  reg [axi_size_width-1:0]  awsize [0:max_outstanding_transactions-1];
  reg [axi_prot_width-1:0]  awprot [0:max_outstanding_transactions-1];
  reg [axi_lock_width-1:0]  awlock [0:max_outstanding_transactions-1];
  reg [axi_cache_width-1:0]  awcache [0:max_outstanding_transactions-1];
  reg [axi_brst_type_width-1:0]  awbrst [0:max_outstanding_transactions-1];
  reg [axi_len_width-1:0]  awlen [0:max_outstanding_transactions-1];
  reg aw_flag [0:max_outstanding_transactions-1];
  reg [addr_width-1:0] awaddr [0:max_outstanding_transactions-1];
  reg [id_bus_width-1:0] awid [0:max_outstanding_transactions-1];
  reg [axi_qos_width-1:0]  awqos [0:max_outstanding_transactions-1];
  wire aw_fifo_full; // indicates awvalid_fifo is full (max outstanding transactions reached)

  /* internal fifos to store burst write data, ID & strobes*/
  reg [(data_bus_width*axi_burst_len)-1:0] burst_data [0:max_outstanding_transactions-1];
  reg [max_burst_bytes_width:0] burst_valid_bytes [0:max_outstanding_transactions-1]; /// total valid bytes received in a complete burst transfer
  reg [max_burst_bytes_width:0] valid_bytes = 0; /// total valid bytes received in a complete burst transfer
  reg wlast_flag [0:max_outstanding_transactions-1]; // flag  to indicate WLAST received
  wire wd_fifo_full;

  /* Write Data Channel and Write Response handshake signals*/
  reg [int_cntr_width-1:0] wd_cnt = 0;
  reg [(data_bus_width*axi_burst_len)-1:0] aligned_wr_data;
  reg [addr_width-1:0] aligned_wr_addr;
  reg [max_burst_bytes_width:0] valid_data_bytes;
  reg [int_cntr_width-1:0] wr_bresp_cnt = 0;
  reg [axi_rsp_width-1:0] bresp;
  reg [rsp_fifo_bits-1:0] fifo_bresp [0:max_outstanding_transactions-1]; // store the ID and its corresponding response
  reg enable_write_bresp;
  reg [int_cntr_width-1:0] rd_bresp_cnt = 0;
  integer wr_latency_count;
  reg  wr_delayed;
  wire bresp_fifo_empty;

  /* keep track of count values */
  reg[7:0] wcount;
  reg[5:0] wacount;

  /* Qos*/
  reg [axi_qos_width-1:0] ar_qos=0, aw_qos=0;

  initial begin
   if(DEBUG_INFO) begin
    if(enable_this_port)
     $display("[%0d] : %0s : %0s : Port is ENABLED.",$time, DISP_INFO, slave_name);
    else
     $display("[%0d] : %0s : %0s : Port is DISABLED.",$time, DISP_INFO, slave_name);
   end
  end
 /*--------------------------------------------------------------------------------*/

  /* Store the Clock cycle time period */
          
  always@(S_RESETN)
  begin
   if(S_RESETN) begin
    @(posedge S_ACLK);
    s_aclk_period = $time;
    @(posedge S_ACLK);
    s_aclk_period = $time - s_aclk_period;
   end
  end
 /*--------------------------------------------------------------------------------*/

//initial slave.set_disable_reset_value_checks(1); 
  initial begin
     repeat(2) @(posedge S_ACLK);
     if(!enable_this_port) begin
//      slave.set_channel_level_info(0);
//      slave.set_function_level_info(0);
     end 
//   slave.RESPONSE_TIMEOUT = 0;
  end
 /*--------------------------------------------------------------------------------*/

  /* Set Latency type to be used */
  task set_latency_type;
    input[1:0] lat;
  begin
   if(enable_this_port) 
    latency_type = lat;
   else begin
    //if(DEBUG_INFO)
     $display("[%0d] : %0s : %0s : Port is disabled. 'Latency Profile' will not be set...",$time, DISP_WARN, slave_name);
   end
  end
  endtask
 /*--------------------------------------------------------------------------------*/
  /* Set ARQoS to be used */
  task set_arqos;
    input[axi_qos_width-1:0] qos;
  begin
   if(enable_this_port) 
    ar_qos = qos;
   else begin
    if(DEBUG_INFO)
     $display("[%0d] : %0s : %0s : Port is disabled. 'ARQOS' will not be set...",$time, DISP_WARN, slave_name);
   end
  end
  endtask
  /*--------------------------------------------------------------------------------*/

  /* Set AWQoS to be used */
  task set_awqos;
    input[axi_qos_width-1:0] qos;
  begin
   if(enable_this_port) 
    aw_qos = qos;
   else begin
    if(DEBUG_INFO)
     $display("[%0d] : %0s : %0s : Port is disabled. 'AWQOS' will not be set...",$time, DISP_WARN, slave_name);
   end
  end
  endtask
  /*--------------------------------------------------------------------------------*/

  /* get the wr latency number */
  function [31:0] get_wr_lat_number;
  input dummy;
  reg[1:0] temp;
  begin 
   case(latency_type)
    BEST_CASE   : get_wr_lat_number = afi_wr_min;            
    AVG_CASE    : get_wr_lat_number = afi_wr_avg;            
    WORST_CASE  : get_wr_lat_number = afi_wr_max;            
    default     : begin  // RANDOM_CASE
                   temp = $random;
                   case(temp) 
                    2'b00   : get_wr_lat_number = ($random()%10+ afi_wr_min); 
                    2'b01   : get_wr_lat_number = ($random()%40+ afi_wr_avg); 
                    default : get_wr_lat_number = ($random()%60+ afi_wr_max); 
                   endcase        
                  end
   endcase
  end
  endfunction
 /*--------------------------------------------------------------------------------*/

  /* get the rd latency number */
  function [31:0] get_rd_lat_number;
  input dummy;
  reg[1:0] temp;
  begin 
   case(latency_type)
    BEST_CASE   : get_rd_lat_number = afi_rd_min;            
    AVG_CASE    : get_rd_lat_number = afi_rd_avg;            
    WORST_CASE  : get_rd_lat_number = afi_rd_max;            
    default     : begin  // RANDOM_CASE
                   temp = $random;
                   case(temp) 
                    2'b00   : get_rd_lat_number = ($random()%10+ afi_rd_min); 
                    2'b01   : get_rd_lat_number = ($random()%40+ afi_rd_avg); 
                    default : get_rd_lat_number = ($random()%60+ afi_rd_max); 
                   endcase        
                  end
   endcase
  end
  endfunction
 /*--------------------------------------------------------------------------------*/
 /* Check for any WRITE/READs when this port is disabled */
 always@(S_AWVALID or S_WVALID or S_ARVALID)
 begin
  if((S_AWVALID | S_WVALID | S_ARVALID) && !enable_this_port) begin
    $display("[%0d] : %0s : %0s : Port is disabled. AXI transaction is initiated on this port ...\nSimulation will halt ..",$time, DISP_ERR, slave_name);
    $stop;
  end
 end

 /*--------------------------------------------------------------------------------*/

  assign net_ARVALID = enable_this_port ? S_ARVALID : 1'b0;
  assign net_AWVALID = enable_this_port ? S_AWVALID : 1'b0;
  assign net_WVALID  = enable_this_port ? S_WVALID : 1'b0;

  assign wr_fifo_empty = (wr_fifo_wr_ptr === wr_fifo_rd_ptr)?1'b1: 1'b0;
  assign bresp_fifo_empty = (wr_bresp_cnt === rd_bresp_cnt)?1'b1:1'b0;
  assign bresp_fifo_full  = ((wr_bresp_cnt[int_cntr_width-1] !== rd_bresp_cnt[int_cntr_width-1]) && (wr_bresp_cnt[int_cntr_width-2:0] === rd_bresp_cnt[int_cntr_width-2:0]))?1'b1:1'b0;

  assign S_WCOUNT = wcount;
  assign S_WACOUNT = wacount;

 // FIFO_STATUS (only if AFI port) 1- full 
 function automatic wrfifo_full ;
 input [axi_len_width:0] fifo_space_exp;
 integer fifo_space_left; 
 begin
   fifo_space_left = afi_fifo_locations - wcount;
   if(fifo_space_left < fifo_space_exp) 
     wrfifo_full = 1;
   else
     wrfifo_full = 0;
 end
 endfunction
 /*--------------------------------------------------------------------------------*/

 /* Store the awvalid receive time --- necessary for calculating the bresp latency */
 always@(negedge S_RESETN or S_AWID or S_AWADDR or S_AWVALID )
 begin
 if(!S_RESETN)
  aw_time_cnt = 0;
 else begin
  if(S_AWVALID) begin
    awvalid_receive_time[aw_time_cnt] = $time;
    awvalid_flag[aw_time_cnt] = 1'b1;
    aw_time_cnt = aw_time_cnt + 1;
  end
 end // else
 end /// always
 /*--------------------------------------------------------------------------------*/
  always@(posedge S_ACLK)
  begin
  if(net_AWVALID && S_AWREADY) begin
    if(S_AWQOS === 0) awqos[aw_cnt[int_cntr_width-2:0]] = aw_qos; 
    else awqos[aw_cnt[int_cntr_width-2:0]] = S_AWQOS; 
  end
  end

 /* Address Write Channel handshake*/
 always@(negedge S_RESETN or posedge S_ACLK)
 begin
 if(!S_RESETN) begin
   aw_cnt = 0;
   wacount = 0;
 end else begin
   if(S_AWVALID && !wrfifo_full(S_AWLEN+1)) begin 
      slv.monitor.axi_wr_cmd_port.get(twc);
      awaddr[aw_cnt[int_cntr_width-2:0]] = twc.addr;
      awlen[aw_cnt[int_cntr_width-2:0]]  = twc.len;
      awsize[aw_cnt[int_cntr_width-2:0]] = twc.size;
      awbrst[aw_cnt[int_cntr_width-2:0]] = twc.burst;
      awlock[aw_cnt[int_cntr_width-2:0]] = twc.lock;
      awcache[aw_cnt[int_cntr_width-2:0]]= twc.cache;
      awprot[aw_cnt[int_cntr_width-2:0]] = twc.prot;
      awid[aw_cnt[int_cntr_width-2:0]]   = twc.id;
      aw_flag[aw_cnt[int_cntr_width-2:0]] = 1;
      aw_cnt   = aw_cnt + 1;
      wacount                             = wacount + 1;
   end // if (!aw_fifo_full)
 end /// if else
 end /// always
 /*--------------------------------------------------------------------------------*/
 
 /* Write Data Channel Handshake */
 always@(negedge S_RESETN or posedge S_ACLK)
 begin
 if(!S_RESETN) begin
  wd_cnt = 0;
 end else begin
    if(!wrfifo_full(axi_burst_len+1) && S_WVALID) begin
	  slv.monitor.axi_wr_beat_port.get(twd);
      for(i = 0; i < (2**awsize[wr_bresp_cnt[int_cntr_width-2:0]]); i = i+1) begin
        burst_data[wd_cnt[int_cntr_width-2:0]][((valid_bytes*8)+(i*8))+:8] = twd.data[i];
      end
      valid_bytes = valid_bytes+(2**awsize[wr_bresp_cnt[int_cntr_width-2:0]]);
      if (twd.last) begin
        wlast_flag[wd_cnt[int_cntr_width-2:0]] = 1'b1;
        burst_valid_bytes[wd_cnt[int_cntr_width-2:0]] = valid_bytes;
		valid_bytes = 0;
        wd_cnt   = wd_cnt + 1;
        if(wd_cnt[int_cntr_width-2:0] === (max_outstanding_transactions)) begin
          wd_cnt[int_cntr_width-1] = ~wd_cnt[int_cntr_width-1];
          wd_cnt[int_cntr_width-2:0] = 0;
        end
  	  end
    end
  end /// if
 end /// always
 /*--------------------------------------------------------------------------------*/
 
 /* Align the wrap data for write transaction */
 task automatic get_wrap_aligned_wr_data;
 output [(data_bus_width*axi_burst_len)-1:0] aligned_data;
 output [addr_width-1:0] start_addr; /// aligned start address
 input  [addr_width-1:0] addr;
 input  [(data_bus_width*axi_burst_len)-1:0] b_data;
 input  [max_burst_bytes_width:0] v_bytes;
 reg    [(data_bus_width*axi_burst_len)-1:0] temp_data, wrp_data;
 integer wrp_bytes;
 integer i;
 begin
   start_addr = (addr/v_bytes) * v_bytes;
   wrp_bytes = addr - start_addr;
   wrp_data = b_data;
   temp_data = 0;
   wrp_data = wrp_data << ((data_bus_width*axi_burst_len) - (v_bytes*8));
   while(wrp_bytes > 0) begin /// get the data that is wrapped
     temp_data = temp_data << 8;
     temp_data[7:0] = wrp_data[(data_bus_width*axi_burst_len)-1 : (data_bus_width*axi_burst_len)-8];
     wrp_data = wrp_data << 8;
     wrp_bytes = wrp_bytes - 1;
   end
   wrp_bytes = addr - start_addr;
   wrp_data = b_data << (wrp_bytes*8);
   
   aligned_data = (temp_data | wrp_data);
 end
 endtask
 /*--------------------------------------------------------------------------------*/
  
 /* Calculate the Response for each read/write transaction */
 function [axi_rsp_width-1:0] calculate_resp;
 input [addr_width-1:0] awaddr; 
 input [axi_prot_width-1:0] awprot;
 reg [axi_rsp_width-1:0] rsp;
 begin
   rsp = AXI_OK;
   /* Address Decode */
   if(decode_address(awaddr) === INVALID_MEM_TYPE) begin
    rsp = AXI_SLV_ERR; //slave error
    $display("[%0d] : %0s : %0s : AXI Access to Invalid location(0x%0h) ",$time, DISP_ERR, slave_name, awaddr);
   end
   else if(decode_address(awaddr) === REG_MEM) begin
    rsp = AXI_SLV_ERR; //slave error
    $display("[%0d] : %0s : %0s : AXI Access to Register Map(0x%0h) is not allowed through this port.",$time, DISP_ERR, slave_name, awaddr);
   end
   if(secure_access_enabled && awprot[1])
    rsp = AXI_DEC_ERR; // decode error
   calculate_resp = rsp;
 end
 endfunction
 /*--------------------------------------------------------------------------------*/
 reg[max_burst_bits-1:0] temp_wr_data;
 /* Store the Write response for each write transaction */
 always@(negedge S_RESETN or posedge S_ACLK)
 begin
 if(!S_RESETN) begin
  wr_fifo_wr_ptr = 0;
  wcount = 0;
 end else begin
  enable_write_bresp = aw_flag[wr_fifo_wr_ptr[int_cntr_width-2:0]] && wlast_flag[wr_fifo_wr_ptr[int_cntr_width-2:0]];
  /* calculate bresp only when AWVALID && WLAST is received */
  if(enable_write_bresp) begin
    aw_flag[wr_fifo_wr_ptr[int_cntr_width-2:0]]    = 0;
    wlast_flag[wr_fifo_wr_ptr[int_cntr_width-2:0]] = 0;
 
    bresp = calculate_resp(awaddr[wr_fifo_wr_ptr[int_cntr_width-2:0]], awprot[wr_fifo_wr_ptr[int_cntr_width-2:0]]);
    /* Fill AFI_WR_data FIFO */
    if(bresp === AXI_OK ) begin
      if(awbrst[wr_fifo_wr_ptr[int_cntr_width-2:0]]=== AXI_WRAP) begin /// wrap type? then align the data
        get_wrap_aligned_wr_data(aligned_wr_data, aligned_wr_addr, awaddr[wr_fifo_wr_ptr[int_cntr_width-2:0]], burst_data[wr_fifo_wr_ptr[int_cntr_width-2:0]],burst_valid_bytes[wr_fifo_wr_ptr[int_cntr_width-2:0]]);      /// gives wrapped start address
      end else begin
        aligned_wr_data = burst_data[wr_fifo_wr_ptr[int_cntr_width-2:0]]; 
        aligned_wr_addr = awaddr[wr_fifo_wr_ptr[int_cntr_width-2:0]] ;
      end
      valid_data_bytes = burst_valid_bytes[wr_fifo_wr_ptr[int_cntr_width-2:0]];
    end else
      valid_data_bytes = 0;
    temp_wr_data = aligned_wr_data;
    wr_fifo[wr_fifo_wr_ptr[int_cntr_width-2:0]] = {awqos[wr_fifo_wr_ptr[int_cntr_width-2:0]], awlen[wr_fifo_wr_ptr[int_cntr_width-2:0]], awid[wr_fifo_wr_ptr[int_cntr_width-2:0]], bresp, temp_wr_data, aligned_wr_addr, valid_data_bytes};
    wcount = wcount + awlen[wr_fifo_wr_ptr[int_cntr_width-2:0]]+1;
    wr_fifo_wr_ptr = wr_fifo_wr_ptr + 1;
  end
 end // else
 end // always
 /*--------------------------------------------------------------------------------*/
 
 /* Send Write Response Channel handshake */
 always@(negedge S_RESETN or posedge S_ACLK)
 begin
 if(!S_RESETN) begin
  rd_bresp_cnt = 0;
  wr_latency_count = get_wr_lat_number(1);
  wr_delayed = 0;
  bresp_time_cnt = 0; 
 end else begin
  wr_delayed = 1'b0;
  if(awvalid_flag[bresp_time_cnt] && (($time - awvalid_receive_time[bresp_time_cnt])/s_aclk_period >= wr_latency_count))
    wr_delayed = 1;
  if(!bresp_fifo_empty && wr_delayed) begin
    slv.wr_driver.get_wr_reactive(twr);
	twr.set_id(fifo_bresp[rd_bresp_cnt[int_cntr_width-2:0]][rsp_id_msb : rsp_id_lsb]);
	case(fifo_bresp[rd_bresp_cnt[int_cntr_width-2:0]][rsp_msb : rsp_lsb])
	  2'b00: twr.set_bresp(XIL_AXI_RESP_OKAY);
	  2'b01: twr.set_bresp(XIL_AXI_RESP_EXOKAY);
	  2'b10: twr.set_bresp(XIL_AXI_RESP_SLVERR);
	  2'b11: twr.set_bresp(XIL_AXI_RESP_DECERR);
	endcase
    slv.wr_driver.send(twr);
    wr_delayed = 0;
    awvalid_flag[bresp_time_cnt] = 1'b0;
    bresp_time_cnt = bresp_time_cnt+1;
    rd_bresp_cnt   = rd_bresp_cnt + 1;
    wr_latency_count = get_wr_lat_number(1);
  end 
 end // else
 end//always
 /*--------------------------------------------------------------------------------*/
 
 /* Write Response Channel handshake */
 reg wr_int_state;
 /* Reading from the wr_fifo and sending to Interconnect fifo*/
 always@(negedge S_RESETN or posedge S_ACLK) 
 begin
 if(!S_RESETN) begin
  wr_int_state = 1'b0;
  wr_bresp_cnt = 0;
  wr_fifo_rd_ptr = 0;
 end else begin
  case(wr_int_state)
  1'b0 : begin
    wr_int_state = 1'b0;
    if(!temp_wr_intr_fifo_full && !bresp_fifo_full && !wr_fifo_empty) begin
      wr_intr_fifo.write_mem({wr_fifo[wr_fifo_rd_ptr[int_cntr_width-2:0]][wr_afi_qos_msb:wr_afi_qos_lsb], wr_fifo[wr_fifo_rd_ptr[int_cntr_width-2:0]][wr_afi_data_msb:wr_afi_bytes_lsb]}); /// qos, data, address and valid_bytes
      wr_int_state = 1'b1;
      /* start filling the write response fifo at the same time */
      fifo_bresp[wr_bresp_cnt[int_cntr_width-2:0]] = wr_fifo[wr_fifo_rd_ptr[int_cntr_width-2:0]][wr_afi_id_msb:wr_afi_rsp_lsb]; // ID and Resp
      wcount  = wcount  - (wr_fifo[wr_fifo_rd_ptr[int_cntr_width-2:0]][wr_afi_ln_msb:wr_afi_ln_lsb] + 1); /// burst length
      wacount = wacount - 1;
      wr_fifo_rd_ptr = wr_fifo_rd_ptr + 1;
      wr_bresp_cnt   = wr_bresp_cnt+1;
    end
  end
  1'b1 : begin
    wr_int_state = 0;
  end
  endcase
 end
 end
  /*--------------------------------------------------------------------------------*/
/*-------------------------------- WRITE HANDSHAKE END ----------------------------------------*/
 
/*-------------------------------- READ HANDSHAKE ---------------------------------------------*/

/* READ CHANNELS */
/* Store the arvalid receive time --- necessary for calculating latency in sending the rresp latency */
  reg [7:0] ar_time_cnt = 0,rresp_time_cnt = 0;
  real arvalid_receive_time[0:max_outstanding_transactions]; // store the time when a new arvalid is received
  reg arvalid_flag[0:max_outstanding_transactions]; // store the time when a new arvalid is received
  reg [int_cntr_width-1:0] ar_cnt = 0;// counter for arvalid info

/* various FIFOs for storing the ADDR channel info */
  reg [axi_size_width-1:0]  arsize [0:max_outstanding_transactions-1];
  reg [axi_prot_width-1:0]  arprot [0:max_outstanding_transactions-1];
  reg [axi_brst_type_width-1:0]  arbrst [0:max_outstanding_transactions-1];
  reg [axi_len_width-1:0]  arlen [0:max_outstanding_transactions-1];
  reg [axi_cache_width-1:0]  arcache [0:max_outstanding_transactions-1];
  reg [axi_lock_width-1:0]  arlock [0:max_outstanding_transactions-1];
  reg ar_flag [0:max_outstanding_transactions-1];
  reg [addr_width-1:0] araddr [0:max_outstanding_transactions-1];
  reg [id_bus_width-1:0]  arid [0:max_outstanding_transactions-1];
  reg [axi_qos_width-1:0]  arqos [0:max_outstanding_transactions-1];
  wire ar_fifo_full; // indicates arvalid_fifo is full (max outstanding transactions reached)

  reg [int_cntr_width-1:0] wr_rresp_cnt = 0;
  reg [axi_rsp_width-1:0] rresp;
  reg [rsp_fifo_bits-1:0] fifo_rresp [0:max_outstanding_transactions-1]; // store the ID and its corresponding response
  reg enable_write_rresp;

  /* Send Read Response & Data Channel handshake */
  integer rd_latency_count;
  reg  rd_delayed;

  reg [rd_afi_fifo_bits-1:0] read_fifo[0:max_outstanding_transactions-1]; /// Read Burst Data, addr, size, burst, len, RID, RRESP, valid_bytes
  reg [int_cntr_width-1:0] rd_fifo_wr_ptr = 0, rd_fifo_rd_ptr = 0;
  wire read_fifo_full; 

  reg [7:0] rcount;
  reg [2:0] racount;
  
  wire rd_intr_fifo_full, rd_intr_fifo_empty;
  wire read_fifo_empty;

  /* signals to communicate with interconnect RD_FIFO model */
  reg rd_req, invalid_rd_req;
  
  /* REad control Info 
    56:25 : Address (32)
    24:22 : Size (3)
    21:20 : BRST (2)
    19:16 : LEN (4)
    15:10 : RID (6)
    9:8 : RRSP (2)
    7:0 : byte cnt (8)
  */
  reg [rd_info_bits-1:0] read_control_info;   
  reg [(data_bus_width*axi_burst_len)-1:0] aligned_rd_data;
  reg temp_rd_intr_fifo_empty;

  processing_system7_vip_v1_0_3_intr_rd_mem rd_intr_fifo(SW_CLK, S_RESETN, rd_intr_fifo_full, rd_intr_fifo_empty, rd_req, invalid_rd_req, read_control_info , RD_DATA_OCM, RD_DATA_DDR, RD_DATA_VALID_OCM, RD_DATA_VALID_DDR);

  assign read_fifo_empty = (rd_fifo_wr_ptr === rd_fifo_rd_ptr)?1'b1: 1'b0;
  assign S_RCOUNT = rcount;
  assign S_RACOUNT = racount;

  /* Register the asynch signal empty coming from Interconnect READ FIFO */
  always@(posedge S_ACLK) temp_rd_intr_fifo_empty = rd_intr_fifo_empty;
   
  // FIFO_STATUS (only if AFI port) 1- full 
   function automatic rdfifo_full ;
   input [axi_len_width:0] fifo_space_exp;
   integer fifo_space_left; 
   begin
     fifo_space_left = afi_fifo_locations - rcount;
     if(fifo_space_left < fifo_space_exp) 
       rdfifo_full = 1;
     else
       rdfifo_full = 0;
   end
   endfunction

  /* Store the arvalid receive time --- necessary for calculating the bresp latency */
  always@(negedge S_RESETN or S_ARID or S_ARADDR or S_ARVALID )
  begin
  if(!S_RESETN)
   ar_time_cnt = 0;
  else begin
   if(S_ARVALID) begin
     arvalid_receive_time[ar_time_cnt] = $time;
     arvalid_flag[ar_time_cnt] = 1'b1;
     ar_time_cnt = ar_time_cnt + 1;
   end 
  end // else
  end /// always
  /*--------------------------------------------------------------------------------*/
  always@(posedge S_ACLK)
  begin
  if(net_ARVALID && S_ARREADY) begin
    if(S_ARQOS === 0) arqos[ar_cnt[int_cntr_width-2:0]] = ar_qos; 
    else arqos[aw_cnt[int_cntr_width-2:0]] = S_ARQOS; 
  end
  end

  /* Address Read  Channel handshake*/
  always@(negedge S_RESETN or posedge S_ACLK)
  begin
  if(!S_RESETN) begin
    ar_cnt = 0;
    racount = 0;
  end else begin
    if(S_ARVALID && !rdfifo_full(S_ARLEN+1)) begin /// if AFI read fifo is not full
      slv.monitor.axi_rd_cmd_port.get(trc);
      araddr[ar_cnt[int_cntr_width-2:0]] = trc.addr;
      arlen[ar_cnt[int_cntr_width-2:0]]  = trc.len;
      arsize[ar_cnt[int_cntr_width-2:0]] = trc.size;
      arbrst[ar_cnt[int_cntr_width-2:0]] = trc.burst;
      arlock[ar_cnt[int_cntr_width-2:0]] = trc.lock;
      arcache[ar_cnt[int_cntr_width-2:0]]= trc.cache;
      arprot[ar_cnt[int_cntr_width-2:0]] = trc.prot;
      arid[ar_cnt[int_cntr_width-2:0]]   = trc.id;
      ar_flag[ar_cnt[int_cntr_width-2:0]] = 1'b1;
      ar_cnt    = ar_cnt+1;
      racount   = racount + 1;
    end /// if(!ar_fifo_full)
  end /// if else
  end /// always*/
  
  /*--------------------------------------------------------------------------------*/

  /* Align Wrap data for read transaction*/
  task automatic get_wrap_aligned_rd_data;
  output [(data_bus_width*axi_burst_len)-1:0] aligned_data;
  input [addr_width-1:0] addr;
  input [(data_bus_width*axi_burst_len)-1:0] b_data;
  input [max_burst_bytes_width:0] v_bytes;
  reg [addr_width-1:0] start_addr;
  reg [(data_bus_width*axi_burst_len)-1:0] temp_data, wrp_data;
  integer wrp_bytes;
  integer i;
  begin
    start_addr = (addr/v_bytes) * v_bytes;
    wrp_bytes = addr - start_addr;
    wrp_data  = b_data;
    temp_data = 0;
    while(wrp_bytes > 0) begin /// get the data that is wrapped
     temp_data = temp_data >> 8;
     temp_data[(data_bus_width*axi_burst_len)-1 : (data_bus_width*axi_burst_len)-8] = wrp_data[7:0];
     wrp_data = wrp_data >> 8;
     wrp_bytes = wrp_bytes - 1;
    end
    temp_data = temp_data >> ((data_bus_width*axi_burst_len) - (v_bytes*8));
    wrp_bytes = addr - start_addr;
    wrp_data = b_data >> (wrp_bytes*8);
    
    aligned_data = (temp_data | wrp_data);
  end
  endtask
  /*--------------------------------------------------------------------------------*/

  parameter RD_DATA_REQ = 1'b0, WAIT_RD_VALID = 1'b1;
  reg rd_fifo_state; 
  reg [addr_width-1:0] temp_read_address;
  reg [max_burst_bytes_width:0] temp_rd_valid_bytes;
  /* get the data from memory && also calculate the rresp*/
  always@(negedge S_RESETN or posedge SW_CLK)
  begin
  if(!S_RESETN)begin
   wr_rresp_cnt =0;
   rd_fifo_state = RD_DATA_REQ;
   temp_rd_valid_bytes = 0;
   temp_read_address = 0;
   RD_REQ_DDR = 1'b0;
   RD_REQ_OCM = 1'b0;
   rd_req        = 0;
   invalid_rd_req= 0;
   RD_QOS  = 0;
  end else begin
   case(rd_fifo_state)
   RD_DATA_REQ : begin
     rd_fifo_state = RD_DATA_REQ;
     RD_REQ_DDR = 1'b0;
     RD_REQ_OCM = 1'b0;
     invalid_rd_req = 0;
     if(ar_flag[wr_rresp_cnt[int_cntr_width-2:0]] && !rd_intr_fifo_full) begin /// check the rd_fifo_bytes, interconnect fifo full condition
       ar_flag[wr_rresp_cnt[int_cntr_width-2:0]] = 0;
       rresp = calculate_resp(araddr[wr_rresp_cnt[int_cntr_width-2:0]],arprot[wr_rresp_cnt[int_cntr_width-2:0]]);
       temp_rd_valid_bytes = (arlen[wr_rresp_cnt[int_cntr_width-2:0]]+1)*(2**arsize[wr_rresp_cnt[int_cntr_width-2:0]]);//data_bus_width/8;

       if(arbrst[wr_rresp_cnt[int_cntr_width-2:0]] === AXI_WRAP) /// wrap begin
        temp_read_address = (araddr[wr_rresp_cnt[int_cntr_width-2:0]]/temp_rd_valid_bytes) * temp_rd_valid_bytes;
       else 
        temp_read_address = araddr[wr_rresp_cnt[int_cntr_width-2:0]];
       
       if(rresp === AXI_OK) begin 
         case(decode_address(temp_read_address))//decode_address(araddr[wr_rresp_cnt[int_cntr_width-2:0]]);
          OCM_MEM : RD_REQ_OCM = 1;
          DDR_MEM : RD_REQ_DDR = 1;
          default : invalid_rd_req = 1;
         endcase
       end else
         invalid_rd_req = 1;
       RD_ADDR    = temp_read_address; ///araddr[wr_rresp_cnt[int_cntr_width-2:0]];
       RD_BYTES   = temp_rd_valid_bytes;
       RD_QOS     = arqos[wr_rresp_cnt[int_cntr_width-2:0]];
       rd_fifo_state = WAIT_RD_VALID; 
       rd_req     = 1;
       racount    = racount - 1;
       read_control_info = {araddr[wr_rresp_cnt[int_cntr_width-2:0]], arsize[wr_rresp_cnt[int_cntr_width-2:0]], arbrst[wr_rresp_cnt[int_cntr_width-2:0]], arlen[wr_rresp_cnt[int_cntr_width-2:0]], arid[wr_rresp_cnt[int_cntr_width-2:0]], rresp, temp_rd_valid_bytes  };
       wr_rresp_cnt = wr_rresp_cnt + 1;
     end
   end
   WAIT_RD_VALID : begin    
     rd_fifo_state = WAIT_RD_VALID;  
     rd_req        = 0;
     if(RD_DATA_VALID_OCM | RD_DATA_VALID_DDR | invalid_rd_req) begin ///temp_dec == 2'b11) begin
       RD_REQ_DDR = 1'b0;
       RD_REQ_OCM = 1'b0;
       invalid_rd_req = 0;
       rd_fifo_state = RD_DATA_REQ;
     end
   end
   endcase
  end /// else
  end /// always
  /*--------------------------------------------------------------------------------*/
  
  /* thread to fill in the AFI RD_FIFO */
  reg[rd_afi_fifo_bits-1:0] temp_rd_data;//Read Burst Data, addr, size, burst, len, RID, RRESP, valid bytes
  reg tmp_state; 
  always@(negedge S_RESETN or posedge S_ACLK)
  begin
  if(!S_RESETN)begin
   rd_fifo_wr_ptr = 0; 
   rcount = 0;
   tmp_state = 0;
  end else begin
   case(tmp_state)
   0 : begin 
       tmp_state = 0;
       if(!temp_rd_intr_fifo_empty) begin
         rd_intr_fifo.read_mem(temp_rd_data);
         tmp_state = 1;
       end
      end
   1 : begin  
       tmp_state = 1;
       if(!rdfifo_full(temp_rd_data[rd_afi_ln_msb:rd_afi_ln_lsb]+1)) begin
        read_fifo[rd_fifo_wr_ptr[int_cntr_width-2:0]] = temp_rd_data;
        rd_fifo_wr_ptr = rd_fifo_wr_ptr + 1;
        rcount = rcount + temp_rd_data[rd_afi_ln_msb:rd_afi_ln_lsb]+1; /// Burst length
        tmp_state = 0;
       end
      end
    endcase
  end
  end
  /*--------------------------------------------------------------------------------*/
  
  reg[max_burst_bytes_width:0] rd_v_b;
  reg[rd_afi_fifo_bits-1:0] tmp_fifo_rd;  /// Data, addr, size, burst, len, RID, RRESP,valid_bytes
  reg[(data_bus_width*axi_burst_len)-1:0] temp_read_data;
  reg[(axi_rsp_width*axi_burst_len)-1:0] temp_read_rsp;

  xil_axi_data_beat new_data;

  /* Read Data Channel handshake */
  always@(negedge S_RESETN or posedge S_ACLK)
  begin
  if(!S_RESETN)begin
   rd_fifo_rd_ptr = 0;
   rd_latency_count = get_rd_lat_number(1);
   rd_delayed = 0;
   rresp_time_cnt = 0;
   rd_v_b = 0;
  end else begin
     if(net_ARVALID && S_ARREADY)
       slv.rd_driver.get_rd_reactive(trr);
     if(arvalid_flag[rresp_time_cnt] && ((($time - arvalid_receive_time[rresp_time_cnt])/s_aclk_period) >= rd_latency_count)) begin
       rd_delayed = 1;
     end
     if(!read_fifo_empty && rd_delayed)begin
       rd_delayed = 0;  
       arvalid_flag[rresp_time_cnt] = 1'b0;
       tmp_fifo_rd =  read_fifo[rd_fifo_rd_ptr[int_cntr_width-2:0]];
       rd_v_b      = (tmp_fifo_rd[rd_afi_ln_msb : rd_afi_ln_lsb]+1)*(2**tmp_fifo_rd[rd_afi_siz_msb : rd_afi_siz_lsb]);
       temp_read_data =  tmp_fifo_rd[rd_afi_data_msb : rd_afi_data_lsb];
       if(tmp_fifo_rd[rd_afi_brst_msb : rd_afi_brst_lsb] === AXI_WRAP) begin
          get_wrap_aligned_rd_data(aligned_rd_data, tmp_fifo_rd[rd_afi_addr_msb : rd_afi_addr_lsb], tmp_fifo_rd[rd_afi_data_msb : rd_afi_data_lsb], rd_v_b);
          temp_read_data = aligned_rd_data;
       end
       temp_read_rsp = 0;
       repeat(axi_burst_len) begin
         temp_read_rsp = temp_read_rsp >> axi_rsp_width;
         temp_read_rsp[(axi_rsp_width*axi_burst_len)-1:(axi_rsp_width*axi_burst_len)-axi_rsp_width] = tmp_fifo_rd[rd_afi_rsp_msb : rd_afi_rsp_lsb];
       end 
	   case (tmp_fifo_rd[rd_afi_siz_msb : rd_afi_siz_lsb])
         3'b000: trr.size = XIL_AXI_SIZE_1BYTE;
         3'b001: trr.size = XIL_AXI_SIZE_2BYTE;
         3'b010: trr.size = XIL_AXI_SIZE_4BYTE;
         3'b011: trr.size = XIL_AXI_SIZE_8BYTE;
         3'b100: trr.size = XIL_AXI_SIZE_16BYTE;
         3'b101: trr.size = XIL_AXI_SIZE_32BYTE;
         3'b110: trr.size = XIL_AXI_SIZE_64BYTE;
         3'b111: trr.size = XIL_AXI_SIZE_128BYTE;
       endcase
	   trr.len = tmp_fifo_rd[rd_afi_ln_msb : rd_afi_ln_lsb];
	   trr.id = (tmp_fifo_rd[rd_afi_id_msb : rd_afi_id_lsb]);
//     trr.data  = new[((2**tmp_fifo_rd[rd_afi_siz_msb : rd_afi_siz_lsb])*(tmp_fifo_rd[rd_afi_ln_msb : rd_afi_ln_lsb]+1))];
	   trr.rresp = new[((2**tmp_fifo_rd[rd_afi_siz_msb : rd_afi_siz_lsb])*(tmp_fifo_rd[rd_afi_ln_msb : rd_afi_ln_lsb]+1))];
       for(j = 0; j < (tmp_fifo_rd[rd_afi_ln_msb : rd_afi_ln_lsb]+1); j = j+1) begin
         for(k = 0; k < (2**tmp_fifo_rd[rd_afi_siz_msb : rd_afi_siz_lsb]); k = k+1) begin
		   new_data[(k*8)+:8] = temp_read_data[7:0];
		   temp_read_data = temp_read_data >> 8;
		 end
         trr.set_data_beat(j, new_data);
	     case(temp_read_rsp[(j*2)+:2])
	       2'b00: trr.rresp[j] = XIL_AXI_RESP_OKAY;
	       2'b01: trr.rresp[j] = XIL_AXI_RESP_EXOKAY;
	       2'b10: trr.rresp[j] = XIL_AXI_RESP_SLVERR;
	       2'b11: trr.rresp[j] = XIL_AXI_RESP_DECERR;
	     endcase
       end
//	   trr.last = 1;
       slv.rd_driver.send(trr);
       rcount = rcount -  (tmp_fifo_rd[rd_afi_ln_msb : rd_afi_ln_lsb]+ 1) ;
       rresp_time_cnt = rresp_time_cnt+1;
       rd_latency_count = get_rd_lat_number(1);
       rd_fifo_rd_ptr = rd_fifo_rd_ptr+1;
     end
  end /// else
  end /// always
endmodule


/*****************************************************************************
 * File : processing_system7_vip_v1_0_3.v
 *
 * Date : 2012-11
 *
 * Description : Processing_system7_vip Top (zynq_vip top)
 *
 *****************************************************************************/
 `timescale 1ns/1ps

module processing_system7_vip_v1_0_3
  (
    CAN0_PHY_TX,
    CAN0_PHY_RX,
    CAN1_PHY_TX,
    CAN1_PHY_RX,
    ENET0_GMII_TX_EN,
    ENET0_GMII_TX_ER,
    ENET0_MDIO_MDC,
    ENET0_MDIO_O,
    ENET0_MDIO_T,
    ENET0_PTP_DELAY_REQ_RX,
    ENET0_PTP_DELAY_REQ_TX,
    ENET0_PTP_PDELAY_REQ_RX,
    ENET0_PTP_PDELAY_REQ_TX,
    ENET0_PTP_PDELAY_RESP_RX,
    ENET0_PTP_PDELAY_RESP_TX,
    ENET0_PTP_SYNC_FRAME_RX,
    ENET0_PTP_SYNC_FRAME_TX,
    ENET0_SOF_RX,
    ENET0_SOF_TX,
    ENET0_GMII_TXD,
    ENET0_GMII_COL,
    ENET0_GMII_CRS,
    ENET0_EXT_INTIN,
    ENET0_GMII_RX_CLK,
    ENET0_GMII_RX_DV,
    ENET0_GMII_RX_ER,
    ENET0_GMII_TX_CLK,
    ENET0_MDIO_I,
    ENET0_GMII_RXD,
    ENET1_GMII_TX_EN,
    ENET1_GMII_TX_ER,
    ENET1_MDIO_MDC,
    ENET1_MDIO_O,
    ENET1_MDIO_T,
    ENET1_PTP_DELAY_REQ_RX,
    ENET1_PTP_DELAY_REQ_TX,
    ENET1_PTP_PDELAY_REQ_RX,
    ENET1_PTP_PDELAY_REQ_TX,
    ENET1_PTP_PDELAY_RESP_RX,
    ENET1_PTP_PDELAY_RESP_TX,
    ENET1_PTP_SYNC_FRAME_RX,
    ENET1_PTP_SYNC_FRAME_TX,
    ENET1_SOF_RX,
    ENET1_SOF_TX,
    ENET1_GMII_TXD,
    ENET1_GMII_COL,
    ENET1_GMII_CRS,
    ENET1_EXT_INTIN,
    ENET1_GMII_RX_CLK,
    ENET1_GMII_RX_DV,
    ENET1_GMII_RX_ER,
    ENET1_GMII_TX_CLK,
    ENET1_MDIO_I,
    ENET1_GMII_RXD,
    GPIO_I,
    GPIO_O,
    GPIO_T,
    I2C0_SDA_I,
    I2C0_SDA_O,
    I2C0_SDA_T,
    I2C0_SCL_I,
    I2C0_SCL_O,
    I2C0_SCL_T,
    I2C1_SDA_I,
    I2C1_SDA_O,
    I2C1_SDA_T,
    I2C1_SCL_I,
    I2C1_SCL_O,
    I2C1_SCL_T,
    PJTAG_TCK,
    PJTAG_TMS,
    PJTAG_TD_I,
    PJTAG_TD_T,
    PJTAG_TD_O,
    SDIO0_CLK,
    SDIO0_CLK_FB,
    SDIO0_CMD_O,
    SDIO0_CMD_I,
    SDIO0_CMD_T,
    SDIO0_DATA_I,
    SDIO0_DATA_O,
    SDIO0_DATA_T,
    SDIO0_LED,
    SDIO0_CDN,
    SDIO0_WP,
    SDIO0_BUSPOW,
    SDIO0_BUSVOLT,
    SDIO1_CLK,
    SDIO1_CLK_FB,
    SDIO1_CMD_O,
    SDIO1_CMD_I,
    SDIO1_CMD_T,
    SDIO1_DATA_I,
    SDIO1_DATA_O,
    SDIO1_DATA_T,
    SDIO1_LED,
    SDIO1_CDN,
    SDIO1_WP,
    SDIO1_BUSPOW,
    SDIO1_BUSVOLT,
    SPI0_SCLK_I,
    SPI0_SCLK_O,
    SPI0_SCLK_T,
    SPI0_MOSI_I,
    SPI0_MOSI_O,
    SPI0_MOSI_T,
    SPI0_MISO_I,
    SPI0_MISO_O,
    SPI0_MISO_T,
    SPI0_SS_I,
    SPI0_SS_O,
    SPI0_SS1_O,
    SPI0_SS2_O,
    SPI0_SS_T,
    SPI1_SCLK_I,
    SPI1_SCLK_O,
    SPI1_SCLK_T,
    SPI1_MOSI_I,
    SPI1_MOSI_O,
    SPI1_MOSI_T,
    SPI1_MISO_I,
    SPI1_MISO_O,
    SPI1_MISO_T,
    SPI1_SS_I,
    SPI1_SS_O,
    SPI1_SS1_O,
    SPI1_SS2_O,
    SPI1_SS_T,
    UART0_DTRN,
    UART0_RTSN,
    UART0_TX,
    UART0_CTSN,
    UART0_DCDN,
    UART0_DSRN,
    UART0_RIN,
    UART0_RX,
    UART1_DTRN,
    UART1_RTSN,
    UART1_TX,
    UART1_CTSN,
    UART1_DCDN,
    UART1_DSRN,
    UART1_RIN,
    UART1_RX,
    TTC0_WAVE0_OUT,
    TTC0_WAVE1_OUT,
    TTC0_WAVE2_OUT,
    TTC0_CLK0_IN,
    TTC0_CLK1_IN,
    TTC0_CLK2_IN,
    TTC1_WAVE0_OUT,
    TTC1_WAVE1_OUT,
    TTC1_WAVE2_OUT,
    TTC1_CLK0_IN,
    TTC1_CLK1_IN,
    TTC1_CLK2_IN,
    WDT_CLK_IN,
    WDT_RST_OUT,
    TRACE_CLK,
    TRACE_CTL,
    TRACE_DATA,
    USB0_PORT_INDCTL,
    USB1_PORT_INDCTL,
    USB0_VBUS_PWRSELECT,
    USB1_VBUS_PWRSELECT,
    USB0_VBUS_PWRFAULT,
    USB1_VBUS_PWRFAULT,
    SRAM_INTIN,
    M_AXI_GP0_ARVALID,
    M_AXI_GP0_AWVALID,
    M_AXI_GP0_BREADY,
    M_AXI_GP0_RREADY,
    M_AXI_GP0_WLAST,
    M_AXI_GP0_WVALID,
    M_AXI_GP0_ARID,
    M_AXI_GP0_AWID,
    M_AXI_GP0_WID,
    M_AXI_GP0_ARBURST,
    M_AXI_GP0_ARLOCK,
    M_AXI_GP0_ARSIZE,
    M_AXI_GP0_AWBURST,
    M_AXI_GP0_AWLOCK,
    M_AXI_GP0_AWSIZE,
    M_AXI_GP0_ARPROT,
    M_AXI_GP0_AWPROT,
    M_AXI_GP0_ARADDR,
    M_AXI_GP0_AWADDR,
    M_AXI_GP0_WDATA,
    M_AXI_GP0_ARCACHE,
    M_AXI_GP0_ARLEN,
    M_AXI_GP0_ARQOS,
    M_AXI_GP0_AWCACHE,
    M_AXI_GP0_AWLEN,
    M_AXI_GP0_AWQOS,
    M_AXI_GP0_WSTRB,
    M_AXI_GP0_ACLK,
    M_AXI_GP0_ARREADY,
    M_AXI_GP0_AWREADY,
    M_AXI_GP0_BVALID,
    M_AXI_GP0_RLAST,
    M_AXI_GP0_RVALID,
    M_AXI_GP0_WREADY,
    M_AXI_GP0_BID,
    M_AXI_GP0_RID,
    M_AXI_GP0_BRESP,
    M_AXI_GP0_RRESP,
    M_AXI_GP0_RDATA,
    M_AXI_GP1_ARVALID,
    M_AXI_GP1_AWVALID,
    M_AXI_GP1_BREADY,
    M_AXI_GP1_RREADY,
    M_AXI_GP1_WLAST,
    M_AXI_GP1_WVALID,
    M_AXI_GP1_ARID,
    M_AXI_GP1_AWID,
    M_AXI_GP1_WID,
    M_AXI_GP1_ARBURST,
    M_AXI_GP1_ARLOCK,
    M_AXI_GP1_ARSIZE,
    M_AXI_GP1_AWBURST,
    M_AXI_GP1_AWLOCK,
    M_AXI_GP1_AWSIZE,
    M_AXI_GP1_ARPROT,
    M_AXI_GP1_AWPROT,
    M_AXI_GP1_ARADDR,
    M_AXI_GP1_AWADDR,
    M_AXI_GP1_WDATA,
    M_AXI_GP1_ARCACHE,
    M_AXI_GP1_ARLEN,
    M_AXI_GP1_ARQOS,
    M_AXI_GP1_AWCACHE,
    M_AXI_GP1_AWLEN,
    M_AXI_GP1_AWQOS,
    M_AXI_GP1_WSTRB,
    M_AXI_GP1_ACLK,
    M_AXI_GP1_ARREADY,
    M_AXI_GP1_AWREADY,
    M_AXI_GP1_BVALID,
    M_AXI_GP1_RLAST,
    M_AXI_GP1_RVALID,
    M_AXI_GP1_WREADY,
    M_AXI_GP1_BID,
    M_AXI_GP1_RID,
    M_AXI_GP1_BRESP,
    M_AXI_GP1_RRESP,
    M_AXI_GP1_RDATA,
    S_AXI_GP0_ARREADY,
    S_AXI_GP0_AWREADY,
    S_AXI_GP0_BVALID,
    S_AXI_GP0_RLAST,
    S_AXI_GP0_RVALID,
    S_AXI_GP0_WREADY,
    S_AXI_GP0_BRESP,
    S_AXI_GP0_RRESP,
    S_AXI_GP0_RDATA,
    S_AXI_GP0_BID,
    S_AXI_GP0_RID,
    S_AXI_GP0_ACLK,
    S_AXI_GP0_ARVALID,
    S_AXI_GP0_AWVALID,
    S_AXI_GP0_BREADY,
    S_AXI_GP0_RREADY,
    S_AXI_GP0_WLAST,
    S_AXI_GP0_WVALID,
    S_AXI_GP0_ARBURST,
    S_AXI_GP0_ARLOCK,
    S_AXI_GP0_ARSIZE,
    S_AXI_GP0_AWBURST,
    S_AXI_GP0_AWLOCK,
    S_AXI_GP0_AWSIZE,
    S_AXI_GP0_ARPROT,
    S_AXI_GP0_AWPROT,
    S_AXI_GP0_ARADDR,
    S_AXI_GP0_AWADDR,
    S_AXI_GP0_WDATA,
    S_AXI_GP0_ARCACHE,
    S_AXI_GP0_ARLEN,
    S_AXI_GP0_ARQOS,
    S_AXI_GP0_AWCACHE,
    S_AXI_GP0_AWLEN,
    S_AXI_GP0_AWQOS,
    S_AXI_GP0_WSTRB,
    S_AXI_GP0_ARID,
    S_AXI_GP0_AWID,
    S_AXI_GP0_WID,
    S_AXI_GP1_ARREADY,
    S_AXI_GP1_AWREADY,
    S_AXI_GP1_BVALID,
    S_AXI_GP1_RLAST,
    S_AXI_GP1_RVALID,
    S_AXI_GP1_WREADY,
    S_AXI_GP1_BRESP,
    S_AXI_GP1_RRESP,
    S_AXI_GP1_RDATA,
    S_AXI_GP1_BID,
    S_AXI_GP1_RID,
    S_AXI_GP1_ACLK,
    S_AXI_GP1_ARVALID,
    S_AXI_GP1_AWVALID,
    S_AXI_GP1_BREADY,
    S_AXI_GP1_RREADY,
    S_AXI_GP1_WLAST,
    S_AXI_GP1_WVALID,
    S_AXI_GP1_ARBURST,
    S_AXI_GP1_ARLOCK,
    S_AXI_GP1_ARSIZE,
    S_AXI_GP1_AWBURST,
    S_AXI_GP1_AWLOCK,
    S_AXI_GP1_AWSIZE,
    S_AXI_GP1_ARPROT,
    S_AXI_GP1_AWPROT,
    S_AXI_GP1_ARADDR,
    S_AXI_GP1_AWADDR,
    S_AXI_GP1_WDATA,
    S_AXI_GP1_ARCACHE,
    S_AXI_GP1_ARLEN,
    S_AXI_GP1_ARQOS,
    S_AXI_GP1_AWCACHE,
    S_AXI_GP1_AWLEN,
    S_AXI_GP1_AWQOS,
    S_AXI_GP1_WSTRB,
    S_AXI_GP1_ARID,
    S_AXI_GP1_AWID,
    S_AXI_GP1_WID,
    S_AXI_ACP_AWREADY,
    S_AXI_ACP_ARREADY,
    S_AXI_ACP_BVALID,
    S_AXI_ACP_RLAST,
    S_AXI_ACP_RVALID,
    S_AXI_ACP_WREADY,
    S_AXI_ACP_BRESP,
    S_AXI_ACP_RRESP,
    S_AXI_ACP_BID,
    S_AXI_ACP_RID,
    S_AXI_ACP_RDATA,
    S_AXI_ACP_ACLK,
    S_AXI_ACP_ARVALID,
    S_AXI_ACP_AWVALID,
    S_AXI_ACP_BREADY,
    S_AXI_ACP_RREADY,
    S_AXI_ACP_WLAST,
    S_AXI_ACP_WVALID,
    S_AXI_ACP_ARID,
    S_AXI_ACP_ARPROT,
    S_AXI_ACP_AWID,
    S_AXI_ACP_AWPROT,
    S_AXI_ACP_WID,
    S_AXI_ACP_ARADDR,
    S_AXI_ACP_AWADDR,
    S_AXI_ACP_ARCACHE,
    S_AXI_ACP_ARLEN,
    S_AXI_ACP_ARQOS,
    S_AXI_ACP_AWCACHE,
    S_AXI_ACP_AWLEN,
    S_AXI_ACP_AWQOS,
    S_AXI_ACP_ARBURST,
    S_AXI_ACP_ARLOCK,
    S_AXI_ACP_ARSIZE,
    S_AXI_ACP_AWBURST,
    S_AXI_ACP_AWLOCK,
    S_AXI_ACP_AWSIZE,
    S_AXI_ACP_ARUSER,
    S_AXI_ACP_AWUSER,
    S_AXI_ACP_WDATA,
    S_AXI_ACP_WSTRB,
    S_AXI_HP0_ARREADY,
    S_AXI_HP0_AWREADY,
    S_AXI_HP0_BVALID,
    S_AXI_HP0_RLAST,
    S_AXI_HP0_RVALID,
    S_AXI_HP0_WREADY,
    S_AXI_HP0_BRESP,
    S_AXI_HP0_RRESP,
    S_AXI_HP0_BID,
    S_AXI_HP0_RID,
    S_AXI_HP0_RDATA,
    S_AXI_HP0_RCOUNT,
    S_AXI_HP0_WCOUNT,
    S_AXI_HP0_RACOUNT,
    S_AXI_HP0_WACOUNT,
    S_AXI_HP0_ACLK,
    S_AXI_HP0_ARVALID,
    S_AXI_HP0_AWVALID,
    S_AXI_HP0_BREADY,
    S_AXI_HP0_RDISSUECAP1_EN,
    S_AXI_HP0_RREADY,
    S_AXI_HP0_WLAST,
    S_AXI_HP0_WRISSUECAP1_EN,
    S_AXI_HP0_WVALID,
    S_AXI_HP0_ARBURST,
    S_AXI_HP0_ARLOCK,
    S_AXI_HP0_ARSIZE,
    S_AXI_HP0_AWBURST,
    S_AXI_HP0_AWLOCK,
    S_AXI_HP0_AWSIZE,
    S_AXI_HP0_ARPROT,
    S_AXI_HP0_AWPROT,
    S_AXI_HP0_ARADDR,
    S_AXI_HP0_AWADDR,
    S_AXI_HP0_ARCACHE,
    S_AXI_HP0_ARLEN,
    S_AXI_HP0_ARQOS,
    S_AXI_HP0_AWCACHE,
    S_AXI_HP0_AWLEN,
    S_AXI_HP0_AWQOS,
    S_AXI_HP0_ARID,
    S_AXI_HP0_AWID,
    S_AXI_HP0_WID,
    S_AXI_HP0_WDATA,
    S_AXI_HP0_WSTRB,
    S_AXI_HP1_ARREADY,
    S_AXI_HP1_AWREADY,
    S_AXI_HP1_BVALID,
    S_AXI_HP1_RLAST,
    S_AXI_HP1_RVALID,
    S_AXI_HP1_WREADY,
    S_AXI_HP1_BRESP,
    S_AXI_HP1_RRESP,
    S_AXI_HP1_BID,
    S_AXI_HP1_RID,
    S_AXI_HP1_RDATA,
    S_AXI_HP1_RCOUNT,
    S_AXI_HP1_WCOUNT,
    S_AXI_HP1_RACOUNT,
    S_AXI_HP1_WACOUNT,
    S_AXI_HP1_ACLK,
    S_AXI_HP1_ARVALID,
    S_AXI_HP1_AWVALID,
    S_AXI_HP1_BREADY,
    S_AXI_HP1_RDISSUECAP1_EN,
    S_AXI_HP1_RREADY,
    S_AXI_HP1_WLAST,
    S_AXI_HP1_WRISSUECAP1_EN,
    S_AXI_HP1_WVALID,
    S_AXI_HP1_ARBURST,
    S_AXI_HP1_ARLOCK,
    S_AXI_HP1_ARSIZE,
    S_AXI_HP1_AWBURST,
    S_AXI_HP1_AWLOCK,
    S_AXI_HP1_AWSIZE,
    S_AXI_HP1_ARPROT,
    S_AXI_HP1_AWPROT,
    S_AXI_HP1_ARADDR,
    S_AXI_HP1_AWADDR,
    S_AXI_HP1_ARCACHE,
    S_AXI_HP1_ARLEN,
    S_AXI_HP1_ARQOS,
    S_AXI_HP1_AWCACHE,
    S_AXI_HP1_AWLEN,
    S_AXI_HP1_AWQOS,
    S_AXI_HP1_ARID,
    S_AXI_HP1_AWID,
    S_AXI_HP1_WID,
    S_AXI_HP1_WDATA,
    S_AXI_HP1_WSTRB,
    S_AXI_HP2_ARREADY,
    S_AXI_HP2_AWREADY,
    S_AXI_HP2_BVALID,
    S_AXI_HP2_RLAST,
    S_AXI_HP2_RVALID,
    S_AXI_HP2_WREADY,
    S_AXI_HP2_BRESP,
    S_AXI_HP2_RRESP,
    S_AXI_HP2_BID,
    S_AXI_HP2_RID,
    S_AXI_HP2_RDATA,
    S_AXI_HP2_RCOUNT,
    S_AXI_HP2_WCOUNT,
    S_AXI_HP2_RACOUNT,
    S_AXI_HP2_WACOUNT,
    S_AXI_HP2_ACLK,
    S_AXI_HP2_ARVALID,
    S_AXI_HP2_AWVALID,
    S_AXI_HP2_BREADY,
    S_AXI_HP2_RDISSUECAP1_EN,
    S_AXI_HP2_RREADY,
    S_AXI_HP2_WLAST,
    S_AXI_HP2_WRISSUECAP1_EN,
    S_AXI_HP2_WVALID,
    S_AXI_HP2_ARBURST,
    S_AXI_HP2_ARLOCK,
    S_AXI_HP2_ARSIZE,
    S_AXI_HP2_AWBURST,
    S_AXI_HP2_AWLOCK,
    S_AXI_HP2_AWSIZE,
    S_AXI_HP2_ARPROT,
    S_AXI_HP2_AWPROT,
    S_AXI_HP2_ARADDR,
    S_AXI_HP2_AWADDR,
    S_AXI_HP2_ARCACHE,
    S_AXI_HP2_ARLEN,
    S_AXI_HP2_ARQOS,
    S_AXI_HP2_AWCACHE,
    S_AXI_HP2_AWLEN,
    S_AXI_HP2_AWQOS,
    S_AXI_HP2_ARID,
    S_AXI_HP2_AWID,
    S_AXI_HP2_WID,
    S_AXI_HP2_WDATA,
    S_AXI_HP2_WSTRB,
    S_AXI_HP3_ARREADY,
    S_AXI_HP3_AWREADY,
    S_AXI_HP3_BVALID,
    S_AXI_HP3_RLAST,
    S_AXI_HP3_RVALID,
    S_AXI_HP3_WREADY,
    S_AXI_HP3_BRESP,
    S_AXI_HP3_RRESP,
    S_AXI_HP3_BID,
    S_AXI_HP3_RID,
    S_AXI_HP3_RDATA,
    S_AXI_HP3_RCOUNT,
    S_AXI_HP3_WCOUNT,
    S_AXI_HP3_RACOUNT,
    S_AXI_HP3_WACOUNT,
    S_AXI_HP3_ACLK,
    S_AXI_HP3_ARVALID,
    S_AXI_HP3_AWVALID,
    S_AXI_HP3_BREADY,
    S_AXI_HP3_RDISSUECAP1_EN,
    S_AXI_HP3_RREADY,
    S_AXI_HP3_WLAST,
    S_AXI_HP3_WRISSUECAP1_EN,
    S_AXI_HP3_WVALID,
    S_AXI_HP3_ARBURST,
    S_AXI_HP3_ARLOCK,
    S_AXI_HP3_ARSIZE,
    S_AXI_HP3_AWBURST,
    S_AXI_HP3_AWLOCK,
    S_AXI_HP3_AWSIZE,
    S_AXI_HP3_ARPROT,
    S_AXI_HP3_AWPROT,
    S_AXI_HP3_ARADDR,
    S_AXI_HP3_AWADDR,
    S_AXI_HP3_ARCACHE,
    S_AXI_HP3_ARLEN,
    S_AXI_HP3_ARQOS,
    S_AXI_HP3_AWCACHE,
    S_AXI_HP3_AWLEN,
    S_AXI_HP3_AWQOS,
    S_AXI_HP3_ARID,
    S_AXI_HP3_AWID,
    S_AXI_HP3_WID,
    S_AXI_HP3_WDATA,
    S_AXI_HP3_WSTRB,
    DMA0_DATYPE,
    DMA0_DAVALID,
    DMA0_DRREADY,
    DMA0_ACLK,
    DMA0_DAREADY,
    DMA0_DRLAST,
    DMA0_DRVALID,
    DMA0_DRTYPE,
    DMA1_DATYPE,
    DMA1_DAVALID,
    DMA1_DRREADY,
    DMA1_ACLK,
    DMA1_DAREADY,
    DMA1_DRLAST,
    DMA1_DRVALID,
    DMA1_DRTYPE,
    DMA2_DATYPE,
    DMA2_DAVALID,
    DMA2_DRREADY,
    DMA2_ACLK,
    DMA2_DAREADY,
    DMA2_DRLAST,
    DMA2_DRVALID,
    DMA3_DRVALID,
    DMA3_DATYPE,
    DMA3_DAVALID,
    DMA3_DRREADY,
    DMA3_ACLK,
    DMA3_DAREADY,
    DMA3_DRLAST,
    DMA2_DRTYPE,
    DMA3_DRTYPE,
    FTMD_TRACEIN_DATA,
    FTMD_TRACEIN_VALID,
    FTMD_TRACEIN_CLK,
    FTMD_TRACEIN_ATID,
    FTMT_F2P_TRIG,
    FTMT_F2P_TRIGACK,
    FTMT_F2P_DEBUG,
    FTMT_P2F_TRIGACK,
    FTMT_P2F_TRIG,
    FTMT_P2F_DEBUG,
    FCLK_CLK3,
    FCLK_CLK2,
    FCLK_CLK1,
    FCLK_CLK0,
    FCLK_CLKTRIG3_N,
    FCLK_CLKTRIG2_N,
    FCLK_CLKTRIG1_N,
    FCLK_CLKTRIG0_N,
    FCLK_RESET3_N,
    FCLK_RESET2_N,
    FCLK_RESET1_N,
    FCLK_RESET0_N,
    FPGA_IDLE_N,
    DDR_ARB,
    IRQ_F2P,
    Core0_nFIQ,
    Core0_nIRQ,
    Core1_nFIQ,
    Core1_nIRQ,
    EVENT_EVENTO,
    EVENT_STANDBYWFE,
    EVENT_STANDBYWFI,
    EVENT_EVENTI,
    MIO,
    DDR_Clk,
    DDR_Clk_n,
    DDR_CKE,
    DDR_CS_n,
    DDR_RAS_n,
    DDR_CAS_n,
    DDR_WEB,
    DDR_BankAddr,
    DDR_Addr,
    DDR_ODT,
    DDR_DRSTB,
    DDR_DQ,
    DDR_DM,
    DDR_DQS,
    DDR_DQS_n,
    DDR_VRN,
    DDR_VRP,
    PS_SRSTB,
    PS_CLK,
    PS_PORB,
    IRQ_P2F_DMAC_ABORT,
    IRQ_P2F_DMAC0,
    IRQ_P2F_DMAC1,
    IRQ_P2F_DMAC2,
    IRQ_P2F_DMAC3,
    IRQ_P2F_DMAC4,
    IRQ_P2F_DMAC5,
    IRQ_P2F_DMAC6,
    IRQ_P2F_DMAC7,
    IRQ_P2F_SMC,
    IRQ_P2F_QSPI,
    IRQ_P2F_CTI,
    IRQ_P2F_GPIO,
    IRQ_P2F_USB0,
    IRQ_P2F_ENET0,
    IRQ_P2F_ENET_WAKE0,
    IRQ_P2F_SDIO0,
    IRQ_P2F_I2C0,
    IRQ_P2F_SPI0,
    IRQ_P2F_UART0,
    IRQ_P2F_CAN0,
    IRQ_P2F_USB1,
    IRQ_P2F_ENET1,
    IRQ_P2F_ENET_WAKE1,
    IRQ_P2F_SDIO1,
    IRQ_P2F_I2C1,
    IRQ_P2F_SPI1,
    IRQ_P2F_UART1,
    IRQ_P2F_CAN1
  );


  /* parameters for gen_clk */
  parameter C_FCLK_CLK0_FREQ = 50;
  parameter C_FCLK_CLK1_FREQ = 50;
  parameter C_FCLK_CLK3_FREQ = 50;
  parameter C_FCLK_CLK2_FREQ = 50;

  parameter C_HIGH_OCM_EN    = 0;


  /* parameters for HP ports */
  parameter C_USE_S_AXI_HP0 = 0;
  parameter C_USE_S_AXI_HP1 = 0;
  parameter C_USE_S_AXI_HP2 = 0;
  parameter C_USE_S_AXI_HP3 = 0;

  parameter C_S_AXI_HP0_DATA_WIDTH = 32;
  parameter C_S_AXI_HP1_DATA_WIDTH = 32;
  parameter C_S_AXI_HP2_DATA_WIDTH = 32;
  parameter C_S_AXI_HP3_DATA_WIDTH = 32;
  
  parameter C_M_AXI_GP0_THREAD_ID_WIDTH = 12;
  parameter C_M_AXI_GP1_THREAD_ID_WIDTH = 12; 
  parameter C_M_AXI_GP0_ENABLE_STATIC_REMAP = 0;
  parameter C_M_AXI_GP1_ENABLE_STATIC_REMAP = 0; 
  
/* Do we need these 
  parameter C_S_AXI_HP0_ENABLE_HIGHOCM = 0;
  parameter C_S_AXI_HP1_ENABLE_HIGHOCM = 0;
  parameter C_S_AXI_HP2_ENABLE_HIGHOCM = 0;
  parameter C_S_AXI_HP3_ENABLE_HIGHOCM = 0; */

  parameter C_S_AXI_HP0_BASEADDR = 32'h0000_0000;
  parameter C_S_AXI_HP1_BASEADDR = 32'h0000_0000;
  parameter C_S_AXI_HP2_BASEADDR = 32'h0000_0000;
  parameter C_S_AXI_HP3_BASEADDR = 32'h0000_0000;
  
  parameter C_S_AXI_HP0_HIGHADDR = 32'hFFFF_FFFF;
  parameter C_S_AXI_HP1_HIGHADDR = 32'hFFFF_FFFF;
  parameter C_S_AXI_HP2_HIGHADDR = 32'hFFFF_FFFF;
  parameter C_S_AXI_HP3_HIGHADDR = 32'hFFFF_FFFF;
 
  /* parameters for GP and ACP ports */
  parameter C_USE_M_AXI_GP0 = 0;
  parameter C_USE_M_AXI_GP1 = 0;
  parameter C_USE_S_AXI_GP0 = 1;
  parameter C_USE_S_AXI_GP1 = 1;
  
  /* Do we need this?
  parameter C_M_AXI_GP0_ENABLE_HIGHOCM = 0;
  parameter C_M_AXI_GP1_ENABLE_HIGHOCM = 0;
  parameter C_S_AXI_GP0_ENABLE_HIGHOCM = 0;
  parameter C_S_AXI_GP1_ENABLE_HIGHOCM = 0;
  
  parameter C_S_AXI_ACP_ENABLE_HIGHOCM = 0;*/

  parameter C_S_AXI_GP0_BASEADDR = 32'h0000_0000;
  parameter C_S_AXI_GP1_BASEADDR = 32'h0000_0000;
  
  parameter C_S_AXI_GP0_HIGHADDR = 32'hFFFF_FFFF;
  parameter C_S_AXI_GP1_HIGHADDR = 32'hFFFF_FFFF;
  
  parameter C_USE_S_AXI_ACP = 1;
  parameter C_S_AXI_ACP_BASEADDR = 32'h0000_0000;
  parameter C_S_AXI_ACP_HIGHADDR = 32'hFFFF_FFFF;
 
  `include "processing_system7_vip_v1_0_3_local_params.v"

  output CAN0_PHY_TX;
  input CAN0_PHY_RX;
  output CAN1_PHY_TX;
  input CAN1_PHY_RX;
  output ENET0_GMII_TX_EN;
  output ENET0_GMII_TX_ER;
  output ENET0_MDIO_MDC;
  output ENET0_MDIO_O;
  output ENET0_MDIO_T;
  output ENET0_PTP_DELAY_REQ_RX;
  output ENET0_PTP_DELAY_REQ_TX;
  output ENET0_PTP_PDELAY_REQ_RX;
  output ENET0_PTP_PDELAY_REQ_TX;
  output ENET0_PTP_PDELAY_RESP_RX;
  output ENET0_PTP_PDELAY_RESP_TX;
  output ENET0_PTP_SYNC_FRAME_RX;
  output ENET0_PTP_SYNC_FRAME_TX;
  output ENET0_SOF_RX;
  output ENET0_SOF_TX;
  output [7:0] ENET0_GMII_TXD;
  input ENET0_GMII_COL;
  input ENET0_GMII_CRS;
  input ENET0_EXT_INTIN;
  input ENET0_GMII_RX_CLK;
  input ENET0_GMII_RX_DV;
  input ENET0_GMII_RX_ER;
  input ENET0_GMII_TX_CLK;
  input ENET0_MDIO_I;
  input [7:0] ENET0_GMII_RXD;
  output ENET1_GMII_TX_EN;
  output ENET1_GMII_TX_ER;
  output ENET1_MDIO_MDC;
  output ENET1_MDIO_O;
  output ENET1_MDIO_T;
  output ENET1_PTP_DELAY_REQ_RX;
  output ENET1_PTP_DELAY_REQ_TX;
  output ENET1_PTP_PDELAY_REQ_RX;
  output ENET1_PTP_PDELAY_REQ_TX;
  output ENET1_PTP_PDELAY_RESP_RX;
  output ENET1_PTP_PDELAY_RESP_TX;
  output ENET1_PTP_SYNC_FRAME_RX;
  output ENET1_PTP_SYNC_FRAME_TX;
  output ENET1_SOF_RX;
  output ENET1_SOF_TX;
  output [7:0] ENET1_GMII_TXD;
  input ENET1_GMII_COL;
  input ENET1_GMII_CRS;
  input ENET1_EXT_INTIN;
  input ENET1_GMII_RX_CLK;
  input ENET1_GMII_RX_DV;
  input ENET1_GMII_RX_ER;
  input ENET1_GMII_TX_CLK;
  input ENET1_MDIO_I;
  input [7:0] ENET1_GMII_RXD;
  input [63:0] GPIO_I;
  output [63:0] GPIO_O;
  output [63:0] GPIO_T;
  input I2C0_SDA_I;
  output I2C0_SDA_O;
  output I2C0_SDA_T;
  input I2C0_SCL_I;
  output I2C0_SCL_O;
  output I2C0_SCL_T;
  input I2C1_SDA_I;
  output I2C1_SDA_O;
  output I2C1_SDA_T;
  input I2C1_SCL_I;
  output I2C1_SCL_O;
  output I2C1_SCL_T;
  input PJTAG_TCK;
  input PJTAG_TMS;
  input PJTAG_TD_I;
  output PJTAG_TD_T;
  output PJTAG_TD_O;
  output SDIO0_CLK;
  input SDIO0_CLK_FB;
  output SDIO0_CMD_O;
  input SDIO0_CMD_I;
  output SDIO0_CMD_T;
  input [3:0] SDIO0_DATA_I;
  output [3:0] SDIO0_DATA_O;
  output [3:0] SDIO0_DATA_T;
  output SDIO0_LED;
  input SDIO0_CDN;
  input SDIO0_WP;
  output SDIO0_BUSPOW;
  output [2:0] SDIO0_BUSVOLT;
  output SDIO1_CLK;
  input SDIO1_CLK_FB;
  output SDIO1_CMD_O;
  input SDIO1_CMD_I;
  output SDIO1_CMD_T;
  input [3:0] SDIO1_DATA_I;
  output [3:0] SDIO1_DATA_O;
  output [3:0] SDIO1_DATA_T;
  output SDIO1_LED;
  input SDIO1_CDN;
  input SDIO1_WP;
  output SDIO1_BUSPOW;
  output [2:0] SDIO1_BUSVOLT;
  input SPI0_SCLK_I;
  output SPI0_SCLK_O;
  output SPI0_SCLK_T;
  input SPI0_MOSI_I;
  output SPI0_MOSI_O;
  output SPI0_MOSI_T;
  input SPI0_MISO_I;
  output SPI0_MISO_O;
  output SPI0_MISO_T;
  input SPI0_SS_I;
  output SPI0_SS_O;
  output SPI0_SS1_O;
  output SPI0_SS2_O;
  output SPI0_SS_T;
  input SPI1_SCLK_I;
  output SPI1_SCLK_O;
  output SPI1_SCLK_T;
  input SPI1_MOSI_I;
  output SPI1_MOSI_O;
  output SPI1_MOSI_T;
  input SPI1_MISO_I;
  output SPI1_MISO_O;
  output SPI1_MISO_T;
  input SPI1_SS_I;
  output SPI1_SS_O;
  output SPI1_SS1_O;
  output SPI1_SS2_O;
  output SPI1_SS_T;
  output UART0_DTRN;
  output UART0_RTSN;
  output UART0_TX;
  input UART0_CTSN;
  input UART0_DCDN;
  input UART0_DSRN;
  input UART0_RIN;
  input UART0_RX;
  output UART1_DTRN;
  output UART1_RTSN;
  output UART1_TX;
  input UART1_CTSN;
  input UART1_DCDN;
  input UART1_DSRN;
  input UART1_RIN;
  input UART1_RX;
  output TTC0_WAVE0_OUT;
  output TTC0_WAVE1_OUT;
  output TTC0_WAVE2_OUT;
  input TTC0_CLK0_IN;
  input TTC0_CLK1_IN;
  input TTC0_CLK2_IN;
  output TTC1_WAVE0_OUT;
  output TTC1_WAVE1_OUT;
  output TTC1_WAVE2_OUT;
  input TTC1_CLK0_IN;
  input TTC1_CLK1_IN;
  input TTC1_CLK2_IN;
  input WDT_CLK_IN;
  output WDT_RST_OUT;
  input TRACE_CLK;
  output TRACE_CTL;
  output [31:0] TRACE_DATA;
  output [1:0] USB0_PORT_INDCTL;
  output [1:0] USB1_PORT_INDCTL;
  output USB0_VBUS_PWRSELECT;
  output USB1_VBUS_PWRSELECT;
  input USB0_VBUS_PWRFAULT;
  input USB1_VBUS_PWRFAULT;
  input SRAM_INTIN;
  output M_AXI_GP0_ARVALID;
  output M_AXI_GP0_AWVALID;
  output M_AXI_GP0_BREADY;
  output M_AXI_GP0_RREADY;
  output M_AXI_GP0_WLAST;
  output M_AXI_GP0_WVALID;
  output [C_M_AXI_GP0_THREAD_ID_WIDTH-1:0] M_AXI_GP0_ARID;
  output [C_M_AXI_GP0_THREAD_ID_WIDTH-1:0] M_AXI_GP0_AWID;
  output [C_M_AXI_GP0_THREAD_ID_WIDTH-1:0] M_AXI_GP0_WID;
  output [1:0] M_AXI_GP0_ARBURST;
  output [1:0] M_AXI_GP0_ARLOCK;
  output [2:0] M_AXI_GP0_ARSIZE;
  output [1:0] M_AXI_GP0_AWBURST;
  output [1:0] M_AXI_GP0_AWLOCK;
  output [2:0] M_AXI_GP0_AWSIZE;
  output [2:0] M_AXI_GP0_ARPROT;
  output [2:0] M_AXI_GP0_AWPROT;
  output [31:0] M_AXI_GP0_ARADDR;
  output [31:0] M_AXI_GP0_AWADDR;
  output [31:0] M_AXI_GP0_WDATA;
  output [3:0] M_AXI_GP0_ARCACHE;
  output [3:0] M_AXI_GP0_ARLEN;
  output [3:0] M_AXI_GP0_ARQOS;
  output [3:0] M_AXI_GP0_AWCACHE;
  output [3:0] M_AXI_GP0_AWLEN;
  output [3:0] M_AXI_GP0_AWQOS;
  output [3:0] M_AXI_GP0_WSTRB;
  input M_AXI_GP0_ACLK;
  input M_AXI_GP0_ARREADY;
  input M_AXI_GP0_AWREADY;
  input M_AXI_GP0_BVALID;
  input M_AXI_GP0_RLAST;
  input M_AXI_GP0_RVALID;
  input M_AXI_GP0_WREADY;
  input [C_M_AXI_GP0_THREAD_ID_WIDTH-1:0] M_AXI_GP0_BID;
  input [C_M_AXI_GP0_THREAD_ID_WIDTH-1:0] M_AXI_GP0_RID;
  input [1:0] M_AXI_GP0_BRESP;
  input [1:0] M_AXI_GP0_RRESP;
  input [31:0] M_AXI_GP0_RDATA;
  output M_AXI_GP1_ARVALID;
  output M_AXI_GP1_AWVALID;
  output M_AXI_GP1_BREADY;
  output M_AXI_GP1_RREADY;
  output M_AXI_GP1_WLAST;
  output M_AXI_GP1_WVALID;
  output [C_M_AXI_GP1_THREAD_ID_WIDTH-1:0] M_AXI_GP1_ARID;
  output [C_M_AXI_GP1_THREAD_ID_WIDTH-1:0] M_AXI_GP1_AWID;
  output [C_M_AXI_GP1_THREAD_ID_WIDTH-1:0] M_AXI_GP1_WID;
  output [1:0] M_AXI_GP1_ARBURST;
  output [1:0] M_AXI_GP1_ARLOCK;
  output [2:0] M_AXI_GP1_ARSIZE;
  output [1:0] M_AXI_GP1_AWBURST;
  output [1:0] M_AXI_GP1_AWLOCK;
  output [2:0] M_AXI_GP1_AWSIZE;
  output [2:0] M_AXI_GP1_ARPROT;
  output [2:0] M_AXI_GP1_AWPROT;
  output [31:0] M_AXI_GP1_ARADDR;
  output [31:0] M_AXI_GP1_AWADDR;
  output [31:0] M_AXI_GP1_WDATA;
  output [3:0] M_AXI_GP1_ARCACHE;
  output [3:0] M_AXI_GP1_ARLEN;
  output [3:0] M_AXI_GP1_ARQOS;
  output [3:0] M_AXI_GP1_AWCACHE;
  output [3:0] M_AXI_GP1_AWLEN;
  output [3:0] M_AXI_GP1_AWQOS;
  output [3:0] M_AXI_GP1_WSTRB;
  input M_AXI_GP1_ACLK;
  input M_AXI_GP1_ARREADY;
  input M_AXI_GP1_AWREADY;
  input M_AXI_GP1_BVALID;
  input M_AXI_GP1_RLAST;
  input M_AXI_GP1_RVALID;
  input M_AXI_GP1_WREADY;
  input [C_M_AXI_GP1_THREAD_ID_WIDTH-1:0] M_AXI_GP1_BID;
  input [C_M_AXI_GP1_THREAD_ID_WIDTH-1:0] M_AXI_GP1_RID;
  input [1:0] M_AXI_GP1_BRESP;
  input [1:0] M_AXI_GP1_RRESP;
  input [31:0] M_AXI_GP1_RDATA;
  output S_AXI_GP0_ARREADY;
  output S_AXI_GP0_AWREADY;
  output S_AXI_GP0_BVALID;
  output S_AXI_GP0_RLAST;
  output S_AXI_GP0_RVALID;
  output S_AXI_GP0_WREADY;
  output [1:0] S_AXI_GP0_BRESP;
  output [1:0] S_AXI_GP0_RRESP;
  output [31:0] S_AXI_GP0_RDATA;
  output [5:0] S_AXI_GP0_BID;
  output [5:0] S_AXI_GP0_RID;
  input S_AXI_GP0_ACLK;
  input S_AXI_GP0_ARVALID;
  input S_AXI_GP0_AWVALID;
  input S_AXI_GP0_BREADY;
  input S_AXI_GP0_RREADY;
  input S_AXI_GP0_WLAST;
  input S_AXI_GP0_WVALID;
  input [1:0] S_AXI_GP0_ARBURST;
  input [1:0] S_AXI_GP0_ARLOCK;
  input [2:0] S_AXI_GP0_ARSIZE;
  input [1:0] S_AXI_GP0_AWBURST;
  input [1:0] S_AXI_GP0_AWLOCK;
  input [2:0] S_AXI_GP0_AWSIZE;
  input [2:0] S_AXI_GP0_ARPROT;
  input [2:0] S_AXI_GP0_AWPROT;
  input [31:0] S_AXI_GP0_ARADDR;
  input [31:0] S_AXI_GP0_AWADDR;
  input [31:0] S_AXI_GP0_WDATA;
  input [3:0] S_AXI_GP0_ARCACHE;
  input [3:0] S_AXI_GP0_ARLEN;
  input [3:0] S_AXI_GP0_ARQOS;
  input [3:0] S_AXI_GP0_AWCACHE;
  input [3:0] S_AXI_GP0_AWLEN;
  input [3:0] S_AXI_GP0_AWQOS;
  input [3:0] S_AXI_GP0_WSTRB;
  input [5:0] S_AXI_GP0_ARID;
  input [5:0] S_AXI_GP0_AWID;
  input [5:0] S_AXI_GP0_WID;
  output S_AXI_GP1_ARREADY;
  output S_AXI_GP1_AWREADY;
  output S_AXI_GP1_BVALID;
  output S_AXI_GP1_RLAST;
  output S_AXI_GP1_RVALID;
  output S_AXI_GP1_WREADY;
  output [1:0] S_AXI_GP1_BRESP;
  output [1:0] S_AXI_GP1_RRESP;
  output [31:0] S_AXI_GP1_RDATA;
  output [5:0] S_AXI_GP1_BID;
  output [5:0] S_AXI_GP1_RID;
  input S_AXI_GP1_ACLK;
  input S_AXI_GP1_ARVALID;
  input S_AXI_GP1_AWVALID;
  input S_AXI_GP1_BREADY;
  input S_AXI_GP1_RREADY;
  input S_AXI_GP1_WLAST;
  input S_AXI_GP1_WVALID;
  input [1:0] S_AXI_GP1_ARBURST;
  input [1:0] S_AXI_GP1_ARLOCK;
  input [2:0] S_AXI_GP1_ARSIZE;
  input [1:0] S_AXI_GP1_AWBURST;
  input [1:0] S_AXI_GP1_AWLOCK;
  input [2:0] S_AXI_GP1_AWSIZE;
  input [2:0] S_AXI_GP1_ARPROT;
  input [2:0] S_AXI_GP1_AWPROT;
  input [31:0] S_AXI_GP1_ARADDR;
  input [31:0] S_AXI_GP1_AWADDR;
  input [31:0] S_AXI_GP1_WDATA;
  input [3:0] S_AXI_GP1_ARCACHE;
  input [3:0] S_AXI_GP1_ARLEN;
  input [3:0] S_AXI_GP1_ARQOS;
  input [3:0] S_AXI_GP1_AWCACHE;
  input [3:0] S_AXI_GP1_AWLEN;
  input [3:0] S_AXI_GP1_AWQOS;
  input [3:0] S_AXI_GP1_WSTRB;
  input [5:0] S_AXI_GP1_ARID;
  input [5:0] S_AXI_GP1_AWID;
  input [5:0] S_AXI_GP1_WID;
  output S_AXI_ACP_AWREADY;
  output S_AXI_ACP_ARREADY;
  output S_AXI_ACP_BVALID;
  output S_AXI_ACP_RLAST;
  output S_AXI_ACP_RVALID;
  output S_AXI_ACP_WREADY;
  output [1:0] S_AXI_ACP_BRESP;
  output [1:0] S_AXI_ACP_RRESP;
  output [2:0] S_AXI_ACP_BID;
  output [2:0] S_AXI_ACP_RID;
  output [63:0] S_AXI_ACP_RDATA;
  input S_AXI_ACP_ACLK;
  input S_AXI_ACP_ARVALID;
  input S_AXI_ACP_AWVALID;
  input S_AXI_ACP_BREADY;
  input S_AXI_ACP_RREADY;
  input S_AXI_ACP_WLAST;
  input S_AXI_ACP_WVALID;
  input [2:0] S_AXI_ACP_ARID;
  input [2:0] S_AXI_ACP_ARPROT;
  input [2:0] S_AXI_ACP_AWID;
  input [2:0] S_AXI_ACP_AWPROT;
  input [2:0] S_AXI_ACP_WID;
  input [31:0] S_AXI_ACP_ARADDR;
  input [31:0] S_AXI_ACP_AWADDR;
  input [3:0] S_AXI_ACP_ARCACHE;
  input [3:0] S_AXI_ACP_ARLEN;
  input [3:0] S_AXI_ACP_ARQOS;
  input [3:0] S_AXI_ACP_AWCACHE;
  input [3:0] S_AXI_ACP_AWLEN;
  input [3:0] S_AXI_ACP_AWQOS;
  input [1:0] S_AXI_ACP_ARBURST;
  input [1:0] S_AXI_ACP_ARLOCK;
  input [2:0] S_AXI_ACP_ARSIZE;
  input [1:0] S_AXI_ACP_AWBURST;
  input [1:0] S_AXI_ACP_AWLOCK;
  input [2:0] S_AXI_ACP_AWSIZE;
  input [4:0] S_AXI_ACP_ARUSER;
  input [4:0] S_AXI_ACP_AWUSER;
  input [63:0] S_AXI_ACP_WDATA;
  input [7:0] S_AXI_ACP_WSTRB;
  output S_AXI_HP0_ARREADY;
  output S_AXI_HP0_AWREADY;
  output S_AXI_HP0_BVALID;
  output S_AXI_HP0_RLAST;
  output S_AXI_HP0_RVALID;
  output S_AXI_HP0_WREADY;
  output [1:0] S_AXI_HP0_BRESP;
  output [1:0] S_AXI_HP0_RRESP;
  output [5:0] S_AXI_HP0_BID;
  output [5:0] S_AXI_HP0_RID;
  output [C_S_AXI_HP0_DATA_WIDTH-1:0] S_AXI_HP0_RDATA;
  output [7:0] S_AXI_HP0_RCOUNT;
  output [7:0] S_AXI_HP0_WCOUNT;
  output [2:0] S_AXI_HP0_RACOUNT;
  output [5:0] S_AXI_HP0_WACOUNT;
  input S_AXI_HP0_ACLK;
  input S_AXI_HP0_ARVALID;
  input S_AXI_HP0_AWVALID;
  input S_AXI_HP0_BREADY;
  input S_AXI_HP0_RDISSUECAP1_EN;
  input S_AXI_HP0_RREADY;
  input S_AXI_HP0_WLAST;
  input S_AXI_HP0_WRISSUECAP1_EN;
  input S_AXI_HP0_WVALID;
  input [1:0] S_AXI_HP0_ARBURST;
  input [1:0] S_AXI_HP0_ARLOCK;
  input [2:0] S_AXI_HP0_ARSIZE;
  input [1:0] S_AXI_HP0_AWBURST;
  input [1:0] S_AXI_HP0_AWLOCK;
  input [2:0] S_AXI_HP0_AWSIZE;
  input [2:0] S_AXI_HP0_ARPROT;
  input [2:0] S_AXI_HP0_AWPROT;
  input [31:0] S_AXI_HP0_ARADDR;
  input [31:0] S_AXI_HP0_AWADDR;
  input [3:0] S_AXI_HP0_ARCACHE;
  input [3:0] S_AXI_HP0_ARLEN;
  input [3:0] S_AXI_HP0_ARQOS;
  input [3:0] S_AXI_HP0_AWCACHE;
  input [3:0] S_AXI_HP0_AWLEN;
  input [3:0] S_AXI_HP0_AWQOS;
  input [5:0] S_AXI_HP0_ARID;
  input [5:0] S_AXI_HP0_AWID;
  input [5:0] S_AXI_HP0_WID;
  input [C_S_AXI_HP0_DATA_WIDTH-1:0] S_AXI_HP0_WDATA;
  input [C_S_AXI_HP0_DATA_WIDTH/8-1:0] S_AXI_HP0_WSTRB;
  output S_AXI_HP1_ARREADY;
  output S_AXI_HP1_AWREADY;
  output S_AXI_HP1_BVALID;
  output S_AXI_HP1_RLAST;
  output S_AXI_HP1_RVALID;
  output S_AXI_HP1_WREADY;
  output [1:0] S_AXI_HP1_BRESP;
  output [1:0] S_AXI_HP1_RRESP;
  output [5:0] S_AXI_HP1_BID;
  output [5:0] S_AXI_HP1_RID;
  output [C_S_AXI_HP1_DATA_WIDTH-1:0] S_AXI_HP1_RDATA;
  output [7:0] S_AXI_HP1_RCOUNT;
  output [7:0] S_AXI_HP1_WCOUNT;
  output [2:0] S_AXI_HP1_RACOUNT;
  output [5:0] S_AXI_HP1_WACOUNT;
  input S_AXI_HP1_ACLK;
  input S_AXI_HP1_ARVALID;
  input S_AXI_HP1_AWVALID;
  input S_AXI_HP1_BREADY;
  input S_AXI_HP1_RDISSUECAP1_EN;
  input S_AXI_HP1_RREADY;
  input S_AXI_HP1_WLAST;
  input S_AXI_HP1_WRISSUECAP1_EN;
  input S_AXI_HP1_WVALID;
  input [1:0] S_AXI_HP1_ARBURST;
  input [1:0] S_AXI_HP1_ARLOCK;
  input [2:0] S_AXI_HP1_ARSIZE;
  input [1:0] S_AXI_HP1_AWBURST;
  input [1:0] S_AXI_HP1_AWLOCK;
  input [2:0] S_AXI_HP1_AWSIZE;
  input [2:0] S_AXI_HP1_ARPROT;
  input [2:0] S_AXI_HP1_AWPROT;
  input [31:0] S_AXI_HP1_ARADDR;
  input [31:0] S_AXI_HP1_AWADDR;
  input [3:0] S_AXI_HP1_ARCACHE;
  input [3:0] S_AXI_HP1_ARLEN;
  input [3:0] S_AXI_HP1_ARQOS;
  input [3:0] S_AXI_HP1_AWCACHE;
  input [3:0] S_AXI_HP1_AWLEN;
  input [3:0] S_AXI_HP1_AWQOS;
  input [5:0] S_AXI_HP1_ARID;
  input [5:0] S_AXI_HP1_AWID;
  input [5:0] S_AXI_HP1_WID;
  input [C_S_AXI_HP1_DATA_WIDTH-1:0] S_AXI_HP1_WDATA;
  input [C_S_AXI_HP1_DATA_WIDTH/8-1:0] S_AXI_HP1_WSTRB;
  output S_AXI_HP2_ARREADY;
  output S_AXI_HP2_AWREADY;
  output S_AXI_HP2_BVALID;
  output S_AXI_HP2_RLAST;
  output S_AXI_HP2_RVALID;
  output S_AXI_HP2_WREADY;
  output [1:0] S_AXI_HP2_BRESP;
  output [1:0] S_AXI_HP2_RRESP;
  output [5:0] S_AXI_HP2_BID;
  output [5:0] S_AXI_HP2_RID;
  output [C_S_AXI_HP2_DATA_WIDTH-1:0] S_AXI_HP2_RDATA;
  output [7:0] S_AXI_HP2_RCOUNT;
  output [7:0] S_AXI_HP2_WCOUNT;
  output [2:0] S_AXI_HP2_RACOUNT;
  output [5:0] S_AXI_HP2_WACOUNT;
  input S_AXI_HP2_ACLK;
  input S_AXI_HP2_ARVALID;
  input S_AXI_HP2_AWVALID;
  input S_AXI_HP2_BREADY;
  input S_AXI_HP2_RDISSUECAP1_EN;
  input S_AXI_HP2_RREADY;
  input S_AXI_HP2_WLAST;
  input S_AXI_HP2_WRISSUECAP1_EN;
  input S_AXI_HP2_WVALID;
  input [1:0] S_AXI_HP2_ARBURST;
  input [1:0] S_AXI_HP2_ARLOCK;
  input [2:0] S_AXI_HP2_ARSIZE;
  input [1:0] S_AXI_HP2_AWBURST;
  input [1:0] S_AXI_HP2_AWLOCK;
  input [2:0] S_AXI_HP2_AWSIZE;
  input [2:0] S_AXI_HP2_ARPROT;
  input [2:0] S_AXI_HP2_AWPROT;
  input [31:0] S_AXI_HP2_ARADDR;
  input [31:0] S_AXI_HP2_AWADDR;
  input [3:0] S_AXI_HP2_ARCACHE;
  input [3:0] S_AXI_HP2_ARLEN;
  input [3:0] S_AXI_HP2_ARQOS;
  input [3:0] S_AXI_HP2_AWCACHE;
  input [3:0] S_AXI_HP2_AWLEN;
  input [3:0] S_AXI_HP2_AWQOS;
  input [5:0] S_AXI_HP2_ARID;
  input [5:0] S_AXI_HP2_AWID;
  input [5:0] S_AXI_HP2_WID;
  input [C_S_AXI_HP2_DATA_WIDTH-1:0] S_AXI_HP2_WDATA;
  input [C_S_AXI_HP2_DATA_WIDTH/8-1:0] S_AXI_HP2_WSTRB;
  output S_AXI_HP3_ARREADY;
  output S_AXI_HP3_AWREADY;
  output S_AXI_HP3_BVALID;
  output S_AXI_HP3_RLAST;
  output S_AXI_HP3_RVALID;
  output S_AXI_HP3_WREADY;
  output [1:0] S_AXI_HP3_BRESP;
  output [1:0] S_AXI_HP3_RRESP;
  output [5:0] S_AXI_HP3_BID;
  output [5:0] S_AXI_HP3_RID;
  output [C_S_AXI_HP3_DATA_WIDTH-1:0] S_AXI_HP3_RDATA;
  output [7:0] S_AXI_HP3_RCOUNT;
  output [7:0] S_AXI_HP3_WCOUNT;
  output [2:0] S_AXI_HP3_RACOUNT;
  output [5:0] S_AXI_HP3_WACOUNT;
  input S_AXI_HP3_ACLK;
  input S_AXI_HP3_ARVALID;
  input S_AXI_HP3_AWVALID;
  input S_AXI_HP3_BREADY;
  input S_AXI_HP3_RDISSUECAP1_EN;
  input S_AXI_HP3_RREADY;
  input S_AXI_HP3_WLAST;
  input S_AXI_HP3_WRISSUECAP1_EN;
  input S_AXI_HP3_WVALID;
  input [1:0] S_AXI_HP3_ARBURST;
  input [1:0] S_AXI_HP3_ARLOCK;
  input [2:0] S_AXI_HP3_ARSIZE;
  input [1:0] S_AXI_HP3_AWBURST;
  input [1:0] S_AXI_HP3_AWLOCK;
  input [2:0] S_AXI_HP3_AWSIZE;
  input [2:0] S_AXI_HP3_ARPROT;
  input [2:0] S_AXI_HP3_AWPROT;
  input [31:0] S_AXI_HP3_ARADDR;
  input [31:0] S_AXI_HP3_AWADDR;
  input [3:0] S_AXI_HP3_ARCACHE;
  input [3:0] S_AXI_HP3_ARLEN;
  input [3:0] S_AXI_HP3_ARQOS;
  input [3:0] S_AXI_HP3_AWCACHE;
  input [3:0] S_AXI_HP3_AWLEN;
  input [3:0] S_AXI_HP3_AWQOS;
  input [5:0] S_AXI_HP3_ARID;
  input [5:0] S_AXI_HP3_AWID;
  input [5:0] S_AXI_HP3_WID;
  input [C_S_AXI_HP3_DATA_WIDTH-1:0] S_AXI_HP3_WDATA;
  input [C_S_AXI_HP3_DATA_WIDTH/8-1:0] S_AXI_HP3_WSTRB;
  output [1:0] DMA0_DATYPE;
  output DMA0_DAVALID;
  output DMA0_DRREADY;
  input DMA0_ACLK;
  input DMA0_DAREADY;
  input DMA0_DRLAST;
  input DMA0_DRVALID;
  input [1:0] DMA0_DRTYPE;
  output [1:0] DMA1_DATYPE;
  output DMA1_DAVALID;
  output DMA1_DRREADY;
  input DMA1_ACLK;
  input DMA1_DAREADY;
  input DMA1_DRLAST;
  input DMA1_DRVALID;
  input [1:0] DMA1_DRTYPE;
  output [1:0] DMA2_DATYPE;
  output DMA2_DAVALID;
  output DMA2_DRREADY;
  input DMA2_ACLK;
  input DMA2_DAREADY;
  input DMA2_DRLAST;
  input DMA2_DRVALID;
  input DMA3_DRVALID;
  output [1:0] DMA3_DATYPE;
  output DMA3_DAVALID;
  output DMA3_DRREADY;
  input DMA3_ACLK;
  input DMA3_DAREADY;
  input DMA3_DRLAST;
  input [1:0] DMA2_DRTYPE;
  input [1:0] DMA3_DRTYPE;
  input [31:0] FTMD_TRACEIN_DATA;
  input FTMD_TRACEIN_VALID;
  input FTMD_TRACEIN_CLK;
  input [3:0] FTMD_TRACEIN_ATID;
  input [3:0] FTMT_F2P_TRIG;
  output [3:0] FTMT_F2P_TRIGACK;
  input [31:0] FTMT_F2P_DEBUG;
  input [3:0] FTMT_P2F_TRIGACK;
  output [3:0] FTMT_P2F_TRIG;
  output [31:0] FTMT_P2F_DEBUG;
  output FCLK_CLK3;
  output FCLK_CLK2;
  output FCLK_CLK1;
  output FCLK_CLK0;
  input FCLK_CLKTRIG3_N;
  input FCLK_CLKTRIG2_N;
  input FCLK_CLKTRIG1_N;
  input FCLK_CLKTRIG0_N;
  output FCLK_RESET3_N;
  output FCLK_RESET2_N;
  output FCLK_RESET1_N;
  output FCLK_RESET0_N;
  input FPGA_IDLE_N;
  input [3:0] DDR_ARB;
  input [irq_width-1:0] IRQ_F2P;
  input Core0_nFIQ;
  input Core0_nIRQ;
  input Core1_nFIQ;
  input Core1_nIRQ;
  output EVENT_EVENTO;
  output [1:0] EVENT_STANDBYWFE;
  output [1:0] EVENT_STANDBYWFI;
  input EVENT_EVENTI;
  inout [53:0] MIO;
  inout DDR_Clk;
  inout DDR_Clk_n;
  inout DDR_CKE;
  inout DDR_CS_n;
  inout DDR_RAS_n;
  inout DDR_CAS_n;
  output DDR_WEB;
  inout [2:0] DDR_BankAddr;
  inout [14:0] DDR_Addr;
  inout DDR_ODT;
  inout DDR_DRSTB;
  inout [31:0] DDR_DQ;
  inout [3:0] DDR_DM;
  inout [3:0] DDR_DQS;
  inout [3:0] DDR_DQS_n;
  inout DDR_VRN;
  inout DDR_VRP;
/* Reset Input & Clock Input */
  input PS_SRSTB;
  input PS_CLK;
  input PS_PORB;
  output IRQ_P2F_DMAC_ABORT;
  output IRQ_P2F_DMAC0;
  output IRQ_P2F_DMAC1;
  output IRQ_P2F_DMAC2;
  output IRQ_P2F_DMAC3;
  output IRQ_P2F_DMAC4;
  output IRQ_P2F_DMAC5;
  output IRQ_P2F_DMAC6;
  output IRQ_P2F_DMAC7;
  output IRQ_P2F_SMC;
  output IRQ_P2F_QSPI;
  output IRQ_P2F_CTI;
  output IRQ_P2F_GPIO;
  output IRQ_P2F_USB0;
  output IRQ_P2F_ENET0;
  output IRQ_P2F_ENET_WAKE0;
  output IRQ_P2F_SDIO0;
  output IRQ_P2F_I2C0;
  output IRQ_P2F_SPI0;
  output IRQ_P2F_UART0;
  output IRQ_P2F_CAN0;
  output IRQ_P2F_USB1;
  output IRQ_P2F_ENET1;
  output IRQ_P2F_ENET_WAKE1;
  output IRQ_P2F_SDIO1;
  output IRQ_P2F_I2C1;
  output IRQ_P2F_SPI1;
  output IRQ_P2F_UART1;
  output IRQ_P2F_CAN1;


  /* Internal wires/nets used for connectivity */
  wire net_rstn;
  wire net_sw_clk;
  wire net_ocm_clk;
  wire net_arbiter_clk;

  wire net_axi_mgp0_rstn;
  wire net_axi_mgp1_rstn;
  wire net_axi_gp0_rstn;
  wire net_axi_gp1_rstn;
  wire net_axi_hp0_rstn;
  wire net_axi_hp1_rstn;
  wire net_axi_hp2_rstn;
  wire net_axi_hp3_rstn;
  wire net_axi_acp_rstn;
  wire [4:0] net_axi_acp_awuser;
  wire [4:0] net_axi_acp_aruser;


  /* Dummy */
  assign net_axi_acp_awuser = S_AXI_ACP_AWUSER;
  assign net_axi_acp_aruser = S_AXI_ACP_ARUSER;

  /* Global variables */
  reg DEBUG_INFO = 1;
  reg STOP_ON_ERROR = 1;
  
  /* local variable acting as semaphore for wait_mem_update and wait_reg_update task */ 
  reg mem_update_key = 1; 
  reg reg_update_key_0 = 1; 
  reg reg_update_key_1 = 1; 
  
  /* assignments and semantic checks for unused ports */
  `include "processing_system7_vip_v1_0_3_unused_ports.v"
 
  /* include api definition */
  `include "processing_system7_vip_v1_0_3_apis.v"
 
  /* Reset Generator */
  processing_system7_vip_v1_0_3_gen_reset gen_rst(.por_rst_n(PS_PORB),
                    .sys_rst_n(PS_SRSTB),
                    .rst_out_n(net_rstn),

                    .m_axi_gp0_clk(M_AXI_GP0_ACLK),
                    .m_axi_gp1_clk(M_AXI_GP1_ACLK),
                    .s_axi_gp0_clk(S_AXI_GP0_ACLK),
                    .s_axi_gp1_clk(S_AXI_GP1_ACLK),
                    .s_axi_hp0_clk(S_AXI_HP0_ACLK),
                    .s_axi_hp1_clk(S_AXI_HP1_ACLK),
                    .s_axi_hp2_clk(S_AXI_HP2_ACLK),
                    .s_axi_hp3_clk(S_AXI_HP3_ACLK),
                    .s_axi_acp_clk(S_AXI_ACP_ACLK),

                    .m_axi_gp0_rstn(net_axi_mgp0_rstn),
                    .m_axi_gp1_rstn(net_axi_mgp1_rstn),
                    .s_axi_gp0_rstn(net_axi_gp0_rstn),
                    .s_axi_gp1_rstn(net_axi_gp1_rstn),
                    .s_axi_hp0_rstn(net_axi_hp0_rstn),
                    .s_axi_hp1_rstn(net_axi_hp1_rstn),
                    .s_axi_hp2_rstn(net_axi_hp2_rstn),
                    .s_axi_hp3_rstn(net_axi_hp3_rstn),
                    .s_axi_acp_rstn(net_axi_acp_rstn),

                    .fclk_reset3_n(FCLK_RESET3_N),
                    .fclk_reset2_n(FCLK_RESET2_N),
                    .fclk_reset1_n(FCLK_RESET1_N),
                    .fclk_reset0_n(FCLK_RESET0_N),

                    .fpga_acp_reset_n(),   ////S_AXI_ACP_ARESETN), (These are removed from Zynq IP)
                    .fpga_gp_m0_reset_n(), ////M_AXI_GP0_ARESETN),
                    .fpga_gp_m1_reset_n(), ////M_AXI_GP1_ARESETN),
                    .fpga_gp_s0_reset_n(), ////S_AXI_GP0_ARESETN),
                    .fpga_gp_s1_reset_n(), ////S_AXI_GP1_ARESETN),
                    .fpga_hp_s0_reset_n(), ////S_AXI_HP0_ARESETN),
                    .fpga_hp_s1_reset_n(), ////S_AXI_HP1_ARESETN),
                    .fpga_hp_s2_reset_n(), ////S_AXI_HP2_ARESETN),
                    .fpga_hp_s3_reset_n()  ////S_AXI_HP3_ARESETN)
                   );

  /* Clock Generator */
  processing_system7_vip_v1_0_3_gen_clock #(C_FCLK_CLK3_FREQ, C_FCLK_CLK2_FREQ, C_FCLK_CLK1_FREQ, C_FCLK_CLK0_FREQ)
            gen_clk(.ps_clk(PS_CLK),
                    .sw_clk(net_sw_clk),

                    .fclk_clk3(FCLK_CLK3),
                    .fclk_clk2(FCLK_CLK2),
                    .fclk_clk1(FCLK_CLK1),
                    .fclk_clk0(FCLK_CLK0)
                    );

  wire net_wr_ack_ocm_gp0, net_wr_ack_ddr_gp0, net_wr_ack_ocm_gp1, net_wr_ack_ddr_gp1;
  wire net_wr_dv_ocm_gp0, net_wr_dv_ddr_gp0, net_wr_dv_ocm_gp1, net_wr_dv_ddr_gp1;
  wire [max_burst_bits-1:0] net_wr_data_gp0, net_wr_data_gp1;
  wire [addr_width-1:0] net_wr_addr_gp0, net_wr_addr_gp1;
  wire [max_burst_bytes_width:0] net_wr_bytes_gp0, net_wr_bytes_gp1;
  wire [axi_qos_width-1:0] net_wr_qos_gp0, net_wr_qos_gp1;

  wire net_rd_req_ddr_gp0, net_rd_req_ddr_gp1;
  wire net_rd_req_ocm_gp0, net_rd_req_ocm_gp1;
  wire net_rd_req_reg_gp0, net_rd_req_reg_gp1;
  wire [addr_width-1:0] net_rd_addr_gp0, net_rd_addr_gp1;
  wire [max_burst_bytes_width:0] net_rd_bytes_gp0, net_rd_bytes_gp1;
  wire [max_burst_bits-1:0] net_rd_data_ddr_gp0, net_rd_data_ddr_gp1;
  wire [max_burst_bits-1:0] net_rd_data_ocm_gp0, net_rd_data_ocm_gp1;
  wire [max_burst_bits-1:0] net_rd_data_reg_gp0, net_rd_data_reg_gp1;
  wire  net_rd_dv_ddr_gp0, net_rd_dv_ddr_gp1;
  wire  net_rd_dv_ocm_gp0, net_rd_dv_ocm_gp1;
  wire  net_rd_dv_reg_gp0, net_rd_dv_reg_gp1;
  wire [axi_qos_width-1:0] net_rd_qos_gp0, net_rd_qos_gp1;
  
  wire net_wr_ack_ddr_hp0, net_wr_ack_ddr_hp1, net_wr_ack_ddr_hp2, net_wr_ack_ddr_hp3;
  wire net_wr_ack_ocm_hp0, net_wr_ack_ocm_hp1, net_wr_ack_ocm_hp2, net_wr_ack_ocm_hp3;
  wire net_wr_dv_ddr_hp0, net_wr_dv_ddr_hp1, net_wr_dv_ddr_hp2, net_wr_dv_ddr_hp3;
  wire net_wr_dv_ocm_hp0, net_wr_dv_ocm_hp1, net_wr_dv_ocm_hp2, net_wr_dv_ocm_hp3;
  wire [max_burst_bits-1:0] net_wr_data_hp0, net_wr_data_hp1, net_wr_data_hp2, net_wr_data_hp3;
  wire [addr_width-1:0] net_wr_addr_hp0, net_wr_addr_hp1, net_wr_addr_hp2, net_wr_addr_hp3;
  wire [max_burst_bytes_width:0] net_wr_bytes_hp0, net_wr_bytes_hp1, net_wr_bytes_hp2, net_wr_bytes_hp3;
  wire [axi_qos_width-1:0] net_wr_qos_hp0, net_wr_qos_hp1, net_wr_qos_hp2, net_wr_qos_hp3;
  
  wire net_rd_req_ddr_hp0, net_rd_req_ddr_hp1, net_rd_req_ddr_hp2, net_rd_req_ddr_hp3;
  wire net_rd_req_ocm_hp0, net_rd_req_ocm_hp1, net_rd_req_ocm_hp2, net_rd_req_ocm_hp3;
  wire [addr_width-1:0] net_rd_addr_hp0, net_rd_addr_hp1, net_rd_addr_hp2, net_rd_addr_hp3;
  wire [max_burst_bytes_width:0] net_rd_bytes_hp0, net_rd_bytes_hp1, net_rd_bytes_hp2, net_rd_bytes_hp3;
  wire [max_burst_bits-1:0] net_rd_data_ddr_hp0, net_rd_data_ddr_hp1, net_rd_data_ddr_hp2, net_rd_data_ddr_hp3;
  wire [max_burst_bits-1:0] net_rd_data_ocm_hp0, net_rd_data_ocm_hp1, net_rd_data_ocm_hp2, net_rd_data_ocm_hp3;
  wire  net_rd_dv_ddr_hp0, net_rd_dv_ddr_hp1, net_rd_dv_ddr_hp2, net_rd_dv_ddr_hp3;
  wire  net_rd_dv_ocm_hp0, net_rd_dv_ocm_hp1, net_rd_dv_ocm_hp2, net_rd_dv_ocm_hp3;
  wire [axi_qos_width-1:0] net_rd_qos_hp0, net_rd_qos_hp1, net_rd_qos_hp2, net_rd_qos_hp3;

  wire net_wr_ack_ddr_acp,net_wr_ack_ocm_acp;
  wire net_wr_dv_ddr_acp,net_wr_dv_ocm_acp;
  wire [max_burst_bits-1:0] net_wr_data_acp;
  wire [addr_width-1:0] net_wr_addr_acp;
  wire [max_burst_bytes_width:0] net_wr_bytes_acp;
  wire [axi_qos_width-1:0] net_wr_qos_acp;
  
  wire net_rd_req_ddr_acp, net_rd_req_ocm_acp;
  wire [addr_width-1:0] net_rd_addr_acp;
  wire [max_burst_bytes_width:0] net_rd_bytes_acp;
  wire [max_burst_bits-1:0] net_rd_data_ddr_acp;
  wire [max_burst_bits-1:0] net_rd_data_ocm_acp;
  wire  net_rd_dv_ddr_acp,net_rd_dv_ocm_acp;
  wire [axi_qos_width-1:0] net_rd_qos_acp;
  
  wire ocm_wr_ack_port0;
  wire ocm_wr_dv_port0;
  wire ocm_rd_req_port0;
  wire ocm_rd_dv_port0;
  wire [addr_width-1:0] ocm_wr_addr_port0;
  wire [max_burst_bits-1:0] ocm_wr_data_port0;
  wire [max_burst_bytes_width:0] ocm_wr_bytes_port0;
  wire [addr_width-1:0] ocm_rd_addr_port0;
  wire [max_burst_bits-1:0] ocm_rd_data_port0;
  wire [max_burst_bytes_width:0] ocm_rd_bytes_port0;
  wire [axi_qos_width-1:0] ocm_wr_qos_port0;
  wire [axi_qos_width-1:0] ocm_rd_qos_port0;

  wire ocm_wr_ack_port1;
  wire ocm_wr_dv_port1;
  wire ocm_rd_req_port1;
  wire ocm_rd_dv_port1;
  wire [addr_width-1:0] ocm_wr_addr_port1;
  wire [max_burst_bits-1:0] ocm_wr_data_port1;
  wire [max_burst_bytes_width:0] ocm_wr_bytes_port1;
  wire [addr_width-1:0] ocm_rd_addr_port1;
  wire [max_burst_bits-1:0] ocm_rd_data_port1;
  wire [max_burst_bytes_width:0] ocm_rd_bytes_port1;
  wire [axi_qos_width-1:0] ocm_wr_qos_port1;
  wire [axi_qos_width-1:0] ocm_rd_qos_port1;

  wire ddr_wr_ack_port0;
  wire ddr_wr_dv_port0;
  wire ddr_rd_req_port0;
  wire ddr_rd_dv_port0;
  wire[addr_width-1:0] ddr_wr_addr_port0;
  wire[max_burst_bits-1:0] ddr_wr_data_port0;
  wire[max_burst_bytes_width:0] ddr_wr_bytes_port0;
  wire[addr_width-1:0] ddr_rd_addr_port0;
  wire[max_burst_bits-1:0] ddr_rd_data_port0;
  wire[max_burst_bytes_width:0] ddr_rd_bytes_port0;
  wire [axi_qos_width-1:0] ddr_wr_qos_port0;
  wire [axi_qos_width-1:0] ddr_rd_qos_port0;

  wire ddr_wr_ack_port1;
  wire ddr_wr_dv_port1;
  wire ddr_rd_req_port1;
  wire ddr_rd_dv_port1;
  wire[addr_width-1:0] ddr_wr_addr_port1;
  wire[max_burst_bits-1:0] ddr_wr_data_port1;
  wire[max_burst_bytes_width:0] ddr_wr_bytes_port1;
  wire[addr_width-1:0] ddr_rd_addr_port1;
  wire[max_burst_bits-1:0] ddr_rd_data_port1;
  wire[max_burst_bytes_width:0] ddr_rd_bytes_port1;
  wire[axi_qos_width-1:0] ddr_wr_qos_port1;
  wire[axi_qos_width-1:0] ddr_rd_qos_port1;
  
  wire ddr_wr_ack_port2;
  wire ddr_wr_dv_port2;
  wire ddr_rd_req_port2;
  wire ddr_rd_dv_port2;
  wire[addr_width-1:0] ddr_wr_addr_port2;
  wire[max_burst_bits-1:0] ddr_wr_data_port2;
  wire[max_burst_bytes_width:0] ddr_wr_bytes_port2;
  wire[addr_width-1:0] ddr_rd_addr_port2;
  wire[max_burst_bits-1:0] ddr_rd_data_port2;
  wire[max_burst_bytes_width:0] ddr_rd_bytes_port2;
  wire[axi_qos_width-1:0] ddr_wr_qos_port2;
  wire[axi_qos_width-1:0] ddr_rd_qos_port2;
  
  wire ddr_wr_ack_port3;
  wire ddr_wr_dv_port3;
  wire ddr_rd_req_port3;
  wire ddr_rd_dv_port3;
  wire[addr_width-1:0] ddr_wr_addr_port3;
  wire[max_burst_bits-1:0] ddr_wr_data_port3;
  wire[max_burst_bytes_width:0] ddr_wr_bytes_port3;
  wire[addr_width-1:0] ddr_rd_addr_port3;
  wire[max_burst_bits-1:0] ddr_rd_data_port3;
  wire[max_burst_bytes_width:0] ddr_rd_bytes_port3;
  wire[axi_qos_width-1:0] ddr_wr_qos_port3;
  wire[axi_qos_width-1:0] ddr_rd_qos_port3;

  wire reg_rd_req_port0;
  wire reg_rd_dv_port0;
  wire[addr_width-1:0] reg_rd_addr_port0;
  wire[max_burst_bits-1:0] reg_rd_data_port0;
  wire[max_burst_bytes_width:0] reg_rd_bytes_port0;
  wire [axi_qos_width-1:0] reg_rd_qos_port0;

  wire reg_rd_req_port1;
  wire reg_rd_dv_port1;
  wire[addr_width-1:0] reg_rd_addr_port1;
  wire[max_burst_bits-1:0] reg_rd_data_port1;
  wire[max_burst_bytes_width:0] reg_rd_bytes_port1;
  wire [axi_qos_width-1:0] reg_rd_qos_port1;

  wire [11:0]  M_AXI_GP0_AWID_FULL;
  wire [11:0]  M_AXI_GP0_WID_FULL;
  wire [11:0]  M_AXI_GP0_ARID_FULL;
  
  wire [11:0]  M_AXI_GP0_BID_FULL;
  wire [11:0]  M_AXI_GP0_RID_FULL;
  
  wire [11:0]  M_AXI_GP1_AWID_FULL;
  wire [11:0]  M_AXI_GP1_WID_FULL;
  wire [11:0]  M_AXI_GP1_ARID_FULL;
  
  wire [11:0]  M_AXI_GP1_BID_FULL;
  wire [11:0]  M_AXI_GP1_RID_FULL;

  
  function [5:0] compress_id; 
  	input [11:0] id; 
  		begin 
  			compress_id = id[5:0]; 
  		end 
  endfunction 
  
  function [11:0] uncompress_id; 
  	input [5:0] id; 
  		begin 
  		    uncompress_id = {6'b110000, id[5:0]};
  		end 
  endfunction

  assign M_AXI_GP0_AWID        = (C_M_AXI_GP0_ENABLE_STATIC_REMAP == 1) ? compress_id(M_AXI_GP0_AWID_FULL) : M_AXI_GP0_AWID_FULL;
  assign M_AXI_GP0_WID         = (C_M_AXI_GP0_ENABLE_STATIC_REMAP == 1) ? compress_id(M_AXI_GP0_WID_FULL)  : M_AXI_GP0_WID_FULL;   
  assign M_AXI_GP0_ARID        = (C_M_AXI_GP0_ENABLE_STATIC_REMAP == 1) ? compress_id(M_AXI_GP0_ARID_FULL) : M_AXI_GP0_ARID_FULL;      
  assign M_AXI_GP0_BID_FULL    = (C_M_AXI_GP0_ENABLE_STATIC_REMAP == 1) ? uncompress_id(M_AXI_GP0_BID)     : M_AXI_GP0_BID;
  assign M_AXI_GP0_RID_FULL    = (C_M_AXI_GP0_ENABLE_STATIC_REMAP == 1) ? uncompress_id(M_AXI_GP0_RID)     : M_AXI_GP0_RID;      


  assign M_AXI_GP1_AWID        = (C_M_AXI_GP1_ENABLE_STATIC_REMAP == 1) ? compress_id(M_AXI_GP1_AWID_FULL) : M_AXI_GP1_AWID_FULL;
  assign M_AXI_GP1_WID         = (C_M_AXI_GP1_ENABLE_STATIC_REMAP == 1) ? compress_id(M_AXI_GP1_WID_FULL)  : M_AXI_GP1_WID_FULL;   
  assign M_AXI_GP1_ARID        = (C_M_AXI_GP1_ENABLE_STATIC_REMAP == 1) ? compress_id(M_AXI_GP1_ARID_FULL) : M_AXI_GP1_ARID_FULL;      
  assign M_AXI_GP1_BID_FULL    = (C_M_AXI_GP1_ENABLE_STATIC_REMAP == 1) ? uncompress_id(M_AXI_GP1_BID)     : M_AXI_GP1_BID;
  assign M_AXI_GP1_RID_FULL    = (C_M_AXI_GP1_ENABLE_STATIC_REMAP == 1) ? uncompress_id(M_AXI_GP1_RID)     : M_AXI_GP1_RID;      




  processing_system7_vip_v1_0_3_interconnect_model icm (
                 .rstn(net_rstn),
                 .sw_clk(net_sw_clk),

                 .w_qos_gp0(net_wr_qos_gp0),
                 .w_qos_gp1(net_wr_qos_gp1),
                 .w_qos_hp0(net_wr_qos_hp0),
                 .w_qos_hp1(net_wr_qos_hp1),
                 .w_qos_hp2(net_wr_qos_hp2),
                 .w_qos_hp3(net_wr_qos_hp3),
                                            
                 .r_qos_gp0(net_rd_qos_gp0),
                 .r_qos_gp1(net_rd_qos_gp1),
                 .r_qos_hp0(net_rd_qos_hp0),
                 .r_qos_hp1(net_rd_qos_hp1),
                 .r_qos_hp2(net_rd_qos_hp2),
                 .r_qos_hp3(net_rd_qos_hp3),

              /* GP Slave ports access */
                 .wr_ack_ddr_gp0(net_wr_ack_ddr_gp0),
                 .wr_ack_ocm_gp0(net_wr_ack_ocm_gp0),
                 .wr_data_gp0(net_wr_data_gp0),
                 .wr_addr_gp0(net_wr_addr_gp0),
                 .wr_bytes_gp0(net_wr_bytes_gp0),
                 .wr_dv_ddr_gp0(net_wr_dv_ddr_gp0),
                 .wr_dv_ocm_gp0(net_wr_dv_ocm_gp0),
                 .rd_req_ddr_gp0(net_rd_req_ddr_gp0),
                 .rd_req_ocm_gp0(net_rd_req_ocm_gp0),
                 .rd_req_reg_gp0(net_rd_req_reg_gp0),
                 .rd_addr_gp0(net_rd_addr_gp0),
                 .rd_bytes_gp0(net_rd_bytes_gp0),
                 .rd_data_ddr_gp0(net_rd_data_ddr_gp0),
                 .rd_data_ocm_gp0(net_rd_data_ocm_gp0),
                 .rd_data_reg_gp0(net_rd_data_reg_gp0),
                 .rd_dv_ddr_gp0(net_rd_dv_ddr_gp0),
                 .rd_dv_ocm_gp0(net_rd_dv_ocm_gp0),
                 .rd_dv_reg_gp0(net_rd_dv_reg_gp0),

                 .wr_ack_ddr_gp1(net_wr_ack_ddr_gp1),
                 .wr_ack_ocm_gp1(net_wr_ack_ocm_gp1),
                 .wr_data_gp1(net_wr_data_gp1), 
                 .wr_addr_gp1(net_wr_addr_gp1),
                 .wr_bytes_gp1(net_wr_bytes_gp1),
                 .wr_dv_ddr_gp1(net_wr_dv_ddr_gp1),
                 .wr_dv_ocm_gp1(net_wr_dv_ocm_gp1),
                 .rd_req_ddr_gp1(net_rd_req_ddr_gp1),
                 .rd_req_ocm_gp1(net_rd_req_ocm_gp1),
                 .rd_req_reg_gp1(net_rd_req_reg_gp1),
                 .rd_addr_gp1(net_rd_addr_gp1),
                 .rd_bytes_gp1(net_rd_bytes_gp1),
                 .rd_data_ddr_gp1(net_rd_data_ddr_gp1),
                 .rd_data_ocm_gp1(net_rd_data_ocm_gp1),
                 .rd_data_reg_gp1(net_rd_data_reg_gp1),
                 .rd_dv_ddr_gp1(net_rd_dv_ddr_gp1),
                 .rd_dv_ocm_gp1(net_rd_dv_ocm_gp1),
                 .rd_dv_reg_gp1(net_rd_dv_reg_gp1),

              /* HP Slave ports access */
                 .wr_ack_ddr_hp0(net_wr_ack_ddr_hp0),
                 .wr_ack_ocm_hp0(net_wr_ack_ocm_hp0),
                 .wr_data_hp0(net_wr_data_hp0),
                 .wr_addr_hp0(net_wr_addr_hp0),
                 .wr_bytes_hp0(net_wr_bytes_hp0),
                 .wr_dv_ddr_hp0(net_wr_dv_ddr_hp0),
                 .wr_dv_ocm_hp0(net_wr_dv_ocm_hp0),
                 .rd_req_ddr_hp0(net_rd_req_ddr_hp0),
                 .rd_req_ocm_hp0(net_rd_req_ocm_hp0),
                 .rd_addr_hp0(net_rd_addr_hp0),
                 .rd_bytes_hp0(net_rd_bytes_hp0),
                 .rd_data_ddr_hp0(net_rd_data_ddr_hp0),
                 .rd_data_ocm_hp0(net_rd_data_ocm_hp0),
                 .rd_dv_ddr_hp0(net_rd_dv_ddr_hp0),
                 .rd_dv_ocm_hp0(net_rd_dv_ocm_hp0),

                 .wr_ack_ddr_hp1(net_wr_ack_ddr_hp1),
                 .wr_ack_ocm_hp1(net_wr_ack_ocm_hp1),
                 .wr_data_hp1(net_wr_data_hp1),
                 .wr_addr_hp1(net_wr_addr_hp1),
                 .wr_bytes_hp1(net_wr_bytes_hp1),
                 .wr_dv_ddr_hp1(net_wr_dv_ddr_hp1),
                 .wr_dv_ocm_hp1(net_wr_dv_ocm_hp1),
                 .rd_req_ddr_hp1(net_rd_req_ddr_hp1),
                 .rd_req_ocm_hp1(net_rd_req_ocm_hp1),
                 .rd_addr_hp1(net_rd_addr_hp1),
                 .rd_bytes_hp1(net_rd_bytes_hp1),
                 .rd_data_ddr_hp1(net_rd_data_ddr_hp1),
                 .rd_data_ocm_hp1(net_rd_data_ocm_hp1),
                 .rd_dv_ocm_hp1(net_rd_dv_ocm_hp1),
                 .rd_dv_ddr_hp1(net_rd_dv_ddr_hp1),

                 .wr_ack_ddr_hp2(net_wr_ack_ddr_hp2),
                 .wr_ack_ocm_hp2(net_wr_ack_ocm_hp2),
                 .wr_data_hp2(net_wr_data_hp2),
                 .wr_addr_hp2(net_wr_addr_hp2),
                 .wr_bytes_hp2(net_wr_bytes_hp2),
                 .wr_dv_ocm_hp2(net_wr_dv_ocm_hp2),
                 .wr_dv_ddr_hp2(net_wr_dv_ddr_hp2),
                 .rd_req_ddr_hp2(net_rd_req_ddr_hp2),
                 .rd_req_ocm_hp2(net_rd_req_ocm_hp2),
                 .rd_addr_hp2(net_rd_addr_hp2),
                 .rd_bytes_hp2(net_rd_bytes_hp2),
                 .rd_data_ddr_hp2(net_rd_data_ddr_hp2),
                 .rd_data_ocm_hp2(net_rd_data_ocm_hp2),
                 .rd_dv_ddr_hp2(net_rd_dv_ddr_hp2),
                 .rd_dv_ocm_hp2(net_rd_dv_ocm_hp2),

                 .wr_ack_ocm_hp3(net_wr_ack_ocm_hp3),
                 .wr_ack_ddr_hp3(net_wr_ack_ddr_hp3),
                 .wr_data_hp3(net_wr_data_hp3),
                 .wr_addr_hp3(net_wr_addr_hp3),
                 .wr_bytes_hp3(net_wr_bytes_hp3),
                 .wr_dv_ddr_hp3(net_wr_dv_ddr_hp3),
                 .wr_dv_ocm_hp3(net_wr_dv_ocm_hp3),
                 .rd_req_ddr_hp3(net_rd_req_ddr_hp3),
                 .rd_req_ocm_hp3(net_rd_req_ocm_hp3),
                 .rd_addr_hp3(net_rd_addr_hp3),
                 .rd_bytes_hp3(net_rd_bytes_hp3),
                 .rd_data_ddr_hp3(net_rd_data_ddr_hp3),
                 .rd_data_ocm_hp3(net_rd_data_ocm_hp3),
                 .rd_dv_ddr_hp3(net_rd_dv_ddr_hp3),
                 .rd_dv_ocm_hp3(net_rd_dv_ocm_hp3),

                 /* Goes to port 1 of DDR */
                 .ddr_wr_ack_port1(ddr_wr_ack_port1),
                 .ddr_wr_dv_port1(ddr_wr_dv_port1),
                 .ddr_rd_req_port1(ddr_rd_req_port1),
                 .ddr_rd_dv_port1 (ddr_rd_dv_port1),
                 .ddr_wr_addr_port1(ddr_wr_addr_port1),
                 .ddr_wr_data_port1(ddr_wr_data_port1),
                 .ddr_wr_bytes_port1(ddr_wr_bytes_port1),
                 .ddr_rd_addr_port1(ddr_rd_addr_port1),
                 .ddr_rd_data_port1(ddr_rd_data_port1),
                 .ddr_rd_bytes_port1(ddr_rd_bytes_port1),
                 .ddr_wr_qos_port1(ddr_wr_qos_port1),
                 .ddr_rd_qos_port1(ddr_rd_qos_port1),
                 
                /* Goes to port2 of DDR */
                 .ddr_wr_ack_port2 (ddr_wr_ack_port2),
                 .ddr_wr_dv_port2  (ddr_wr_dv_port2),
                 .ddr_rd_req_port2 (ddr_rd_req_port2),
                 .ddr_rd_dv_port2  (ddr_rd_dv_port2),
                 .ddr_wr_addr_port2(ddr_wr_addr_port2),
                 .ddr_wr_data_port2(ddr_wr_data_port2),
                 .ddr_wr_bytes_port2(ddr_wr_bytes_port2),
                 .ddr_rd_addr_port2(ddr_rd_addr_port2),
                 .ddr_rd_data_port2(ddr_rd_data_port2),
                 .ddr_rd_bytes_port2(ddr_rd_bytes_port2),
                 .ddr_wr_qos_port2 (ddr_wr_qos_port2),
                 .ddr_rd_qos_port2 (ddr_rd_qos_port2),
                
                /* Goes to port3 of DDR */
                 .ddr_wr_ack_port3 (ddr_wr_ack_port3),
                 .ddr_wr_dv_port3  (ddr_wr_dv_port3),
                 .ddr_rd_req_port3 (ddr_rd_req_port3),
                 .ddr_rd_dv_port3  (ddr_rd_dv_port3),
                 .ddr_wr_addr_port3(ddr_wr_addr_port3),
                 .ddr_wr_data_port3(ddr_wr_data_port3),
                 .ddr_wr_bytes_port3(ddr_wr_bytes_port3),
                 .ddr_rd_addr_port3(ddr_rd_addr_port3),
                 .ddr_rd_data_port3(ddr_rd_data_port3),
                 .ddr_rd_bytes_port3(ddr_rd_bytes_port3),
                 .ddr_wr_qos_port3 (ddr_wr_qos_port3),
                 .ddr_rd_qos_port3 (ddr_rd_qos_port3),

                /* Goes to port 0 of OCM */
                 .ocm_wr_ack_port1 (ocm_wr_ack_port1),
                 .ocm_wr_dv_port1  (ocm_wr_dv_port1),
                 .ocm_rd_req_port1 (ocm_rd_req_port1),
                 .ocm_rd_dv_port1  (ocm_rd_dv_port1),
                 .ocm_wr_addr_port1(ocm_wr_addr_port1),
                 .ocm_wr_data_port1(ocm_wr_data_port1),
                 .ocm_wr_bytes_port1(ocm_wr_bytes_port1),
                 .ocm_rd_addr_port1(ocm_rd_addr_port1),
                 .ocm_rd_data_port1(ocm_rd_data_port1),
                 .ocm_rd_bytes_port1(ocm_rd_bytes_port1),
                 .ocm_wr_qos_port1(ocm_wr_qos_port1),
                 .ocm_rd_qos_port1(ocm_rd_qos_port1), 

                /* Goes to port 0 of REG */
                 .reg_rd_qos_port1 (reg_rd_qos_port1) ,
                 .reg_rd_req_port1 (reg_rd_req_port1),
                 .reg_rd_dv_port1  (reg_rd_dv_port1),
                 .reg_rd_addr_port1(reg_rd_addr_port1),
                 .reg_rd_data_port1(reg_rd_data_port1),
                 .reg_rd_bytes_port1(reg_rd_bytes_port1)
                 ); 

  processing_system7_vip_v1_0_3_ddrc ddrc (
           .rstn(net_rstn),
           .sw_clk(net_sw_clk),
          
          /* Goes to port 0 of DDR */
           .ddr_wr_ack_port0 (ddr_wr_ack_port0),
           .ddr_wr_dv_port0  (ddr_wr_dv_port0),
           .ddr_rd_req_port0 (ddr_rd_req_port0),
           .ddr_rd_dv_port0  (ddr_rd_dv_port0),

           .ddr_wr_addr_port0(net_wr_addr_acp),
           .ddr_wr_data_port0(net_wr_data_acp),
           .ddr_wr_bytes_port0(net_wr_bytes_acp),

           .ddr_rd_addr_port0(net_rd_addr_acp),
           .ddr_rd_bytes_port0(net_rd_bytes_acp),
           
           .ddr_rd_data_port0(ddr_rd_data_port0),

           .ddr_wr_qos_port0 (net_wr_qos_acp),
           .ddr_rd_qos_port0 (net_rd_qos_acp),
          
          
          /* Goes to port 1 of DDR */
           .ddr_wr_ack_port1 (ddr_wr_ack_port1),
           .ddr_wr_dv_port1  (ddr_wr_dv_port1),
           .ddr_rd_req_port1 (ddr_rd_req_port1),
           .ddr_rd_dv_port1  (ddr_rd_dv_port1),
           .ddr_wr_addr_port1(ddr_wr_addr_port1),
           .ddr_wr_data_port1(ddr_wr_data_port1),
           .ddr_wr_bytes_port1(ddr_wr_bytes_port1),
           .ddr_rd_addr_port1(ddr_rd_addr_port1),
           .ddr_rd_data_port1(ddr_rd_data_port1),
           .ddr_rd_bytes_port1(ddr_rd_bytes_port1),
           .ddr_wr_qos_port1 (ddr_wr_qos_port1),
           .ddr_rd_qos_port1 (ddr_rd_qos_port1),
          
          /* Goes to port2 of DDR */
           .ddr_wr_ack_port2 (ddr_wr_ack_port2),
           .ddr_wr_dv_port2  (ddr_wr_dv_port2),
           .ddr_rd_req_port2 (ddr_rd_req_port2),
           .ddr_rd_dv_port2  (ddr_rd_dv_port2),
           .ddr_wr_addr_port2(ddr_wr_addr_port2),
           .ddr_wr_data_port2(ddr_wr_data_port2),
           .ddr_wr_bytes_port2(ddr_wr_bytes_port2),
           .ddr_rd_addr_port2(ddr_rd_addr_port2),
           .ddr_rd_data_port2(ddr_rd_data_port2),
           .ddr_rd_bytes_port2(ddr_rd_bytes_port2),
           .ddr_wr_qos_port2 (ddr_wr_qos_port2),
           .ddr_rd_qos_port2 (ddr_rd_qos_port2),
          
          /* Goes to port3 of DDR */
           .ddr_wr_ack_port3 (ddr_wr_ack_port3),
           .ddr_wr_dv_port3  (ddr_wr_dv_port3),
           .ddr_rd_req_port3 (ddr_rd_req_port3),
           .ddr_rd_dv_port3  (ddr_rd_dv_port3),
           .ddr_wr_addr_port3(ddr_wr_addr_port3),
           .ddr_wr_data_port3(ddr_wr_data_port3),
           .ddr_wr_bytes_port3(ddr_wr_bytes_port3),
           .ddr_rd_addr_port3(ddr_rd_addr_port3),
           .ddr_rd_data_port3(ddr_rd_data_port3),
           .ddr_rd_bytes_port3(ddr_rd_bytes_port3),
           .ddr_wr_qos_port3 (ddr_wr_qos_port3),
           .ddr_rd_qos_port3 (ddr_rd_qos_port3)
          
            );

  processing_system7_vip_v1_0_3_ocmc ocmc (
           .rstn(net_rstn),
           .sw_clk(net_sw_clk),
    
    /* Goes to port 0 of OCM */
           .ocm_wr_ack_port0 (ocm_wr_ack_port0),
           .ocm_wr_dv_port0  (ocm_wr_dv_port0),
           .ocm_rd_req_port0 (ocm_rd_req_port0),
           .ocm_rd_dv_port0  (ocm_rd_dv_port0),

           .ocm_wr_addr_port0(net_wr_addr_acp),
           .ocm_wr_data_port0(net_wr_data_acp),
           .ocm_wr_bytes_port0(net_wr_bytes_acp),

           .ocm_rd_addr_port0(net_rd_addr_acp),
           .ocm_rd_bytes_port0(net_rd_bytes_acp),
           
           .ocm_rd_data_port0(ocm_rd_data_port0),

           .ocm_wr_qos_port0 (net_wr_qos_acp),
           .ocm_rd_qos_port0 (net_rd_qos_acp),
          
            /* Goes to port 1 of OCM */
           .ocm_wr_ack_port1 (ocm_wr_ack_port1),
           .ocm_wr_dv_port1  (ocm_wr_dv_port1),
           .ocm_rd_req_port1 (ocm_rd_req_port1),
           .ocm_rd_dv_port1  (ocm_rd_dv_port1),
           .ocm_wr_addr_port1(ocm_wr_addr_port1),
           .ocm_wr_data_port1(ocm_wr_data_port1),
           .ocm_wr_bytes_port1(ocm_wr_bytes_port1),
           .ocm_rd_addr_port1(ocm_rd_addr_port1),
           .ocm_rd_data_port1(ocm_rd_data_port1),
           .ocm_rd_bytes_port1(ocm_rd_bytes_port1),
           .ocm_wr_qos_port1(ocm_wr_qos_port1),
           .ocm_rd_qos_port1(ocm_rd_qos_port1) 
    
  );

  processing_system7_vip_v1_0_3_regc regc (
           .rstn(net_rstn),
           .sw_clk(net_sw_clk),
    
            /* Goes to port 0 of REG */
           .reg_rd_req_port0 (reg_rd_req_port0),
           .reg_rd_dv_port0  (reg_rd_dv_port0),
           .reg_rd_addr_port0(net_rd_addr_acp),
           .reg_rd_bytes_port0(net_rd_bytes_acp),
           .reg_rd_data_port0(reg_rd_data_port0),
           .reg_rd_qos_port0 (net_rd_qos_acp),
          
            /* Goes to port 1 of REG */
           .reg_rd_req_port1 (reg_rd_req_port1),
           .reg_rd_dv_port1  (reg_rd_dv_port1),
           .reg_rd_addr_port1(reg_rd_addr_port1),
           .reg_rd_data_port1(reg_rd_data_port1),
           .reg_rd_bytes_port1(reg_rd_bytes_port1),
           .reg_rd_qos_port1(reg_rd_qos_port1) 
    
  );
 
  /* include axi_gp port instantiations */
  `include "processing_system7_vip_v1_0_3_axi_gp.v"

  /* include axi_hp port instantiations */
  `include "processing_system7_vip_v1_0_3_axi_hp.v"

  /* include axi_acp port instantiations */
  `include "processing_system7_vip_v1_0_3_axi_acp.v"

endmodule


