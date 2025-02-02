module multiplier_32bit(
    input wire clk,
    input wire start,
    input wire [31:0] A,
    input wire [31:0] B,
    output reg [63:0] result,
    output reg done
);
    
    reg [31:0] multiplicand, multiplier;
    reg [63:0] product;
    reg [5:0] count;
    reg running;

    always @(posedge start) begin
        multiplicand <= A;
        multiplier <= B;
        product <= 0;
        count <= 0;
        running <= 1;
        done <= 0;
    end

    always @(posedge clk) begin
        if (running) begin
            if (count < 32) begin
                if (multiplier[0] == 1'b1) begin
                    product = product + ({32'b0, multiplicand} << count);
                end
                multiplier = multiplier >> 1;
                count = count + 1;
            end else begin
                result <= product;
                done <= 1;
                running <= 0;
            end
        end
    end

endmodule
