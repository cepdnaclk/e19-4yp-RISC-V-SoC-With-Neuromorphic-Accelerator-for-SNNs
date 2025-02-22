// `include "potential_decay/potential_decay.v"
// `include "mac/mac.v"
// `include "potential_adder/potential_adder.v"
// `include "utils/Addition_Subtraction.v"
// `include "utils/Multiplication.v"
`include "network_interface/network_interface.v"
`include "neuron/neuron.v"	// Include the neuron module
// `include "utils/define.v"

// `define NUMBER_OF_NEURON_10 10

`timescale 1ns/100ps

module accelerator #(
    parameter NUMBER_OF_NEURON_10 = 10
)(
    input wire CLK,
    input wire clear,
    input wire[3:0] decay_rate,
    input wire[12*10-1:0] source_addresses,         //write her simulate spike packets by sending source addresses
    input wire[160*10-1:0] weights_arrays,           //initialize store weights of the connections
    input wire[60*10-1:0] source_addresses_arrays,   //initialize connection by writing source addresses to the accumulators
    input wire[12*10-1:0] neuron_addresses,          //initialize with neuron addresses
    input wire[32*10-1:0] membrane_potential,        //initialize membrane potential values
    input wire[32*10-1:0] v_threshold,               //threshold values
    input wire[359:0] downstream_connections_initialization,    //input to initialize the dowanstream connections
    input wire[119:0] neuron_addresses_initialization,                //input to initialize the neruon addresses
    input wire[54:0] connection_pointer_initialization,               //input to initialize the connection pointers
    input wire[1:0] model,
    input wire[31:0] a,       //for izhikevich model
    input wire[31:0] b,       //for izhikevich model
    input wire[31:0] c,       //for izhikevich model
    input wire[31:0] d,       //for izhikevich model
    input wire[31:0] u_initialize,      //for izhikevich model
    output wire[10-1:0] spike                          //spike signifier from potential decay
);
    reg[11:0] spike_origin;                               //to store the nueron address from the arrived packet
    reg[11:0] spike_destination;                               //to store source address from the arrived packet
    wire[23:0] packet;                          //packet containing neuron address and sources address
    reg[12*10-1:0] source_addresses_reg;         //write her simulate spike packets by sending source addresses

    // always @(source_addresses) begin
    //     source_addresses_reg = source_addresses;
    // end

    generate
    genvar i; // Declare the generate variable
    for (i = 0; i < NUMBER_OF_NEURON_10; i = i + 1) begin : gen_neuron_loop // Add a name for the generate block
        neuron n (
            .CLK(CLK),
            .clear(clear),
            .neuron_address(neuron_addresses[12*(i+1)-1:i*12]),
            .source_address(source_addresses_reg[12*(i+1)-1:i*12]),
            .weights_array(weights_arrays[160*(i+1)-1:i*160]),
            .source_addresses_array(source_addresses_arrays[60*(i+1)-1:i*60]),
            .v_threshold(v_threshold[32*(i+1)-1:i*32]),
            .decay_rate(decay_rate),
            .membrane_potential_initialization(membrane_potential[32*(i+1)-1:i*32]),
            .model(model),
            .a(a),
            .b(b),
            .c(c),
            .d(d),
            .u_initialize(u_initialize),
            .spike(spike[i])
        );
    end
    endgenerate

    network_interface ni1(
        .CLK(CLK),
        .clear(clear),
        // .spikes({spike[0],spike[1],spike[2],spike[3],spike[4],spike[5],spike[6],spike[7],spike[8],spike[9]}),
        .spike0(spike[0]),
        .spike1(spike[1]),
        .spike2(spike[2]),
        .spike3(spike[3]),
        .spike4(spike[4]),
        .spike5(spike[5]),
        .spike6(spike[6]),
        .spike7(spike[7]),
        .spike8(spike[8]),
        .spike9(spike[9]),
        .neuron_addresses_initialization(neuron_addresses_initialization),
        .connection_pointer_initialization(connection_pointer_initialization),           //input to initialize the connection pointers
        .downstream_connections_initialization(downstream_connections_initialization),    //input to initialize the dowanstream connections
        .packet(packet)               //outgoing packet         
    );

    //when packets arrive from the potential adder send the source address to the relevant mac unit 
    always @(packet) begin
        spike_origin = packet[23:12];               // From where the spike came
        spike_destination = packet[11:0];           // To where it should be sent 

        // Modify only the relevant 12-bit slice of source_addresses_reg
        source_addresses_reg[12*spike_destination +: 12] <= spike_origin; 
    end


endmodule