// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_outStream_TDATA "./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_data.dat"
`define EGRESS_STATUS_outStream_TDATA "./stream_egress_status_outStream_V_data.dat"
`define TV_OUT_outStream_TKEEP "./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_keep_V.dat"
`define EGRESS_STATUS_outStream_TKEEP "./stream_egress_status_outStream_V_keep_V.dat"
`define TV_OUT_outStream_TSTRB "./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_strb_V.dat"
`define EGRESS_STATUS_outStream_TSTRB "./stream_egress_status_outStream_V_strb_V.dat"
`define TV_OUT_outStream_TUSER "./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_user_V.dat"
`define EGRESS_STATUS_outStream_TUSER "./stream_egress_status_outStream_V_user_V.dat"
`define TV_OUT_outStream_TLAST "./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_last_V.dat"
`define EGRESS_STATUS_outStream_TLAST "./stream_egress_status_outStream_V_last_V.dat"
`define TV_OUT_outStream_TID "./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_id_V.dat"
`define EGRESS_STATUS_outStream_TID "./stream_egress_status_outStream_V_id_V.dat"
`define TV_OUT_outStream_TDEST "./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_dest_V.dat"
`define EGRESS_STATUS_outStream_TDEST "./stream_egress_status_outStream_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_outStream (
    input clk,
    input reset,
    input [32 - 1:0] TRAN_outStream_TDATA,
    input [4 - 1:0] TRAN_outStream_TKEEP,
    input [4 - 1:0] TRAN_outStream_TSTRB,
    input [2 - 1:0] TRAN_outStream_TUSER,
    input TRAN_outStream_TLAST,
    input [5 - 1:0] TRAN_outStream_TID,
    input [6 - 1:0] TRAN_outStream_TDEST,
    input TRAN_outStream_TVALID,
    output TRAN_outStream_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_outStream_TVALID_temp;
    wire outStream_TDATA_full;
    wire outStream_TDATA_empty;
    reg outStream_TDATA_write_en;
    reg [32 - 1:0] outStream_TDATA_write_data;
    reg outStream_TDATA_read_en;
    wire [32 - 1:0] outStream_TDATA_read_data;
    
    fifo #(346112, 32) fifo_outStream_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(outStream_TDATA_write_en),
        .write_data(outStream_TDATA_write_data),
        .read_clock(clk),
        .read_en(outStream_TDATA_read_en),
        .read_data(outStream_TDATA_read_data),
        .full(outStream_TDATA_full),
        .empty(outStream_TDATA_empty));
    
    always @ (*) begin
        outStream_TDATA_write_en <= TRAN_outStream_TVALID;
        outStream_TDATA_write_data <= TRAN_outStream_TDATA;
        outStream_TDATA_read_en <= 0;
    end
    wire outStream_TKEEP_full;
    wire outStream_TKEEP_empty;
    reg outStream_TKEEP_write_en;
    reg [4 - 1:0] outStream_TKEEP_write_data;
    reg outStream_TKEEP_read_en;
    wire [4 - 1:0] outStream_TKEEP_read_data;
    
    fifo #(346112, 4) fifo_outStream_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(outStream_TKEEP_write_en),
        .write_data(outStream_TKEEP_write_data),
        .read_clock(clk),
        .read_en(outStream_TKEEP_read_en),
        .read_data(outStream_TKEEP_read_data),
        .full(outStream_TKEEP_full),
        .empty(outStream_TKEEP_empty));
    
    always @ (*) begin
        outStream_TKEEP_write_en <= TRAN_outStream_TVALID;
        outStream_TKEEP_write_data <= TRAN_outStream_TKEEP;
        outStream_TKEEP_read_en <= 0;
    end
    wire outStream_TSTRB_full;
    wire outStream_TSTRB_empty;
    reg outStream_TSTRB_write_en;
    reg [4 - 1:0] outStream_TSTRB_write_data;
    reg outStream_TSTRB_read_en;
    wire [4 - 1:0] outStream_TSTRB_read_data;
    
    fifo #(346112, 4) fifo_outStream_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(outStream_TSTRB_write_en),
        .write_data(outStream_TSTRB_write_data),
        .read_clock(clk),
        .read_en(outStream_TSTRB_read_en),
        .read_data(outStream_TSTRB_read_data),
        .full(outStream_TSTRB_full),
        .empty(outStream_TSTRB_empty));
    
    always @ (*) begin
        outStream_TSTRB_write_en <= TRAN_outStream_TVALID;
        outStream_TSTRB_write_data <= TRAN_outStream_TSTRB;
        outStream_TSTRB_read_en <= 0;
    end
    wire outStream_TUSER_full;
    wire outStream_TUSER_empty;
    reg outStream_TUSER_write_en;
    reg [2 - 1:0] outStream_TUSER_write_data;
    reg outStream_TUSER_read_en;
    wire [2 - 1:0] outStream_TUSER_read_data;
    
    fifo #(346112, 2) fifo_outStream_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(outStream_TUSER_write_en),
        .write_data(outStream_TUSER_write_data),
        .read_clock(clk),
        .read_en(outStream_TUSER_read_en),
        .read_data(outStream_TUSER_read_data),
        .full(outStream_TUSER_full),
        .empty(outStream_TUSER_empty));
    
    always @ (*) begin
        outStream_TUSER_write_en <= TRAN_outStream_TVALID;
        outStream_TUSER_write_data <= TRAN_outStream_TUSER;
        outStream_TUSER_read_en <= 0;
    end
    wire outStream_TLAST_full;
    wire outStream_TLAST_empty;
    reg outStream_TLAST_write_en;
    reg [1 - 1:0] outStream_TLAST_write_data;
    reg outStream_TLAST_read_en;
    wire [1 - 1:0] outStream_TLAST_read_data;
    
    fifo #(346112, 1) fifo_outStream_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(outStream_TLAST_write_en),
        .write_data(outStream_TLAST_write_data),
        .read_clock(clk),
        .read_en(outStream_TLAST_read_en),
        .read_data(outStream_TLAST_read_data),
        .full(outStream_TLAST_full),
        .empty(outStream_TLAST_empty));
    
    always @ (*) begin
        outStream_TLAST_write_en <= TRAN_outStream_TVALID;
        outStream_TLAST_write_data <= TRAN_outStream_TLAST;
        outStream_TLAST_read_en <= 0;
    end
    wire outStream_TID_full;
    wire outStream_TID_empty;
    reg outStream_TID_write_en;
    reg [5 - 1:0] outStream_TID_write_data;
    reg outStream_TID_read_en;
    wire [5 - 1:0] outStream_TID_read_data;
    
    fifo #(346112, 5) fifo_outStream_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(outStream_TID_write_en),
        .write_data(outStream_TID_write_data),
        .read_clock(clk),
        .read_en(outStream_TID_read_en),
        .read_data(outStream_TID_read_data),
        .full(outStream_TID_full),
        .empty(outStream_TID_empty));
    
    always @ (*) begin
        outStream_TID_write_en <= TRAN_outStream_TVALID;
        outStream_TID_write_data <= TRAN_outStream_TID;
        outStream_TID_read_en <= 0;
    end
    wire outStream_TDEST_full;
    wire outStream_TDEST_empty;
    reg outStream_TDEST_write_en;
    reg [6 - 1:0] outStream_TDEST_write_data;
    reg outStream_TDEST_read_en;
    wire [6 - 1:0] outStream_TDEST_read_data;
    
    fifo #(346112, 6) fifo_outStream_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(outStream_TDEST_write_en),
        .write_data(outStream_TDEST_write_data),
        .read_clock(clk),
        .read_en(outStream_TDEST_read_en),
        .read_data(outStream_TDEST_read_data),
        .full(outStream_TDEST_full),
        .empty(outStream_TDEST_empty));
    
    always @ (*) begin
        outStream_TDEST_write_en <= TRAN_outStream_TVALID;
        outStream_TDEST_write_data <= TRAN_outStream_TDEST;
        outStream_TDEST_read_en <= 0;
    end
    assign TRAN_outStream_TVALID = TRAN_outStream_TVALID_temp;

    
    assign TRAN_outStream_TREADY = ~(outStream_TDATA_full || outStream_TKEEP_full || outStream_TSTRB_full || outStream_TUSER_full || outStream_TLAST_full || outStream_TID_full || outStream_TDEST_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [199:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [199:0] rm_0x(input [199:0] token);
        reg [199:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_outStream_TDATA;
    
    assign transaction = transaction_save_outStream_TDATA;
    
    initial begin : AXI_stream_receiver_outStream_TDATA
        integer fp;
        reg [32 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_outStream_TDATA = 0;
        fifo_outStream_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_outStream_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_outStream_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_outStream_TDATA);
                while (~fifo_outStream_TDATA.empty) begin
                    fifo_outStream_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_outStream_TDATA = transaction_save_outStream_TDATA + 1;
                fifo_outStream_TDATA.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_outStream_TKEEP;
    
    initial begin : AXI_stream_receiver_outStream_TKEEP
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_outStream_TKEEP = 0;
        fifo_outStream_TKEEP.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_outStream_TKEEP, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_outStream_TKEEP);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_outStream_TKEEP);
                while (~fifo_outStream_TKEEP.empty) begin
                    fifo_outStream_TKEEP.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_outStream_TKEEP = transaction_save_outStream_TKEEP + 1;
                fifo_outStream_TKEEP.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_outStream_TSTRB;
    
    initial begin : AXI_stream_receiver_outStream_TSTRB
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_outStream_TSTRB = 0;
        fifo_outStream_TSTRB.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_outStream_TSTRB, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_outStream_TSTRB);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_outStream_TSTRB);
                while (~fifo_outStream_TSTRB.empty) begin
                    fifo_outStream_TSTRB.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_outStream_TSTRB = transaction_save_outStream_TSTRB + 1;
                fifo_outStream_TSTRB.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_outStream_TUSER;
    
    initial begin : AXI_stream_receiver_outStream_TUSER
        integer fp;
        reg [2 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_outStream_TUSER = 0;
        fifo_outStream_TUSER.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_outStream_TUSER, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_outStream_TUSER);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_outStream_TUSER);
                while (~fifo_outStream_TUSER.empty) begin
                    fifo_outStream_TUSER.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_outStream_TUSER = transaction_save_outStream_TUSER + 1;
                fifo_outStream_TUSER.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_outStream_TLAST;
    
    initial begin : AXI_stream_receiver_outStream_TLAST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_outStream_TLAST = 0;
        fifo_outStream_TLAST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_outStream_TLAST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_outStream_TLAST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_outStream_TLAST);
                while (~fifo_outStream_TLAST.empty) begin
                    fifo_outStream_TLAST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_outStream_TLAST = transaction_save_outStream_TLAST + 1;
                fifo_outStream_TLAST.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_outStream_TID;
    
    initial begin : AXI_stream_receiver_outStream_TID
        integer fp;
        reg [5 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_outStream_TID = 0;
        fifo_outStream_TID.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_outStream_TID, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_outStream_TID);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_outStream_TID);
                while (~fifo_outStream_TID.empty) begin
                    fifo_outStream_TID.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_outStream_TID = transaction_save_outStream_TID + 1;
                fifo_outStream_TID.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_outStream_TDEST;
    
    initial begin : AXI_stream_receiver_outStream_TDEST
        integer fp;
        reg [6 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_outStream_TDEST = 0;
        fifo_outStream_TDEST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_outStream_TDEST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_outStream_TDEST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_outStream_TDEST);
                while (~fifo_outStream_TDEST.empty) begin
                    fifo_outStream_TDEST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_outStream_TDEST = transaction_save_outStream_TDEST + 1;
                fifo_outStream_TDEST.clear();
                $fclose(fp);
            end
        end
    end

endmodule
