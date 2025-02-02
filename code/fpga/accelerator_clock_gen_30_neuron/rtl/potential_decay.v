`timescale 1ns/100ps
//Potential decay for divinding by 1, 2, 4, and 8 only
  
module potential_decay(
    input wire CLK_Decay,                             //input clock
	 input set_decay,
	 input clear_decay,
    /*input wire clear,                           //clear signmac0al to define timesteps4
	 input wire set,*/										//wire for initialisation
    //input wire[1:0] modelmac0,                      //modelmac0. 00 -> LIF, 01 -> Izhikevich, 10 -> Quadratic LIF
    //input wire[11:0] neuron_addressmac0_initialization,            //neuron address
    //input wire[3:0] decay_rate,                 //input decay rate,
    //input wire[31:0] membrane_potentialmac0_initialization,        // membrane_potentialmac0
    input wire[31:0] new_potential,             //input from the potential adder side
    output reg[31:0] output_potential_decay,     //output of the new potential value after decay
	 output reg decayoutput0, output reg decayoutput1, output reg decayoutput2, output reg decayoutput3, output reg decayoutput4, 
	 output reg decayoutput5, output reg decayoutput6, output reg decayoutput7, output reg decayoutput8, output reg decayoutput9, output reg done
    );   
     
    reg [1:0] signmac0;                         //signmac0 of the potential value
    reg [7:0] exponentmac0;                     //get exponentmac0 of membrane potential value 
    reg [22:0] mantissamac0;                    //get mantissamac0 from membrane potential value
    reg [7:0] adjusted_exponentmac0;            //variable to assignmac0 new exponentmac0 value
    reg[7:0] exponentmac0_divided_by_2;         //store division by 2
    reg[7:0] exponentmac0_divided_by_4;         //store division by 4
    
    wire Exceptionmac0;                         //Exceptionmac0 of the addition
 /*   wire Exceptionmac04;                         //Exceptionmac0 of the addition  

    wire Exceptionmac01;                         //Exceptionmac0 of the addition 
    wire Overflow1;                         //overflow for multiplication
    wire Underflow1;                         //undnerflow of the multiplication
    
    wire Overflow2;                         //overflow for multiplication
    wire Underflow2;                         //undnerflow of the multiplication
    wire Exceptionmac02;                         //Exceptionmac0 of the addition

    wire Overflow3;                         //overflow for multiplication
    wire Underflow3;                         //undnerflow of the multiplication
    wire Exceptionmac03;                         //Exceptionmac0 of the addition
*/
    wire[31:0] result_divide_by_2_plus_4mac0;  //variable to assignmac0 new exponentmac0 value
    reg[31:0] number_divided_by_2mac0;          //register to store divided number 2
    reg[31:0] number_divided_by_4mac0;          //register to store divided number 4
    reg[11:0] neuron_addressmac0;               //neruon address
    reg[31:0] membrane_potentialmac0;           //memebrane potential
   // reg[31:0] output_potential_decay_izhi;     //output potential for izhikevich modelmac0
    reg[31:0] output_potential_decay_LIFmac0;       //output potential of izhikevich modelmac0
 /*   wire[31:0] v_squared;     //v squared
    wire[31:0] izi_first_term;        //izikevich modelmac0 first term
    wire[31:0] izi_second_term;       //izikevich modelmac0 second term
    wire[31:0] izi_final;             //izikevich modelmac0 final addition
	 
	 */
	 reg [1:0] modelmac0;
	 reg [3:0] decay_rate;
	 //reg set;
	 //reg clear;
	 //reg[31:0] CLK_count;
	 //reg [31:0] SET_Count;

	reg flipmac0;
    //addition module instantiate
    Addition_Subtraction Addition_Subtraction_decay_0(number_divided_by_2mac0, number_divided_by_4mac0, 1'b0, Exceptionmac0, result_divide_by_2_plus_4mac0);
	 
	 always @(posedge set_decay) begin
		flipmac0 = ~flipmac0;
	 end
    
    //initialize membrane potential value and sneuron address
    /*always @(membrane_potentialmac0_initialization, neuron_addressmac0_initialization) begin
        neuron_addressmac0 = neuron_addressmac0_initialization;
        membrane_potentialmac0 = membrane_potentialmac0_initialization;
    end*/
 
    //when potential adder is done assignmac0 to membrane potential
    always @(flipmac0, new_potential) begin
	 
			if (set_decay == 1) begin
				membrane_potentialmac0 = 32'h41DED852;
				neuron_addressmac0 = 12'd0;
				decay_rate = 3'd1;
				modelmac0 = 2'b00;
			end else begin
				membrane_potentialmac0 = new_potential;
			end
			
			 /*output1 = membrane_potentialmac0[1];
				output2 = membrane_potentialmac0[2];
				output3 = membrane_potentialmac0[3];
				output4 = membrane_potentialmac0[4];
				output5 = membrane_potentialmac0[5];
				output6 = membrane_potentialmac0[6];
				output7 = membrane_potentialmac0[7];
				output8 = membrane_potentialmac0[8];
				output9 = membrane_potentialmac0[9];*/
    end
	 
  /*  
    //for izhichevich modelmac0 -> V^2
    Multiplication Multiplication_v_squared(membrane_potentialmac0, membrane_potentialmac0, Exceptionmac01, Overflow1, Underflow1, v_squared);

    //for izhichevich modelmac0 -> (0.004*V^2)
    Multiplication Multiplication_izi_1(membrane_potentialmac0, 32'b00111101001000111101011100001010, Exceptionmac02, Overflow2, Underflow2, izi_first_term);

    //for izhichevich modelmac0 -> (5*V)
    Multiplication Multiplication_izi_2(membrane_potentialmac0, 32'b01000000101000000000000000000000, Exceptionmac03, Overflow3, Underflow3, izi_second_term);

    //izikevich addition without U and I
    Addition_Subtraction Addition_Subtraction_izi_1(izi_first_term, izi_second_term, 1'b0, Exceptionmac04, izi_final);
*/
    //clear signmac0al initiate
    always @(clear_decay) begin
	 
				/*output0 = membrane_potentialmac0[0];
				output1 = membrane_potentialmac0[1];
				output2 = membrane_potentialmac0[2];
				output3 = membrane_potentialmac0[3];
				output4 = membrane_potentialmac0[4];
				output5 = membrane_potentialmac0[5];
				output6 = membrane_potentialmac0[6];
				output7 = membrane_potentialmac0[7];
				output8 = membrane_potentialmac0[8];
				output9 = membrane_potentialmac0[9];*/

        if(clear_decay==1) begin
		  
				/*output0 = membrane_potentialmac0[0];
				output1 = membrane_potentialmac0[1];
				output2 = membrane_potentialmac0[2];
				output3 = membrane_potentialmac0[3];
				output4 = membrane_potentialmac0[4];
				output5 = membrane_potentialmac0[5];
				output6 = membrane_potentialmac0[6];
				output7 = membrane_potentialmac0[7];
				output8 = membrane_potentialmac0[8];
				output9 = membrane_potentialmac0[9];*/
            signmac0 = membrane_potentialmac0[31];     
            exponentmac0 = membrane_potentialmac0[30:23];    
            mantissamac0 = membrane_potentialmac0[22:0]; 
            
            case (decay_rate)

                4'b0001: begin         //divide by 1
                    adjusted_exponentmac0 = exponentmac0;
                    output_potential_decay_LIFmac0 = {signmac0, adjusted_exponentmac0, mantissamac0};
						  /*output0 = output_potential_decay_LIFmac0[0];
						  output1 = output_potential_decay_LIFmac0[1];
					     output2 = output_potential_decay_LIFmac0[2];
					     output3 = output_potential_decay_LIFmac0[3];
					     output4 = output_potential_decay_LIFmac0[4];
					     output5 = output_potential_decay_LIFmac0[5];
					     output6 = output_potential_decay_LIFmac0[6];
					     output7 = output_potential_decay_LIFmac0[7];
					     output8 = output_potential_decay_LIFmac0[8];
					     output9 = output_potential_decay_LIFmac0[9];*/
                end

                4'b0010: begin         //divide by 2
                    adjusted_exponentmac0 = exponentmac0-8'd1;
                    output_potential_decay_LIFmac0 = {signmac0, adjusted_exponentmac0, mantissamac0};
                end

                4'b0100: begin         //divide by 4
                    adjusted_exponentmac0 = exponentmac0-8'd2;
                    output_potential_decay_LIFmac0 = {signmac0, adjusted_exponentmac0, mantissamac0};
                end

                4'b1000: begin         //divide by 8
                    adjusted_exponentmac0 = exponentmac0-8'd3;
                    output_potential_decay_LIFmac0 = {signmac0, adjusted_exponentmac0, mantissamac0};
                end

                4'b0011: begin         //add division by 2 and 4
                    exponentmac0_divided_by_2 = exponentmac0-8'd1;
                    exponentmac0_divided_by_4 = exponentmac0-8'd2;
                    number_divided_by_2mac0 = {signmac0, exponentmac0_divided_by_2, mantissamac0};
                    number_divided_by_4mac0 = {signmac0, exponentmac0_divided_by_4, mantissamac0};
                    output_potential_decay_LIFmac0 = result_divide_by_2_plus_4mac0;
                end

                default: begin
                    adjusted_exponentmac0 = exponentmac0;
                    output_potential_decay_LIFmac0 = {signmac0, adjusted_exponentmac0, mantissamac0};
                end
        endcase
        end
    end

    always @(clear_decay, output_potential_decay_LIFmac0) begin
	 
		//if(clear == 0) begin
        
			case (modelmac0)

					2'b00: begin
						output_potential_decay = output_potential_decay_LIFmac0;
					 
					end
/*
					2'b01: begin
						output_potential_decay = output_potential_decay_izhi;
					 
					end 

					2'b10: begin
						output_potential_decay = v_squared;
					 
					end  */

					default: output_potential_decay = output_potential_decay_LIFmac0;
			endcase
		//end
		  
				decayoutput0 = output_potential_decay[0];
				decayoutput1 = output_potential_decay[1];
				decayoutput2 = output_potential_decay[2];
				decayoutput3 = output_potential_decay[3];
				decayoutput4 = output_potential_decay[4];
				decayoutput5 = output_potential_decay[5];
				decayoutput6 = output_potential_decay[6];
				decayoutput7 = output_potential_decay[7];
				decayoutput8 = output_potential_decay[8];
				decayoutput9 = output_potential_decay[9];
    end
	 
	 //timestep is 4 clockcycles
    /*always @(posedge CLK_Decay) begin
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