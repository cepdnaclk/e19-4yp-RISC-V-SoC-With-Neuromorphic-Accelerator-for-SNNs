`include "neuron/neuron.v"

module adder_4bit (
    input  [3:0] a,       // 4-bit input A
    input  [3:0] b,       // 4-bit input B
    input        cin,     // Carry input
    output [3:0] sum,     // 4-bit Sum output
    output       cout     // Carry output
);

    assign {cout, sum} = a + b + cin;  // Perform addition with carry

endmodule
