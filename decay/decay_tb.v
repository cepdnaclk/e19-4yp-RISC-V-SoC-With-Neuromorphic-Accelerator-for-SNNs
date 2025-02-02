`timescale 1ns/1ps
`include "decay.v"

module potential_decay_tb;
    reg clk;
    reg rst;
    reg load;
    reg time_step;
    reg [2:0] mode;
    reg [31:0] new_potential;
    wire [31:0] output_potential_decay;

    // Instantiate the DUT (Device Under Test)
    potential_decay dut (
        .clk(clk),
        .rst(rst),
        .load(load),
        .time_step(time_step),
        .mode(mode),
        .new_potential(new_potential),
        .output_potential_decay(output_potential_decay)
    );

    // Generate clock signal
    always #5 clk = ~clk;

    initial begin
        time_step = 0;
        #100;
        forever begin
            time_step = 1;
            #10 time_step = 0;
            #40;
        end
    end

    always @(posedge time_step) begin
        #5;
        if(output_potential_decay != 0)
            new_potential <= output_potential_decay;
        #10 load = 1;
        #10 load = 0;
    end

    initial begin
        $dumpfile("decay_tb.vcd");
        $dumpvars(0, potential_decay_tb);

        // Initialize signals
        clk = 0;
        rst = 1;
        load = 0;
        time_step = 0;
        mode = 3'b111;
        new_potential = 32'd0;
        
        // Apply reset
        #10 rst = 0;
        
        // Load initial potential
        #10 new_potential = 32'd1000;
        load = 1;
        #10 load = 0;
        
        #20 mode = 3'b001; 

        // End simulation
        #5000 $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | Mode=%b | Potential=%d | Output=%d", 
                 $time, mode, new_potential, output_potential_decay);
    end
endmodule
