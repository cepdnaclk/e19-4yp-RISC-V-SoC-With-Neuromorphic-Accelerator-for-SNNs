`include "reset.v"
`timescale 1ns/100ps

module reset_test;

    reg CLK;
    reg[31:0] adder_potential;
    reg spiked;
    reg[31:0] v_threshold;
    wire [31:0] potential_to_mem;
    reg Exception;

    reset reset_1(adder_potential,spiked,v_threshold, potential_to_mem);

    //record on gtkwave
    initial begin
        $dumpfile("reset_test.vcd");
        $dumpvars(0, reset_test);
        #100
        $finish;
    end

    //assign inputs
    initial begin
        adder_potential=32'b01000001011110000000000000000000;
        spiked=1'b1;
        v_threshold=32'b01000001011110000000000000000000;
    end

    // Print the outputs when ever the inputs change
    initial
    begin
        $monitor($time, " adder_potential: %b\n                     spiked: %b\n                     v_threshold: %b\n                     potential_to_mem: %b", adder_potential, spiked, v_threshold,potential_to_mem);
    end

    //invert clock every 4 seconds
    always
        #4 CLK = ~CLK;
endmodule