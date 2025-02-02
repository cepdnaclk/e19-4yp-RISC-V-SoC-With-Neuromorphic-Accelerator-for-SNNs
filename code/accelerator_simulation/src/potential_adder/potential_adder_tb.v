`include "potential_adder/potential_adder.v"
`timescale 1ns/100ps

module potential_adder_tb;

    reg CLK;
    reg [31:0] v_threshold;
    reg [31:0] input_weight; 
    reg [31:0] decayed_potential;
    reg clear;                                              //clear to start timestep 
    wire [31:0] final_potential;
    wire spike;
    reg[3:0] CLK_count;                                     //counter for clocks

    //test adder
    potential_adder potential_adder_1(clear, v_threshold, input_weight, decayed_potential, final_potential, spike);

    //record on gtkwave
    initial begin
        $dumpfile("adder_testbench.vcd");
        $dumpvars(0, adder_testbench);
        #100
        $finish;
    end

    //assign inputs
    initial begin
        CLK = 1'b0;
        CLK_count = 0;
        clear = 1'b0;

        v_threshold= 32'b01000001100010000000000000000000;
        input_weight=32'b01000001001000000000000000000000;
        decayed_potential=32'b01000000101100000000000000000000;
    end

    // Print the outputs when ever the inputs change
    initial
    begin
        $monitor($time, " Accumalator Input: %b\n                     Potential Decay Input: %b\n                     Threshold: %b\n                     Output Potential: %b\n                     Spiked:%b", input_weight,decayed_potential,v_threshold, final_potential, spike);
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