`include "../utils/encording.v"
`include "../utils/32bit_mul.v"
`include "../utils/32bit_shifter.v"
`include "adder.v"
`timescale 1ns/100ps

module potential_adder_tb();
    reg clk;
    reg rst;
    reg time_step;
    reg load;
    reg [31:0] input_weight;
    reg [31:0] decayed_potential;
    reg [1:0] model;
    reg [2:0] init_mode;
    
    wire [31:0] final_potential;
    wire done;
    wire spike;
    
    potential_adder uut (
        .clk(clk),
        .rst(rst),
        .time_step(time_step),
        .input_weight(input_weight),
        .decayed_potential(decayed_potential),
        .model(model),
        .init_mode(init_mode),
        .load(load),
        .final_potential(final_potential),
        .done(done),
        .spike(spike)
    );
    
    // Clock Generation
    always #5 clk = ~clk;
    
    initial begin
        $dumpfile("adder_tb.vcd");
        $dumpvars(0, potential_adder_tb);

        clk = 0;
        rst = 1;
        time_step = 0;
        load = 0;
        input_weight = 32'd0;
        decayed_potential = 32'd0;
        model = 2'b00;
        init_mode = 3'b000;
        
        #20 rst = 0;
        
        // Initialize Parameters
        #10 load = 1; input_weight = 32'd10; init_mode = 3'b001; #10 load = 0; // Set A
        #10 load = 1; input_weight = 32'd20; init_mode = 3'b010; #10 load = 0; // Set B
        #10 load = 1; input_weight = 32'd30; init_mode = 3'b011; #10 load = 0; // Set C
        #10 load = 1; input_weight = 32'd40; init_mode = 3'b100; #10 load = 0; // Set D
        #10 load = 1; input_weight = 32'd50; init_mode = 3'b101; #10 load = 0; // Set VT
        #10 load = 1; input_weight = 32'd5; init_mode = 3'b110; // Set U
        #10 load = 0; init_mode = 3'b000; // Set Default
        
        // Test LIF Model
        #10 model = 2'b00; input_weight = 32'd25; decayed_potential = 32'd25; time_step = 1;
        #10 time_step = 0;
        #100;
        
        // Test Izhikevich Model
        #20 model = 2'b01; input_weight = 32'd25; decayed_potential = 32'd35; time_step = 1;
        #10 time_step = 0;
        #1000;
        
        // Test QLIF Model
        #20 model = 2'b10; input_weight = 32'd30; decayed_potential = 32'd10; time_step = 1;
        #10 time_step = 0;
        #100;
        
        #50 $finish;
    end
    
    initial begin
        $monitor("Time = %0t | Model = %b | Input = %d | Decayed = %d | Final Potential = %d | Spike = %b | Done = %b",
                  $time, model, input_weight, decayed_potential, final_potential, spike, done);
    end
    
endmodule
