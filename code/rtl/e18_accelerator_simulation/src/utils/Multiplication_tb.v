`include "utils/Multiplication.v"
`timescale 1ns/100ps

module Multiplication_tb;

    reg CLK;
    reg[31:0] a_operand, b_operand;
    wire[31:0] result;
    wire Exception,Overflow,Underflow;

    //test adder
    Multiplication Multiplication(a_operand, a_operand, Exception,Overflow,Underflow, result);

    //record on gtkwave
    initial begin
        $dumpfile("Multiplication_tb.vcd");
        $dumpvars(0, Multiplication_tb);
        #100
        $finish;
    end

    //assign inputs
    initial begin
        CLK = 1'b0;
        a_operand= 32'b01000000101000000000000000000000;
        b_operand= 32'b01000000101000000000000000000000;
    end

    // Print the outputs when ever the inputs change
    initial
    begin
        $monitor($time, " a_operand: %b\n                     b_operand: %b\n                     result: %b\n                     Exception: %b", a_operand, b_operand, result, Exception);
    end

    //invert clock every 4 seconds
    always
        #4 CLK = ~CLK;
endmodule