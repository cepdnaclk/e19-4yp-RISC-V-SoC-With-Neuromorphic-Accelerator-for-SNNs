
// `include "Addition_Subtraction.v"
`timescale 1ns/100ps
// `isnclude "comparator.v"
 
module potential_adder_8(
	 input wire CLK_Adder8,
    //input wire clear,                                              //clear to start timestep
	 //input wire set,
    //input wire [31:0] v_threshold,
    input wire [31:0] input_weightAdder8, 
    input wire [31:0] decayed_potentialAdder8,
    //input wire [1:0] model,
    //input wire [31:0] a,
    //input wire [31:0] b,
    //input wire [31:0] c,
    //input wire [31:0] d,
    //input wire [31:0] u_initialize,
    output reg [31:0] final_potentialAdder8, 
    output reg spikeAdder8,
	 output reg adder8output0, output reg adder8output1, output reg adder8output2, output reg adder8output3, output reg adder8output4, 
	 output reg adder8output5, output reg adder8output6, output reg adder8output7, output reg adder8output8, output reg adder8output9, output reg adder8done);
    
	 reg clear;
	 reg set;
	 reg [31:0] CLK_count;
	 reg [31:0] SET_Count;
	 
	 //inputs manual initial
	 reg [31:0] v_threshold;
    //reg [31:0] input_weightAdder8; 
    //reg [31:0] decayed_potentialAdder8;
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
    Addition_Subtraction Addition_Subtraction_2(input_weightAdder8, decayed_potentialAdder8, 1'b0, Exception, weight_added);
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
    Multiplication Multiplication_1(b, decayed_potentialAdder8, Exception3, Overflow3, Underflow3, bv);  

    //bv-u
    Addition_Subtraction Addition_Subtraction_4(bv, u, 1'b1, Exception4, bv_u);

    //a(bv-u)
    Multiplication Multiplication_2(a, bv_u, Exception5, Overflow5, Underflow5, a_bv_u);
//*********************************************


//**********QLIF
    //v_squared plus input weight
    Addition_Subtraction Addition_Subtraction_Q_1(decayed_potentialAdder8, input_weightAdder8, 1'b1, Exception_Q_1, weight_added_Q);

    //compare the added potential to the threshold
    comparator comparator_Q_1(weight_added_Q, v_threshold, greater_Q);

    //subtraction
    Addition_Subtraction Addition_Subtraction_Q_2(weight_added_Q, v_threshold, 1'b1, Exception_Q_2, reset_value_Q);

//depending on the model set spikeAdder8 and reset values
    always@(*) begin
	 
		if (clear == 1) begin 
			spikeAdder8 = 1'b0;
		end else begin
	 
			if (set == 1) begin
					spikeAdder8 = 1'b0;
					u = 32'h4287c7ae;
					v_threshold = 32'h4215ae14;
					model = 2'b00;
					a = 32'h4287c7ae;
					b = 32'h4287c7ae;
					c = 32'h4287c7ae;
					d = 32'h4287c7ae;
					//u_initialize = 32'h4287c7ae;
					//input_weightAdder8 = 32'h42470A3D;
					//decayed_potentialAdder8 = 32'h425ED852;
					/*output0 = input_weightAdder8[0];
					output1 = input_weightAdder8[1];
					output2 = input_weightAdder8[2];
					output3 = input_weightAdder8[3];
					output4 = input_weightAdder8[4];
					output5 = input_weightAdder8[5];
					output6 = input_weightAdder8[6];
					output7 = input_weightAdder8[7];
					output8 = input_weightAdder8[8];
					output9 = input_weightAdder8[9];*/
			end else begin
			 case (model)

            //LIF
					2'b00: begin
                // Compare to see if spikeAdder8d
						if(greater==1'b1) spikeAdder8=1'b1;
						else spikeAdder8=1'b0;  

						if(spikeAdder8==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potentialAdder8 = reset_value;
						end else begin
							final_potentialAdder8 = weight_added;
						end  
					end

            //izhikevixh
					2'b01: begin
                // Compare to see if spikeAdder8d
						if(greater_izhi==1'b1) spikeAdder8=1'b1;
						else spikeAdder8=1'b0;  

						if(spikeAdder8==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potentialAdder8 = c;
							u = u_plus_d;
						end else begin
							final_potentialAdder8 = weight_added_u;
						end  
					end


            //QLIF
					2'b10: begin    
                // Compare to see if spikeAdder8d
						if(greater_izhi==1'b1) spikeAdder8=1'b1;
						else spikeAdder8=1'b0;  

						if(spikeAdder8==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potentialAdder8 = reset_value_Q;
						end else begin
							final_potentialAdder8 = weight_added_Q;
						end  
					end  

					default: final_potentialAdder8 = weight_added;
			endcase
		  
		  end
		  
		  

		end
		
		adder8output0 = final_potentialAdder8[0];
					adder8output1 = final_potentialAdder8[1];
					adder8output2 = final_potentialAdder8[2];
					adder8output3 = final_potentialAdder8[3];
					adder8output4 = final_potentialAdder8[4];
					adder8output5 = final_potentialAdder8[5];
					adder8output6 = final_potentialAdder8[6];
					adder8output7 = final_potentialAdder8[7];
					adder8output8 = final_potentialAdder8[8];
					adder8output9 = final_potentialAdder8[9];
					
	  end
	  
	  //timestep is 4 clockcycles
    always @(posedge CLK_Adder8) begin
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
				adder8done = 1'b1;
        end else begin
            CLK_count = CLK_count+1;
        end

        if(CLK_count==100000000) begin
            clear = 1'b0;
				adder8done = 1'b0;
        end
    end
     

endmodule