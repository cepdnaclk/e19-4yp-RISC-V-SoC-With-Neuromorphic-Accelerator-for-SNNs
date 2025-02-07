
// `include "Addition_Subtraction.v"
`timescale 1ns/100ps
// `isnclude "comparator.v"
 
module potential_adder_5(
	 input wire CLK_Adder5,
    //input wire clear,                                              //clear to start timestep
	 //input wire set,
    //input wire [31:0] v_threshold,
    input wire [31:0] input_weightAdder5, 
    input wire [31:0] decayed_potentialAdder5,
    //input wire [1:0] model,
    //input wire [31:0] a,
    //input wire [31:0] b,
    //input wire [31:0] c,
    //input wire [31:0] d,
    //input wire [31:0] u_initialize,
    output reg [31:0] final_potentialAdder5, 
    output reg spikeAdder5,
	 output reg adder5output0, output reg adder5output1, output reg adder5output2, output reg adder5output3, output reg adder5output4, 
	 output reg adder5output5, output reg adder5output6, output reg adder5output7, output reg adder5output8, output reg adder5output9, output reg adder5done);
    
	 reg clear;
	 reg set;
	 reg [31:0] CLK_count;
	 reg [31:0] SET_Count;
	 
	 //inputs manual initial
	 reg [31:0] v_threshold;
    //reg [31:0] input_weightAdder5; 
    //reg [31:0] decayed_potentialAdder5;
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
    Addition_Subtraction Addition_Subtraction_2(input_weightAdder5, decayed_potentialAdder5, 1'b0, Exception, weight_added);
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
    Multiplication Multiplication_1(b, decayed_potentialAdder5, Exception3, Overflow3, Underflow3, bv);  

    //bv-u
    Addition_Subtraction Addition_Subtraction_4(bv, u, 1'b1, Exception4, bv_u);

    //a(bv-u)
    Multiplication Multiplication_2(a, bv_u, Exception5, Overflow5, Underflow5, a_bv_u);
//*********************************************


//**********QLIF
    //v_squared plus input weight
    Addition_Subtraction Addition_Subtraction_Q_1(decayed_potentialAdder5, input_weightAdder5, 1'b1, Exception_Q_1, weight_added_Q);

    //compare the added potential to the threshold
    comparator comparator_Q_1(weight_added_Q, v_threshold, greater_Q);

    //subtraction
    Addition_Subtraction Addition_Subtraction_Q_2(weight_added_Q, v_threshold, 1'b1, Exception_Q_2, reset_value_Q);

//depending on the model set spikeAdder5 and reset values
    always@(*) begin
	 
		if (clear == 1) begin 
			spikeAdder5 = 1'b0;
		end else begin
	 
			if (set == 1) begin
					spikeAdder5 = 1'b0;
					u = 32'h4287c7ae;
					v_threshold = 32'h426b28f6;
					model = 2'b00;
					a = 32'h4287c7ae;
					b = 32'h4287c7ae;
					c = 32'h4287c7ae;
					d = 32'h4287c7ae;
					//u_initialize = 32'h4287c7ae;
					//input_weightAdder5 = 32'h42470A3D;
					//decayed_potentialAdder5 = 32'h425ED852;
					/*output0 = input_weightAdder5[0];
					output1 = input_weightAdder5[1];
					output2 = input_weightAdder5[2];
					output3 = input_weightAdder5[3];
					output4 = input_weightAdder5[4];
					output5 = input_weightAdder5[5];
					output6 = input_weightAdder5[6];
					output7 = input_weightAdder5[7];
					output8 = input_weightAdder5[8];
					output9 = input_weightAdder5[9];*/
			end else begin
			 case (model)

            //LIF
					2'b00: begin
                // Compare to see if spikeAdder5d
						if(greater==1'b1) spikeAdder5=1'b1;
						else spikeAdder5=1'b0;  

						if(spikeAdder5==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potentialAdder5 = reset_value;
						end else begin
							final_potentialAdder5 = weight_added;
						end  
					end

            //izhikevixh
					2'b01: begin
                // Compare to see if spikeAdder5d
						if(greater_izhi==1'b1) spikeAdder5=1'b1;
						else spikeAdder5=1'b0;  

						if(spikeAdder5==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potentialAdder5 = c;
							u = u_plus_d;
						end else begin
							final_potentialAdder5 = weight_added_u;
						end  
					end


            //QLIF
					2'b10: begin    
                // Compare to see if spikeAdder5d
						if(greater_izhi==1'b1) spikeAdder5=1'b1;
						else spikeAdder5=1'b0;  

						if(spikeAdder5==1'b1) begin
                // Reset the potential according to the model
                // V <- V - Vth
							final_potentialAdder5 = reset_value_Q;
						end else begin
							final_potentialAdder5 = weight_added_Q;
						end  
					end  

					default: final_potentialAdder5 = weight_added;
			endcase
		  
		  end
		  
		  

		end
		
		adder5output0 = final_potentialAdder5[0];
					adder5output1 = final_potentialAdder5[1];
					adder5output2 = final_potentialAdder5[2];
					adder5output3 = final_potentialAdder5[3];
					adder5output4 = final_potentialAdder5[4];
					adder5output5 = final_potentialAdder5[5];
					adder5output6 = final_potentialAdder5[6];
					adder5output7 = final_potentialAdder5[7];
					adder5output8 = final_potentialAdder5[8];
					adder5output9 = final_potentialAdder5[9];
					
	  end
	  
	  //timestep is 4 clockcycles
    always @(posedge CLK_Adder5) begin
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
				adder5done = 1'b1;
        end else begin
            CLK_count = CLK_count+1;
        end

        if(CLK_count==100000000) begin
            clear = 1'b0;
				adder5done = 1'b0;
        end
    end
     

endmodule