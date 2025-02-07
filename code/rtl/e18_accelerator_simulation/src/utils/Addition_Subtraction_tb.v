`include "utils/Addition_Subtraction.v"
`timescale 1ns/100ps

module Addition_Subtraction_tb;

    reg CLK;
    reg[31:0] a_operand, b_operand;
    reg AddBar_Sub;
    wire[31:0] result;
    wire Exception;

    //test adder
    Addition_Subtraction Addition_Subtraction_1(a_operand, b_operand, AddBar_Sub, Exception, result);

    //record on gtkwave
    initial begin
        $dumpfile("Addition_Subtraction_TestBench.vcd");
        $dumpvars(0, Addition_Subtraction_TestBench);
        #100
        $finish;
    end

    //assign inputs
    initial begin
        CLK = 1'b0;
        a_operand= 32'b01000000101000000000000000000000;
        b_operand= 32'b01000000101000000000000000000000;
        AddBar_Sub = 1'b0;
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