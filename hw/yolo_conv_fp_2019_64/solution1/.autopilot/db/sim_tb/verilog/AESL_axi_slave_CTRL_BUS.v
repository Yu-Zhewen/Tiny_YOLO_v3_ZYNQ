// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_CTRL_BUS (
    clk,
    reset,
    TRAN_s_axi_CTRL_BUS_AWADDR,
    TRAN_s_axi_CTRL_BUS_AWVALID,
    TRAN_s_axi_CTRL_BUS_AWREADY,
    TRAN_s_axi_CTRL_BUS_WVALID,
    TRAN_s_axi_CTRL_BUS_WREADY,
    TRAN_s_axi_CTRL_BUS_WDATA,
    TRAN_s_axi_CTRL_BUS_WSTRB,
    TRAN_s_axi_CTRL_BUS_ARADDR,
    TRAN_s_axi_CTRL_BUS_ARVALID,
    TRAN_s_axi_CTRL_BUS_ARREADY,
    TRAN_s_axi_CTRL_BUS_RVALID,
    TRAN_s_axi_CTRL_BUS_RREADY,
    TRAN_s_axi_CTRL_BUS_RDATA,
    TRAN_s_axi_CTRL_BUS_RRESP,
    TRAN_s_axi_CTRL_BUS_BVALID,
    TRAN_s_axi_CTRL_BUS_BREADY,
    TRAN_s_axi_CTRL_BUS_BRESP,
    TRAN_CTRL_BUS_write_data_finish,
    TRAN_CTRL_BUS_start_in,
    TRAN_CTRL_BUS_idle_out,
    TRAN_CTRL_BUS_ready_out,
    TRAN_CTRL_BUS_ready_in,
    TRAN_CTRL_BUS_done_out,
    TRAN_CTRL_BUS_write_start_in   ,
    TRAN_CTRL_BUS_write_start_finish,
    TRAN_CTRL_BUS_interrupt,
    TRAN_CTRL_BUS_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_output_ch_V "./c.yolo_conv_top.autotvin_output_ch_V.dat"
