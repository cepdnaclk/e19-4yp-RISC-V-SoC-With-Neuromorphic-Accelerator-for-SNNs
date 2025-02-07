// `include "potential_decay.v"
//`include "Addition_Subtraction.v"
//`include "Multiplication.v"
//`timescale 1ns/100ps

module network_interface_test(input wire CLK, input wire set_ni, input wire clear_ni, input wire spike0, input wire spike1, input wire spike2, input wire spike3, input wire spike4, 
									input wire spike5, input wire spike6, input wire spike7, input wire spike8, input wire spike9, output reg done, output reg outni0, 
									output reg outni1, output reg outni2, output reg outni3, output reg outni4, output reg outni5, output reg outni6, output reg outni7, 
									output reg outni8, output reg outni9, output reg [11:0] sourceout0, output reg [11:0] sourceout1, output reg [11:0] sourceout2, output reg [11:0] sourceout3,
									output reg [11:0] sourceout4, output reg [11:0] sourceout5, output reg [11:0] sourceout6, output reg [11:0] sourceout7, output reg [11:0] sourceout8,
									output reg [11:0] sourceout9);

    //reg CLK;            //clock
    //reg clear;          //clear to start timestep
    //reg set;
    /*reg spike0;
    reg spike1;
    reg spike2;
    reg spike3;
    reg spike4;
    reg spike5;
    reg spike6;
    reg spike7;
    reg spike8;
    reg spike9;*/
    //reg [neuron_address_initialization_width-1:0] neuron_addresses_initialization;          //input to initialize the neruon addresses
    //reg [connection_pointer_initialization_width-1:0] connection_pointer_initialization;          //input to initialize the connection pointers
    //reg [downstream_connections_initialization_width-1:0] downstream_connections_initialization;    //input to initialize the dowanstream connections
    
    wire[11:0] spike_out_source0;
    wire[11:0] spike_out_source1;
    wire[11:0] spike_out_source2;
    wire[11:0] spike_out_source3;
    wire[11:0] spike_out_source4;
    wire[11:0] spike_out_source5;
    wire[11:0] spike_out_source6;
    wire[11:0] spike_out_source7;
    wire[11:0] spike_out_source8;
    wire[11:0] spike_out_source9;

    //reg[31:0] CLK_count;
	 //reg [31:0] SET_Count;

    reg[11:0] neuron_addresses[0:number_of_units-1];          //initialize with neuron addresses
    // reg[359:0] downstream_connections_initialization;           //input to initialize the dowanstream connections
    //                                                             //12bits * 10 SNN neurons * 3 connections per nueron  
    // reg[119:0] neuron_addresses_initialization;                 //input to initialize the neruon addresses
    //                                                             //12 bits * 10 SNN neurons
    // reg[54:0] connection_pointer_initialization;                //input to initialize the connection pointers
                                                                //11 row pointer elements * 5 bits (to represent 30 connections)

    parameter number_of_units = 10;
    parameter number_of_address_bits = 12;
    parameter connection_pointer_initialization_width = (number_of_neurons + 1) * 5;   // 14-> number_of_neurons * number_of_connections_downstream can be represented by 12 bits
    parameter number_of_neurons= 10;
    parameter number_of_connections_downstream = 3;
    parameter downstream_connections_initialization_width = number_of_address_bits * number_of_connections_downstream * number_of_neurons;
    parameter neuron_address_initialization_width = number_of_address_bits * number_of_neurons;

    wire res0[0:9], res1[0:9], res2[0:9], res3[0:9], res4[0:9], res5[0:9], res6[0:9], res7[0:9], res8[0:9], res9[0:9];
	 
	 //generate 1024 potential decay units
    //generate 10 accumulators
    genvar i;
    generate
        for(i=0; i<1; i=i+1) begin: my_status
            network_interface_new ni(
                .CLK(CLK),            //clock
                .clear(clear_ni),       //clear to start timestep
                .set(set_ni),
                .spike0(spike0),
                .spike1(spike1),
                .spike2(spike2),
                .spike3(spike3),
                .spike4(spike4),
                .spike5(spike5),
                .spike6(spike6),
                .spike7(spike7),
                .spike8(spike8),
                .spike9(spike9),
                //.neuron_addresses_initialization(neuron_addresses_initialization),          
                //.connection_pointer_initialization(connection_pointer_initialization),          
                //.downstream_connections_initialization(downstream_connections_initialization),
                .spike_out_source0(spike_out_source0),
                .spike_out_source1(spike_out_source1),
                .spike_out_source2(spike_out_source2),
                .spike_out_source3(spike_out_source3),
                .spike_out_source4(spike_out_source4),
                .spike_out_source5(spike_out_source5),
                .spike_out_source6(spike_out_source6),
                .spike_out_source7(spike_out_source7),
                .spike_out_source8(spike_out_source8),
                .spike_out_source9(spike_out_source9),
					 .output0(res0[i]),
					 .output1(res1[i]),
					 .output2(res2[i]),
					 .output3(res3[i]),
					 .output4(res4[i]),
					 .output5(res5[i]),
					 .output6(res6[i]),
					 .output7(res7[i]),
					 .output8(res8[i]),
					 .output9(res9[i])
            );
        end
    endgenerate
  
    //record on gtkwave
    /*initial begin
        $dumpfile("network_interface_test.vcd");
        $dumpvars(0, network_interface_test);
        #500
        $finish;
    end*/

    

	 
	 //timestep is 4 clockcycles
    /*always @(posedge CLK) begin
			SET_Count = SET_Count + 1;
			if(SET_Count == 200000000) begin
					set = 1'b1;
			end  
		  
			if (SET_Count === 400000000) begin
				set = 1'b0;
			end
			
			if (SET_Count === 400000000) begin
				//spike3 = 1'b1;
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
	 
	 /*always @ (res0[0]) begin
		out0 = res0[0];
	 end
	 always @ (res1[0]) begin
		out1 = res1[0];
	 end
	 
	 always @ (res2[0]) begin
		out2 = res2[0];
	 end
	 always @ (res3[0]) begin
		out3 = res3[0];
	 end
	 always @ (res4[0]) begin
		out4 = res4[0];
	 end
	 always @ (res5[0]) begin
		out5 = res5[0];
	 end
	 always @ (res6[0]) begin
		out6 = res6[0];
	 end
	 always @ (res7[0]) begin
		out7 = res7[0];
	 end
	 always @ (res8[0]) begin
		out8 = res8[0];
	 end
	 always @ (res9[0]) begin
		out9 = res9[0];
	 end*/
	 
	 always @ (spike0) begin
			outni0 = spike0;
	 end
	 
	 always @ (spike1) begin
			outni1 = spike1;
	 end
	 
	 always @ (spike2) begin
			outni2 = spike2;
	 end
	 
	 always @ (spike3) begin
			outni3 = spike3;
	 end
	 
	 always @ (spike4) begin
			outni4 = spike4;
	 end
	 
	 always @ (spike5) begin
			outni5 = spike5;
	 end
	 
	 always @ (spike6) begin
			outni6 = spike6;
	 end
	 
	 always @ (spike7) begin
			outni7 = spike7;
	 end
	 
	 always @ (spike8) begin
			outni8 = spike8;
	 end
	 
	 always @ (spike9) begin
			outni9 = spike9;
	 end	
	 
	 
	 /*always @ (spike_out_source5) begin
		  outni0 = spike_out_source5[0];
		  outni1 = spike_out_source5[1];
		  outni2 = spike_out_source5[2];
		  outni3 = spike_out_source5[3];
		  outni4 = spike_out_source5[4];
		  outni5 = spike_out_source5[5];
		  outni6 = spike_out_source5[6];
		  outni7 = spike_out_source5[7];
		  outni8 = spike_out_source5[8];
		  outni9 = spike_out_source5[9];
	 end*/
	 
	 always @ (spike_out_source0) begin
			sourceout0 = spike_out_source0;
	 end
	 
	 always @ (spike_out_source1) begin
			sourceout1 = spike_out_source1;
	 end
	 
	 always @ (spike_out_source2) begin
			sourceout2 = spike_out_source2;
	 end
	 
	 always @ (spike_out_source3) begin
			sourceout3 = spike_out_source3;
	 end
	 
	 always @ (spike_out_source4) begin
			/*sourceout4 = spike_out_source4;
			outni0 = spike_out_source4[0];
		   outni1 = spike_out_source4[1];
		   outni2 = spike_out_source4[2];
		   outni3 = spike_out_source4[3];
		   outni4 = spike_out_source4[4];
		   outni5 = spike_out_source4[5];
		   outni6 = spike_out_source4[6];
		   outni7 = spike_out_source4[7];
		   outni8 = spike_out_source4[8];
		   outni9 = spike_out_source4[9];*/
	 end
	 
	 always @ (spike_out_source5) begin
			sourceout5 = spike_out_source5;
	 end
	 
	 always @ (spike_out_source6) begin
			sourceout6 = spike_out_source6;
	 end
	 
	 always @ (spike_out_source7) begin
			sourceout7 = spike_out_source7;
	 end
	 
	 always @ (spike_out_source8) begin
			sourceout8 = spike_out_source8;
		   
	 end
	 
	 always @ (spike_out_source9) begin
			sourceout9 = spike_out_source9;
	 end
	 
	 /*always @ (spike0) begin
			outni0 = spike0;
	 end
	 
	 always @ (spike1) begin
			outni1 = spike1;
	 end
	 
	 always @ (spike2) begin
			outni2 = spike2;
	 end
	 
	 always @ (spike3) begin
			outni3 = spike3;
	 end
	 
	 always @ (spike4) begin
			outni4 = spike4;
	 end
	 
	 always @ (spike5) begin
			outni5 = spike5;
	 end
	 
	 always @ (spike6) begin
			outni6 = spike6;
	 end
	 
	 always @ (spike7) begin
			outni7 = spike7;
	 end
	 
	 always @ (spike8) begin
			outni8 = spike8;
	 end
	 
	 always @ (spike9) begin
			outni9 = spike9;
	 end*/
    
endmodule