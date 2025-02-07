`include "../utils/encording.v"
`include "../utils/32bit_mul.v"
`include "../utils/32bit_shifter.v"
`include "../decay/decay.v"
`include "../adder/adder.v"
`include "../accumulator/accumulator.v"
`include "controller.v"
`include "neuron.v"
`timescale 1ns/100ps

module neuron_tb ();

    reg clk, rst, time_step, load_data;
    reg [7:0] data;
    reg [9:0] src_addr_in;
    
    Neuron neuron(
        .clk(clk),
        .rst(rst),
        .time_step(time_step),
        .data(data),
        .load_data(load_data),
        .src_addr_in(src_addr_in)
    );

    always #5 clk = ~clk;

//     initial begin
//         $dumpfile("neuron_tb.vcd");
//         $dumpvars(0, Neuron_tb);

//         clk = 0;
//         rst = 0;
//         time_step = 0;
//         load_data = 0;
//         data = 0;
//         src_addr_in = 0;

//         #10 rst = 1;
//         #10 rst = 0;

//         clk = 0;
//         rst = 1;
//         data = 0;
//         #10 rst = 0;

//         // 1st flip set controller mode
//         // 2nd and 3rd flip set controller registers
//         // next 4 or 2 flips are values for setting to registers on neuron
//         // last flip is end packet and it will send load signal to registers

//         // controll register set
//         // [<adder_model[7:6]> <init_mode_adder[5:3]> <decay_mode[2:0]>] [<reserved><init_mode_acc>]

//         // Set a weight
//         #30 data = 8'b11111111;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00111000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000001;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000001;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000011;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000100;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000101;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;

//         #50;

//         // Set a weight
//         #30 data = 8'b11111111;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00111000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000001;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000010;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000011;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000100;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;

//         #50;

//         // Set a weight
//         #30 data = 8'b11111111;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00111000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000001;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000011;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000011;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000100;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000001;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;

//         #50;

//         // Set decay potential
//         #30 data = 8'b11111110;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00111111;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b10101111;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000010;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000011;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000100;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;

//         #50;

//         // Set adder A
//         #30 data = 8'b11111110;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00001000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b10101111;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000010;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000101;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00100100;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;

//                 #50;

//         // Set adder B
//         #30 data = 8'b11111110;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00010000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b10101111;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00100010;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000011;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00100100;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;

//                 #50;

//         // Set adder C
//         #30 data = 8'b11111110;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00011000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b10101111;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00100010;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000011;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00100100;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;

//                 #50;

//         // Set adder D
//         #30 data = 8'b11111110;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00100000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b10000111;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000010;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000011;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00100100;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;

//                 #50;

//         // Set VT
//         #30 data = 8'b11111110;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00101000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b10101111;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000010;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b01011011;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;

//                 #50;

//         // Set U
//         #30 data = 8'b11111110;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00110000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b10101111;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000010;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00010011;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00100100;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;

//                 #50;

//         // Set working mode
//         #30 data = 8'b11111101;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000001;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;
//         #30 data = 8'b00000000;
//         load_data <= 1; #10 load_data <= 0;

//         #100;

//         // give inputs
//         #10 src_addr_in = 1;
//         #10 src_addr_in = 2;
//         #10 src_addr_in = 3;
//         #10 src_addr_in = 0;
        
//         // Time step
//         #15 time_step = 1;
//         #10 time_step = 0;
        
//         #50;

//         // give inputs
//         #10 src_addr_in = 1;
//         #10 src_addr_in = 3;
//         #10 src_addr_in = 0;
        
//         // Time step
//         #15 time_step = 1;
//         #10 time_step = 0;

//         #50;

//         // give inputs
//         #10 src_addr_in = 1;
//         #10 src_addr_in = 2;
//         #10 src_addr_in = 0;
        
//         // Time step
//         #15 time_step = 1;
//         #10 time_step = 0;

//         #50;

//         // give inputs
//         #10 src_addr_in = 2;
//         #10 src_addr_in = 3;
//         #10 src_addr_in = 0;
        
//         // Time step
//         #15 time_step = 1;
//         #10 time_step = 0;

//         #50;

//         // give inputs
//         #10 src_addr_in = 1;
//         #10 src_addr_in = 2;
//         #10 src_addr_in = 3;
//         #10 src_addr_in = 0;
        
//         // Time step
//         #15 time_step = 1;
//         #10 time_step = 0;

//         #50;

//         #100;
//         $finish;
//     end

endmodule