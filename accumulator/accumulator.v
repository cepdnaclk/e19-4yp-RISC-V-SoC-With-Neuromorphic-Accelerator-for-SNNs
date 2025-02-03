module Accumulator (
    input  clk,        // System clock
    input  rst,        // Reset signal
    input  time_step,  // Time step pulse (sync signal)
    input  load,       // Load signal for setting weights
    input  mode,       // Mode
    input  [9:0]  src_addr,  // 10-bit Source address
    input  [31:0] weight_in, // Input weight for loading
    output reg [31:0] accumulated_out // Output accumulated weight (32-bit)
);

    // Fixed-size registers for weight addresses and values
    reg [9:0]  weight_addr [0:15];  // 16 entries of 10-bit addresses
    reg [31:0] weight_value [0:15]; // 16 entries of 32-bit weights
    reg [31:0] accumulated_reg;     // 32-bit accumulation register
    reg [4:0]  write_ptr;           // 5-bit pointer for writing weights

    integer i; // Declare loop variable

    // Reset and Weight Initialization
    always @(posedge clk) begin
        if(!mode) begin
            for (i = 0; i < 16; i = i + 1) begin
                if (weight_addr[i] == src_addr) begin
                    accumulated_reg <= accumulated_reg + weight_value[i];
                end
            end
        end
    end

    always @(negedge rst) begin
        for (i = 0; i < 16; i = i + 1) begin
            weight_addr[i]  <= 10'b0;
            weight_value[i] <= 32'b0;
        end
        accumulated_reg <= 32'b0;
        write_ptr       <= 5'b0;
    end

    always @(posedge load) begin
        if (load) begin
            if (write_ptr < 16) begin
                weight_addr[write_ptr]  <= src_addr;
                weight_value[write_ptr] <= weight_in;
                write_ptr <= write_ptr + 1;
            end
        end
    end

    always @(posedge time_step) begin
        if(time_step) begin
            accumulated_out <= accumulated_reg; // Store accumulated weight
            accumulated_reg <= 32'b0;           // Reset accumulator for next time step
        end
    end

endmodule
