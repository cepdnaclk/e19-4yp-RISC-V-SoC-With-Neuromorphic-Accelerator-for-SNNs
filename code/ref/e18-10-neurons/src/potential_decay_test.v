// `include "potential_decay.v"
`include "Addition_Subtraction.v"
`include "Multiplication.v"
`timescale 1ns/100ps

module test_potential_decay;

    reg CLK;
    reg clear;
    wire[31:0] output_potential; 
    reg[31:0] input_potential;
    reg[3:0] decay_rate;
    reg[3:0] CLK_count;
    reg[11:0] neuron_addresses[0:1023];
    reg[31:0] membrane_potential[0:1024-1];        //initialize membrane potential values
    wire[31:0] results_potential_decay[0:1024-1];     //store results of potential decay
    reg[1:0] model;
    wire[31:0] final_potential[0:1024-1];             //potential form the potential adder

    reg[119:0] neuron_addresses_initialization;                 //input to initialize the neruon addresses



    //test membrane potential value 4. Divided by 2 is 2
    // potential_decay potential_decay_1(CLK,clear, model, decay_rate,input_potential, output_potential);

    //generate 1024 potential decay units
    genvar i;
    generate
        for(i=0; i<1024; i=i+1) begin
            potential_decay pd(
                .CLK(CLK),
                .clear(clear),
                .model(model),
                .neuron_address_initialization(neuron_addresses[i]),
                .decay_rate(decay_rate),
                .membrane_potential_initialization(membrane_potential[i]),
                .output_potential_decay(results_potential_decay[i]),
                .new_potential(results_potential_decay[i])
            );
        end
    endgenerate


    //record on gtkwave
    initial begin
        $dumpfile("potential_decay_test.vcd");
        $dumpvars(0, test_potential_decay); 
        #100
        $finish;
    end 

    //assign inputs
    initial begin
        CLK = 1'b0;
        CLK_count = 0;
        clear = 1'b0;
        decay_rate = 3'd1;
        input_potential = 32'b01000001001000000000000000000000;
        model = 2'b00;

        //neuron addresses
        neuron_addresses[0] = 12'd0;
        neuron_addresses[1] = 12'd1;    neuron_addresses[2] = 12'd2;    neuron_addresses[3] = 12'd3;    neuron_addresses[4] = 12'd4;    neuron_addresses[5] = 12'd5;    neuron_addresses[6] = 12'd6;    neuron_addresses[7] = 12'd7;    neuron_addresses[8] = 12'd8;    neuron_addresses[9] = 12'd9;

        //for network interface
        neuron_addresses_initialization = {        neuron_addresses[0], 
        neuron_addresses[1],         neuron_addresses[2],         neuron_addresses[3],         neuron_addresses[4],         neuron_addresses[5],         neuron_addresses[6],         neuron_addresses[7],         neuron_addresses[8],         neuron_addresses[9]};

        
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
    end

    // Print the outputs when ever the inputs change
    initial
    begin

        $monitor($time, " Input Potential: %b\n                     After Potential Decay: %b", input_potential, output_potential_decay);

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