
module network_interface_new (
    input wire CLK,            //clock
    input wire clear,          //clear to start timestep
    input wire set,
    input wire spike0,    //1 bit wire to get spike information from each of the adders 
    input wire spike1,
    input wire spike2,
    input wire spike3,
    input wire spike4,
    input wire spike5,
    input wire spike6,
    input wire spike7,
    input wire spike8,
    input wire spike9,
    input wire spike10,    //1 bit wire to get spike information from each of the adders 
    input wire spike11,
    input wire spike12,
    input wire spike13,
    input wire spike14,
    input wire spike15,
    input wire spike16,
    input wire spike17,
    input wire spike18,
    input wire spike19,
    input wire spike20,    //1 bit wire to get spike information from each of the adders 
    input wire spike21,
    input wire spike22,
    input wire spike23,
    input wire spike24,
    input wire spike25,
    input wire spike26,
    input wire spike27,
    input wire spike28,
    input wire spike29,
    input wire[neuron_address_initialization_width-1:0] neuron_addresses_initialization,          //input to initialize the neruon addresses
    input wire[connection_pointer_initialization_width-1:0] connection_pointer_initialization,          //input to initialize the connection pointers
    input wire[downstream_connections_initialization_width-1:0] downstream_connections_initialization,    //input to initialize the dowanstream connections
    output reg[11:0] spike_out_source0, spike_out_source1,
        spike_out_source2,    spike_out_source3,    spike_out_source4,    
        spike_out_source5,    spike_out_source6,    spike_out_source7,    
        spike_out_source8,    spike_out_source9,    spike_out_source10,
        spike_out_source11,   spike_out_source12,    spike_out_source13,    
        spike_out_source14,    spike_out_source15,    spike_out_source16,    
        spike_out_source17,    spike_out_source18, spike_out_source19,
		  spike_out_source20, spike_out_source21,
        spike_out_source22,    spike_out_source23,    spike_out_source24,    
        spike_out_source25,    spike_out_source26,    spike_out_source27,    
        spike_out_source28,    spike_out_source29,
	 output reg output0, output reg output1, output reg output2, output reg output3, output reg output4, 
	 output reg output5, output reg output6, output reg output7, output reg output8, output reg output9,
	 output reg output10, output reg output11, output reg output12, output reg output13, output reg output14, 
	 output reg output15, output reg output16, output reg output17, output reg output18, output reg output19,
	 output reg output20, output reg output21, output reg output22, output reg output23, output reg output24, 
	 output reg output25, output reg output26, output reg output27, output reg output28, output reg output29
);
    parameter number_of_address_bits = 12;
    parameter connection_pointer_initialization_width = (number_of_neurons + 1) * 5;   // 14-> number_of_neurons * number_of_connections_downstream can be represented by 12 bits
    parameter number_of_neurons= 30;
    parameter number_of_connections_downstream = 3;
    parameter downstream_connections_initialization_width = number_of_address_bits * number_of_connections_downstream * number_of_neurons;
    parameter neuron_address_initialization_width = number_of_address_bits * number_of_neurons;

    // Lock for the variable "packet"
    reg [0:0] lock1 = 0;              

    reg[11:0] neuron_addresses[0:number_of_neurons-1];          //initialize with neuron addresses
    reg[13:0] connection_pointer[0:number_of_neurons];         //point to connection starting point according to CSR
    reg[11:0] downstream_connections[0:(number_of_neurons*number_of_connections_downstream)];  //support 5 connections per neuron
    reg al[0:number_of_neurons-1];                  //register the spikes
    // reg[18:0] i;                                             //index for iteration
    // reg[18:0] j;

    reg[18:0] i1;
    reg[18:0] j1;
    
    //10 incoming spikes buffer
    reg spike_register[0:number_of_neurons-1];

    //10 outgoing spike source information
    reg[11:0] spike_out_source_array[0:number_of_neurons-1];

    //Begin the SNN functionality by manually spiking neuron 0. 
    //Therefater the spiking happens via the SNN automatically. The following is what happens.
    //3, 5 and 7 spike,
    //and then 8 and 9 spike
    // initial begin
    //     #40
    //     for(j1 = connection_pointer[0]; j1 < connection_pointer[0+1]; j1= j1+1) begin
    //         // packet1 = #0.1 {neuron_addresses[i1], downstream_connections[j1]};
    //         //assign to the relevant output wire's array location
    //         spike_out_source_array[downstream_connections[j1]] = neuron_addresses[0];
    //     end

    // end
    
    //when neuron addresses are initilaized
    always @(posedge set) begin
             
        neuron_addresses[0] = 12'd0;
        neuron_addresses[1] = 12'd1;
        neuron_addresses[2] = 12'd2;
        neuron_addresses[3] = 12'd3;
        neuron_addresses[4] = 12'd4;
        neuron_addresses[5] = 12'd5;
        neuron_addresses[6] = 12'd6;
        neuron_addresses[7] = 12'd7;
        neuron_addresses[8] = 12'd8;
        neuron_addresses[9] = 12'd9;
		  neuron_addresses[10] = 12'd10;
        neuron_addresses[11] = 12'd11;
        neuron_addresses[12] = 12'd12;
        neuron_addresses[13] = 12'd13;
        neuron_addresses[14] = 12'd14;
        neuron_addresses[15] = 12'd15;
        neuron_addresses[16] = 12'd16;
        neuron_addresses[17] = 12'd17;
        neuron_addresses[18] = 12'd18;
        neuron_addresses[19] = 12'd19;
        neuron_addresses[20] = 12'd20;
        neuron_addresses[21] = 12'd21;
        neuron_addresses[22] = 12'd22;
        neuron_addresses[23] = 12'd23;
        neuron_addresses[24] = 12'd24;
        neuron_addresses[25] = 12'd25;
        neuron_addresses[26] = 12'd26;
        neuron_addresses[27] = 12'd27;
        neuron_addresses[28] = 12'd28;
        neuron_addresses[29] = 12'd29;
		  
        connection_pointer[0] = 5'd0;;
        connection_pointer[1] = 5'd3;
        connection_pointer[2] = 5'd5;
        connection_pointer[3] = 5'd8;
        connection_pointer[4] = 5'd10;
        connection_pointer[5] = 5'd12;
        connection_pointer[6] = 5'd14;
        connection_pointer[7] = 5'd15;
        connection_pointer[8] = 5'd17;
        connection_pointer[9] = 5'd18;
        connection_pointer[10] = 5'd19;

        downstream_connections[0] = 12'b000000000011;
        downstream_connections[1] = 12'b000000000101;
        downstream_connections[2] = 12'b000000000111;
        downstream_connections[3] = 12'b000000000100;
        downstream_connections[4] = 12'b000000000110;
        downstream_connections[5] = 12'b000000000100;
        downstream_connections[6] = 12'b000000000101;
        downstream_connections[7] = 12'b000000000110;
        downstream_connections[8] = 12'b000000001000;
        downstream_connections[9] = 12'b000000001001;
        downstream_connections[10] = 12'b000000001000;
        downstream_connections[11] = 12'b000000001001;
        downstream_connections[12] = 12'b000000001000;
        downstream_connections[13] = 12'b000000001001;
        downstream_connections[14] = 12'b000000001001;
        downstream_connections[15] = 12'b000000001000;
        downstream_connections[16] = 12'b000000001001;
        downstream_connections[17] = 12'b111111111011;
        downstream_connections[18] = 12'b111111111100;
        downstream_connections[19] = 12'd0;
        downstream_connections[20] = 12'd0;
        downstream_connections[21] = 12'd0;
        downstream_connections[22] = 12'd0;
        downstream_connections[23] = 12'd0;
        downstream_connections[24] = 12'd0;
        downstream_connections[25] = 12'd0;
        downstream_connections[26] = 12'd0;
        downstream_connections[27] = 12'd0;
        downstream_connections[28] = 12'd0;
        downstream_connections[29] = 12'd0;
		  
				/*output0 = downstream_connections[0][0];
				output1 = downstream_connections[0][1];
				output2 = downstream_connections[0][2];
				output3 = downstream_connections[0][3];
				output4 = downstream_connections[0][4];
				output5 = downstream_connections[0][5];
				output6 = downstream_connections[0][6];
				output7 = downstream_connections[0][7];
				output8 = downstream_connections[0][8];
				output9 = downstream_connections[0][9];*/
    end

    //send the spike whenever
    always @(clear, spike0, spike1, spike2, spike3, spike4, 
                spike5, spike6, spike7, spike8, spike9, 
                spike10, spike11, spike12, spike13, spike14, 
                spike15, spike16, spike17, spike18, spike19,
					 spike20, spike21, spike22, spike23, spike24, 
                spike25, spike26, spike27, spike28, spike29) begin
					 
        spike_register[0] = spike0;
        spike_register[1] = spike1;
        spike_register[2] = spike2;
        spike_register[3] = spike3;
        spike_register[4] = spike4;
        spike_register[5] = spike5;
        spike_register[6] = spike6;
        spike_register[7] = spike7;
        spike_register[8] = spike8;
        spike_register[9] = spike9;
        spike_register[10] = spike10;
        spike_register[11] = spike11;
        spike_register[12] = spike12;
        spike_register[13] = spike13;
        spike_register[14] = spike14;
        spike_register[15] = spike15;
        spike_register[16] = spike16;
        spike_register[17] = spike17;
        spike_register[18] = spike18;
        spike_register[19] = spike19;
        spike_register[20] = spike20;
        spike_register[21] = spike21;
        spike_register[22] = spike22;
        spike_register[23] = spike23;
        spike_register[24] = spike24;
        spike_register[25] = spike25;
        spike_register[26] = spike26;
        spike_register[27] = spike27;
        spike_register[28] = spike28;
        spike_register[19] = spike29;
		  
        // if(clear==1'b0) begin
        //     #0.5
        //     check = ~check;
        //     //if spiked send the source address to the relevant accumulator
        //     for(i=0; i<=9; i=i+1) begin
        //         if(spike_register[i]==1) begin
        //             for(j=connection_pointer[i]; j<connection_pointer[i+1]; j=j+1) begin
        //                 packet = #1 {neuron_addresses[i], downstream_connections[j]};
        //             end
        //             spike_register[i]=0;
        //         end
        //     end 
        // end


        if(clear==1'b0) begin

            case (spike_register[0])
                1'b1: begin
                    spike_out_source3 =  neuron_addresses[0];
                    spike_out_source5 =  neuron_addresses[0];
                    spike_out_source7 =  neuron_addresses[0];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[1])
                1'b1: begin
                    spike_out_source4 =  neuron_addresses[1];
                    spike_out_source6 =  neuron_addresses[1];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[2])
                1'b1: begin
                    spike_out_source4 =  neuron_addresses[2];
                    spike_out_source5 =  neuron_addresses[2];
                    spike_out_source6 =  neuron_addresses[2];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[3])
                1'b1: begin
                    spike_out_source8 =  neuron_addresses[3];
                    spike_out_source9 =  neuron_addresses[3];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[4])
                1'b1: begin
                    spike_out_source8 =  neuron_addresses[4];
                    spike_out_source9 =  neuron_addresses[4];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[5])
                1'b1: begin
                    spike_out_source8 =  neuron_addresses[5];
                    spike_out_source9 =  neuron_addresses[5];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[6])
                1'b1: begin
                    spike_out_source9 =  neuron_addresses[6];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[7])
                1'b1: begin
                    spike_out_source8 =  neuron_addresses[7];
                    spike_out_source9 =  neuron_addresses[7];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[8])
                1'b1: begin
                    spike_out_source13 =  neuron_addresses[8];
                    spike_out_source14 =  neuron_addresses[8];
                end 
                default: spike_out_source3 = 12'b111111111111;
            endcase

            case (spike_register[9])
                1'b1: begin
                    spike_out_source14 = neuron_addresses[9];
                    spike_out_source15 =  neuron_addresses[9];
                    spike_out_source16 =  neuron_addresses[9];
                end 
                default: spike_out_source3 = 12'b111111111111;
            endcase
            case (spike_register[10])
                1'b1: begin
                    spike_out_source14 =  neuron_addresses[10];
                    spike_out_source15 =  neuron_addresses[10];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[11])
                1'b1: begin
                    spike_out_source14 =  neuron_addresses[11];
                    spike_out_source15 =  neuron_addresses[11];
                    spike_out_source16 =  neuron_addresses[11];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[12])
                1'b1: begin
                    spike_out_source13 =  neuron_addresses[12];
                    spike_out_source14 =  neuron_addresses[12];
                    spike_out_source15 =  neuron_addresses[12];
                    spike_out_source17 =  neuron_addresses[12];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[13])
                1'b1: begin
                    spike_out_source18 =  neuron_addresses[13];
                    spike_out_source19 =  neuron_addresses[13];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[14])
                1'b1: begin
                    spike_out_source18 =  neuron_addresses[14];
                    spike_out_source19 =  neuron_addresses[14];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[15])
                1'b1: begin
                    spike_out_source18 =  neuron_addresses[15];
                    spike_out_source19 =  neuron_addresses[15];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[16])
                1'b1: begin
                    spike_out_source18 =  neuron_addresses[16];
                    spike_out_source19 =  neuron_addresses[16];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[17])
                1'b1: begin
                    spike_out_source18 =  neuron_addresses[17];
                    spike_out_source19 =  neuron_addresses[17];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

				case (spike_register[18])
                1'b1: begin
                    spike_out_source23 =  neuron_addresses[18];
                    spike_out_source24 =  neuron_addresses[18];
                end 
                default: spike_out_source3 = 12'b111111111111;
            endcase

            case (spike_register[19])
                1'b1: begin
                    spike_out_source24 = neuron_addresses[19];
                    spike_out_source25 =  neuron_addresses[19];
                    spike_out_source26 =  neuron_addresses[19];
                end 
                default: spike_out_source3 = 12'b111111111111;
            endcase		
				
            case (spike_register[20])
                1'b1: begin
                    spike_out_source23 =  neuron_addresses[20];
                    spike_out_source25 =  neuron_addresses[20];
                    spike_out_source27 =  neuron_addresses[20];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[21])
                1'b1: begin
                    spike_out_source24 =  neuron_addresses[21];
                    spike_out_source26 =  neuron_addresses[21];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[22])
                1'b1: begin
                    spike_out_source24 =  neuron_addresses[22];
                    spike_out_source25 =  neuron_addresses[22];
                    spike_out_source26 =  neuron_addresses[22];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[23])
                1'b1: begin
                    spike_out_source28 =  neuron_addresses[23];
                    spike_out_source29 =  neuron_addresses[23];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[24])
                1'b1: begin
                    spike_out_source28 =  neuron_addresses[24];
                    spike_out_source29 =  neuron_addresses[24];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[25])
                1'b1: begin
                    spike_out_source28 =  neuron_addresses[25];
                    spike_out_source29 =  neuron_addresses[25];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[26])
                1'b1: begin
                    spike_out_source29 =  neuron_addresses[26];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

            case (spike_register[27])
                1'b1: begin
                    spike_out_source28 =  neuron_addresses[27];
                    spike_out_source29 =  neuron_addresses[27];
                end 
                default: spike_out_source3 =  12'b111111111111;
            endcase

     /*       case (spike_register[28])
                1'b1: begin
                    spike_out_source13 =  neuron_addresses[28];
                    spike_out_source14 =  neuron_addresses[28];
                end 
                default: spike_out_source3 = 12'b111111111111;
            endcase

            case (spike_register[29])
                1'b1: begin
                    spike_out_source14 = neuron_addresses[29];
                    spike_out_source15 =  neuron_addresses[29];
                    spike_out_source16 =  neuron_addresses[29];
                end 
                default: spike_out_source3 = 12'b111111111111;
            endcase		*/		

        end
    end
    
endmodule
