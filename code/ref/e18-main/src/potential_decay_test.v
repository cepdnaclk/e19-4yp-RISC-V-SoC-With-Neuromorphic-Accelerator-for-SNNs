`include "potential_decay.v"
`include "Addition_Subtraction.v"
`include "Multiplication.v"
`timescale 1ns/100ps

module test_potential_decay;

    reg CLK;
    reg clear;
    wire[31:0] output_potential;
    reg[31:0] input_potential;
    reg[2:0] decay_rate;
    reg[3:0] CLK_count;
    reg[11:0] neuron_addresses[0:9];
    reg[1:0] model;

    //test membrane potential value 4. Divided by 2 is 2
    potential_decay potential_decay_1(CLK,clear, model, decay_rate,input_potential, output_potential);

    //record on gtkwave
    initial begin
        $dumpfile("potential_decay_test.vcd");
        $dumpvars(0, test_potential_decay);
        #100
        $finish;
    end

    //assign inputs
    initial begin
        CLK = 1'b0;
        CLK_count = 0;
        clear = 1'b0;
        decay_rate = 3'd1;
        input_potential = 32'b01000001001000000000000000000000;
        model = 2'b00;
    end

    // Print the outputs when ever the inputs change
    initial
    begin
        $monitor($time, " Input Potential: %b\n                     After Potential Decay: %b", input_potential, output_potential);
    end

    //invert clock every 4 seconds
    always
        #4 CLK = ~CLK;

    //timestep is 4 clockcycles
    always @(posedge CLK) begin

        if(CLK_count==3) begin
            CLK_count=0;
            clear = 1'b1;
        end else begin
            CLK_count = CLK_count+1;
        end

        if(CLK_count==1) begin
            clear = 1'b0;
        end
    end
    
endmodule