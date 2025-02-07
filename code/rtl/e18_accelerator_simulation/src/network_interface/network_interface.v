`timescale 1ns/100ps

module network_interface(
    input wire CLK,            //clock
    input wire clear,          //clear to start timestep
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
    input wire[119:0] neuron_addresses_initialization,          //input to initialize the neruon addresses
    input wire[54:0] connection_pointer_initialization,          //input to initialize the connection pointers
    input wire[359:0] downstream_connections_initialization,    //input to initialize the dowanstream connections
    output reg[23:0] packet               //outgoing packet         
    );

    parameter  number_of_neurons=10;                            //number of neurons
    reg[11:0] neuron_addresses[0:number_of_neurons-1];          //initialize with neuron addresses
    reg[4:0] connection_pointer[0:number_of_neurons];         //point to connection starting point according to CSR
    reg[11:0] downstream_connections[0:(number_of_neurons*3)];  //support 5 connections per neuron
    reg al[0:number_of_neurons-1];                  //register the spikes
    reg[4:0] i;                                             //index for iteration
    reg[4:0] j;
    reg check=0;
    reg spike_register[0:9];
    
    //when neuron addresses are initilaized
    always @(neuron_addresses_initialization) begin
        neuron_addresses[0] = neuron_addresses_initialization[119:108];
        neuron_addresses[1] = neuron_addresses_initialization[107:96];
        neuron_addresses[2] = neuron_addresses_initialization[95:84];
        neuron_addresses[3] = neuron_addresses_initialization[83:72];
        neuron_addresses[4] = neuron_addresses_initialization[71:60];
        neuron_addresses[5] = neuron_addresses_initialization[59:48];
        neuron_addresses[6] = neuron_addresses_initialization[47:36];
        neuron_addresses[7] = neuron_addresses_initialization[35:24];
        neuron_addresses[8] = neuron_addresses_initialization[23:12];
        neuron_addresses[9] = neuron_addresses_initialization[11:0];
    end

    //when the connnection pointers come
    always @(connection_pointer_initialization) begin
        connection_pointer[0] = connection_pointer_initialization[54:50];
        connection_pointer[1] = connection_pointer_initialization[49:45];
        connection_pointer[2] = connection_pointer_initialization[44:40];
        connection_pointer[3] = connection_pointer_initialization[39:35];
        connection_pointer[4] = connection_pointer_initialization[34:30];
        connection_pointer[5] = connection_pointer_initialization[29:25];
        connection_pointer[6] = connection_pointer_initialization[24:20];
        connection_pointer[7] = connection_pointer_initialization[19:15];
        connection_pointer[8] = connection_pointer_initialization[14:10];
        connection_pointer[9] = connection_pointer_initialization[9:5];
        connection_pointer[10] = connection_pointer_initialization[4:0];
    end

    //initlize the connections
    always @(downstream_connections_initialization) begin
        downstream_connections[0] = downstream_connections_initialization[359:348];
        downstream_connections[1] = downstream_connections_initialization[347:336];
        downstream_connections[2] = downstream_connections_initialization[335:324];
        downstream_connections[3] = downstream_connections_initialization[323:312];
        downstream_connections[4] = downstream_connections_initialization[311:300];
        downstream_connections[5] = downstream_connections_initialization[299:288];
        downstream_connections[6] = downstream_connections_initialization[287:276];
        downstream_connections[7] = downstream_connections_initialization[275:264];
        downstream_connections[8] = downstream_connections_initialization[263:252];
        downstream_connections[9] = downstream_connections_initialization[251:240];
        downstream_connections[10] = downstream_connections_initialization[239:228];
        downstream_connections[11] = downstream_connections_initialization[227:216];
        downstream_connections[12] = downstream_connections_initialization[215:204];
        downstream_connections[13] = downstream_connections_initialization[203:192];
        downstream_connections[14] = downstream_connections_initialization[191:180];
        downstream_connections[15] = downstream_connections_initialization[179:168];
        downstream_connections[16] = downstream_connections_initialization[167:156];
        downstream_connections[17] = downstream_connections_initialization[155:144];
        downstream_connections[18] = downstream_connections_initialization[143:132];
        downstream_connections[19] = downstream_connections_initialization[131:120];
        downstream_connections[20] = downstream_connections_initialization[119:108];
        downstream_connections[21] = downstream_connections_initialization[107:96];
        downstream_connections[22] = downstream_connections_initialization[95:84];
        downstream_connections[23] = downstream_connections_initialization[83:72];
        downstream_connections[24] = downstream_connections_initialization[71:60];
        downstream_connections[25] = downstream_connections_initialization[59:48];
        downstream_connections[26] = downstream_connections_initialization[47:36];
        downstream_connections[27] = downstream_connections_initialization[35:24];
        downstream_connections[28] = downstream_connections_initialization[23:12];
        downstream_connections[29] = downstream_connections_initialization[11:0];
    end

    //send the spike whenever
    always @(spike0, spike1, spike2, spike3, spike4, spike5, spike6, spike7, spike8, spike9) begin
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

        #0.5
        check = ~check;
        //if spiked send the source address to the relevant accumulator
        for(i=0; i<=9; i=i+1) begin
            if(spike_register[i]==1) begin
                for(j=connection_pointer[i]; j<connection_pointer[i+1]; j=j+1) begin
                    packet = #1 {neuron_addresses[i], downstream_connections[j]};
                end
                spike_register[i]=0;
            end
            
        end
        
    end

    


    initial
    begin
        $monitor($time, " Spike Handle connection_pointer: %b\n", connection_pointer[0]);
    end

endmodule