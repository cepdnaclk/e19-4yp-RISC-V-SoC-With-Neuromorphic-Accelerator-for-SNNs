//returns 1 if a (first input) is greater than b (second input).
//or else returns 0

module comparator(
    input wire[31:0] a_operand,
    input wire[31:0] b_operand,
    output reg  greater
    );

    wire Exception;      //exception of the addition 
    wire [31:0] result;   //variable to assign new exponent value
    reg sign;

    Addition_Subtraction Addition_Subtraction_1(a_operand, b_operand, 1'b1, Exception, result);

    always @(*) begin

        sign = result[31];
        
        //if result is positive a is greater than b
        if(sign == 0) greater = 1;
        else greater=0;

    end

endmodule