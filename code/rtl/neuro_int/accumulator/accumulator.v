`timescale 1ns/100ps

module accumulator (
    input  clk,        // System clock
    input  rst,        // Reset signal
    input  time_step,  // Time step pulse (sync signal)
    input  load,       // Load signal for setting weights
    input  mode,       // Mode
    input  [9:0]  src_addr,  // 10-bit Source address
    input  [31:0] weight_in, // Input weight for loading
    output reg [31:0] accumulated_out // Output accumulated weight (32-bit)
);

    reg [9:0]  weight_addr [0:15];  // 16 entries of 10-bit addresses
    reg [31:0] weight_value [0:15]; // 16 entries of 32-bit weights
    reg [31:0] accumulated_reg;     // 32-bit accumulation register
    reg [4:0]  write_ptr;           // 5-bit pointer for writing weights
    reg prev_time_step_val;                   
    reg prev_load;                           


    integer i; // Declare loop variable

    // Reset and Weight Initialization
    always @(posedge clk) begin
        prev_time_step_val <= time_step;
        if(rst) begin
            accumulated_reg <= 32'b0;
            accumulated_out <= 32'b0;
            prev_time_step_val <= 0;
        end else if(!mode) begin
            for (i = 0; i < 16; i = i + 1) begin
                if (weight_addr[i] == src_addr) begin
                    if(time_step && !prev_time_step_val) begin
                        accumulated_out <= accumulated_reg; // Output accumulated weight
                        accumulated_reg <= weight_value[i]; // Load new weight
                    end else begin
                        accumulated_reg <= accumulated_reg + weight_value[i];
                    end
                end
            end
        end
    end

    always @(posedge clk) begin
        prev_load <= load;
        if (rst) begin
            write_ptr <= 0;
            for (i = 0; i < 16; i = i + 1) begin
                weight_addr[i]  <= 10'b0;
                weight_value[i] <= 32'b0;
            end
        end
        if (load && !prev_load) begin
            weight_addr[write_ptr]  <= src_addr;
            weight_value[write_ptr] <= weight_in;
            write_ptr <= write_ptr + 1;
        end
    end

endmodule
