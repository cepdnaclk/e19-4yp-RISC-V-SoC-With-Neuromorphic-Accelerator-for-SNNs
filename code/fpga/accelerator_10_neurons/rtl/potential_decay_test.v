// `include "potential_decay.v"
//`include "Addition_Subtraction.v"
//`include "Multiplication.v"
//`timescale 1ns/100ps

module potential_decay_test(input wire CLK1, input wire [31:0] new_potential, output reg done, output reg outdecay0, output reg outdecay1, output reg outdecay2, output reg outdecay3, output reg outdecay4, 
									output reg outdecay5, output reg outdecay6, output reg outdecay7, output reg outdecay8, output reg outdecay9, output reg [31:0] results_potential_decay);

    //reg CLK;
    reg clear;
	 reg set;
    wire[31:0] output_potential; 
    reg[3:0] decay_rate;
    reg[31:0] CLK_count;
	 reg [31:0] SET_Count;
    reg[11:0] neuron_addresses[0:10];
    //reg[31:0] membrane_potential[0:10-1];        //initialize membrane potential values
    wire[31:0] results_potential_decay_wire[0:10-1];     //store results of potential decay
    reg[1:0] model;
    wire[31:0] final_potential[0:10-1];             //potential form the potential adder
	 
	 //wire [31:0] new_potential_wire;
	 wire Exception;

    //reg[119:0] neuron_addresses_initialization;                 //input to initialize the neruon addresses

	 wire res0[0:9], res1[0:9], res2[0:9], res3[0:9], res4[0:9], res5[0:9], res6[0:9], res7[0:9], res8[0:9], res9[0:9]; 
	 wire done_wire;

    //test membrane potential value 4. Divided by 2 is 2
    // potential_decay potential_decay_1(CLK,clear, model, decay_rate,input_potential, output_potential);

    //generate 1024 potential decay units
    //generate 10 accumulators
    genvar i;
    generate
        for(i=0; i<1; i=i+1) begin: my_status
            potential_decay pd(
                .CLK_Decay(CLK1),
                /*.clear(clear),
					 .set(set),*/
                //.model(model),
                //.neuron_address_initialization(neuron_addresses[i]),
                //.decay_rate(decay_rate),
                //.membrane_potential_initialization(membrane_potential[i]),
                .output_potential_decay(results_potential_decay_wire[i]),
                .new_potential(new_potential),
					 .decayoutput0(res0[i]),
					 .decayoutput1(res1[i]),
					 .decayoutput2(res2[i]),
					 .decayoutput3(res3[i]),
					 .decayoutput4(res4[i]),
					 .decayoutput5(res5[i]),
					 .decayoutput6(res6[i]),
					 .decayoutput7(res7[i]),
					 .decayoutput8(res8[i]),
					 .decayoutput9(res9[i]),
					 .done(done_wire)
            );
        end
    endgenerate

	 //Addition_Subtraction add1(results_potential_decay_wire[0], results_potential_decay_wire[0], 1'b0, Exception, new_potential_wire);
    //record on gtkwave
    /*initial begin
        $dumpfile("potential_decay_test.vcd");
        $dumpvars(0, test_potential_decay);
        #100
        $finish;
    end*/

    //assign inputs
    initial begin
        //CLK = 1'b0;
        CLK_count = 0;
		  SET_Count = 0;
        clear = 1'b0;
        //decay_rate = 3'd1;
        //model = 2'b00;
		  //out8 = 1'b1;
		  //out10 = 1'b1;
		  

        //neuron addresses
       /* neuron_addresses[0] = 12'd0;
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
        membrane_potential[9] = 32'h411a147b;*/
		  
		  /*out0 = membrane_potential[1][0];
		  out1 = membrane_potential[1][1];
		  out2 = membrane_potential[1][2];
		  out3 = membrane_potential[1][3];
		  out4 = membrane_potential[1][4];
		  out5 = membrane_potential[1][5];
		  out6 = membrane_potential[1][6];
		  out7 = membrane_potential[1][7];
		  out8 = 1'b1;
		  out9 = membrane_potential[1][9];
		  out8 = membrane_potential[1][10];*/
    end

    // Print the outputs when ever the inputs change
    /*initial
    begin
        $monitor($time, "After Potential Decay: %b", results_potential_decay[0]);

    end*/

    //invert clock every 4 seconds
    /*always
        #4 CLK = ~CLK;*/

    /*//timestep is 4 clockcycles
    always @(posedge CLK) begin
			SET_Count = SET_Count + 1;
			if(SET_Count == 200000000) begin
					set = 1'b1;
			end  
		  
			if (SET_Count === 400000000) begin
				set = 1'b0;
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
	 
	 
	 always @ (results_potential_decay_wire[0]) begin
			results_potential_decay = results_potential_decay_wire[0];
		  outdecay0 = results_potential_decay_wire[0][31];
		  outdecay1 = results_potential_decay_wire[0][30];
		  outdecay2 = results_potential_decay_wire[0][29];
		  outdecay3 = results_potential_decay_wire[0][28];
		  outdecay4 = results_potential_decay_wire[0][27];
		  outdecay5 = results_potential_decay_wire[0][26];
		  outdecay6 = results_potential_decay_wire[0][25];
		  outdecay7 = results_potential_decay_wire[0][24];
		  outdecay8 = results_potential_decay_wire[0][23];
		  outdecay9 = results_potential_decay_wire[0][22];
	 end
	 
	 always @(done_wire) begin
		done = done_wire;
	 end
	 
    
endmodule