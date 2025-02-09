`include "../utils/encording.v"
`include "controller.v"
`timescale 1ns/100ps

module controller_tb();
    reg clk, rst;
    reg [7:0] data;
    reg load_data;
    wire load;
    wire [31:0] value;
    wire [9:0] address;
    wire [2:0] decay_mode;
    wire [2:0] init_mode_adder;
    wire [1:0] adder_model;
    wire init_mode_acc;

    Controller_N controller(
        .data(data),
        .clk(clk),
        .rst(rst),
        .load_data(load_data),
        .load(load),
        .value(value),
        .address(address),
        .decay_mode(decay_mode),
        .init_mode_adder(init_mode_adder),
        .adder_model(adder_model),
        .init_mode_acc(init_mode_acc)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("controller_tb.vcd");
        $dumpvars(0, controller_tb);

        clk = 0;
        rst = 1;
        data = 0;
        load_data = 0;
        #10 rst = 0;

        #30 data = 8'b11111111;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00111000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000001;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b10101111;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000010;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000011;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000100;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000101;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000110;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;

        #50;

        #30 data = 8'b11111110;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00111111;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b10101111;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000010;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000011;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000100;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;

        #50;

        #30 data = 8'b11111110;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00001000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b10101111;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000010;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000011;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00100100;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;

                #50;

        #30 data = 8'b11111110;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00010000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b10101111;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000010;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000011;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00100100;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;

                #50;

        #30 data = 8'b11111110;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00011000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b10101111;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000010;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000011;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00100100;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;

                #50;

        #30 data = 8'b11111110;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00100000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b10101111;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000010;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000011;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00100100;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;

                #50;

        #30 data = 8'b11111110;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00101000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b10101111;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000010;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000011;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00100100;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;

                #50;

        #30 data = 8'b11111110;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00110000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b10101111;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000010;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000011;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00100100;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;

                #50;

        #30 data = 8'b11111101;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000001;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;
        #30 data = 8'b00000000;
        load_data <= 1; #10 load_data <= 0;

        #100
        $finish;
    end

endmodule