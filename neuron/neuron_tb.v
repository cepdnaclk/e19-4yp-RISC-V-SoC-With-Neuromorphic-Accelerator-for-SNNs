`include "../utils/encording.v"
`include "../utils/32bit_mul.v"
`include "../utils/32bit_shifter.v"
`include "../decay/decay.v"
`include "../adder/adder.v"
`include "../accumulator/accumulator.v"
`include "neuron.v"
`timescale 1ns/100ps

module Neuron_tb ();

    reg clk, rst, time_step, load;
    reg [9:0] address;
    reg [31:0] value;
    reg [2:0] decay_mode;
    reg [1:0] adder_model;
    reg [2:0] init_mode_adder;
    reg init_mode_acc;
    output wire spike;
    
    Neuron neuron(
        .clk(clk),
        .rst(rst),
        .time_step(time_step),
        .load(load),
        .value(value),
        .address(address),
        .decay_mode(decay_mode),
        .adder_model(adder_model),
        .init_mode_adder(init_mode_adder),
        .init_mode_acc(init_mode_acc),
        .spike(spike)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("neuron_tb.vcd");
        $dumpvars(0, Neuron_tb);

        clk = 0;
        rst = 0;
        time_step = 0;
        load = 0;
        address = 0;
        value = 0;
        decay_mode = `IDLE;
        adder_model = 0;
        init_mode_adder = `IDLE;
        init_mode_acc = 0;

        
        $finish;
    end

endmodule