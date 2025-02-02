`timescale 1ns/100ps

module mac_TESTBENCH();

    reg CLK;
    reg[3:0] CLK_count;
    reg[11:0] source_addresses[0:9];
    reg[159:0] weights_arrays[0:9];
    reg[59:0] source_addresses_arrays[0:9];
    reg clear;
    reg[11:0] neuron_addresses[0:9];
    wire [31:0] results[0:9];
    reg done;

    //generate 10 accumulators
    genvar i;
    generate
        for(i=0; i<1; i=i+1) begin
            mac m(
                .CLK(CLK),
                .neuron_address(neuron_addresses[i]),
                .source_address(source_addresses[i]),
                .weights_array(weights_arrays[i]),
                .source_addresses_array(source_addresses_arrays[i]),
                .clear(clear),
                .mult_output(results[i])
            );
        end
    endgenerate

    // mac m1(CLK, neuron_address, source_address, weights_array, source_addresses_array, clear, result);

    // Print the outputs when ever the inputs change
    initial
    begin
        $monitor($time, "  source_address: %b           neuron_address: %b           result: %b              ", source_addresses[0], neuron_addresses[0], results[8]);
    end

    // Observe the timing on gtkwave
    initial begin
        $dumpfile("mac_wavedata.vcd");
        $dumpvars(0,mac_TESTBENCH);
    end


    initial begin 
        
        //initialize clock
        CLK = 1'b0;
        CLK_count = 0;
        clear = 1'b0;
        done = 1'b0;

        //neuron addresses
        neuron_addresses[0] = 12'd0;
        // neuron_addresses[1] = 12'd1;
        // neuron_addresses[2] = 12'd2;
        // neuron_addresses[3] = 12'd3;
        // neuron_addresses[4] = 12'd4;
        // neuron_addresses[5] = 12'd5;
        // neuron_addresses[6] = 12'd6;
        // neuron_addresses[7] = 12'd7;
        // neuron_addresses[8] = 12'd8;
        // neuron_addresses[9] = 12'd9;

        //send source addresses array first
        source_addresses_arrays[0] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        // source_addresses_arrays[1] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        // source_addresses_arrays[2] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        // source_addresses_arrays[3] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        // source_addresses_arrays[4] = {12'd1, 12'd2, 12'd5, 12'd0, 12'd0};
        // source_addresses_arrays[5] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        // source_addresses_arrays[6] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        // source_addresses_arrays[7] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        // source_addresses_arrays[8] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
        // source_addresses_arrays[9] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};

        //assign the weights
        weights_arrays[0] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[1] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[2] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[3] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[4] = {32'h423f47ae, 32'h4109999a, 32'h0, 32'h0, 32'h0};
        // weights_arrays[5] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[6] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[7] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[8] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[9] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};

        #40
        // source_addresses[8] = 12'd3;
        // source_addresses[4] = 12'd1;

        // #4
        // source_addresses[8] = 12'd4; 
        // source_addresses[4] = 12'd2;  

        // #4
        // source_addresses[8] = 12'd5;

        // #4
        source_addresses[0] = 12'd3;       

        #100
        done = 1'b1;
        $finish;    

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