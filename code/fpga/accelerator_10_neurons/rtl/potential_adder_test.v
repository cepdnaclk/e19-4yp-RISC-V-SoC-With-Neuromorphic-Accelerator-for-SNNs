// `include "potential_decay.v"
// `include "Addition_Subtraction.v"
// `include "Multiplication.v"
`timescale 1ns/100ps

module potential_adder_test(input wire CLK2, input wire [31:0] input_weight, input wire [31:0] decayed_potential, output reg done, output reg outadder0, output reg outadder1,
									output reg outadder2, output reg outadder3, output reg outadder4, 
									output reg outadder5, output reg outadder6, output reg outadder7, output reg outadder8, output reg outadder9, output reg [31:0] final_potential);

    //reg CLK;
    reg clear;
	 reg set;                                             //clear to start timestep
    reg [31:0] v_threshold;
    //reg [31:0] input_weight; 
    //reg [31:0] decayed_potential;
    reg [1:0] model;
    reg [31:0] a;
    reg [31:0] b;
    reg [31:0] c;
    reg [31:0] d;
    reg [31:0] u_initialize;
    wire [31:0] final_potential_wire; 
    wire spike;
    reg[31:0] CLK_count;
	 reg [31:0] SET_Count;
	 
	 wire res0[0:9], res1[0:9], res2[0:9], res3[0:9], res4[0:9], res5[0:9], res6[0:9], res7[0:9], res8[0:9], res9[0:9];
	
    wire done_wire;	

    //test membrane potential value 4. Divided by 2 is 2
    // potential_decay potential_decay_1(CLK,clear, model, decay_rate,input_potential, output_potential);

    //generate 1024 potential decay units
   genvar i;
    generate
        for(i=0; i<1; i=i+1) begin: my_status
            potential_adder pd(
					 .CLK_Adder(CLK2),
                //.clear(clear),                                              //clear to start timestep
                //.set(set),
					 //.v_threshold(v_threshold),
                .input_weight(input_weight), 
                .decayed_potential(decayed_potential),
                //.model(model),
                //.a(a),
                //.b(b),
                //.c(c),
                //.d(d),
                //.u_initialize(u_initialize),
                .final_potential(final_potential_wire), 
                .spike(spike),
					 .adderoutput0(res0[i]),
					 .adderoutput1(res1[i]),
					 .adderoutput2(res2[i]),
					 .adderoutput3(res3[i]),
					 .adderoutput4(res4[i]),
					 .adderoutput5(res5[i]),
					 .adderoutput6(res6[i]),
					 .adderoutput7(res7[i]),
					 .adderoutput8(res8[i]),
					 .adderoutput9(res9[i]),
					 .done(done_wire)
            );
        end
    endgenerate


    //record on gtkwave
    /*initial begin
        $dumpfile("potential_adder_test.vcd");
        $dumpvars(0, test_potential_adder);
        #200
        $finish;
    end*/

    //assign inputs
    initial begin
        //CLK = 1'b0;
        CLK_count = 0;
        clear = 1'b0;
        /*v_threshold = 32'h42200000;
        model = 2'b00;
        a = 32'h4287c7ae;
        b = 32'h4287c7ae;
        c = 32'h4287c7ae;
        d = 32'h4287c7ae;
        //u_initialize = 32'h4287c7ae;
        input_weight = 32'h42470A3D;
        decayed_potential = 32'h425ED852;*/
		  
		 
    end
	 
	 //timestep is 4 clockcycles
    /*always @(posedge CLK) begin
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

	 always @(final_potential, spike) begin
		  outadder0 = final_potential[0];
		  outadder1 = final_potential[1];
		  outadder2 = final_potential[2];
		  outadder3 = final_potential[3];
		  outadder4 = final_potential[4];
		  outadder5 = final_potential[5];
		  outadder6 = final_potential[6];
		  outadder7 = final_potential[7];
		  //out8 = final_potential[8];
		  outadder9 = spike;
	 end
	 
	 always @(done_wire) begin
		done = done_wire;
	 end
	 
	 always @(final_potential_wire) begin
		final_potential = final_potential_wire;
	 end
    
endmodule