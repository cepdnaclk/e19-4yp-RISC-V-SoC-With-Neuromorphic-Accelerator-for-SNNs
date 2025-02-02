`timescale 1ns/100ps
// `include "potential_decay.v"
// `include "mac.v"
// `include "Addition_Subtraction.v"
// `include "Multiplication.v"
// `include "potential_adder.v"
// `include "network_interface.v"

module testbench;

    parameter number_of_neurons=10;                        //initiailize number of neurons
    reg CLK;                                                //clock
    reg clear;                                              //clear to start timestep
    reg[3:0] decay_rate;                                    //define decay rate
    reg[3:0] CLK_count;                                     //counter for clocks

    reg[11:0] source_addresses[0:number_of_neurons-1];          //write her simulate spike packets by sending source addresses
    reg[159:0] weights_arrays[0:number_of_neurons-1];           //initialize store weights of the connections
    reg[59:0] source_addresses_arrays[0:number_of_neurons-1];   //initialize connection by writing source addresses to the accumulators
    reg[11:0] neuron_addresses[0:number_of_neurons-1];          //initialize with neuron addresses
    reg[31:0] membrane_potential[0:number_of_neurons-1];        //initialize membrane potential values
    reg[31:0] v_threshold[0:number_of_neurons-1];               //threshold values
    reg[359:0] downstream_connections_initialization;    //input to initialize the dowanstream connections
    reg[119:0] neuron_addresses_initialization;                //input to initialize the neruon addresses
    reg[54:0] connection_pointer_initialization;               //input to initialize the connection pointers
    reg[11:0] spike_origin;                               //to store the nueron address from the arrived packet
    reg[11:0] spike_destination;                               //to store source address from the arrived packet
    reg[1:0] model;
    reg[31:0]a, b, c, d, u_initialize;      //for izhikevich model
    wire[31:0] results_mac[0:number_of_neurons-1];                 //store results from the mac
    wire[31:0] results_potential_decay[0:number_of_neurons-1];     //store results of potential decay
    wire[31:0] final_potential[0:number_of_neurons-1];             //potential form the potential adder
    wire spike[0:number_of_neurons-1];                              //spike signifier from potential decay
    wire[23:0] packet;                          //packet containing neuron address and sources address
 
    //generate 10 potential decay units
    genvar i;
    generate
        for(i=0; i<10; i=i+1) begin
            potential_decay pd(
                .CLK(CLK),
                .clear(clear),
                .model(model),
                .neuron_address_initialization(neuron_addresses[i]),
                .decay_rate(decay_rate),
                .membrane_potential_initialization(membrane_potential[i]),
                .output_potential_decay(results_potential_decay[i]),
                .new_potential(final_potential[i])
            );
        end
    endgenerate

    //generate 10 accumulators
    generate
        for(i=0; i<10; i=i+1) begin
            mac m(
                .CLK(CLK),
                .neuron_address(neuron_addresses[i]),
                .source_address(source_addresses[i]),
                .weights_array(weights_arrays[i]),
                .source_addresses_array(source_addresses_arrays[i]),
                .clear(clear),
                .mult_output(results_mac[i])
            );
        end
    endgenerate

    //genrate corresponding 10 potential adders
    generate
        for(i=0; i<10; i=i+1) begin
            potential_adder pa(
                .clear(clear),
                .v_threshold(v_threshold[i]),
                .input_weight(results_mac[i]),
                .decayed_potential(results_potential_decay[i]),
                .model(model),
                .a(a),
                .b(b),
                .c(c),
                .d(d),
                .u_initialize(u_initialize),
                .final_potential(final_potential[i]),
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

    // Observe the timing on gtkwave
    initial
    begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);
    end

    // // Print the outputs when ever the inputs change
    initial
    begin
        $monitor($time, "  Neuron_address: %b\n                     Membrane Potential: %b\n                     Decay Rate: %d\n                     After Potential Decay: %b\n                     Source_address: %b\n                     MAC result: %b\n                     Threshold: %b\n                     Output Potential: %b\n                     Spiked:%b", neuron_addresses[0], membrane_potential[0], decay_rate, results_potential_decay[0], source_addresses[0], results_mac[0],v_threshold[0],final_potential[0], spike[0]);
    end

    // Observe the timing on gtkwave
    initial begin
        $dumpfile("accelerator_wavedata.vcd");
        $dumpvars(0,testbench);
    end

    // //assign inputs
    initial begin
        CLK = 1'b0;
        CLK_count = 0;
        clear = 1'b0;
        decay_rate = 4'b0010;
        model = 2'b00;

        //neuron addresses
        neuron_addresses[0] = 12'd0;
        neuron_addresses[1] = 12'd1;
        neuron_addresses[2] = 12'd2;
        neuron_addresses[3] = 12'd3;
        neuron_addresses[4] = 12'd4;
        neuron_addresses[5] = 12'd5;
        neuron_addresses[6] = 12'd6;
        neuron_addresses[7] = 12'd7;
        neuron_addresses[8] = 12'd8;
        neuron_addresses[9] = 12'd9;

        //for spike handling module
        neuron_addresses_initialization = {neuron_addresses[0],neuron_addresses[1],neuron_addresses[2],
        neuron_addresses[3],neuron_addresses[4],neuron_addresses[5],neuron_addresses[6],neuron_addresses[7],
        neuron_addresses[8],neuron_addresses[9]};

        //CSR
        connection_pointer_initialization = {5'd0, 5'd3, 5'd5, 5'd8, 5'd10, 5'd12, 5'd14, 5'd15, 5'd17, 5'd18, 5'd19};

        downstream_connections_initialization = {12'b000000000011, 12'b000000000101, 12'b000000000111, 
        12'b000000000100, 12'b000000000110,
        12'b000000000100, 12'b000000000101, 12'b000000000110,
        12'b000000001000, 12'b000000001001,
        12'b000000001000, 12'b000000001001,
        12'b000000001000, 12'b000000001001,
        12'b000000001001,
        12'b000000001000, 12'b000000001001,
        12'b111111111011,
        12'b111111111100,
        132'd0};


        //initial membrane potential values
        membrane_potential[0] = 32'h41deb852;
        membrane_potential[1] = 32'h42806b85;
        membrane_potential[2] = 32'h40b75c29;
        membrane_potential[3] = 32'h4228b852;
        membrane_potential[4] = 32'h42aeb852;
        membrane_potential[5] = 32'h429deb85;
        membrane_potential[6] = 32'h4165eb85;
        membrane_potential[7] = 32'h4212147b;
        membrane_potential[8] = 32'h428e2e14;
        membrane_potential[9] = 32'h411a147b;

        //send source addresses array first
        source_addresses_arrays[0] = {12'b001111111000, 12'b111111111111, 12'b111111111111, 12'b111111111111, 12'b111111111111};
        source_addresses_arrays[1] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        source_addresses_arrays[2] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        source_addresses_arrays[3] = {12'd0, 12'd4, 12'd5, 12'd6, 12'd7};
        source_addresses_arrays[4] = {12'd1, 12'd2, 12'd5, 12'd0, 12'd0};
        source_addresses_arrays[5] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        source_addresses_arrays[6] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        source_addresses_arrays[7] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        source_addresses_arrays[8] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        source_addresses_arrays[9] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};

        //assign the weights
        weights_arrays[0] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[1] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[2] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[3] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[4] = {32'h423f47ae, 32'h4109999a, 32'h0, 32'h0, 32'h0};
        weights_arrays[5] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[6] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[7] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[8] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        weights_arrays[9] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};

        //threshold values
        v_threshold[0] = 32'h42200000;
        v_threshold[1] = 32'h4237851f;
        v_threshold[2] = 32'h4048f5c3;
        v_threshold[3] = 32'h42910000;
        v_threshold[4] = 32'h43480000;
        v_threshold[5] = 32'h426b28f6;
        v_threshold[6] = 32'h42200000;
        v_threshold[7] = 32'h43480000;
        v_threshold[8] = 32'h4215ae14;
        v_threshold[9] = 32'h4287c7ae;

        a = 32'h4287c7ae;
        b = 32'h4287c7ae;
        c = 32'h4287c7ae;
        d = 32'h4287c7ae;
        u_initialize = 32'h4287c7ae;
        
        #40
        source_addresses[0] = 12'b001111111000;
        // source_addresses[4] = 12'd1;

        // #4
        // source_addresses[6] = 12'd4; 
        // source_addresses[4] = 12'd2; 

        // #4
        // source_addresses[6] = 12'd5;

        // #4
        // source_addresses[4] = 12'd7; 

        #500
        $finish;   
    end

    //when packets arrive from the potential adder send the source address to the relevant mac unit 
    always @(packet) begin
        spike_origin = packet[23:12];               // From where the spike came
        spike_destination = packet[11:0];           // To where it should be sent 

        source_addresses[spike_destination] = spike_origin;      // Trigger the wire of the relevant accumulator
    end

    //invert clock every 4 seconds
    always
        #4 CLK = ~CLK;

    //timestep is 4 clockcycles
    always @(posedge CLK) begin

        if(CLK_count==3) begin
            CLK_count=0;
            clear = 1'b1;
        end else begin
            CLK_count = CLK_count+1;
        end

        if(CLK_count==1) begin
            clear = 1'b0;
        end
    end

    

endmodule