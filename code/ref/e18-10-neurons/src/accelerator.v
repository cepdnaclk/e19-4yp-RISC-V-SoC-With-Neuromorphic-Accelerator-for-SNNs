module accelerator(
    input wire CLK,
    input wire [3:0] spike_in,
    input wire [127:0] weight,
    input wire [31:0] v_threshold,
    input wire [31:0] current_potential,
    input wire[2:0] decay_rate,
    output reg spiked,
    output wire [31:0] potential_to_mem);

    // Store connection wires between the three units MAC, Adder and Reset
    wire [31:0] mac_out;
    wire spike_adder;
    wire [31:0] adder_out;
    wire [31:0] decayed_potential;

    always @(spike_adder) begin
        assign spiked= spike_adder;
    end

    //initialization
    mac m1(CLK, spike_in, weight, mac_out);
    potential_decay p1 (CLK, decay_rate, current_potential, decayed_potential);
    potential_adder a1(v_threshold, mac_out, decayed_potential, adder_out, spike_adder);
    reset r1(adder_out, spike_adder, v_threshold, potential_to_mem);
    

endmodule