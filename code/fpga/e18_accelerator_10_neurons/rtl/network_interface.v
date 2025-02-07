
module network_interface_new (
    input wire CLK,            //clock
    input wire clear,          //clear to start timestep
    input wire set,
    input wire spike0,
    input wire spike1,    input wire spike2,    input wire spike3,    input wire spike4,    input wire spike5,    input wire spike6,    input wire spike7,    input wire spike8,    input wire spike9, 
    input wire[neuron_address_initialization_width-1:0] neuron_addresses_initialization,          //input to initialize the neruon addresses
    input wire[connection_pointer_initialization_width-1:0] connection_pointer_initialization,          //input to initialize the connection pointers
    input wire[downstream_connections_initialization_width-1:0] downstream_connections_initialization,    //input to initialize the dowanstream connections
    
    output reg[11:0] spike_out_source0, spike_out_source1,    spike_out_source2,    spike_out_source3,    spike_out_source4,    spike_out_source5,    spike_out_source6,    spike_out_source7,    spike_out_source8,    spike_out_source9,
	 output reg output0, output reg output1, output reg output2, output reg output3, output reg output4, 
	 output reg output5, output reg output6, output reg output7, output reg output8, output reg output9
);
    parameter number_of_address_bits = 12;
    parameter connection_pointer_initialization_width = (number_of_neurons + 1) * 5;   // 14-> number_of_neurons * number_of_connections_downstream can be represented by 12 bits
    parameter number_of_neurons= 10;
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
    reg spike_register[0:10-1];

    //10 outgoing spike source information
    reg[11:0] spike_out_source_array[0:10-1];

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

    always @(clear, lock1, spike0, spike1, spike2, spike3, spike4, spike5, spike6, spike7, spike8, spike9) begin
		  
        spike_register[0] = spike0;

        spike_register[1] = spike1;        spike_register[2] = spike2;        spike_register[3] = spike3;        spike_register[4] = spike4;        spike_register[5] = spike5;        spike_register[6] = spike6;        spike_register[7] = spike7;        spike_register[8] = spike8;        spike_register[9] = spike9;
        //output3 = spike_register[3];
        if(clear == 1'b0) begin
            for(i1 = 0; i1 <=9; i1= i1+1) begin
                if(spike_register[i1] == 1 && lock1 == 0) begin
                    lock1 = 1;
                    for(j1 = 0; j1 < 25; j1= j1+1) begin
						  
                        // packet1 = #0.1 {neuron_addresses[i1], downstream_connections[j1]};
                        //assign to the relevant output wire's array location
								/*if(j1 == connection_pointer[i1+1]) begin 
									j1 = 25;
								end else */
								
								if (j1 >= connection_pointer[i1] && j1 < connection_pointer[i1+1]) begin
									spike_out_source_array[downstream_connections[j1]] = neuron_addresses[i1];
								end
								 
                    end
                    spike_register[i1] = 0;
                    lock1 = 0;
                end
            end
        end
    end

    //1024 always blocks to assign values to output ports
    always @(spike_out_source_array[0]) begin 
        if (clear == 1) begin
				spike_out_source0 = 12'd0;
		  end else begin 
				spike_out_source0 = spike_out_source_array[0];
		  end
    end
    always @(spike_out_source_array[1]) begin 
        if (clear == 1) begin
				spike_out_source1 = 12'd0;
		  end else begin 
				spike_out_source1 = spike_out_source_array[1];
		  end
    end
    always @(spike_out_source_array[2]) begin 
        if (clear == 1) begin
				spike_out_source2 = 12'd0;
		  end else begin 
				spike_out_source2 = spike_out_source_array[2];
		  end
    end
    always @(spike_out_source_array[3]) begin 
        if (clear == 1) begin
				spike_out_source3 = 12'd0;
		  end else begin 
				spike_out_source3 = spike_out_source_array[3];
		  end
    end
    always @(spike_out_source_array[4]) begin 
        if (clear == 1) begin
				spike_out_source4 = 12'd0;
		  end else begin 
				spike_out_source4 = spike_out_source_array[4];
		  end
    end
    always @(spike_out_source_array[5]) begin 
        if (clear == 1) begin
				spike_out_source5 = 12'd0;
		  end else begin 
				spike_out_source5 = spike_out_source_array[5];
		  end
    end
    always @(spike_out_source_array[6]) begin 
        if (clear == 1) begin
				spike_out_source6 = 12'd0;
		  end else begin 
				spike_out_source6 = spike_out_source_array[6];
		  end
    end
    always @(spike_out_source_array[7]) begin 
        if (clear == 1) begin
				spike_out_source7 = 12'd0;
		  end else begin 
				spike_out_source7 = spike_out_source_array[7];
		  end
    end
    always @(spike_out_source_array[8], clear) begin 
	 
		  if (clear == 1) begin
				spike_out_source8 = 12'd0;
		  end else begin 
				spike_out_source8 = spike_out_source_array[8];
		  end
				/*output0 = spike_out_source8[0];
				output1 = spike_out_source8[1];
				output2 = spike_out_source8[2];
				output3 = spike_out_source8[3];
				output4 = spike_out_source8[4];
				output5 = spike_out_source8[5];
				output6 = spike_out_source8[6];
				output7 = spike_out_source8[7];
				output8 = spike_out_source8[8];
				output9 = spike_out_source8[9];*/
    end
    always @(spike_out_source_array[9], clear) begin 
        if (clear == 1) begin
				spike_out_source9 = 12'd0;
		  end else begin 
				spike_out_source9 = spike_out_source_array[9];
		  end
    end
    
endmodule
