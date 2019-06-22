// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_inStream_TDATA "../tv/cdatafile/c.yolo_max_pool_top.autotvin_inStream_V_data.dat"
`define INGRESS_STATUS_inStream_TDATA "../tv/stream_size/stream_ingress_status_inStream_V_data.dat"
`define TV_IN_inStream_TKEEP "../tv/cdatafile/c.yolo_max_pool_top.autotvin_inStream_V_keep_V.dat"
`define INGRESS_STATUS_inStream_TKEEP "../tv/stream_size/stream_ingress_status_inStream_V_keep_V.dat"
`define TV_IN_inStream_TSTRB "../tv/cdatafile/c.yolo_max_pool_top.autotvin_inStream_V_strb_V.dat"
`define INGRESS_STATUS_inStream_TSTRB "../tv/stream_size/stream_ingress_status_inStream_V_strb_V.dat"
`define TV_IN_inStream_TUSER "../tv/cdatafile/c.yolo_max_pool_top.autotvin_inStream_V_user_V.dat"
`define INGRESS_STATUS_inStream_TUSER "../tv/stream_size/stream_ingress_status_inStream_V_user_V.dat"
`define TV_IN_inStream_TLAST "../tv/cdatafile/c.yolo_max_pool_top.autotvin_inStream_V_last_V.dat"
`define INGRESS_STATUS_inStream_TLAST "../tv/stream_size/stream_ingress_status_inStream_V_last_V.dat"
`define TV_IN_inStream_TID "../tv/cdatafile/c.yolo_max_pool_top.autotvin_inStream_V_id_V.dat"
`define INGRESS_STATUS_inStream_TID "../tv/stream_size/stream_ingress_status_inStream_V_id_V.dat"
`define TV_IN_inStream_TDEST "../tv/cdatafile/c.yolo_max_pool_top.autotvin_inStream_V_dest_V.dat"
`define INGRESS_STATUS_inStream_TDEST "../tv/stream_size/stream_ingress_status_inStream_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_inStream (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_inStream_TDATA,
    output [4 - 1:0] TRAN_inStream_TKEEP,
    output [4 - 1:0] TRAN_inStream_TSTRB,
    output [2 - 1:0] TRAN_inStream_TUSER,
    output TRAN_inStream_TLAST,
    output [5 - 1:0] TRAN_inStream_TID,
    output [6 - 1:0] TRAN_inStream_TDEST,
    output TRAN_inStream_TVALID,
    input TRAN_inStream_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_inStream_TVALID_temp;
    wire inStream_TDATA_full;
    wire inStream_TDATA_empty;
    reg inStream_TDATA_write_en;
    reg [32 - 1:0] inStream_TDATA_write_data;
    reg inStream_TDATA_read_en;
    wire [32 - 1:0] inStream_TDATA_read_data;
    
    fifo #(2768896, 32) fifo_inStream_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(inStream_TDATA_write_en),
        .write_data(inStream_TDATA_write_data),
        .read_clock(clk),
        .read_en(inStream_TDATA_read_en),
        .read_data(inStream_TDATA_read_data),
        .full(inStream_TDATA_full),
        .empty(inStream_TDATA_empty));
    
    always @ (*) begin
        inStream_TDATA_write_en <= 0;
        inStream_TDATA_read_en <= TRAN_inStream_TREADY & TRAN_inStream_TVALID;
    end
    
    assign TRAN_inStream_TDATA = inStream_TDATA_read_data;
    wire inStream_TKEEP_full;
    wire inStream_TKEEP_empty;
    reg inStream_TKEEP_write_en;
    reg [4 - 1:0] inStream_TKEEP_write_data;
    reg inStream_TKEEP_read_en;
    wire [4 - 1:0] inStream_TKEEP_read_data;
    
    fifo #(2768896, 4) fifo_inStream_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(inStream_TKEEP_write_en),
        .write_data(inStream_TKEEP_write_data),
        .read_clock(clk),
        .read_en(inStream_TKEEP_read_en),
        .read_data(inStream_TKEEP_read_data),
        .full(inStream_TKEEP_full),
        .empty(inStream_TKEEP_empty));
    
    always @ (*) begin
        inStream_TKEEP_write_en <= 0;
        inStream_TKEEP_read_en <= TRAN_inStream_TREADY & TRAN_inStream_TVALID;
    end
    
    assign TRAN_inStream_TKEEP = inStream_TKEEP_read_data;
    wire inStream_TSTRB_full;
    wire inStream_TSTRB_empty;
    reg inStream_TSTRB_write_en;
    reg [4 - 1:0] inStream_TSTRB_write_data;
    reg inStream_TSTRB_read_en;
    wire [4 - 1:0] inStream_TSTRB_read_data;
    
    fifo #(2768896, 4) fifo_inStream_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(inStream_TSTRB_write_en),
        .write_data(inStream_TSTRB_write_data),
        .read_clock(clk),
        .read_en(inStream_TSTRB_read_en),
        .read_data(inStream_TSTRB_read_data),
        .full(inStream_TSTRB_full),
        .empty(inStream_TSTRB_empty));
    
    always @ (*) begin
        inStream_TSTRB_write_en <= 0;
        inStream_TSTRB_read_en <= TRAN_inStream_TREADY & TRAN_inStream_TVALID;
    end
    
    assign TRAN_inStream_TSTRB = inStream_TSTRB_read_data;
    wire inStream_TUSER_full;
    wire inStream_TUSER_empty;
    reg inStream_TUSER_write_en;
    reg [2 - 1:0] inStream_TUSER_write_data;
    reg inStream_TUSER_read_en;
    wire [2 - 1:0] inStream_TUSER_read_data;
    
    fifo #(2768896, 2) fifo_inStream_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(inStream_TUSER_write_en),
        .write_data(inStream_TUSER_write_data),
        .read_clock(clk),
        .read_en(inStream_TUSER_read_en),
        .read_data(inStream_TUSER_read_data),
        .full(inStream_TUSER_full),
        .empty(inStream_TUSER_empty));
    
    always @ (*) begin
        inStream_TUSER_write_en <= 0;
        inStream_TUSER_read_en <= TRAN_inStream_TREADY & TRAN_inStream_TVALID;
    end
    
    assign TRAN_inStream_TUSER = inStream_TUSER_read_data;
    wire inStream_TLAST_full;
    wire inStream_TLAST_empty;
    reg inStream_TLAST_write_en;
    reg [1 - 1:0] inStream_TLAST_write_data;
    reg inStream_TLAST_read_en;
    wire [1 - 1:0] inStream_TLAST_read_data;
    
    fifo #(2768896, 1) fifo_inStream_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(inStream_TLAST_write_en),
        .write_data(inStream_TLAST_write_data),
        .read_clock(clk),
        .read_en(inStream_TLAST_read_en),
        .read_data(inStream_TLAST_read_data),
        .full(inStream_TLAST_full),
        .empty(inStream_TLAST_empty));
    
    always @ (*) begin
        inStream_TLAST_write_en <= 0;
        inStream_TLAST_read_en <= TRAN_inStream_TREADY & TRAN_inStream_TVALID;
    end
    
    assign TRAN_inStream_TLAST = inStream_TLAST_read_data;
    wire inStream_TID_full;
    wire inStream_TID_empty;
    reg inStream_TID_write_en;
    reg [5 - 1:0] inStream_TID_write_data;
    reg inStream_TID_read_en;
    wire [5 - 1:0] inStream_TID_read_data;
    
    fifo #(2768896, 5) fifo_inStream_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(inStream_TID_write_en),
        .write_data(inStream_TID_write_data),
        .read_clock(clk),
        .read_en(inStream_TID_read_en),
        .read_data(inStream_TID_read_data),
        .full(inStream_TID_full),
        .empty(inStream_TID_empty));
    
    always @ (*) begin
        inStream_TID_write_en <= 0;
        inStream_TID_read_en <= TRAN_inStream_TREADY & TRAN_inStream_TVALID;
    end
    
    assign TRAN_inStream_TID = inStream_TID_read_data;
    wire inStream_TDEST_full;
    wire inStream_TDEST_empty;
    reg inStream_TDEST_write_en;
    reg [6 - 1:0] inStream_TDEST_write_data;
    reg inStream_TDEST_read_en;
    wire [6 - 1:0] inStream_TDEST_read_data;
    
    fifo #(2768896, 6) fifo_inStream_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(inStream_TDEST_write_en),
        .write_data(inStream_TDEST_write_data),
        .read_clock(clk),
        .read_en(inStream_TDEST_read_en),
        .read_data(inStream_TDEST_read_data),
        .full(inStream_TDEST_full),
        .empty(inStream_TDEST_empty));
    
    always @ (*) begin
        inStream_TDEST_write_en <= 0;
        inStream_TDEST_read_en <= TRAN_inStream_TREADY & TRAN_inStream_TVALID;
    end
    
    assign TRAN_inStream_TDEST = inStream_TDEST_read_data;
    assign TRAN_inStream_TVALID = TRAN_inStream_TVALID_temp;

    
    reg inStream_TDATA_valid = 0; // ingress buffer indicator: inStream_TDATA
    reg inStream_TKEEP_valid = 0; // ingress buffer indicator: inStream_TKEEP
    reg inStream_TSTRB_valid = 0; // ingress buffer indicator: inStream_TSTRB
    reg inStream_TUSER_valid = 0; // ingress buffer indicator: inStream_TUSER
    reg inStream_TLAST_valid = 0; // ingress buffer indicator: inStream_TLAST
    reg inStream_TID_valid = 0; // ingress buffer indicator: inStream_TID
    reg inStream_TDEST_valid = 0; // ingress buffer indicator: inStream_TDEST
    
    assign TRAN_inStream_TVALID_temp = ~(inStream_TDATA_empty || inStream_TKEEP_empty || inStream_TSTRB_empty || inStream_TUSER_empty || inStream_TLAST_empty || inStream_TID_empty || inStream_TDEST_empty) || (inStream_TDATA_valid && inStream_TKEEP_valid && inStream_TSTRB_valid && inStream_TUSER_valid && inStream_TLAST_valid && inStream_TID_valid && inStream_TDEST_valid);
    
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
    
    reg [31:0] transaction_load_inStream_TDATA;
    
    assign transaction = transaction_load_inStream_TDATA;
    
    initial begin : AXI_stream_driver_inStream_TDATA
        integer fp;
        reg [199:0] token;
        reg [32 - 1:0] data;
        reg [199:0] data_integer;
        integer fp_ingress_status;
        reg [199:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_inStream_TDATA = 0;
        fifo_inStream_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_inStream_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_inStream_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_inStream_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_inStream_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_inStream_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_inStream_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_inStream_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    inStream_TDATA_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_inStream_TDATA.snapshot();
                end else begin
                    fifo_inStream_TDATA.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_inStream_TDATA = transaction_load_inStream_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_inStream_TKEEP;
    
    initial begin : AXI_stream_driver_inStream_TKEEP
        integer fp;
        reg [199:0] token;
        reg [4 - 1:0] data;
        reg [199:0] data_integer;
        integer fp_ingress_status;
        reg [199:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_inStream_TKEEP = 0;
        fifo_inStream_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_inStream_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_inStream_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_inStream_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_inStream_TKEEP);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_inStream_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_inStream_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_inStream_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    inStream_TKEEP_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_inStream_TKEEP.snapshot();
                end else begin
                    fifo_inStream_TKEEP.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_inStream_TKEEP = transaction_load_inStream_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_inStream_TSTRB;
    
    initial begin : AXI_stream_driver_inStream_TSTRB
        integer fp;
        reg [199:0] token;
        reg [4 - 1:0] data;
        reg [199:0] data_integer;
        integer fp_ingress_status;
        reg [199:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_inStream_TSTRB = 0;
        fifo_inStream_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_inStream_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_inStream_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_inStream_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_inStream_TSTRB);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_inStream_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_inStream_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_inStream_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    inStream_TSTRB_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_inStream_TSTRB.snapshot();
                end else begin
                    fifo_inStream_TSTRB.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_inStream_TSTRB = transaction_load_inStream_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_inStream_TUSER;
    
    initial begin : AXI_stream_driver_inStream_TUSER
        integer fp;
        reg [199:0] token;
        reg [2 - 1:0] data;
        reg [199:0] data_integer;
        integer fp_ingress_status;
        reg [199:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_inStream_TUSER = 0;
        fifo_inStream_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_inStream_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_inStream_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_inStream_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_inStream_TUSER);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_inStream_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_inStream_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_inStream_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    inStream_TUSER_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_inStream_TUSER.snapshot();
                end else begin
                    fifo_inStream_TUSER.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_inStream_TUSER = transaction_load_inStream_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_inStream_TLAST;
    
    initial begin : AXI_stream_driver_inStream_TLAST
        integer fp;
        reg [199:0] token;
        reg [1 - 1:0] data;
        reg [199:0] data_integer;
        integer fp_ingress_status;
        reg [199:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_inStream_TLAST = 0;
        fifo_inStream_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_inStream_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_inStream_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_inStream_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_inStream_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_inStream_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_inStream_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_inStream_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    inStream_TLAST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_inStream_TLAST.snapshot();
                end else begin
                    fifo_inStream_TLAST.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_inStream_TLAST = transaction_load_inStream_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_inStream_TID;
    
    initial begin : AXI_stream_driver_inStream_TID
        integer fp;
        reg [199:0] token;
        reg [5 - 1:0] data;
        reg [199:0] data_integer;
        integer fp_ingress_status;
        reg [199:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_inStream_TID = 0;
        fifo_inStream_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_inStream_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_inStream_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_inStream_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_inStream_TID);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_inStream_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_inStream_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_inStream_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    inStream_TID_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_inStream_TID.snapshot();
                end else begin
                    fifo_inStream_TID.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_inStream_TID = transaction_load_inStream_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_inStream_TDEST;
    
    initial begin : AXI_stream_driver_inStream_TDEST
        integer fp;
        reg [199:0] token;
        reg [6 - 1:0] data;
        reg [199:0] data_integer;
        integer fp_ingress_status;
        reg [199:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_inStream_TDEST = 0;
        fifo_inStream_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_inStream_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_inStream_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_inStream_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_inStream_TDEST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_inStream_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_inStream_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_inStream_TDEST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    inStream_TDEST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_inStream_TDEST.snapshot();
                end else begin
                    fifo_inStream_TDEST.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_inStream_TDEST = transaction_load_inStream_TDEST + 1;
            end
        end
    end

endmodule
