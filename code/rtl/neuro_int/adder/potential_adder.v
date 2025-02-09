`timescale 1ns/100ps

module potential_adder (
    input wire clk,
    input wire rst,        
    input wire time_step,      
    input wire [31:0] input_weight, 
    input wire [31:0] decayed_potential,
    input wire [1:0] model,
    input wire [2:0] init_mode,
    input wire load,
    
    output reg [31:0] final_potential, 
    output reg done,
    output reg spike
);

    // Common Signals
    reg [31:0] weight_added;
    reg [31:0] u;
    reg adder_start, adder_send;

    // Internal Signals for Izhikevich Model
    wire [63:0] bv, a_bv_u;
    wire [31:0] bv_u;
    reg [31:0] a, b, c, d, v_threshold;
    
    reg bv_start, abv_start, clear_mul;
    wire bv_done, abv_done;

    reg prev_load, prev_time_step;

    multiplier_32bit multIzhiBV (
        .clk(clk),
        .rst(rst || clear_mul),
        .start(bv_start),
        .A(b),
        .B(decayed_potential),
        .result(bv),
        .done(bv_done)
    );

    multiplier_32bit multIzhiaBVu (
        .clk(clk),
        .rst(rst || clear_mul),
        .start(abv_start),
        .A(a),
        .B(bv_u),
        .result(a_bv_u),
        .done(abv_done)
    );

    assign bv_u = bv[31:0] - u;

    always @(posedge clk) begin
        if(rst) begin
            bv_start <= 0;
            abv_start <= 0;
        end else if (adder_start && model == `IZHI_AD) begin
            bv_start <= 1;
            abv_start <= 0;
        end else if (bv_done) begin
            bv_start <= 0;
            abv_start <= 1;
        end else if (abv_done) begin
            bv_start <= 0;
            abv_start <= 0;
        end
    end

    always @(posedge clk) begin
        prev_load <= load;
        if (rst) begin
            a <= 0;
            b <= 0;
            c <= 0;
            d <= 0;
            v_threshold <= 0;
            u <= 0;
        end else if (load && !prev_load) begin
            if (init_mode == `A) begin
                a <= input_weight;
            end else if (init_mode == `B) begin
                b <= input_weight;
            end else if (init_mode == `C) begin
                c <= input_weight;
            end else if (init_mode == `D) begin
                d <= input_weight;
            end else if (init_mode == `VT) begin
                v_threshold <= input_weight;
            end else if (init_mode == `U) begin
                u <= input_weight;
            end
        end else if (init_mode == `DEFAULT) begin
            if (adder_send && model == `IZHI_AD && abv_done) begin
                u <= (weight_added > v_threshold) ? u + d : a_bv_u[31:0];
            end
        end
    end

    always @(posedge clk) begin
        prev_time_step <= time_step;
        if (rst) begin
            adder_start <= 0;
            done <= 0;
            clear_mul <= 0;
        end else if (time_step && !prev_time_step) begin
            adder_start <= 1;
            done <= 0;
        end else if (adder_start) begin
            adder_start <= 0;
            adder_send <= 1;
        end else if (adder_send) begin
            if (model == `LIF) begin
                adder_send <= 0;
                done <= 1;
            end else if (model == `IZHI_AD && abv_done) begin
                adder_send <= 0;
                done <= 1;
                clear_mul <= 1;
            end else if (model == `QLIF) begin
                adder_send <= 0;
                done <= 1;
            end
        end else begin
            clear_mul <= 0;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            final_potential <= 0;
            spike <= 0;
            weight_added <= 0;
        end else if (init_mode == `DEFAULT) begin
            if (adder_start) begin
                if (model == `LIF) begin
                    weight_added <= input_weight + decayed_potential;
                end else if (model == `IZHI_AD) begin
                    weight_added <= input_weight + decayed_potential - u;
                end else if (model == `QLIF) begin
                    weight_added <= input_weight + decayed_potential;
                end
            end
            if(adder_send) begin
                if(model == `LIF) begin
                    spike <= (weight_added > v_threshold);
                    final_potential <= (weight_added > v_threshold) ? (weight_added - v_threshold) : weight_added;
                    weight_added <= 0;
                end else if (model == `IZHI_AD) begin
                    if (abv_done) begin
                        spike <= (weight_added > v_threshold);
                        final_potential <= (weight_added > v_threshold) ? c : weight_added;
                        weight_added <= 0;
                    end
                end else if (model == `QLIF) begin
                    spike <= (weight_added > v_threshold);
                    final_potential <= (weight_added > v_threshold) ? (weight_added - v_threshold) : weight_added;
                    weight_added <= 0;
                end
            end
        end
    end
endmodule
