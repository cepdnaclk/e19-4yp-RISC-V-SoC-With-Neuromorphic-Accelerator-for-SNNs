`include "neuron/neuron.v"

`timescale 1ns/100ps

module neuron_tb;

    reg CLK;
    reg clear;                      // Clear to start timestep
    reg [11:0] neuron_address;      // Neuron address
    reg [11:0] source_address;      // Source address
    reg [159:0] weights_array;      // Weights array used during initialization (32x5=160 bits)
    reg [59:0] source_addresses_array; // Corresponding source address array used during initialization (12x5=60 bits)
    reg [31:0] v_threshold;         // Threshold value
    reg [3:0] decay_rate;           // Input decay rate
    reg [31:0] membrane_potential_initialization; // Membrane potential initialization
    reg [1:0] model;                 // Input mode
    reg [31:0] a;                   // For Izhikevich model
    reg [31:0] b;                   // For Izhikevich model
    reg [31:0] c;                   // For Izhikevich model
    reg [31:0] d;                   // For Izhikevich model
    reg [31:0] u_initialize;        // For Izhikevich model
    wire spike;                     // Output spike
    reg[3:0] CLK_count;                                     //counter for clocks

    // Instantiate neuron module
    neuron n(
        .CLK(CLK), 
        .clear(clear), 
        .neuron_address(neuron_address), 
        .source_address(source_address), 
        .weights_array(weights_array), 
        .source_addresses_array(source_addresses_array), 
        .v_threshold(v_threshold), 
        .decay_rate(decay_rate), 
        .membrane_potential_initialization(membrane_potential_initialization), 
        .model(model), 
        .a(a), 
        .b(b), 
        .c(c), 
        .d(d), 
        .u_initialize(u_initialize), 
        .spike(spike)
    );

    // Record to GTKWave
    initial begin
        $dumpfile("neuron_tb.vcd");
        $dumpvars(0, neuron_tb);
        #500
        $finish;
    end

    // Assign inputs
    initial begin
        CLK = 1'b0;
        CLK_count = 0;
        clear = 1'b0;
        decay_rate = 4'b0010;
        model = 2'b00;

        neuron_address = 12'b000000000000;

        membrane_potential_initialization = 32'h41deb852;
        source_addresses_array = {12'b001111111000, 12'b111111111111, 12'b111111111111, 12'b111111111111, 12'b111111111111};
        weights_array = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        v_threshold = 32'h42200000;
        a = 32'h4287c7ae;
        b = 32'h4287c7ae;
        c = 32'h4287c7ae;
        d = 32'h4287c7ae;
        u_initialize = 32'h4287c7ae;

        #40
        source_address = 12'b001111111000;

        #500
        $finish;
    end

    // Invert clock every 4 ns
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
