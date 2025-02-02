`include "comparator.v"
`timescale 1ns/100ps

module comparator_test;

    reg CLK;
    reg[31:0] a_operand;
    reg[31:0] b_operand;
    wire greater;

    comparator comparator_1(a_operand,b_operand, greater);

    //record on gtkwave
    initial begin
        $dumpfile("comparator_test.vcd");
        $dumpvars(0, comparator_test);
        #100
        $finish;
    end

    //assign inputs
    initial begin
        a_operand=32'b01000001001000000000000000000000;
        b_operand=32'b01000001001000000000000000000000;
    end

    // Print the outputs when ever the inputs change
    initial
    begin
        $monitor($time, " a_operand: %b\n                     b_operand: %b\n                     greater: %b\n                     ", a_operand, b_operand, greater);
    end

    //invert clock every 4 seconds
    always
        #4 CLK = ~CLK;
endmodule