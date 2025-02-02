// `timescale 1ns/100ps
`include "Addition_Subtraction.v"

//reset unit to reset the membrane potential value

module reset(
    input wire [31:0] adder_potential, 
    input wire spiked, 
    input wire [31:0] v_threshold,
    output reg [31:0] potential_to_mem);
    wire Exception;                             //exception of the addition 
    wire [31:0] reset_value;   //variable to assign new exponent value

    Addition_Subtraction Addition_Subtraction_1(adder_potential, v_threshold, 1'b1, Exception, reset_value);

    // Reset if needed only, if not direct write
    always @(*) begin
        if (spiked==1'b1) begin
            // Reset the potential according to the model
            // V <- V - Vth
            potential_to_mem = reset_value;
        end else
            assign potential_to_mem = adder_potential;
    end

endmodule