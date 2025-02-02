// this module will store all data related to the neurons in the accelerator.

// also it will have the adjancy matrix of the entire snn in running.

// assuming 10 bits per neuron address

module spike_in_cache(
    input CLK,
    input[19:0] spike_packet       //incoming spike packet [destination enuron, Source Neuron]
    );

    reg number_of_neurons = 10;         //for testing keep number of neurons as 10
    reg[9:0] neuron_addresses[0:9];     //local addresses of 10 neurons in the accelerator
    reg neuron_index[0:9];              //register to store index in column and value list according to the compressed sparse row standard
    reg[9:0] source_addresses [0:29];    //let one neuron have 3 upstream connections. Then all together max number of connections = 10x3 = 30
    reg[9:0] destination_neuron;        //store the destination neuron from the spike packet
    reg[9:0] source_neuron;             //store the source neuron from the spike pakcet
    reg[9:0] spike_information[0:29];        //store spikes as they come in an array

    //at the begining of the timestep check for spikes
    always @(posedge CLK) begin       

    end

    //whenever a spike comes
    always @(spike_packet) begin         

        destination_neuron = spike_packet[19:10];               //extract the destination neuron address 
        source_neuron = spike_packet[9:0];                      //extract the source neuron address
        spike_information[destination_neuron] = source_neuron;  //store the source neuron in spike information

    end


    //assign the connections,neuron addresses.
    initial begin

        //neuron addresses
        neuron_addresses[0] = 10'b0000000000;
        neuron_addresses[1] = 10'b0000000001;
        neuron_addresses[2] = 10'b0000000010;
        neuron_addresses[3] = 10'b0000000011;
        neuron_addresses[4] = 10'b0000000100;
        neuron_addresses[5] = 10'b0000000101;
        neuron_addresses[6] = 10'b0000000110;
        neuron_addresses[7] = 10'b0000000111;
        neuron_addresses[8] = 10'b0000001000;
        neuron_addresses[9] = 10'b0000001001;

        //row pointers (index of the connections according to the neurons)
        neuron_index[0] = 0;        //connections to 0th neuron start here in the source addresses[]
        neuron_index[1] = 1;        //connections to 1st neuron start here in the source addresses[]    
        neuron_index[2] = 2;        //connections to 2nd neuron start here in the source addresses[]
        neuron_index[3] = 3;        //connections to 3rd neuron start here in the source addresses[]
        neuron_index[4] = 4;        //connections to 4th neuron start here in the source addresses[]
        neuron_index[5] = 6;        //connections to 5th neuron start here in the source addresses[]
        neuron_index[6] = 8;
        neuron_index[7] = 10;
        neuron_index[8] = 11;
        neuron_index[9] = 15;


        //source addresses of the upstream connections

        //upstream connections of neuron 0
        source_addresses[0] = 10'b1111111000;

        //upstream connections of neuron 1
        source_addresses[1] = 10'b1111111001;

        //upstream connections of neuron 2
        source_addresses[2] = 10'b1111111010;

        //upstream connections of neuron 3
        source_addresses[3] = 10'b0000000000;

        //upstream connections of neuron 4
        source_addresses[4] = 10'b0000000001;
        source_addresses[5] = 10'b0000000010;

        //upstream connections of neuron 5
        source_addresses[6] = 10'b0000000000;
        source_addresses[7] = 10'b0000000010;

        //upstream connections of neuron 6
        source_addresses[8] = 10'b0000000001;
        source_addresses[9] = 10'b0000000010;

        //upstream connections of neuron 7
        source_addresses[10] = 10'b0000000000;

        //upstream connections of neuron 8
        source_addresses[11] = 10'b0000000011;
        source_addresses[12] = 10'b0000000100;
        source_addresses[13] = 10'b0000000101;
        source_addresses[14] = 10'b0000000111;

        //upstream connections of neuron 9
        source_addresses[15] = 10'b0000000011;
        source_addresses[16] = 10'b0000000100;
        source_addresses[17] = 10'b0000000101;
        source_addresses[18] = 10'b0000000110;
        source_addresses[19] = 10'b0000000111;

    end
    

endmodule