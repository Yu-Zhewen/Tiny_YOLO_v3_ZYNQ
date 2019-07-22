`timescale 1 ns / 1 ps

module fifo #(parameter DEPTH = 16, parameter WIDTH = 8) (
    input reset,
    input write_clock,
    input write_en,
    input [WIDTH - 1:0] write_data,
    input read_clock,
    input read_en,
    output reg [WIDTH - 1:0] read_data,
    output reg full,
    output reg empty);
    
    reg [WIDTH - 1:0] mem [0:DEPTH - 1];
    
    reg [log2(DEPTH):0] write_address;
    reg [log2(DEPTH):0] read_address_1;
    reg [log2(DEPTH):0] read_address_2;
    
    reg [log2(DEPTH):0] read_address;
    reg [log2(DEPTH):0] write_address_1;
    reg [log2(DEPTH):0] write_address_2;
    
    event write_event;
    event read_event;
    
    // PUSH
    always @ (posedge reset or posedge write_clock) begin
        if (reset) begin
//            read_address_1 <= 0;
//            read_address_2 <= 0;
            write_address   <= 0;
            write_address_1 <= 0;
            write_address_2 <= 0;
        end else begin
//            read_address_2 <= read_address_1;
//            read_address_1 <= read_address;
            if (write_en && ~full) begin
                mem[write_address[log2(DEPTH) - 1:0]] <= write_data;
                if (write_address[log2(DEPTH) - 1:0] < DEPTH - 1) begin
                    write_address   <= write_address + 1;
                    write_address_1 <= write_address + 1;
                    write_address_2 <= write_address + 1;
                end else begin
                    write_address   <= {~write_address[log2(DEPTH)], {log2(DEPTH){1'b0}}};
                    write_address_1 <= {~write_address[log2(DEPTH)], {log2(DEPTH){1'b0}}};
                    write_address_2 <= {~write_address[log2(DEPTH)], {log2(DEPTH){1'b0}}};
                end
                -> write_event;
            end
        end
    end
    
    // POP
    always @ (posedge reset or posedge read_clock) begin
        if (reset) begin
//            write_address_1 <= 0;
//            write_address_2 <= 0;
            read_address   <= 0;
            read_address_1 <= 0;
            read_address_2 <= 0;
        end else begin
//            write_address_2 <= write_address_1;
//            write_address_1 <= write_address;
            if (read_en && ~empty) begin
                if (read_address[log2(DEPTH) - 1:0] < DEPTH - 1) begin
                    read_address   <= read_address + 1;
                    read_address_1 <= read_address + 1;
                    read_address_2 <= read_address + 1;
                end else begin
                    read_address   <= {~read_address[log2(DEPTH)], {log2(DEPTH){1'b0}}};
                    read_address_1 <= {~read_address[log2(DEPTH)], {log2(DEPTH){1'b0}}};
                    read_address_2 <= {~read_address[log2(DEPTH)], {log2(DEPTH){1'b0}}};
                end
                -> read_event;
            end
        end
    end
    
    // combinational logic
    always @ (*) begin
        full      <= (write_address[log2(DEPTH)] != read_address_2[log2(DEPTH)]) && (write_address[log2(DEPTH) - 1:0] == read_address_2[log2(DEPTH) - 1:0]);
        empty     <= (read_address[log2(DEPTH)] == write_address_2[log2(DEPTH)]) && (read_address[log2(DEPTH) - 1:0] == write_address_2[log2(DEPTH) - 1:0]);
        read_data <= mem[read_address[log2(DEPTH) - 1:0]];
    end
    
    // backdoor API
    task clear();
        integer i;
        begin
            for (i = 0; i < DEPTH - 1; i = i + 1) begin
                mem[i] = $random() % ({WIDTH{1'b1}} + 1);
            end
            write_address   = 0;
            write_address_1 = 0;
            write_address_2 = 0;
            read_address   = 0;
            read_address_1 = 0;
            read_address_2 = 0;
            full      = (write_address[log2(DEPTH)] != read_address_2[log2(DEPTH)]) && (write_address[log2(DEPTH) - 1:0] == read_address_2[log2(DEPTH) - 1:0]);
            empty     = (read_address[log2(DEPTH)] == write_address_2[log2(DEPTH)]) && (read_address[log2(DEPTH) - 1:0] == write_address_2[log2(DEPTH) - 1:0]);
            read_data = mem[read_address[log2(DEPTH) - 1:0]];
        end
    endtask
    
    // backdoor API
    task push(input [WIDTH - 1:0] push_data);
        begin
            if (~full) begin
                mem[write_address[log2(DEPTH) - 1:0]] = push_data;
                if (empty) begin
                    read_data = mem[read_address[log2(DEPTH) - 1:0]];
                end
                if (write_address[log2(DEPTH) - 1:0] < DEPTH - 1) begin
                    write_address   = write_address + 1;
                    write_address_1 = write_address;
                    write_address_2 = write_address;
                end else begin
                    write_address   = {~write_address[log2(DEPTH)], {log2(DEPTH){1'b0}}};
                    write_address_1 = write_address;
                    write_address_2 = write_address;
                end
                full  = (write_address[log2(DEPTH)] != read_address_2[log2(DEPTH)]) && (write_address[log2(DEPTH) - 1:0] == read_address_2[log2(DEPTH) - 1:0]);
                empty = (read_address[log2(DEPTH)] == write_address_2[log2(DEPTH)]) && (read_address[log2(DEPTH) - 1:0] == write_address_2[log2(DEPTH) - 1:0]);
                -> write_event;
            end
        end
    endtask
    
    // backdoor API
    task pop(output [WIDTH - 1:0] pop_data);
        begin
            if (~empty) begin
                pop_data = mem[read_address[log2(DEPTH) - 1:0]];
                if (read_address[log2(DEPTH) - 1:0] < DEPTH - 1) begin
                    read_address   = read_address + 1;
                    read_address_1 = read_address;
                    read_address_2 = read_address;
                end else begin
                    read_address   = {~read_address[log2(DEPTH)], {log2(DEPTH){1'b0}}};
                    read_address_1 = read_address;
                    read_address_2 = read_address;
                end
                full      = (write_address[log2(DEPTH)] != read_address_2[log2(DEPTH)]) && (write_address[log2(DEPTH) - 1:0] == read_address_2[log2(DEPTH) - 1:0]);
                empty     = (read_address[log2(DEPTH)] == write_address_2[log2(DEPTH)]) && (read_address[log2(DEPTH) - 1:0] == write_address_2[log2(DEPTH) - 1:0]);
                read_data = mem[read_address[log2(DEPTH) - 1:0]];
                -> read_event;
            end
        end
    endtask
    
    function integer log2(input integer depth);
        begin
            for (log2 = 0; depth > 0; log2 = log2 + 1) begin
                depth = depth >> 1;
            end
        end
    endfunction
    
    reg [log2(DEPTH):0] s_write_address;
    reg [log2(DEPTH):0] s_read_address_1;
    reg [log2(DEPTH):0] s_read_address_2;
    
    reg [log2(DEPTH):0] s_read_address;
    reg [log2(DEPTH):0] s_write_address_1;
    reg [log2(DEPTH):0] s_write_address_2;
    
    // backdoor API
    task snapshot();
        begin
            s_write_address   = write_address;
            s_write_address_1 = write_address_1;
            s_write_address_2 = write_address_2;
            s_read_address   = read_address;
            s_read_address_1 = read_address_1;
            s_read_address_2 = read_address_2;
        end
    endtask
    
    // backdoor API
    task restore();
        begin
            write_address   = s_write_address;
            write_address_1 = s_write_address_1;
            write_address_2 = s_write_address_2;
            read_address   = s_read_address;
            read_address_1 = s_read_address_1;
            read_address_2 = s_read_address_2;
            full      = (write_address[log2(DEPTH)] != read_address_2[log2(DEPTH)]) && (write_address[log2(DEPTH) - 1:0] == read_address_2[log2(DEPTH) - 1:0]);
            empty     = (read_address[log2(DEPTH)] == write_address_2[log2(DEPTH)]) && (read_address[log2(DEPTH) - 1:0] == write_address_2[log2(DEPTH) - 1:0]);
            read_data = mem[read_address[log2(DEPTH) - 1:0]];
        end
    endtask
    
endmodule
