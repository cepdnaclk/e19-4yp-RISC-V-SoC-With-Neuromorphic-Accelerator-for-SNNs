`timescale 1ns/100ps
`include "accumulator.v"

module Accumulator_tb;

    // Testbench signals
    reg        clk;
    reg        rst;
    reg        time_step;
    reg        load;
    reg        mode;
    reg [9:0] src_addr;
    reg [31:0] weight_in;
    wire [31:0] accumulated_out;

    // Instantiate the Accumulator module
    accumulator uut (
        .clk(clk),
        .rst(rst),
        .time_step(time_step),
        .load(load),
        .mode(mode),
        .src_addr(src_addr),
        .weight_in(weight_in),
        .accumulated_out(accumulated_out)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;
    end

    // Time step generation
    initial begin
        time_step = 0;
        #100;
        forever begin
            time_step = 1;
            #10 time_step = 0;
            #40;
        end
    end

    // Testbench stimulus
    initial begin
        $dumpfile("accumulator.vcd");
        $dumpvars(0, Accumulator_tb);

        // Initialize signals
        clk = 0;
        rst = 1;
        time_step = 0;
        load = 0;
        mode = 0;
        src_addr = 10'b0;
        weight_in = 32'b0;

        // Apply reset
        #10;
        rst = 0;
        #10;
        mode = 1; // Set mode to 1

        // Load dummy weights and source addresses
        #10;
        load = 1;
        src_addr = 10'h001; weight_in = 32'h0000_0001; #10; // Load weight 1 for address 0x001
        load = 0;
        #10;
        load = 1;
        src_addr = 10'h002; weight_in = 32'h0000_0002; #10; // Load weight 2 for address 0x002
        load = 0;
        #10;
        load = 1;
        src_addr = 10'h003; weight_in = 32'h0000_0003; #10; // Load weight 3 for address 0x003
        load = 0;
        #10;
        load = 1;
        src_addr = 10'h004; weight_in = 32'h0000_0004; #10; // Load weight 4 for address 0x004
        load = 0;
        src_addr = 10'b0; weight_in = 32'b0; // Reset load signals
        #15;

        // Set mode to 0
        mode = 0;

        #10 src_addr = 10'h001; // Set source address to 0x001
        #10 src_addr = 10'h002; // Set source address to 0x002
        #10 src_addr = 10'h003; // Set source address to 0x003
        #10 src_addr = 10'h002; // Set source address to 0x004
        #10 src_addr = 10'h000; // reset source address
        
        #10 src_addr = 10'h001; // Set source address to 0x001
        #10 src_addr = 10'h002; // Set source address to 0x002
        #10 src_addr = 10'h003; // Set source address to 0x003
        #10 src_addr = 10'h000; // reset source address
        #100;

        // Display results
        $display("Accumulated Output: %h", accumulated_out);

        // End simulation
        #10;
        $finish;
    end

endmodule