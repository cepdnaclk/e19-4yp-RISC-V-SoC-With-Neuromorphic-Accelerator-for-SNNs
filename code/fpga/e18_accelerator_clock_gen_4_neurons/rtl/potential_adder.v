
// `include "Addition_Subtraction.v"
`timescale 1ns/100ps
// `isnclude "comparator.v"
 
module potential_adder(
	 input wire CLK_Adder,
	 input wire set_adder,
	 input wire clear_adder,
    //input wire clear,                                              //clear to start timestep
	 //input wire set,
    //input wire [31:0] v_threshold_adder_0,
    input wire [31:0] input_weight, 
    input wire [31:0] decayed_potential,
    //input wire [1:0] model,
    //input wire [31:0] a,
    //input wire [31:0] b,
    //input wire [31:0] c,
    //input wire [31:0] d,
    //input wire [31:0] u_initialize,
    output reg [31:0] final_potential, 
    output reg spike,
	 output reg adderoutput0, output reg adderoutput1, output reg adderoutput2, output reg adderoutput3, output reg adderoutput4, 
	 output reg adderoutput5, output reg adderoutput6, output reg adderoutput7, output reg adderoutput8, output reg adderoutput9, output reg done);
    
	 //reg clear;
	 //reg set;
	 //reg [31:0] CLK_count;
	 //reg [31:0] SET_Count;
	 
	 //inputs manual initial
	 reg [31:0] v_threshold_adder_0;
    //reg [31:0] input_weight; 
    //reg [31:0] decayed_potential;
    reg [1:0] model;
  /*  reg [31:0] a;
    reg [31:0] b;
    reg [31:0] c;
    reg [31:0] d;
    reg [31:0] u_initialize,
	 */
    //common
    
    //for LIF
    wire [31:0] reset_value_adder_0;   //variable to assign new exponent value
    wire [31:0] add_value_adder_0;
    wire greater_adder_0;

    //for izi
    wire [31:0] weight_added_adder_0;
 /*   wire [31:0] weight_added_adder_0_u;
    wire [31:0] final_u;
    wire [31:0] bv;
    wire [31:0] bv_u;
    wire [31:0] u_plus_d;
    wire [31:0] a_bv_u;
    wire greater_adder_0_izhi;
    reg[31:0] u;
*/
    wire Exception_adder_0;
    wire Exception_adder_01;
 /*   wire Exception_adder_02;

    wire Exception_adder_03;
    wire Overflow3;
    wire Underflow3;

    wire Exception_adder_04;

    wire Exception_adder_05;
    wire Overflow5;
    wire Underflow5;

    wire Exception_adder_06;


//for QLIF

    wire[31:0] weight_added_adder_0_Q;
    wire [31:0] reset_value_adder_0_Q;
    wire Exception_adder_0_Q_1;
    wire greater_adder_0_Q;
    wire Exception_adder_0_Q_2;
*/
//**********Common************************
    // Addition
    Addition_Subtraction Addition_Subtraction_0_adder_0(input_weight, decayed_potential, 1'b0, Exception_adder_0, weight_added_adder_0);
//***********************************************

//LIF**************************
    //subtraction
    Addition_Subtraction Addition_Subtraction_1_adder_0(weight_added_adder_0, , 1'b1, Exception_adder_01, reset_value_adder_0);

    //compare the added potential to the threshold
    comparator comparator_2_adder_0(weight_added_adder_0, v_threshold_adder_0, greater_adder_0);
//************************************
/*
*******************Izi***********
    //update potential with subtracting u
    Addition_Subtraction Addition_Subtraction_3(weight_added_adder_0, u, 1'b1, Exception_adder_02, weight_added_adder_0_u);

    //u = u+d
    Addition_Subtraction Addition_Subtraction_7(d, u, 1'b1, Exception_adder_06, u_plus_d);  

    //compare the added potential to the threshold
    comparator comparator_3(weight_added_adder_0_u, v_threshold_adder_0, greater_adder_0_izhi);

    //bv
    Multiplication Multiplication_1(b, decayed_potential, Exception_adder_03, Overflow3, Underflow3, bv);  

    //bv-u
    Addition_Subtraction Addition_Subtraction_4(bv, u, 1'b1, Exception_adder_04, bv_u);

    //a(bv-u)
    Multiplication Multiplication_2(a, bv_u, Exception_adder_05, Overflow5, Underflow5, a_bv_u);
*********************************************


**********QLIF
    //v_squared plus input weight
    Addition_Subtraction Addition_Subtraction_Q_1(decayed_potential, input_weight, 1'b1, Exception_adder_0_Q_1, weight_added_adder_0_Q);

    //compare the added potential to the threshold
    comparator comparator_Q_1(weight_added_adder_0_Q, v_threshold_adder_0, greater_adder_0_Q);

    //subtraction
    Addition_Subtraction Addition_Subtraction_Q_2(weight_added_adder_0_Q, v_threshold_adder_0, 1'b1, Exception_adder_0_Q_2, reset_value_adder_0_Q);
*/
//depending on the model set spike and reset values
    always@(*) begin
	 
		if (clear_adder == 1) begin 
			spike = 1'b0;
		end else begin
	 
			if (set_adder == 1) begin
					spike = 1'b0;
					//u = 32'h4287c7ae;
					v_threshold_adder_0 = 32'h42200000;
					model = 2'b00;
					/*a = 32'h4287c7ae;
					b = 32'h4287c7ae;
					c = 32'h4287c7ae;
					d = 32'h4287c7ae;*/
					//u_initialize = 32'h4287c7ae;
					//input_weight = 32'h42470A3D;
					//decayed_potential = 32'h425ED852;
					/*output0 = input_weight[0];
					output1 = input_weight[1];
					output2 = input_weight[2];
					output3 = input_weight[3];
					output4 = input_weight[4];
					output5 = input_weight[5];
					output6 = input_weight[6];
					output7 = input_weight[7];
					output8 = input_weight[8];
					output9 = input_weight[9];*/
			end else begin
			 case (model)

            //LIF
					2'b00: begin
                // Compare to see if spiked
						if(greater_adder_0==1'b1) spike=1'b1;
						else spike=1'b0;  

						if(spike==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potential = reset_value_adder_0;
						end else begin
							final_potential = weight_added_adder_0;
						end  
					end
/*
            //izhikevixh
					2'b01: begin
                // Compare to see if spiked
						if(greater_adder_0_izhi==1'b1) spike=1'b1;
						else spike=1'b0;  

						if(spike==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potential = c;
							u = u_plus_d;
						end else begin
							final_potential = weight_added_adder_0_u;
						end  
					end

            //QLIF
					2'b10: begin    
                // Compare to see if spiked
						if(greater_adder_0_izhi==1'b1) spike=1'b1;
						else spike=1'b0;  

						if(spike==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potential = reset_value_adder_0_Q;
						end else begin
							final_potential = weight_added_adder_0_Q;
						end  
					end  
*/
					default: final_potential = weight_added_adder_0;
			endcase
		  
		  end
		  
		  

		end
		
		adderoutput0 = final_potential[0];
					adderoutput1 = final_potential[1];
					adderoutput2 = final_potential[2];
					adderoutput3 = final_potential[3];
					adderoutput4 = final_potential[4];
					adderoutput5 = final_potential[5];
					adderoutput6 = final_potential[6];
					adderoutput7 = final_potential[7];
					adderoutput8 = final_potential[8];
					adderoutput9 = final_potential[9];
					
	  end
	  
	  //timestep is 4 clockcycles
    /*always @(posedge CLK_Adder) begin
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


endmodule