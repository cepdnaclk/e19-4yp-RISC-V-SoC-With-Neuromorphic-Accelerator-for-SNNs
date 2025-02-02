`include "potential_decay/potential_decay.v"
`include "mac/mac.v"
`include "utils/Addition_Subtraction.v"
`include "utils/Multiplication.v"
`include "potential_adder/potential_adder.v"

`timescale 1ns/100ps

module neuron(
    input wire CLK,                             //input clock
    input wire clear,                           //clear signal to define timesteps
    input wire[11:0] neuron_address,            //neuron address
    input wire[11:0] source_address,            //source address of 12 bits
    input wire[160-1:0] weights_array,            //weights array used during intialization 32x5=160 bits
    input wire[59:0] source_addresses_array,          //corresponding source address array used during initialization 12x5=60 bits
    input wire[31:0] v_threshold,                //threshold value
    input wire[3:0] decay_rate,                 //input decay rate,
    input wire[31:0] membrane_potential_initialization,        // membrane_potential
    input wire[1:0] model, //input mode
    input wire[31:0]a,     //for izhikevich model
    input wire[31:0]b,     //for izhikevich model
    input wire[31:0]c,      //for izhikevich model
    input wire[31:0]d,      //for izhikevich model
    input wire[31:0]u_initialize,     //for izhikevich model
    output wire spike                          //output spike
    );   

    wire[31:0] output_potential_decay;     //output of the new potential value after decay
    wire[31:0] final_potential;            //output potential value
    wire[31:0] results_mac;                 //output of the mac


    potential_decay pd(
        .CLK(CLK),
        .clear(clear),
        .model(model),
        .neuron_address_initialization(neuron_address),
        .decay_rate(decay_rate),
        .membrane_potential_initialization(membrane_potential_initialization),
        .new_potential(final_potential),
        .output_potential_decay(output_potential_decay)
    );

    mac m(
        .CLK(CLK),
        .neuron_address(neuron_address),
        .source_address(source_address),
        .weights_array(weights_array),
        .source_addresses_array(source_addresses_array),
        .clear(clear),
        .mult_output(results_mac)
    );

    potential_adder pa(
        .clear(clear),
        .v_threshold(v_threshold),
        .input_weight(results_mac),
        .decayed_potential(output_potential_decay),
        .final_potential(final_potential),
        .spike(spike),
        .model(model),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .u_initialize(u_initialize)
    );

endmodule