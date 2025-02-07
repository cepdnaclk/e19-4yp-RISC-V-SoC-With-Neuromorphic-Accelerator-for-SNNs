`timescale 1ns/100ps

module mac_TESTBENCH(input wire CLK, output reg done, output reg out0, output reg out1, output reg out2, output reg out3, output reg out4, 
									output reg out5, output reg out6, output reg out7, output reg out8, output reg out9, output reg out10, output reg out11,
									output reg out12, output reg out13, output reg out14, output reg out15, output reg [31:0] results);

    //reg CLK;
    reg[31:0] CLK_count;
	 reg[31:0] SET_Count;
    reg[11:0] source_addresses[0:9];
    //reg[159:0] weights_arrays[0:9];
    //reg[59:0] source_addresses_arrays[0:9];
    reg clear;
	reg set;
    reg[11:0] neuron_addresses[0:9];
    wire [31:0] results_wire[0:9];
    wire done_wire;
	 
	 wire res0[0:9], res1[0:9], res2[0:9], res3[0:9], res4[0:9], res5[0:9], res6[0:9], res7[0:9], res8[0:9], res9[0:9]; 

    //generate 10 accumulators
    genvar i;
    generate
        for(i=0; i<1; i=i+1) begin: random
            mac m(
                .CLK_Mac(CLK),
                //.neuron_address(neuron_addresses[i]),
                //.source_address(source_addresses[i]),
                //.weights_array(weights_arrays[i]),
                //.source_addresses_array(source_addresses_arrays[i]),
                /*.clear(clear),
					.set(set),*/
					//.SET_Count(SET_Count),
                .mult_output(results_wire[i]),
					 .macoutput0(res0[i]),
					 .macoutput1(res1[i]),
					 .macoutput2(res2[i]),
					 .macoutput3(res3[i]),
					 .macoutput4(res4[i]),
					 .macoutput5(res5[i]),
					 .macoutput6(res6[i]),
					 .macoutput7(res7[i]),
					 .macoutput8(res8[i]),
					 .macoutput9(res9[i]),
					 .done(done_wire)
            );
        end
    endgenerate

    // mac m1(CLK, neuron_address, source_address, weights_array, source_addresses_array, clear, result);


    initial begin 
        
        //initialize clock
        //CLK = 1'b0;
        CLK_count = 0;
        SET_Count = 0;
        clear = 1'b0;
		  set = 1'b0;
		  //source_addresses[0] = 12'd0;
        // done = 1'b0;

        //neuron addresses
        //neuron_addresses[0] = 12'd0;
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
        //source_addresses_arrays[0] = {12'd3, 12'd4, 12'd5, 12'd6, 12'd7};
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
        //weights_arrays[0] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[1] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[2] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[3] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[4] = {32'h423f47ae, 32'h4109999a, 32'h0, 32'h0, 32'h0};
        // weights_arrays[5] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[6] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[7] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[8] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};
        // weights_arrays[9] = {32'h4290b333, 32'h41975c29, 32'h42470a3d, 32'h0, 32'h42ae3852};

        //#40
        // source_addresses[8] = 12'd3;
        // source_addresses[4] = 12'd1;

        // #4
        // source_addresses[8] = 12'd4; 
        // source_addresses[4] = 12'd2;  

        // #4
        // source_addresses[8] = 12'd5;

        // #4        

    end


    //timestep is 4 clockcycles
    /*always @(posedge CLK) begin

			SET_Count = SET_Count + 1;
			if(SET_Count == 200000000) begin
					set = 1'b1;
					//out0 = 1'b1;
					source_addresses[0] = 12'd0;
			end  
		  
			if (SET_Count == 400000000) begin
				set = 1'b0;
				//out0 = 1'b0;
			end
			
			if (SET_Count == 500000000) begin
				source_addresses[0] = 12'd5;	
			end
	 
        if(CLK_count==300000000) begin
            CLK_count=0;
            clear = 1'b1;
				done = 1'b1;
        end else begin
            CLK_count = CLK_count+1;
        end

        if(CLK_count==100000000) begin
            clear = 1'b0;
				done = 1'b0;
        end
	 
    end*/

	 /*always @ (res0[0]) begin
		out0 = res0[0];
	 end
	 always @ (res1[0]) begin
		out1 = res1[0];
	 end
	 
	 always @ (res2[0]) begin
		out2 = res2[0];
	 end
	 always @ (res3[0]) begin
		out3 = res3[0];
	 end
	 always @ (res4[0]) begin
		out4 = res4[0];
	 end
	 always @ (res5[0]) begin
		out5 = res5[0];
	 end
	 always @ (res6[0]) begin
		out6 = res6[0];
	 end
	 always @ (res7[0]) begin
		out7 = res7[0];
	 end
	 always @ (res8[0]) begin
		out8 = res8[0];
	 end
	 always @ (res9[0]) begin
		out9 = res9[0];
	 end*/
	 
	 
	 always @ (results_wire[0]) begin
			results = results_wire[0];
		  out0 = results_wire[0][0];
		  out1 = results_wire[0][1];
		  out2 = results_wire[0][2];
		  out3 = results_wire[0][3];
		  out4 = results_wire[0][4];
		  out5 = results_wire[0][5];
		  out6 = results_wire[0][6];
		  out7 = results_wire[0][7];
		  out8 = results_wire[0][8];
		  out9 = results_wire[0][9];
	 end
	 
	 always @(done_wire) begin
		done = done_wire;
	 end
	 
	 
				/*out0 = source_addresses[0][0];
				out1 = source_addresses[0][1];
				out2 = source_addresses[0][2];
				out3 = source_addresses[0][3];
				out4 = source_addresses[0][4];
				out5 = source_addresses[0][5];
				out6 = source_addresses[0][6];
				out7 = source_addresses[0][7];
				out8 = source_addresses[0][8];
				out9 = source_addresses[0][9];*/
endmodule