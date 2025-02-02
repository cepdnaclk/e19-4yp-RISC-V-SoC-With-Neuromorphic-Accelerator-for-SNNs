`include "../utils/32bit_mul.v"
`include "../utils/32bit_shifter.v"
`include "../utils/encording.v"

module potential_decay(
    input wire clk,
    input wire rst,
    input wire load,
    input wire time_step,
    input wire [2:0] mode,
    input wire [31:0] new_potential,
    output reg [31:0] output_potential_decay
);
    
    reg [31:0] membrane_potential;
    wire [31:0] output_lif2;
    wire [31:0] output_lif4;
    wire [31:0] output_lif8;
    wire done_lif2;
    wire done_lif4;
    wire done_lif8;
    wire v_squared_done;
    wire izi1_done;
    wire izi2_done;
    wire [63:0] v_squared;
    wire [31:0] izi_first_term;
    wire [63:0] izi_second_term;
    reg start;

    multiplier_32bit v_squared_mul(
        .clk(clk),
        .rst(time_step),
        .start(start),
        .A(membrane_potential),
        .B(membrane_potential),
        .result(v_squared),
        .done(v_squared_done)
    );

    shifter_32bit izi1(
        .clk(clk),
        .rst(time_step),
        .start(v_squared_done),
        .data_in(v_squared[31:0]),
        .shift_amount(5'b00011),
        .mode(2'b01),
        .data_out(izi_first_term),
        .done(izi1_done)
    );

    multiplier_32bit izi2(
        .clk(clk),
        .rst(time_step),
        .start(start),
        .A(membrane_potential),
        .B(32'h0005),
        .result(izi_second_term),
        .done(izi2_done)
    );

    shifter_32bit lif2(
        .clk(clk),
        .rst(time_step),
        .start(start),
        .data_in(membrane_potential),
        .shift_amount(5'b00001),
        .mode(2'b01),
        .data_out(output_lif2),
        .done(done_lif2)
    );

    shifter_32bit lif4(
        .clk(clk),
        .rst(time_step),
        .start(start),
        .data_in(membrane_potential),
        .shift_amount(5'b00010),
        .mode(2'b01),
        .data_out(output_lif4),
        .done(done_lif4)
    );

    shifter_32bit lif8(
        .clk(clk),
        .rst(time_step),
        .start(start),
        .data_in(membrane_potential),
        .shift_amount(5'b00011),
        .mode(2'b01),
        .data_out(output_lif8),
        .done(done_lif8)
    );

    always @(posedge load) begin
        membrane_potential <= new_potential;
        #10 start <= 1;
        #10 start <= 0;
    end

    always @(posedge time_step) begin
        output_potential_decay <= membrane_potential;
    end

    always @(posedge clk) begin
        if (rst) begin
            membrane_potential <= 0;
            output_potential_decay <= 0;
        end else if (mode == `LIF0) begin
            // Do nothing
        end else if (mode == `LIF2) begin
            if (done_lif2) begin
                membrane_potential <= output_lif2;
            end
        end else if (mode == `LIF4) begin
            if (done_lif4) begin
                membrane_potential <= output_lif4;
            end
        end else if (mode == `LIF8) begin
            if(done_lif8) begin
                membrane_potential <= output_lif8;
            end
        end else if (mode == `LIF24) begin
            if(done_lif2 & done_lif4) begin
                membrane_potential <= output_lif2 + output_lif4;
            end
        end else if(mode == `IZHI) begin
            if(izi1_done & izi2_done) begin
                membrane_potential <= izi_first_term - izi_second_term[31:0];
            end
        end else if(mode == `QUAD) begin
            if(v_squared_done) begin
                membrane_potential <= v_squared;
            end
        end else if(mode == `IDLE) begin
            // do nothing
        end
    end

endmodule
