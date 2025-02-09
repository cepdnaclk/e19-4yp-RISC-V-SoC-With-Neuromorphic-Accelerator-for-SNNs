`timescale 1ns/100ps

module shifter_32bit (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [31:0] data_in,
    input wire [4:0] shift_amount,  // Supports shifting up to 31 bits
    input wire [1:0] mode,          // 00: Logical Left, 01: Logical Right, 10: Arithmetic Right
    output reg [31:0] data_out,
    output reg done
);

    reg [31:0] shift_reg;
    reg [4:0] count;
    reg running, prev_start;

    always @(posedge clk) begin
        prev_start <= start;
    end

    always @(posedge clk) begin
        if (rst) begin
            shift_reg <= 0;
            count <= 0;
            running <= 0;
            done <= 0;
            data_out <= 0;
        end else if (start && !running && !prev_start) begin
            shift_reg <= data_in;
            count <= shift_amount;
            running <= 1;
            done <= 0;
            data_out <= 0;
        end else if (running) begin
            if (count > 0) begin
                case (mode)
                    2'b00: shift_reg <= shift_reg << 1;  // Logical Left Shift
                    2'b01: shift_reg <= shift_reg >> 1;  // Logical Right Shift
                    2'b10: shift_reg <= shift_reg >>> 1; // Arithmetic Right Shift
                    default: shift_reg <= shift_reg; // No operation
                endcase
                count <= count - 1;
            end else begin
                data_out <= shift_reg;
                done <= 1;
                running <= 0;
            end
        end
    end

endmodule
