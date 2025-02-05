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
        decay_mode = `LIF0;
        adder_model = 0;
        init_mode_adder = `IDLE;
        init_mode_acc = 0;

        // reset
        #10 rst = 1;
        #10 rst = 0;

        // init mode adder
        #10 init_mode_acc = 1;

        // load weight
        #10
        address = 1;
        value = 32'h0000d125;
        load = 1;
        #10 load = 0;

        // load weight
        #10
        address = 2;
        value = 32'h00000fff;
        load = 1;
        #10 load = 0;

        // load weight
        #10
        address = 3;
        value = 32'h0000f501;
        load = 1;
        #10 load = 0;

        // reset address and change mode to normal
        #10 
        address = 0;
        value = 0;
        init_mode_acc = 0;

        // decay mode init
        #10 decay_mode = `IDLE;

        // init potential
        #10 value = 32'h0000bcb5;
        load = 1;
        #10 load = 0;

        // decay mode reset
        #10 decay_mode = `LIF0;
        value = 0;

        // adder mode init
        #10 adder_model = 0;
        // init A
        #10;
        init_mode_adder = `A;
        value = 32'h00000021;
        load = 1;
        #10 load = 0;
        // init B
        #10;
        init_mode_adder = `B;
        value = 32'h00000011;
        load = 1;
        #10 load = 0;
        // init C
        #10;
        init_mode_adder = `C;
        value = 32'h00000001;
        load = 1;
        #10 load = 0;
        // init D
        #10;
        init_mode_adder = `D;
        value = 32'h00000001;
        load = 1;
        #10 load = 0;
        // init VT
        #10;
        init_mode_adder = `VT;
        value = 32'h0002ffff;
        load = 1;
        #10 load = 0;
        // init U
        #10;
        init_mode_adder = `U;
        value = 32'h00000002;
        load = 1;
        #10 load = 0;

        // reset mode adder
        #10 adder_model = 0;
        init_mode_adder = `IDLE;
        value = 0;

        // set modes for working
        #10 decay_mode = `LIF24;
        adder_model = `LIF;
        init_mode_adder = `DEFAULT;

        // give inputs
        #10 address = 1;
        #10 address = 2;
        #10 address = 3;
        #10 address = 0;
        
        // Time step
        #15 time_step = 1;
        #10 time_step = 0;
        
        #50;

        // give inputs
        #10 address = 1;
        #10 address = 3;
        #10 address = 0;
        
        // Time step
        #15 time_step = 1;
        #10 time_step = 0;

        #50;

        // give inputs
        #10 address = 1;
        #10 address = 2;
        #10 address = 0;
        
        // Time step
        #15 time_step = 1;
        #10 time_step = 0;

        #50;

        // give inputs
        #10 address = 2;
        #10 address = 3;
        #10 address = 0;
        
        // Time step
        #15 time_step = 1;
        #10 time_step = 0;

        #50;

        // give inputs
        #10 address = 1;
        #10 address = 2;
        #10 address = 3;
        #10 address = 0;
        
        // Time step
        #15 time_step = 1;
        #10 time_step = 0;

        #50;

        #100;
        $finish;
    end

endmodule