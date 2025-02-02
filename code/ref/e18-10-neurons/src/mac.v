// MAC unit can process 4 input spikes together
// 4 spike inputs  
// 4 weights corresponding to the synapse

/*  Floating point addition
    Moving through the next four connections ?*/
`timescale 1ns/100ps
// `include "Addition_Subtraction.v"
 

module mac(
    
    input wire CLK,                             //input clock
    input wire[11:0] neuron_address,            //neuron address
    input wire[11:0] source_address,            //source address of 12 bits
    input wire[160-1:0] weights_array,            //weights array used during intialization 32x5=160 bits
    input wire[60-1:0] source_addresses_array,          //corresponding source address array used during initialization 12x5=60 bits
    input wire clear,                       //signal to signify the end of the timestep
    output reg[31:0] mult_output               //output of 32 bits to the adder
    );             

    parameter number_of_connections = 5;
    parameter number_of_address_bits = 12;
    parameter number_of_units = 10;
    parameter weights_array_width = 32 * number_of_connections;

    integer i;                      //iterate through for the sources addresses
    integer index;                  //get array index of the connection
    reg incoming_spikes[0:number_of_connections-1];   //note incoming spikes
    reg spikes[0:number_of_connections-1];            //received stored spikes
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
    reg flip;

    initial begin
        flip = 1'b0;
    end

    //addition block to add weights
    Addition_Subtraction add1(accumulated_weight, considered_weight, 1'b0, excpetion, added_weight);

    always @(weights_array, source_addresses_array) begin
        //break up the weights
             
        weights[4] = weights_array[31:0];
        weights[3] = weights_array[63:32];
        weights[2] = weights_array[95:64];
        weights[1] = weights_array[127:96];
        weights[0] = weights_array[159:128];

        //extract the initialization source address
      
        //break up the source adddresses
        source_addresses[4] = source_addresses_array[11:0];
        source_addresses[3] = source_addresses_array[23:12];
        source_addresses[2] = source_addresses_array[35:24];
        source_addresses[1] = source_addresses_array[47:36];
        source_addresses[0] = source_addresses_array[59:48];
    end

    //poedge triggers do not work on the fpga along with another signal triggering it
    always @(posedge clear) begin
        flip = ~flip;
    end

    //flip is used as the posedge clear trigger
    //when a spike/source address comes in get index and mark the incoming spike array

    always @(flip, source_address) begin

        // if (clear == 1'b1) begin
        //     for(i=0; i<number_of_connections; i=i+1) begin      //reset the incoming spikes array
        //         spikes[i] = incoming_spikes[i];     //store the incoming spikes
        //         incoming_spikes[i] = 1'b0;
        //     end

        //     accumulated_weight = 32'd0;     //set accumulated value to 0
        //     considered_weight = 32'd0;      //weight addition is zero

        //     //at the begining of the timestep accumulate weights and send to the potential adder unit
        //     for(i=0; i<number_of_connections; i=i+1) begin
        //         if(spikes[i] == 1'b1) begin
        //             #1
        //             considered_weight = weights[i];         
        //             accumulated_weight = added_weight;
        //         end
        //     end
        // end

        // if(clear == 1'b0) begin
        //     // get index by going through the source addresses
        //     break = 1'b0;
        //     for(i=0; i<number_of_connections; i=i+1) begin
        //         if (source_addresses[i] == source_address) begin
        //             index = i;
        //         end
        //     end


        //     incoming_spikes[index] = 1'b1;      //record the incoming spike
        // end

        if (clear == 1'b1) begin
            accumulated_weight = 32'd0;     //set accumulated value to 0
            considered_weight = 32'd0;     
            //get index by going through the source addresses
            // get index by going through the source addresses

            break = 1'b0;
            for(i=0; i<number_of_connections; i=i+1) begin
                if (source_addresses[i] == source_address) begin
                    #1
                    considered_weight = weights[i];         
                    accumulated_weight = added_weight;
                end
            end
        end
        
    end


    // //when clear signal comes reset read the icnoming spike array and reset it

    //when clear signal comes reset read the icnoming spike array and reset it

    // always @(clear) begin
    //     case(clear)
    //         1'b1: begin
    //             for(i=0; i<number_of_connections; i=i+1) begin      //reset the incoming spikes array
    //                 spikes[i] = incoming_spikes[i];     //store the incoming spikes

    //                 // incoming_spikes[i] = 1'b0;

    //                 incoming_spikes[i] = 1'b0;

    //             end

    //             accumulated_weight = 32'd0;     //set accumulated value to 0
    //             considered_weight = 32'd0;      //weight addition is zero

    //             //at the begining of the timestep accumulate weights and send to the potential adder unit
    //             for(i=0; i<number_of_connections; i=i+1) begin
    //                 if(spikes[i] == 1'b1) begin
    //                     #1
    //                     considered_weight <= weights[i];         
    //                     accumulated_weight <= added_weight;
    //                 end
    //             end
    //         end
    //     endcase
    // end

    //added weight
    always @(added_weight) begin
        mult_output = added_weight;
    end


    initial begin
        //set incoming spikes array to zeros
        for(i=0; i<number_of_connections; i=i+1) begin      
            spikes[i] = 1'b0;    
            incoming_spikes[i] = 1'b0;
        end
    end


    // reg [127:0] mask;           //mask varibale to mask the weight that needs to be added
    // reg [127:0] mult_ans;       //weight answer after masking
    // reg [127:0] weight;         //4 weights at once
    // // For floating point addition
    // wire excpetion1, excpetion2, exception3;
    // wire [31:0] add_val1, add_val2, add_val3;

    //at the beginning of a timestep

    // always @(posedge CLK) begin 
    //     case (spike_in) 
    //         4'd0:   mult_output = 32'b0;                  // No spikes in any of the 4 branches.
    //         4'd1: begin
    //             mask = 128'b0;
    //             mask[31:0] = 32'd4294967295;   
    //             mult_ans = weight & mask; 
    //         end
    //         4'd2: begin
    //             mask = 128'b0;
    //             mask[63:32] = 32'd4294967295;   
    //             mult_ans = weight & mask; 
    //         end
    //         4'd3: begin
    //             mask = 128'b0;
    //             mask[63:0] = 32'd4294967295;   
    //             mult_ans = weight & mask; 
    //         end
    //         4'd4: begin
    //             mask = 128'b0;
    //             mask[95:64] = 32'd4294967295;   
    //             mult_ans = weight & mask; 
    //         end
    //         4'd5: begin
    //             mask = 128'b0;
    //             mask[31:0] = 32'd4294967295; 
    //             mask[95:64] = 32'd4294967295;   
    //             mult_ans = weight & mask; 
    //         end
    //         4'd6: begin
    //             mask = 128'b0;
    //             mask[95:32] = 32'd4294967295;   
    //             mult_ans = weight & mask; 
    //         end
    //         4'd7: begin
    //             mask = 128'b0;
    //             mask[95:0] = 64'd4294967295;   
    //             mult_ans = weight & mask; 
    //         end
    //         4'd8: begin
    //             mask = 128'b0;
    //             mask[127:96] = 32'd4294967295;   
    //             mult_ans = weight & mask; 
    //         end
    //         4'd9: begin
    //             mask = 128'b0;
    //             mask[127:96] = 32'd4294967295;  
    //             mask[31:0] = 32'd4294967295;
    //             mult_ans = weight & mask; 
    //         end
    //         4'd10: begin
    //             mask = 128'b0;
    //             mask[127:96] = 32'd4294967295;  
    //             mask[63:32] = 32'd4294967295;
    //             mult_ans = weight & mask; 
    //         end
    //         4'd11: begin
    //             mask = 128'b0;
    //             mask[127:96] = 32'd4294967295;  
    //             mask[63:0] = 64'd4294967295;
    //             mult_ans = weight & mask; 
    //         end
    //         4'd12: begin
    //             mask = 128'b0;
    //             mask[127:64] = 64'd4294967295;
    //             mult_ans = weight & mask; 
    //         end
    //         4'd13: begin
    //             mask = 128'b0;
    //             mask[127:96] = 32'd4294967295;  
    //             mask[31:0] = 32'd4294967295;
    //             mult_ans = weight & mask; 
    //         end
    //         4'd14: begin
    //             mask = 128'b0;
    //             mask[127:32] = 96'd4294967295;
    //             mult_ans = weight & mask; 
    //         end
    //         4'd15: begin
    //             mult_ans = weight;
    //         end
    //         default:    mult_ans = 4'bx;
    //     endcase
        
    //     // mult_output = mult_ans[31:0] + mult_ans[63:32] + mult_ans[95:64] + mult_ans[127:96];
    //     // mult_output = add_val3;
    // end

    // Addition_Subtraction add1(mult_ans[31:0], mult_ans[63:32], 1'b0, excpetion1, add_val1);
    // Addition_Subtraction add2(add_val1, mult_ans[95:64], 1'b0, excpetion2, add_val2);
    // Addition_Subtraction add3(add_val2, mult_ans[127:96], 1'b0, exception3, add_val3);

    // always@(add_val3 or spike_in) begin
    //     mult_output = add_val3;
    // end

endmodule


// ////////////////**********************************/////////////////////

