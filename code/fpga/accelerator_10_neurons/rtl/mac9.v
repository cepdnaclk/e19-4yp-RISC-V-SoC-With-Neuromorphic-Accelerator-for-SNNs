// MAC unit can process 4 input spikes together
// 4 spike inputs  
// 4 weights corresponding to the synapse

/*  Floating point addition
    Moving through the next four connections ?*/
`timescale 1ns/100ps
// `include "Addition_Subtraction.v"
 

module mac9(
    
    input wire CLK_mac9,                             //input clock
	 //input wire set,										//set signal for initialisation
    //input wire[11:0] neuron_address,            //neuron address
    input wire[11:0] source_address,            //source address of 12 bits
    //input wire[160-1:0] weights_array,            //weights array used during intialization 32x5=160 bits
    //input wire[60-1:0] source_addresses_array,          //corresponding source address array used during initialization 12x5=60 bits
    //input wire clear,                       //signal to signify the end of the timestep
	 //input wire [31:0]SET_Count,
    output reg[31:0] mac9mult_output,               //output of 32 bits to the adder
	 output reg mac9output0, output reg mac9output1, output reg mac9output2, output reg mac9output3, output reg mac9output4, 
	 output reg mac9output5, output reg mac9output6, output reg mac9output7, output reg mac9output8, output reg mac9output9, output reg mac9done
    );             

	 //reg [11:0] source_address;
    parameter number_of_connections = 5;
    parameter number_of_address_bits = 12;
    parameter number_of_units = 10;
    parameter weights_array_width = 32 * number_of_connections;

    integer i;                      //iterate through for the sources addresses
    integer index;                  //get array index of the connection
    reg[number_of_connections-1:0] incomingspikes;   //note incoming spikes
    reg[number_of_connections-1:0] spikes;            //received stored spikes
    reg[31:0] weights [0:number_of_connections-1];    //array to store 5 weights
    reg[11:0] source_addresses [0:number_of_connections-1];    //array to store corresponding 5 source addresses
    reg break;
    reg[31:0] accumulated_weight;   //get the accumulated weight
    reg[31:0] considered_weight;    //weight to be added
    wire[31:0] added_weight;         //weight
    wire exception;                 //addition exception
    integer topBorder;
    integer lowerBorder;

    //for fpga use
    reg flip_clear;
	// reg flip_set;
	
	reg clear;
	reg set;
	reg[31:0] CLK_count;
	 reg[31:0] SET_Count;
	 //reg [11:0] source_address;

    //addition block to add weights
    //Addition_Subtraction add1(accumulated_weight, considered_weight, 1'b0, excpetion, added_weight);

    //poedge triggers do not work on the fpga along with another signal triggering it
    always @(posedge clear) begin
        flip_clear = ~flip_clear;
    end

	 
    //flip is used as the posedge clear trigger
    //when a spike/source address comes in get index and mark the incoming spike array
    always @(set, flip_clear, source_address) begin

        if(set == 1) begin

            flip_clear = 1'b0;
            
            incomingspikes[4:4] = 1'b0;
            incomingspikes[3:3] = 1'b0;
            incomingspikes[2:2] = 1'b0;
            incomingspikes[1:1] = 1'b0;
            incomingspikes[0:0] = 1'b0;
            
            //break up the weights
            weights[4] = 32'h42ae3852;
            weights[3] = 32'h0;
            weights[2] = 32'h42470a3d;
            weights[1] = 32'h41975c29;
            weights[0] = 32'h4290b333;


            //break up the source adddresses
            source_addresses[4] = 12'd7;
            source_addresses[3] = 12'd6;
            source_addresses[2] = 12'd5;
            source_addresses[1] = 12'd4;
            source_addresses[0] = 12'd3;
            
            //spikes 0
            spikes[4:4] = 1'b0; 
            spikes[3:3] = 1'b0;
            spikes[2:2] = 1'b0;
            spikes[1:1] = 1'b0;
            spikes[0:0] = 1'b0;
        end else begin

            if (clear == 1'b1) begin
                    
                spikes[4:4] = incomingspikes[4:4];
                spikes[3:3] = incomingspikes[3:3];
                spikes[2:2] = incomingspikes[2:2];
                spikes[1:1] = incomingspikes[1:1];
                spikes[0:0] = incomingspikes[0:0];

                incomingspikes[4:4] = 1'b0;
                incomingspikes[3:3] = 1'b0;
                incomingspikes[2:2] = 1'b0;
                incomingspikes[1:1] = 1'b0;
                incomingspikes[0:0] = 1'b0;

                accumulated_weight = 32'd0;     //set accumulated value to 0
                considered_weight = 32'd0;      //weight addition is zero

                case (spikes)
                    5'b00000: mac9mult_output = 32'h00000000;
                    5'b00001: mac9mult_output = 32'h4290B333;
                    5'b00010: mac9mult_output = 32'h41975C29;
                    5'b00011: mac9mult_output = 32'h42B68A3D;
                    5'b00100: mac9mult_output = 32'h42470A3D;
                    5'b00101: mac9mult_output = 32'h42F43851;
                    5'b00110: mac9mult_output = 32'h42895C29;
                    5'b00111: mac9mult_output = 32'h430D07AF;
                    5'b01000: mac9mult_output = 32'h00000000;
                    5'b01001: mac9mult_output = 32'h4290B333;
                    5'b01010: mac9mult_output = 32'h41975C29;
                    5'b01011: mac9mult_output = 32'h42B68A3D;
                    5'b01100: mac9mult_output = 32'h42470A3D;
                    5'b01101: mac9mult_output = 32'h42F43851;
                    5'b01110: mac9mult_output = 32'h42895C29;
                    5'b01111: mac9mult_output = 32'h430D07AF;
                    5'b10000: mac9mult_output = 32'h42AE3851;
                    5'b10001: mac9mult_output = 32'h431F75C3;
                    5'b10010: mac9mult_output = 32'h42D40F5D;
                    5'b10011: mac9mult_output = 32'h43326147;
                    5'b10100: mac9mult_output = 32'h4308DEB9;
                    5'b10101: mac9mult_output = 32'h43513851;
                    5'b10110: mac9mult_output = 32'h431BCA3D;
                    5'b10111: mac9mult_output = 32'h436423D7;
                    5'b11000: mac9mult_output = 32'h42AE3851;
                    5'b11001: mac9mult_output = 32'h431F75C3;
                    5'b11010: mac9mult_output = 32'h42D40F5D;
                    5'b11011: mac9mult_output = 32'h43326147;
                    5'b11100: mac9mult_output = 32'h4308DEB9;
                    5'b11101: mac9mult_output = 32'h43513851;
                    5'b11110: mac9mult_output = 32'h431BCA3D;
                    5'b11111: mac9mult_output = 32'h436423D7;
                    default: mac9mult_output = 32'h00000000;
                endcase
					
						mac9output0 = mac9mult_output[0];
						mac9output1 = mac9mult_output[1];
						mac9output2 = mac9mult_output[2];
						mac9output3 = mac9mult_output[3];
						mac9output4 = mac9mult_output[4];
						mac9output5 = mac9mult_output[5];
						mac9output6 = mac9mult_output[6];
						mac9output7 = mac9mult_output[7];
						mac9output8 = mac9mult_output[8];
						mac9output9 = mac9mult_output[9];

            end

            if(clear == 1'b0) begin
				
						/*output0 = source_address[0];
				output1 = source_address[1];
				output2 = source_address[2];
				output3 = source_address[3];
				output4 = source_address[4];
				output5 = source_address[5];
				output6 = source_address[6];
				output7 = source_address[7];
				output8 = source_address[8];
				output9 = source_address[9];*/
                //get index by going through the source addresses
                break = 1'b0;         
                case (source_address)
                    source_addresses[0]: incomingspikes[0:0]=1'b1;
                    source_addresses[1]: incomingspikes[1:1]=1'b1;
                    source_addresses[2]: incomingspikes[2:2]=1'b1;
                    source_addresses[3]: incomingspikes[3:3]=1'b1;
                    source_addresses[4]: incomingspikes[4:4]=1'b1;            
                    default: incomingspikes[4:4]=1'b0;
                endcase
            end

        end
		  
		 /* output0 = source_address[0];
				output1 = source_address[1];
				output2 = source_address[2];
				output3 = source_address[3];
				output4 = source_address[4];
				output5 = source_address[5];
				output6 = source_address[6];
				output7 = source_address[7];
				output8 = source_address[8];
				output9 = source_address[9];*/
        
    end
	 //timestep is 4 clockcycles
    always @(posedge CLK_mac9) begin

			SET_Count = SET_Count + 1;
			if(SET_Count == 200000000) begin
					set = 1'b1;
					//out0 = 1'b1;
					//source_address = 12'd0;
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
			end  
		  
			if (SET_Count == 400000000) begin
				set = 1'b0;
				//out0 = 1'b0;
			end
			
			if (SET_Count == 500000000) begin
				//source_address = 12'd11;	
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
			end
	 
        if(CLK_count==300000000) begin
            CLK_count=0;
            clear = 1'b1;
				mac9done = 1'b1;
        end else begin
            CLK_count = CLK_count+1;
        end

        if(CLK_count==100000000) begin
            clear = 1'b0;
				mac9done = 1'b0;
        end
	 
    end
	 
endmodule