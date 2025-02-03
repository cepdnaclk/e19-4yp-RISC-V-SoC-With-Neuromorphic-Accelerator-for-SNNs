`timescale 1ns/100ps

module Neuron (
    input wire clk, rst, time_step, load,
    input wire [9:0] address,
    input wire [31:0] value,
    input wire [2:0] decay_mode,
    input wire [1:0] adder_model,
    input wire [2:0] init_mode_adder,
    input wire init_mode_acc,
    output wire spike
);

    wire [31:0] new_potential, final_potential;
    wire [31:0] output_potential_decay;
    wire [31:0] accumulated_out;
    wire [31:0] input_weight; 
    wire [31:0] decayed_potential;
    wire weight_load, adder_load, adder_done, decay_load;
    wire [9:0] src_addr;
    wire [31:0] weight_in;


    Accumulator acc (
        .clk(clk),
        .rst(rst),
        .time_step(time_step),
        .load(weight_load),
        .mode(init_mode_acc),
        .src_addr(src_addr),
        .weight_in(weight_in),
        .accumulated_out(accumulated_out)
    );

    potential_decay decay (
        .clk(clk),
        .rst(rst),
        .load(decay_load),
        .time_step(time_step),
        .mode(decay_mode),
        .new_potential(new_potential),
        .output_potential_decay(output_potential_decay)
    );

    potential_adder adder (
        .clk(clk),
        .rst(rst),
        .time_step(time_step),
        .load(adder_load),
        .input_weight(input_weight),
        .decayed_potential(decayed_potential),
        .model(adder_model),
        .init_mode(init_mode_adder),
        .final_potential(final_potential),
        .done(adder_done),
        .spike(spike)
    );

    assign weight_load = (init_mode_acc == 1'b1) ? load : 0;
    assign src_addr = address;
    assign weight_in = (init_mode_acc == 1'b1) ? value : 0;

    assign decay_load = (decay_mode == `IDLE) ? load : adder_done;
    assign new_potential = (decay_mode == `IDLE) ? value : final_potential;

    assign adder_load = (init_mode_adder != `DEFAULT) ? load : 0;
    assign input_weight = (init_mode_adder != `DEFAULT) ? value : accumulated_out;
    assign decayed_potential = output_potential_decay;

endmodule