`define TV_IN_input_ch_V "./c.yolo_conv_top.autotvin_input_ch_V.dat"
`define TV_IN_fold_output_ch_V "./c.yolo_conv_top.autotvin_fold_output_ch_V.dat"
`define TV_IN_fold_input_ch_V "./c.yolo_conv_top.autotvin_fold_input_ch_V.dat"
`define TV_IN_input_h_V "./c.yolo_conv_top.autotvin_input_h_V.dat"
`define TV_IN_input_w_V "./c.yolo_conv_top.autotvin_input_w_V.dat"
`define TV_IN_real_input_h_V "./c.yolo_conv_top.autotvin_real_input_h_V.dat"
`define TV_IN_leaky_V "./c.yolo_conv_top.autotvin_leaky_V.dat"
`define TV_IN_fold_win_area_V "./c.yolo_conv_top.autotvin_fold_win_area_V.dat"
parameter ADDR_WIDTH = 7;
parameter DATA_WIDTH = 32;
parameter output_ch_V_DEPTH = 1;
reg [31 : 0] output_ch_V_OPERATE_DEPTH = 0;
parameter output_ch_V_c_bitwidth = 6;
parameter input_ch_V_DEPTH = 1;
reg [31 : 0] input_ch_V_OPERATE_DEPTH = 0;
parameter input_ch_V_c_bitwidth = 6;
parameter fold_output_ch_V_DEPTH = 1;
reg [31 : 0] fold_output_ch_V_OPERATE_DEPTH = 0;
parameter fold_output_ch_V_c_bitwidth = 4;
parameter fold_input_ch_V_DEPTH = 1;
reg [31 : 0] fold_input_ch_V_OPERATE_DEPTH = 0;
parameter fold_input_ch_V_c_bitwidth = 4;
parameter input_h_V_DEPTH = 1;
reg [31 : 0] input_h_V_OPERATE_DEPTH = 0;
parameter input_h_V_c_bitwidth = 9;
parameter input_w_V_DEPTH = 1;
reg [31 : 0] input_w_V_OPERATE_DEPTH = 0;
parameter input_w_V_c_bitwidth = 9;
parameter real_input_h_V_DEPTH = 1;
reg [31 : 0] real_input_h_V_OPERATE_DEPTH = 0;
parameter real_input_h_V_c_bitwidth = 9;
parameter leaky_V_DEPTH = 1;
reg [31 : 0] leaky_V_OPERATE_DEPTH = 0;
parameter leaky_V_c_bitwidth = 1;
parameter fold_win_area_V_DEPTH = 1;
reg [31 : 0] fold_win_area_V_OPERATE_DEPTH = 0;
parameter fold_win_area_V_c_bitwidth = 3;
parameter START_ADDR = 0;
parameter yolo_conv_top_continue_addr = 0;
parameter yolo_conv_top_auto_start_addr = 0;
parameter output_ch_V_data_in_addr = 16;
parameter input_ch_V_data_in_addr = 24;
parameter fold_output_ch_V_data_in_addr = 32;
parameter fold_input_ch_V_data_in_addr = 40;
parameter input_h_V_data_in_addr = 48;
parameter input_w_V_data_in_addr = 56;
parameter real_input_h_V_data_in_addr = 64;
parameter leaky_V_data_in_addr = 72;
parameter fold_win_area_V_data_in_addr = 80;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_CTRL_BUS_AWADDR;
output  TRAN_s_axi_CTRL_BUS_AWVALID;
input  TRAN_s_axi_CTRL_BUS_AWREADY;
output  TRAN_s_axi_CTRL_BUS_WVALID;
input  TRAN_s_axi_CTRL_BUS_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_CTRL_BUS_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_CTRL_BUS_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_CTRL_BUS_ARADDR;
output  TRAN_s_axi_CTRL_BUS_ARVALID;
input  TRAN_s_axi_CTRL_BUS_ARREADY;
input  TRAN_s_axi_CTRL_BUS_RVALID;
output  TRAN_s_axi_CTRL_BUS_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_CTRL_BUS_RDATA;
input [2 - 1 : 0] TRAN_s_axi_CTRL_BUS_RRESP;
input  TRAN_s_axi_CTRL_BUS_BVALID;
output  TRAN_s_axi_CTRL_BUS_BREADY;
input [2 - 1 : 0] TRAN_s_axi_CTRL_BUS_BRESP;
output TRAN_CTRL_BUS_write_data_finish;
input     clk;
input     reset;
input     TRAN_CTRL_BUS_start_in;
output    TRAN_CTRL_BUS_done_out;
output    TRAN_CTRL_BUS_ready_out;
input     TRAN_CTRL_BUS_ready_in;
output    TRAN_CTRL_BUS_idle_out;
input  TRAN_CTRL_BUS_write_start_in   ;
output TRAN_CTRL_BUS_write_start_finish;
input     TRAN_CTRL_BUS_interrupt;
input     TRAN_CTRL_BUS_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_output_ch_V [output_ch_V_DEPTH - 1 : 0];
reg output_ch_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_input_ch_V [input_ch_V_DEPTH - 1 : 0];
reg input_ch_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_fold_output_ch_V [fold_output_ch_V_DEPTH - 1 : 0];
reg fold_output_ch_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_fold_input_ch_V [fold_input_ch_V_DEPTH - 1 : 0];
reg fold_input_ch_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_input_h_V [input_h_V_DEPTH - 1 : 0];
reg input_h_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_input_w_V [input_w_V_DEPTH - 1 : 0];
reg input_w_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_real_input_h_V [real_input_h_V_DEPTH - 1 : 0];
reg real_input_h_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_leaky_V [leaky_V_DEPTH - 1 : 0];
reg leaky_V_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_fold_win_area_V [fold_win_area_V_DEPTH - 1 : 0];
reg fold_win_area_V_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
reg process_8_finish = 0;
reg process_9_finish = 0;
reg process_10_finish = 0;
//write output_ch_V reg
reg [31 : 0] write_output_ch_V_count = 0;
reg write_output_ch_V_run_flag = 0;
reg write_one_output_ch_V_data_done = 0;
//write input_ch_V reg
reg [31 : 0] write_input_ch_V_count = 0;
reg write_input_ch_V_run_flag = 0;
reg write_one_input_ch_V_data_done = 0;
//write fold_output_ch_V reg
reg [31 : 0] write_fold_output_ch_V_count = 0;
reg write_fold_output_ch_V_run_flag = 0;
reg write_one_fold_output_ch_V_data_done = 0;
//write fold_input_ch_V reg
reg [31 : 0] write_fold_input_ch_V_count = 0;
reg write_fold_input_ch_V_run_flag = 0;
reg write_one_fold_input_ch_V_data_done = 0;
//write input_h_V reg
reg [31 : 0] write_input_h_V_count = 0;
reg write_input_h_V_run_flag = 0;
reg write_one_input_h_V_data_done = 0;
//write input_w_V reg
reg [31 : 0] write_input_w_V_count = 0;
reg write_input_w_V_run_flag = 0;
reg write_one_input_w_V_data_done = 0;
//write real_input_h_V reg
reg [31 : 0] write_real_input_h_V_count = 0;
reg write_real_input_h_V_run_flag = 0;
reg write_one_real_input_h_V_data_done = 0;
//write leaky_V reg
reg [31 : 0] write_leaky_V_count = 0;
reg write_leaky_V_run_flag = 0;
reg write_one_leaky_V_data_done = 0;
//write fold_win_area_V reg
reg [31 : 0] write_fold_win_area_V_count = 0;
reg write_fold_win_area_V_run_flag = 0;
reg write_one_fold_win_area_V_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_CTRL_BUS_AWADDR = AWADDR_reg;
assign TRAN_s_axi_CTRL_BUS_AWVALID = AWVALID_reg;
assign TRAN_s_axi_CTRL_BUS_WVALID = WVALID_reg;
assign TRAN_s_axi_CTRL_BUS_WDATA = WDATA_reg;
assign TRAN_s_axi_CTRL_BUS_WSTRB = WSTRB_reg;
assign TRAN_s_axi_CTRL_BUS_ARADDR = ARADDR_reg;
assign TRAN_s_axi_CTRL_BUS_ARVALID = ARVALID_reg;
assign TRAN_s_axi_CTRL_BUS_RREADY = RREADY_reg;
assign TRAN_s_axi_CTRL_BUS_BREADY = BREADY_reg;
assign TRAN_CTRL_BUS_write_start_finish = AESL_write_start_finish;
assign TRAN_CTRL_BUS_done_out = AESL_done_index_reg;
assign TRAN_CTRL_BUS_ready_out = AESL_ready_out_index_reg;
assign TRAN_CTRL_BUS_idle_out = AESL_idle_index_reg;
assign TRAN_CTRL_BUS_write_data_finish = 1 & output_ch_V_write_data_finish & input_ch_V_write_data_finish & fold_output_ch_V_write_data_finish & fold_input_ch_V_write_data_finish & input_h_V_write_data_finish & input_w_V_write_data_finish & real_input_h_V_write_data_finish & leaky_V_write_data_finish & fold_win_area_V_write_data_finish;
always @(TRAN_CTRL_BUS_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_CTRL_BUS_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish or process_8_finish or process_9_finish or process_10_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 8 && process_8_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 9 && process_9_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 10 && process_10_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8 ) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_CTRL_BUS_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_CTRL_BUS_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_CTRL_BUS_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_CTRL_BUS_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_CTRL_BUS_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_CTRL_BUS_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_CTRL_BUS_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_CTRL_BUS_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        output_ch_V_write_data_finish <= 0;
        write_output_ch_V_run_flag <= 0; 
        write_output_ch_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (output_ch_V_c_bitwidth, output_ch_V_DEPTH, output_ch_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTRL_BUS_start_in === 1) begin
            output_ch_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_output_ch_V_run_flag <= 1; 
            write_output_ch_V_count = 0;
        end
        if (write_one_output_ch_V_data_done === 1) begin
            write_output_ch_V_count = write_output_ch_V_count + 1;
            if (write_output_ch_V_count == output_ch_V_OPERATE_DEPTH) begin
                write_output_ch_V_run_flag <= 0; 
                output_ch_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_output_ch_V
    integer write_output_ch_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] output_ch_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = output_ch_V_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_output_ch_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write output_ch_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (output_ch_V_c_bitwidth < 32) begin
                        output_ch_V_data_tmp_reg = mem_output_ch_V[write_output_ch_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < output_ch_V_c_bitwidth) begin
                                output_ch_V_data_tmp_reg[j] = mem_output_ch_V[write_output_ch_V_count][i*32 + j];
                            end
                            else begin
                                output_ch_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (output_ch_V_data_in_addr + write_output_ch_V_count * four_byte_num * 4 + i * 4, output_ch_V_data_tmp_reg, write_output_ch_V_resp);
                end
                process_busy = 0;
                write_one_output_ch_V_data_done <= 1;
                @(posedge clk);
                write_one_output_ch_V_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        input_ch_V_write_data_finish <= 0;
        write_input_ch_V_run_flag <= 0; 
        write_input_ch_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (input_ch_V_c_bitwidth, input_ch_V_DEPTH, input_ch_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTRL_BUS_start_in === 1) begin
            input_ch_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_input_ch_V_run_flag <= 1; 
            write_input_ch_V_count = 0;
        end
        if (write_one_input_ch_V_data_done === 1) begin
            write_input_ch_V_count = write_input_ch_V_count + 1;
            if (write_input_ch_V_count == input_ch_V_OPERATE_DEPTH) begin
                write_input_ch_V_run_flag <= 0; 
                input_ch_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_input_ch_V
    integer write_input_ch_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] input_ch_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = input_ch_V_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_input_ch_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write input_ch_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (input_ch_V_c_bitwidth < 32) begin
                        input_ch_V_data_tmp_reg = mem_input_ch_V[write_input_ch_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < input_ch_V_c_bitwidth) begin
                                input_ch_V_data_tmp_reg[j] = mem_input_ch_V[write_input_ch_V_count][i*32 + j];
                            end
                            else begin
                                input_ch_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (input_ch_V_data_in_addr + write_input_ch_V_count * four_byte_num * 4 + i * 4, input_ch_V_data_tmp_reg, write_input_ch_V_resp);
                end
                process_busy = 0;
                write_one_input_ch_V_data_done <= 1;
                @(posedge clk);
                write_one_input_ch_V_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        fold_output_ch_V_write_data_finish <= 0;
        write_fold_output_ch_V_run_flag <= 0; 
        write_fold_output_ch_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (fold_output_ch_V_c_bitwidth, fold_output_ch_V_DEPTH, fold_output_ch_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTRL_BUS_start_in === 1) begin
            fold_output_ch_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_fold_output_ch_V_run_flag <= 1; 
            write_fold_output_ch_V_count = 0;
        end
        if (write_one_fold_output_ch_V_data_done === 1) begin
            write_fold_output_ch_V_count = write_fold_output_ch_V_count + 1;
            if (write_fold_output_ch_V_count == fold_output_ch_V_OPERATE_DEPTH) begin
                write_fold_output_ch_V_run_flag <= 0; 
                fold_output_ch_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_fold_output_ch_V
    integer write_fold_output_ch_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] fold_output_ch_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = fold_output_ch_V_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_fold_output_ch_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write fold_output_ch_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (fold_output_ch_V_c_bitwidth < 32) begin
                        fold_output_ch_V_data_tmp_reg = mem_fold_output_ch_V[write_fold_output_ch_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < fold_output_ch_V_c_bitwidth) begin
                                fold_output_ch_V_data_tmp_reg[j] = mem_fold_output_ch_V[write_fold_output_ch_V_count][i*32 + j];
                            end
                            else begin
                                fold_output_ch_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (fold_output_ch_V_data_in_addr + write_fold_output_ch_V_count * four_byte_num * 4 + i * 4, fold_output_ch_V_data_tmp_reg, write_fold_output_ch_V_resp);
                end
                process_busy = 0;
                write_one_fold_output_ch_V_data_done <= 1;
                @(posedge clk);
                write_one_fold_output_ch_V_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        fold_input_ch_V_write_data_finish <= 0;
        write_fold_input_ch_V_run_flag <= 0; 
        write_fold_input_ch_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (fold_input_ch_V_c_bitwidth, fold_input_ch_V_DEPTH, fold_input_ch_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTRL_BUS_start_in === 1) begin
            fold_input_ch_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_fold_input_ch_V_run_flag <= 1; 
            write_fold_input_ch_V_count = 0;
        end
        if (write_one_fold_input_ch_V_data_done === 1) begin
            write_fold_input_ch_V_count = write_fold_input_ch_V_count + 1;
            if (write_fold_input_ch_V_count == fold_input_ch_V_OPERATE_DEPTH) begin
                write_fold_input_ch_V_run_flag <= 0; 
                fold_input_ch_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_fold_input_ch_V
    integer write_fold_input_ch_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] fold_input_ch_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = fold_input_ch_V_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_fold_input_ch_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write fold_input_ch_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (fold_input_ch_V_c_bitwidth < 32) begin
                        fold_input_ch_V_data_tmp_reg = mem_fold_input_ch_V[write_fold_input_ch_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < fold_input_ch_V_c_bitwidth) begin
                                fold_input_ch_V_data_tmp_reg[j] = mem_fold_input_ch_V[write_fold_input_ch_V_count][i*32 + j];
                            end
                            else begin
                                fold_input_ch_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (fold_input_ch_V_data_in_addr + write_fold_input_ch_V_count * four_byte_num * 4 + i * 4, fold_input_ch_V_data_tmp_reg, write_fold_input_ch_V_resp);
                end
                process_busy = 0;
                write_one_fold_input_ch_V_data_done <= 1;
                @(posedge clk);
                write_one_fold_input_ch_V_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        input_h_V_write_data_finish <= 0;
        write_input_h_V_run_flag <= 0; 
        write_input_h_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (input_h_V_c_bitwidth, input_h_V_DEPTH, input_h_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTRL_BUS_start_in === 1) begin
            input_h_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_input_h_V_run_flag <= 1; 
            write_input_h_V_count = 0;
        end
        if (write_one_input_h_V_data_done === 1) begin
            write_input_h_V_count = write_input_h_V_count + 1;
            if (write_input_h_V_count == input_h_V_OPERATE_DEPTH) begin
                write_input_h_V_run_flag <= 0; 
                input_h_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_input_h_V
    integer write_input_h_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] input_h_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = input_h_V_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_input_h_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write input_h_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (input_h_V_c_bitwidth < 32) begin
                        input_h_V_data_tmp_reg = mem_input_h_V[write_input_h_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < input_h_V_c_bitwidth) begin
                                input_h_V_data_tmp_reg[j] = mem_input_h_V[write_input_h_V_count][i*32 + j];
                            end
                            else begin
                                input_h_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (input_h_V_data_in_addr + write_input_h_V_count * four_byte_num * 4 + i * 4, input_h_V_data_tmp_reg, write_input_h_V_resp);
                end
                process_busy = 0;
                write_one_input_h_V_data_done <= 1;
                @(posedge clk);
                write_one_input_h_V_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        input_w_V_write_data_finish <= 0;
        write_input_w_V_run_flag <= 0; 
        write_input_w_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (input_w_V_c_bitwidth, input_w_V_DEPTH, input_w_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTRL_BUS_start_in === 1) begin
            input_w_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_input_w_V_run_flag <= 1; 
            write_input_w_V_count = 0;
        end
        if (write_one_input_w_V_data_done === 1) begin
            write_input_w_V_count = write_input_w_V_count + 1;
            if (write_input_w_V_count == input_w_V_OPERATE_DEPTH) begin
                write_input_w_V_run_flag <= 0; 
                input_w_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_input_w_V
    integer write_input_w_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] input_w_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = input_w_V_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_input_w_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write input_w_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (input_w_V_c_bitwidth < 32) begin
                        input_w_V_data_tmp_reg = mem_input_w_V[write_input_w_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < input_w_V_c_bitwidth) begin
                                input_w_V_data_tmp_reg[j] = mem_input_w_V[write_input_w_V_count][i*32 + j];
                            end
                            else begin
                                input_w_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (input_w_V_data_in_addr + write_input_w_V_count * four_byte_num * 4 + i * 4, input_w_V_data_tmp_reg, write_input_w_V_resp);
                end
                process_busy = 0;
                write_one_input_w_V_data_done <= 1;
                @(posedge clk);
                write_one_input_w_V_data_done <= 0;
            end   
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        real_input_h_V_write_data_finish <= 0;
        write_real_input_h_V_run_flag <= 0; 
        write_real_input_h_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (real_input_h_V_c_bitwidth, real_input_h_V_DEPTH, real_input_h_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTRL_BUS_start_in === 1) begin
            real_input_h_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_real_input_h_V_run_flag <= 1; 
            write_real_input_h_V_count = 0;
        end
        if (write_one_real_input_h_V_data_done === 1) begin
            write_real_input_h_V_count = write_real_input_h_V_count + 1;
            if (write_real_input_h_V_count == real_input_h_V_OPERATE_DEPTH) begin
                write_real_input_h_V_run_flag <= 0; 
                real_input_h_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_real_input_h_V
    integer write_real_input_h_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] real_input_h_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = real_input_h_V_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_7_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_real_input_h_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write real_input_h_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (real_input_h_V_c_bitwidth < 32) begin
                        real_input_h_V_data_tmp_reg = mem_real_input_h_V[write_real_input_h_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < real_input_h_V_c_bitwidth) begin
                                real_input_h_V_data_tmp_reg[j] = mem_real_input_h_V[write_real_input_h_V_count][i*32 + j];
                            end
                            else begin
                                real_input_h_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (real_input_h_V_data_in_addr + write_real_input_h_V_count * four_byte_num * 4 + i * 4, real_input_h_V_data_tmp_reg, write_real_input_h_V_resp);
                end
                process_busy = 0;
                write_one_real_input_h_V_data_done <= 1;
                @(posedge clk);
                write_one_real_input_h_V_data_done <= 0;
            end   
            process_7_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        leaky_V_write_data_finish <= 0;
        write_leaky_V_run_flag <= 0; 
        write_leaky_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (leaky_V_c_bitwidth, leaky_V_DEPTH, leaky_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTRL_BUS_start_in === 1) begin
            leaky_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_leaky_V_run_flag <= 1; 
            write_leaky_V_count = 0;
        end
        if (write_one_leaky_V_data_done === 1) begin
            write_leaky_V_count = write_leaky_V_count + 1;
            if (write_leaky_V_count == leaky_V_OPERATE_DEPTH) begin
                write_leaky_V_run_flag <= 0; 
                leaky_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_leaky_V
    integer write_leaky_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] leaky_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = leaky_V_c_bitwidth;
    process_num = 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_8_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_leaky_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write leaky_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (leaky_V_c_bitwidth < 32) begin
                        leaky_V_data_tmp_reg = mem_leaky_V[write_leaky_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < leaky_V_c_bitwidth) begin
                                leaky_V_data_tmp_reg[j] = mem_leaky_V[write_leaky_V_count][i*32 + j];
                            end
                            else begin
                                leaky_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (leaky_V_data_in_addr + write_leaky_V_count * four_byte_num * 4 + i * 4, leaky_V_data_tmp_reg, write_leaky_V_resp);
                end
                process_busy = 0;
                write_one_leaky_V_data_done <= 1;
                @(posedge clk);
                write_one_leaky_V_data_done <= 0;
            end   
            process_8_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        fold_win_area_V_write_data_finish <= 0;
        write_fold_win_area_V_run_flag <= 0; 
        write_fold_win_area_V_count = 0;
        count_operate_depth_by_bitwidth_and_depth (fold_win_area_V_c_bitwidth, fold_win_area_V_DEPTH, fold_win_area_V_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_CTRL_BUS_start_in === 1) begin
            fold_win_area_V_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_fold_win_area_V_run_flag <= 1; 
            write_fold_win_area_V_count = 0;
        end
        if (write_one_fold_win_area_V_data_done === 1) begin
            write_fold_win_area_V_count = write_fold_win_area_V_count + 1;
            if (write_fold_win_area_V_count == fold_win_area_V_OPERATE_DEPTH) begin
                write_fold_win_area_V_run_flag <= 0; 
                fold_win_area_V_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_fold_win_area_V
    integer write_fold_win_area_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] fold_win_area_V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = fold_win_area_V_c_bitwidth;
    process_num = 9;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_9_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_fold_win_area_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write fold_win_area_V data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (fold_win_area_V_c_bitwidth < 32) begin
                        fold_win_area_V_data_tmp_reg = mem_fold_win_area_V[write_fold_win_area_V_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < fold_win_area_V_c_bitwidth) begin
                                fold_win_area_V_data_tmp_reg[j] = mem_fold_win_area_V[write_fold_win_area_V_count][i*32 + j];
                            end
                            else begin
                                fold_win_area_V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (fold_win_area_V_data_in_addr + write_fold_win_area_V_count * four_byte_num * 4 + i * 4, fold_win_area_V_data_tmp_reg, write_fold_win_area_V_resp);
                end
                process_busy = 0;
                write_one_fold_win_area_V_data_done <= 1;
                @(posedge clk);
                write_one_fold_win_area_V_data_done <= 0;
            end   
            process_9_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_CTRL_BUS_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 10;
    while (1) begin
        process_10_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_10_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_output_ch_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [output_ch_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (output_ch_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_output_ch_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_output_ch_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < output_ch_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_output_ch_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_output_ch_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_output_ch_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_output_ch_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_output_ch_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_input_ch_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [input_ch_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (input_ch_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_input_ch_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_input_ch_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < input_ch_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_input_ch_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_input_ch_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_input_ch_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_input_ch_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_input_ch_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_fold_output_ch_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [fold_output_ch_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (fold_output_ch_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_fold_output_ch_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_fold_output_ch_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < fold_output_ch_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_fold_output_ch_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_fold_output_ch_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_fold_output_ch_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_fold_output_ch_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_fold_output_ch_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_fold_input_ch_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [fold_input_ch_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (fold_input_ch_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_fold_input_ch_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_fold_input_ch_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < fold_input_ch_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_fold_input_ch_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_fold_input_ch_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_fold_input_ch_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_fold_input_ch_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_fold_input_ch_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_input_h_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [input_h_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (input_h_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_input_h_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_input_h_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < input_h_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_input_h_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_input_h_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_input_h_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_input_h_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_input_h_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_input_w_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [input_w_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (input_w_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_input_w_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_input_w_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < input_w_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_input_w_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_input_w_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_input_w_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_input_w_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_input_w_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_real_input_h_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [real_input_h_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (real_input_h_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_real_input_h_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_real_input_h_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < real_input_h_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_real_input_h_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_real_input_h_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_real_input_h_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_real_input_h_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_real_input_h_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_leaky_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [leaky_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (leaky_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_leaky_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_leaky_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < leaky_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_leaky_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_leaky_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_leaky_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_leaky_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_leaky_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_fold_win_area_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [fold_win_area_V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (fold_win_area_V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_fold_win_area_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_fold_win_area_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < fold_win_area_V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_fold_win_area_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_fold_win_area_V [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_fold_win_area_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_fold_win_area_V [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_fold_win_area_V [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
endmodule
