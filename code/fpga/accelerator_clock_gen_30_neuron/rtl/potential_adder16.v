
// `include "Addition_Subtraction.v"
`timescale 1ns/100ps
// `isnclude "comparator.v"
 
module potential_adder16(
	 input wire set_adder16,
	 input wire clear_adder16,
    //input wire clear,                                              //clear to start timestep
	 //input wire set,
    //input wire [31:0] v_threshold,
    input wire [31:0] input_weight16, 
    input wire [31:0] decayed_potential16,
    //input wire [1:0] model,
    //input wire [31:0] a,
    //input wire [31:0] b,
    //input wire [31:0] c,
    //input wire [31:0] d,
    //input wire [31:0] u_initialize,
    output reg [31:0] final_potential16, 
    output reg spike16,
	 output reg adderoutput160, output reg adderoutput161, output reg adderoutput162, output reg adderoutput163, output reg adderoutput164, 
	 output reg adderoutput165, output reg adderoutput166, output reg adderoutput167, output reg adderoutput168, output reg adderoutput169, output reg done);
    
	 //reg clear;
	 //reg set;
	 //reg [31:0] CLK_count;
	 //reg [31:0] SET_Count;
	 
	 //inputs manual initial
	 reg [31:0] v_threshold;
    //reg [31:0] input_weight16; 
    //reg [31:0] decayed_potential16;
    reg [1:0] model;
   /* reg [31:0] a;
    reg [31:0] b;
    reg [31:0] c;
    reg [31:0] d;
    //reg [31:0] u_initialize,
	 */
    //common
    
    //for LIF
    wire [31:0] reset_value;   //variable to assign new exponent value
    wire [31:0] add_value;
    wire greater;

    //for izi
    wire [31:0] weight_added;
  /*  wire [31:0] weight_added_u;
    wire [31:0] final_u;
    wire [31:0] bv;
    wire [31:0] bv_u;
    wire [31:0] u_plus_d;
    wire [31:0] a_bv_u;
    wire greater_izhi;
    reg[31:0] u;
*/
    wire Exception;
    wire Exception1;
  /*  wire Exception2;

    wire Exception3;
    wire Overflow3;
    wire Underflow3;

    wire Exception4;

    wire Exception5;
    wire Overflow5;
    wire Underflow5;

    wire Exception6;


//for QLIF

    wire[31:0] weight_added_Q;
    wire [31:0] reset_value_Q;
    wire Exception_Q_1;
    wire greater_Q;
    wire Exception_Q_2;
*/
//**********Common************************
    // Addition
    Addition_Subtraction Addition_Subtraction_2_adder_6(input_weight16, decayed_potential16, 1'b0, Exception, weight_added);
//***********************************************

//LIF**************************
    //subtraction
    Addition_Subtraction Addition_Subtraction_1_adder_6(weight_added, v_threshold, 1'b1, Exception1, reset_value);

    //compare the added potential to the threshold
    comparator comparator_2_adder_6(weight_added, v_threshold, greater);
//************************************
/*
*******************Izi***********
    //update potential with subtracting u
    Addition_Subtraction Addition_Subtraction_3(weight_added, u, 1'b1, Exception2, weight_added_u);

    //u = u+d
    Addition_Subtraction Addition_Subtraction_7(d, u, 1'b1, Exception6, u_plus_d);  

    //compare the added potential to the threshold
    comparator comparator_3(weight_added_u, v_threshold, greater_izhi);

    //bv
    Multiplication Multiplication_1(b, decayed_potential16, Exception3, Overflow3, Underflow3, bv);  

    //bv-u
    Addition_Subtraction Addition_Subtraction_4(bv, u, 1'b1, Exception4, bv_u);

    //a(bv-u)
    Multiplication Multiplication_2(a, bv_u, Exception5, Overflow5, Underflow5, a_bv_u);
*********************************************


**********QLIF
    //v_squared plus input weight
    Addition_Subtraction Addition_Subtraction_Q_1(decayed_potential16, input_weight16, 1'b1, Exception_Q_1, weight_added_Q);

    //compare the added potential to the threshold
    comparator comparator_Q_1(weight_added_Q, v_threshold, greater_Q);

    //subtraction
    Addition_Subtraction Addition_Subtraction_Q_2(weight_added_Q, v_threshold, 1'b1, Exception_Q_2, reset_value_Q);
*/
//depending on the model set spike16 and reset values
    always@(*) begin
	 
		if (clear_adder16 == 1) begin 
			spike16 = 1'b0;
		end else begin
	 
			if (set_adder16 == 1) begin
					spike16 = 1'b0;
//u = 32'h4287c7ae;
					v_threshold = 32'h42200000;
					model = 2'b00;
/*					a = 32'h4287c7ae;
					b = 32'h4287c7ae;
					c = 32'h4287c7ae;
					d = 32'h4287c7ae;
	*/				//u_initialize = 32'h4287c7ae;
					//input_weight16 = 32'h42470A3D;
					//decayed_potential16 = 32'h425ED852;
					/*output0 = input_weight16[0];
					output1 = input_weight16[1];
					output2 = input_weight16[2];
					output3 = input_weight16[3];
					output4 = input_weight16[4];
					output5 = input_weight16[5];
					output6 = input_weight16[6];
					output7 = input_weight16[7];
					output8 = input_weight16[8];
					output9 = input_weight16[9];*/
			end else begin
			 case (model)

            //LIF
					2'b00: begin
                // Compare to see if spike16d
						if(greater==1'b1) spike16=1'b1;
						else spike16=1'b0;  

						if(spike16==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potential16 = reset_value;
						end else begin
							final_potential16 = weight_added;
						end  
					end
/*
            //izhikevixh
					2'b01: begin
                // Compare to see if spike16d
						if(greater_izhi==1'b1) spike16=1'b1;
						else spike16=1'b0;  

						if(spike16==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potential16 = c;
							u = u_plus_d;
						end else begin
							final_potential16 = weight_added_u;
						end  
					end


            //QLIF
					2'b10: begin    
                // Compare to see if spike16d
						if(greater_izhi==1'b1) spike16=1'b1;
						else spike16=1'b0;  

						if(spike16==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potential16 = reset_value_Q;
						end else begin
							final_potential16 = weight_added_Q;
						end  
					end  
*/
					default: final_potential16 = weight_added;
			endcase
		  
		  end
		  
		  

		end
		
		adderoutput160 = final_potential16[0];
					adderoutput161 = final_potential16[1];
					adderoutput162 = final_potential16[2];
					adderoutput163 = final_potential16[3];
					adderoutput164 = final_potential16[4];
					adderoutput165 = final_potential16[5];
					adderoutput166 = final_potential16[6];
					adderoutput167 = final_potential16[7];
					adderoutput168 = final_potential16[8];
					adderoutput169 = final_potential16[9];
					
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