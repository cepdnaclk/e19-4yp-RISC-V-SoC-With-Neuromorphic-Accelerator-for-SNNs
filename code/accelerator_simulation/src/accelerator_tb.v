`include "utils/Addition_Subtraction.v"
`include "utils/Multiplication.v"
`include "accelerator.v"
// `include "utils/define.v"

`timescale 1ns/100ps

module accelerator_tb;

    reg CLK;                                                // clock
    reg clear;                                              // clear to start timestep
    reg [3:0] decay_rate;                                   // define decay rate
    reg [3:0] CLK_count;                                    // counter for clocks

    // Flattened 2D arrays into 1D arrays (Packed Format)
    reg [12*10-1:0] source_addresses;           // Flattened source addresses (12 bits * 10)
    reg [160*10-1:0] weights_arrays;            // Flattened weights (160 bits * 10)
    reg [60*10-1:0] source_addresses_arrays;    // Flattened source address arrays (60 bits * 10)
    reg [12*10-1:0] neuron_addresses;           // Flattened neuron addresses (12 bits * 10)
    reg [32*10-1:0] membrane_potential;         // Flattened membrane potential values (32 bits * 10)
    reg [32*10-1:0] v_threshold;                // Flattened threshold values (32 bits * 10)
    
    reg [359:0] downstream_connections_initialization; // Input to initialize downstream connections
    reg [119:0] neuron_addresses_initialization;       // Input to initialize neuron addresses
    reg [54:0] connection_pointer_initialization;      // Input to initialize connection pointers
    
    reg [11:0] spike_origin;                           // To store the neuron address from the arrived packet
    reg [11:0] spike_destination;                      // To store source address from the arrived packet
    reg [1:0] model;
    reg [31:0] a, b, c, d, u_initialize;               // For Izhikevich model

    wire [10-1:0] spike;                               // Spike signifier from potential decay

    // Accelerator instantiation
    accelerator acc(
        .CLK(CLK),
        .clear(clear),
        .decay_rate(decay_rate),
        .source_addresses(source_addresses),
        .weights_arrays(weights_arrays),
        .source_addresses_arrays(source_addresses_arrays),
        .neuron_addresses(neuron_addresses),
        .membrane_potential(membrane_potential),
        .v_threshold(v_threshold),
        .downstream_connections_initialization(downstream_connections_initialization),
        .neuron_addresses_initialization(neuron_addresses_initialization),
        .connection_pointer_initialization(connection_pointer_initialization),
        .model(model),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .u_initialize(u_initialize),
        .spike(spike)
    );    

    // // Observe the timing on GTKWave
    // initial begin
    //     $dumpfile("accelerator_tb.vcd");
    //     $dumpvars(0, accelerator_tb);
    // end

    // // Print the outputs whenever the inputs change
    // initial begin
    //     $monitor(
    //         $time,
    //         "  Neuron_address: %b\n                     Decay Rate: %d\n                     Source_address: %b\n                     Threshold: %b\n                     Spiked:%b",
    //         neuron_addresses[11 : 0],  // Extract neuron 0's address (first 12 bits)
    //         decay_rate,
    //         source_addresses[11 : 0], // Extract source address for neuron 0 (first 12 bits)
    //         v_threshold[31:0],      // Extract threshold for neuron 0 (first 32 bits)
    //         spike[0]
    //     );
    // end

    // // Assign inputs
    // initial begin
    //     CLK = 1'b0;
    //     CLK_count = 0;
    //     clear = 1'b0;
    //     decay_rate = 4'b0010;
    //     model = 2'b00;

    //     // Flattened neuron addresses
    //     neuron_addresses = {
    //         12'd9, 12'd8, 12'd7, 12'd6, 12'd5, 12'd4, 12'd3, 12'd2, 12'd1, 12'd0
    //     };

    //     // Flattened neuron addresses initialization
    //     neuron_addresses_initialization = {
    //         neuron_addresses[12*9 +: 12],
    //         neuron_addresses[12*8 +: 12],
    //         neuron_addresses[12*7 +: 12],
    //         neuron_addresses[12*6 +: 12],
    //         neuron_addresses[12*5 +: 12],
    //         neuron_addresses[12*4 +: 12],
    //         neuron_addresses[12*3 +: 12],
    //         neuron_addresses[12*2 +: 12],
    //         neuron_addresses[12*1 +: 12],
    //         neuron_addresses[12*0 +: 12]
    //     };

    //     // CSR connection pointer initialization
    //     connection_pointer_initialization = {5'd0, 5'd3, 5'd5, 5'd8, 5'd10, 5'd12, 5'd14, 5'd15, 5'd17, 5'd18, 5'd19};

    //     // Flattened downstream connections
    //     downstream_connections_initialization = {12'b000000000011, 12'b000000000101, 12'b000000000111, 
    //     12'b000000000100, 12'b000000000110,
    //     12'b000000000100, 12'b000000000101, 12'b000000000110,
    //     12'b000000001000, 12'b000000001001,
    //     12'b000000001000, 12'b000000001001,
    //     12'b000000001000, 12'b000000001001,
    //     12'b000000001001,
    //     12'b000000001000, 12'b000000001001,
    //     12'b111111111011,
    //     12'b111111111100,
    //     132'd0};

    //     // Flattened membrane potential initialization
    //     membrane_potential = {
    //         32'h411a147b, 32'h428e2e14, 32'h4212147b, 32'h4165eb85, 32'h429deb85,
    //         32'h42aeb852, 32'h4228b852, 32'h40b75c29, 32'h42806b85, 32'h41deb852
    //     };

    //     // Flattened source address arrays
    //     source_addresses_arrays = {
    //         {12'd3, 12'd4, 12'd5, 12'd6, 12'd7}, // Row 8
    //         {12'd3, 12'd4, 12'd5, 12'd6, 12'd7}, // Row 7
    //         {12'd3, 12'd4, 12'd5, 12'd6, 12'd7}, // Row 6
    //         {12'd3, 12'd4, 12'd5, 12'd6, 12'd7}, // Row 5
    //         {12'd3, 12'd4, 12'd5, 12'd6, 12'd7}, // Row 4
    //         {12'd1, 12'd2, 12'd5, 12'd0, 12'd0}, // Row 3
    //         {12'd0, 12'd4, 12'd5, 12'd6, 12'd7}, // Row 2
    //         {12'd3, 12'd4, 12'd5, 12'd6, 12'd7}, // Row 1
    //         {12'd3, 12'd4, 12'd5, 12'd6, 12'd7}, // Row 1
    //         {12'b001111111000, 12'b111111111111, 12'b111111111111, 12'b111111111111, 12'b111111111111}  // Row 0
    //     };

    //     // Flattened weights
    //     weights_arrays = {
    //         {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852},
    //         {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852},
    //         {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852},
    //         {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852},
    //         {32'h423f47ae, 32'h4109999a, 32'h0, 32'h0, 32'h0},
    //         {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852},
    //         {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852},
    //         {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852},
    //         {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852},
    //         {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852}
    //     };

    //     // Flattened threshold values
    //     v_threshold = {
    //         32'h4287c7ae, 32'h4215ae14, 32'h43480000, 32'h42200000, 32'h426b28f6,
    //         32'h43480000, 32'h42910000, 32'h4048f5c3, 32'h4237851f, 32'h42200000
    //     };

    //     // Izhikevich model parameters
    //     a = 32'h4287c7ae;
    //     b = 32'h4287c7ae;
    //     c = 32'h4287c7ae;
    //     d = 32'h4287c7ae;
    //     u_initialize = 32'h4287c7ae;

    //     #40
    //     source_addresses[12*0 +: 12] = 12'b001111111000;
    //     source_addresses[12*4 +: 12] = 12'd1;

    //     #4
    //     source_addresses[12*6 +: 12] = 12'd4; 
    //     source_addresses[12*4 +: 12] = 12'd2; 

    //     #4
    //     source_addresses[12*6 +: 12] = 12'd5;

    //     #4
    //     source_addresses[12*4 +: 12] = 12'd7; 

    //     #500
    //     $finish;   
    // end

    // Invert clock every 4 seconds
    always #4 CLK = ~CLK;

    // Timestep is 4 clock cycles
    always @(posedge CLK) begin
        if (CLK_count == 3) begin
            CLK_count = 0;
            clear = 1'b1;
        end else begin
            CLK_count = CLK_count + 1;
        end

        if (CLK_count == 1) begin
            clear = 1'b0;
        end
    end

endmodule
