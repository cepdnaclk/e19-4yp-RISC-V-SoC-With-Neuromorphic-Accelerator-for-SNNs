
// `include "Addition_Subtraction.v"
`timescale 1ns/100ps
// `isnclude "comparator.v"
 
module potential_adder_0(
	 input wire CLK_Adder0,
    //input wire clear,                                              //clear to start timestep
	 //input wire set,
    //input wire [31:0] v_threshold,
    input wire [31:0] input_weightAdder0, 
    input wire [31:0] decayed_potentialAdder0,
    //input wire [1:0] model,
    //input wire [31:0] a,
    //input wire [31:0] b,
    //input wire [31:0] c,
    //input wire [31:0] d,
    //input wire [31:0] u_initialize,
    output reg [31:0] final_potentialAdder0, 
    output reg spikeAdder0,
	 output reg adder0output0, output reg adder0output1, output reg adder0output2, output reg adder0output3, output reg adder0output4, 
	 output reg adder0output5, output reg adder0output6, output reg adder0output7, output reg adder0output8, output reg adder0output9, output reg adder0done);
    
	 reg clear;
	 reg set;
	 reg [31:0] CLK_count;
	 reg [31:0] SET_Count;
	 
	 //inputs manual initial
	 reg [31:0] v_threshold;
    //reg [31:0] input_weightAdder0; 
    //reg [31:0] decayed_potentialAdder0;
    reg [1:0] model;
    reg [31:0] a;
    reg [31:0] b;
    reg [31:0] c;
    reg [31:0] d;
    //reg [31:0] u_initialize,
	 
    //common
    
    //for LIF
    wire [31:0] reset_value;   //variable to assign new exponent value
    wire [31:0] add_value;
    wire greater;

    //for izi
    wire [31:0] weight_added;
    wire [31:0] weight_added_u;
    wire [31:0] final_u;
    wire [31:0] bv;
    wire [31:0] bv_u;
    wire [31:0] u_plus_d;
    wire [31:0] a_bv_u;
    wire greater_izhi;
    reg[31:0] u;

    wire Exception;
    wire Exception1;
    wire Exception2;

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

//**********Common************************
    // Addition
    Addition_Subtraction Addition_Subtraction_2(input_weightAdder0, decayed_potentialAdder0, 1'b0, Exception, weight_added);
//***********************************************

//LIF**************************
    //subtraction
    Addition_Subtraction Addition_Subtraction_1(weight_added, v_threshold, 1'b1, Exception1, reset_value);

    //compare the added potential to the threshold
    comparator comparator_2(weight_added, v_threshold, greater);
//************************************

//*******************Izi***********
    //update potential with subtracting u
    Addition_Subtraction Addition_Subtraction_3(weight_added, u, 1'b1, Exception2, weight_added_u);

    //u = u+d
    Addition_Subtraction Addition_Subtraction_7(d, u, 1'b1, Exception6, u_plus_d);  

    //compare the added potential to the threshold
    comparator comparator_3(weight_added_u, v_threshold, greater_izhi);

    //bv
    Multiplication Multiplication_1(b, decayed_potentialAdder0, Exception3, Overflow3, Underflow3, bv);  

    //bv-u
    Addition_Subtraction Addition_Subtraction_4(bv, u, 1'b1, Exception4, bv_u);

    //a(bv-u)
    Multiplication Multiplication_2(a, bv_u, Exception5, Overflow5, Underflow5, a_bv_u);
//*********************************************


//**********QLIF
    //v_squared plus input weight
    Addition_Subtraction Addition_Subtraction_Q_1(decayed_potentialAdder0, input_weightAdder0, 1'b1, Exception_Q_1, weight_added_Q);

    //compare the added potential to the threshold
    comparator comparator_Q_1(weight_added_Q, v_threshold, greater_Q);

    //subtraction
    Addition_Subtraction Addition_Subtraction_Q_2(weight_added_Q, v_threshold, 1'b1, Exception_Q_2, reset_value_Q);

//depending on the model set spikeAdder0 and reset values
    always@(*) begin
	 
		if (clear == 1) begin 
			spikeAdder0 = 1'b0;
		end else begin
	 
			if (set == 1) begin
					spikeAdder0 = 1'b0;
					u = 32'h4287c7ae;
					v_threshold = 32'h42200000;
					model = 2'b00;
					a = 32'h4287c7ae;
					b = 32'h4287c7ae;
					c = 32'h4287c7ae;
					d = 32'h4287c7ae;
					//u_initialize = 32'h4287c7ae;
					//input_weightAdder0 = 32'h42470A3D;
					//decayed_potentialAdder0 = 32'h425ED852;
					/*output0 = input_weightAdder0[0];
					output1 = input_weightAdder0[1];
					output2 = input_weightAdder0[2];
					output3 = input_weightAdder0[3];
					output4 = input_weightAdder0[4];
					output5 = input_weightAdder0[5];
					output6 = input_weightAdder0[6];
					output7 = input_weightAdder0[7];
					output8 = input_weightAdder0[8];
					output9 = input_weightAdder0[9];*/
			end else begin
			 case (model)

            //LIF
					2'b00: begin
                // Compare to see if spikeAdder0d
						if(greater==1'b1) spikeAdder0=1'b1;
						else spikeAdder0=1'b0;  

						if(spikeAdder0==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potentialAdder0 = reset_value;
						end else begin
							final_potentialAdder0 = weight_added;
						end  
					end

            //izhikevixh
					2'b01: begin
                // Compare to see if spikeAdder0d
						if(greater_izhi==1'b1) spikeAdder0=1'b1;
						else spikeAdder0=1'b0;  

						if(spikeAdder0==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potentialAdder0 = c;
							u = u_plus_d;
						end else begin
							final_potentialAdder0 = weight_added_u;
						end  
					end


            //QLIF
					2'b10: begin    
                // Compare to see if spikeAdder0d
						if(greater_izhi==1'b1) spikeAdder0=1'b1;
						else spikeAdder0=1'b0;  

						if(spikeAdder0==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potentialAdder0 = reset_value_Q;
						end else begin
							final_potentialAdder0 = weight_added_Q;
						end  
					end  

					default: final_potentialAdder0 = weight_added;
			endcase
		  
		  end
		  
		  

		end
		
		adder0output0 = final_potentialAdder0[0];
					adder0output1 = final_potentialAdder0[1];
					adder0output2 = final_potentialAdder0[2];
					adder0output3 = final_potentialAdder0[3];
					adder0output4 = final_potentialAdder0[4];
					adder0output5 = final_potentialAdder0[5];
					adder0output6 = final_potentialAdder0[6];
					adder0output7 = final_potentialAdder0[7];
					adder0output8 = final_potentialAdder0[8];
					adder0output9 = final_potentialAdder0[9];
					
	  end
	  
	  //timestep is 4 clockcycles
    always @(posedge CLK_Adder0) begin
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
				adder0done = 1'b1;
        end else begin
            CLK_count = CLK_count+1;
        end

        if(CLK_count==100000000) begin
            clear = 1'b0;
				adder0done = 1'b0;
        end
    end
     

endmodule