// MAC unit can process 4 input spikesmac0 together
// 4 spike inputs  
// 4 weightsmac0 corresponding to the synapse

/*  Floating point addition
    Moving through the next four connections ?*/
`timescale 1ns/100ps
// `include "Addition_Subtraction.v"
 

module mac(
    
    input wire CLK_Mac,
	 input set_mac,
	 input clear_mac,
	 input set_source,
	 //input clock
	 //input wire set,										//set signal for initialisation
    //input wire[11:0] neuron_address,            //neuron address
    //input wire[11:0] source_addressmac0,            //source address of 12 bits
    //input wire[160-1:0] weightsmac0_array,            //weightsmac0 array used during intialization 32x5=160 bits
    //input wire[60-1:0] source_addressmac0esmac0_array,          //corresponding source address array used during initialization 12x5=60 bits
    //input wire clear,                       //signal to signify the end of the timestep
	 //input wire [31:0]SET_Count,
    output reg[31:0] mult_output,               //output of 32 bits to the adder
	 output reg macoutput0, output reg macoutput1, output reg macoutput2, output reg macoutput3, output reg macoutput4, 
	 output reg macoutput5, output reg macoutput6, output reg macoutput7, output reg macoutput8, output reg macoutput9, output reg done
    );             

	 //reg [11:0] source_addressmac0;
    parameter number_of_connections = 5;
    parameter number_of_address_bits = 12;
    parameter number_of_units = 10;
    parameter weightsmac0_array_width = 32 * number_of_connections;

    integer i;                      //iterate through for the sources addresses
    integer index;                  //get array index of the connection
    reg[number_of_connections-1:0] incomingspikesmac0mac0;   //note incoming spikesmac0
    reg[number_of_connections-1:0] spikesmac0;            //received stored spikesmac0
    reg[31:0] weightsmac0 [0:number_of_connections-1];    //array to store 5 weightsmac0
    reg[11:0] source_addressmac0esmac0 [0:number_of_connections-1];    //array to store corresponding 5 source addresses
    reg[31:0] accumulated_weightmac0;   //get the accumulated weight
    reg[31:0] considered_weightmac0;    //weight to be added
    wire[31:0] added_weightmac0;         //weight
    wire exceptionmac0;                 //addition exceptionmac0
    integer topBorder;
    integer lowerBorder;

    //for fpga use
    reg flip_clearmac0;
	 reg flip_setmac0;
	 reg flip_sourcemac0;
	
	//reg clear;
	//reg set;
	//reg[31:0] CLK_count;
	//reg[31:0] SET_Count;
	 reg [11:0] source_addressmac0;

    //addition block to add weightsmac0
    //Addition_Subtraction add1(accumulated_weightmac0, considered_weightmac0, 1'b0, excpetion, added_weightmac0);

    //poedge triggers do not work on the fpga along with another signal triggering it
    always @(posedge clear_mac) begin
        flip_clearmac0 = ~flip_clearmac0;
    end
	 
	 always @ (posedge set_mac) begin
			flip_setmac0 = ~flip_setmac0;
	 end
	 
	 always @ (posedge set_source) begin
			flip_sourcemac0 = ~flip_sourcemac0;
	 end

	 
    //flip is used as the posedge clear trigger
    //when a spike/source address comes in get index and mark the incoming spike array
    always @(set_mac, flip_clearmac0, source_addressmac0) begin

        if(set_mac == 1) begin

            flip_clearmac0 = 1'b0;
            
            incomingspikesmac0mac0[4:4] = 1'b0;
            incomingspikesmac0mac0[3:3] = 1'b0;
            incomingspikesmac0mac0[2:2] = 1'b0;
            incomingspikesmac0mac0[1:1] = 1'b0;
            incomingspikesmac0mac0[0:0] = 1'b0;

            //break up the weightsmac0
            //weightsmac0[4] = 32'h42ae3852;
            //weightsmac0[3] = 32'h0;
            //weightsmac0[2] = 32'h42470a3d;
            //weightsmac0[1] = 32'h41975c29;
            weightsmac0[0] = 32'h4290b333;
            
            //break up the source adddresses
            // source_addressmac0esmac0[4] = 12'd7;
            // source_addressmac0esmac0[3] = 12'd6;
            // source_addressmac0esmac0[2] = 12'd5;
            // source_addressmac0esmac0[1] = 12'd4;
            source_addressmac0esmac0[0] = 12'd11;
            
            //spikesmac0 0
            spikesmac0[4:4] = 1'b0; 
            spikesmac0[3:3] = 1'b0;
            spikesmac0[2:2] = 1'b0;
            spikesmac0[1:1] = 1'b0;
            spikesmac0[0:0] = 1'b0;
				
        end else begin

            if (clear_mac == 1'b1) begin
                    
                spikesmac0[4:4] = incomingspikesmac0mac0[4:4];
                spikesmac0[3:3] = incomingspikesmac0mac0[3:3];
                spikesmac0[2:2] = incomingspikesmac0mac0[2:2];
                spikesmac0[1:1] = incomingspikesmac0mac0[1:1];
                spikesmac0[0:0] = incomingspikesmac0mac0[0:0];

                incomingspikesmac0mac0[4:4] = 1'b0;
                incomingspikesmac0mac0[3:3] = 1'b0;
                incomingspikesmac0mac0[2:2] = 1'b0;
                incomingspikesmac0mac0[1:1] = 1'b0;
                incomingspikesmac0mac0[0:0] = 1'b0;

                accumulated_weightmac0 = 32'd0;     //set accumulated value to 0
                considered_weightmac0 = 32'd0;      //weight addition is zero

                case (spikesmac0)
                    5'b00000: mult_output = 32'h00000000;
                    5'b00001: mult_output = 32'h4290B333;
                    5'b00010: mult_output = 32'h41975C29;
                    5'b00011: mult_output = 32'h42B68A3D;
                    5'b00100: mult_output = 32'h42470A3D;
                    5'b00101: mult_output = 32'h42F43851;
                    5'b00110: mult_output = 32'h42895C29;
                    5'b00111: mult_output = 32'h430D07AF;
                    5'b01000: mult_output = 32'h00000000;
                    5'b01001: mult_output = 32'h4290B333;
                    5'b01010: mult_output = 32'h41975C29;
                    5'b01011: mult_output = 32'h42B68A3D;
                    5'b01100: mult_output = 32'h42470A3D;
                    5'b01101: mult_output = 32'h42F43851;
                    5'b01110: mult_output = 32'h42895C29;
                    5'b01111: mult_output = 32'h430D07AF;
                    5'b10000: mult_output = 32'h42AE3851;
                    5'b10001: mult_output = 32'h431F75C3;
                    5'b10010: mult_output = 32'h42D40F5D;
                    5'b10011: mult_output = 32'h43326147;
                    5'b10100: mult_output = 32'h4308DEB9;
                    5'b10101: mult_output = 32'h43513851;
                    5'b10110: mult_output = 32'h431BCA3D;
                    5'b10111: mult_output = 32'h436423D7;
                    5'b11000: mult_output = 32'h42AE3851;
                    5'b11001: mult_output = 32'h431F75C3;
                    5'b11010: mult_output = 32'h42D40F5D;
                    5'b11011: mult_output = 32'h43326147;
                    5'b11100: mult_output = 32'h4308DEB9;
                    5'b11101: mult_output = 32'h43513851;
                    5'b11110: mult_output = 32'h431BCA3D;
                    5'b11111: mult_output = 32'h436423D7;
                    default: mult_output = 32'h00000000;
                endcase
					
						macoutput0 = mult_output[0];
						macoutput1 = mult_output[1];
						macoutput2 = mult_output[2];
						macoutput3 = mult_output[3];
						macoutput4 = mult_output[4];
						macoutput5 = mult_output[5];
						macoutput6 = mult_output[6];
						macoutput7 = mult_output[7];
						macoutput8 = mult_output[8];
						macoutput9 = mult_output[9];

            end

            if(clear_mac == 1'b0) begin
				
						/*output0 = source_addressmac0[0];
				output1 = source_addressmac0[1];
				output2 = source_addressmac0[2];
				output3 = source_addressmac0[3];
				output4 = source_addressmac0[4];
				output5 = source_addressmac0[5];
				output6 = source_addressmac0[6];
				output7 = source_addressmac0[7];
				output8 = source_addressmac0[8];
				output9 = source_addressmac0[9];*/        
                case (source_addressmac0)
                    source_addressmac0esmac0[0]: incomingspikesmac0mac0[0:0]=1'b1;
                    source_addressmac0esmac0[1]: incomingspikesmac0mac0[1:1]=1'b1;
                    source_addressmac0esmac0[2]: incomingspikesmac0mac0[2:2]=1'b1;
                    source_addressmac0esmac0[3]: incomingspikesmac0mac0[3:3]=1'b1;
                    source_addressmac0esmac0[4]: incomingspikesmac0mac0[4:4]=1'b1;            
                    default: incomingspikesmac0mac0[4:4]=1'b0;
                endcase
            end

        end
		  
		 /* output0 = source_addressmac0[0];
				output1 = source_addressmac0[1];
				output2 = source_addressmac0[2];
				output3 = source_addressmac0[3];
				output4 = source_addressmac0[4];
				output5 = source_addressmac0[5];
				output6 = source_addressmac0[6];
				output7 = source_addressmac0[7];
				output8 = source_addressmac0[8];
				output9 = source_addressmac0[9];*/
        
    end	
	 
	 always @ (flip_setmac0, flip_sourcemac0) begin
	 
			if (set_mac == 1) begin
				source_addressmac0 = 12'd0;
			end
			
			if (set_source == 1) begin
				source_addressmac0 = 12'd11;
			end
	 end
	 
	 //timestep is 4 clockcycles
    /*always @(posedge CLK_Mac) begin

			SET_Count = SET_Count + 1;
			if(SET_Count == 200000000) begin
					set = 1'b1;
					//out0 = 1'b1;
					source_addressmac0 = 12'd0;
			end  
		  
			if (SET_Count == 400000000) begin
				set = 1'b0;
				//out0 = 1'b0;
			end
			
			if (SET_Count == 500000000) begin
				source_addressmac0 = 12'd5;	
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

/*out0 = source_addressmac0esmac0[0][0];
				out1 = source_addressmac0esmac0[0][1];
				out2 = source_addressmac0esmac0[0][2];
				out3 = source_addressmac0esmac0[0][3];
				out4 = source_addressmac0esmac0[0][4];
				out5 = source_addressmac0esmac0[0][5];
				out6 = source_addressmac0esmac0[0][6];
				out7 = source_addressmac0esmac0[0][7];
				out8 = source_addressmac0esmac0[0][8];
				out9 = source_addressmac0esmac0[0][9];*/