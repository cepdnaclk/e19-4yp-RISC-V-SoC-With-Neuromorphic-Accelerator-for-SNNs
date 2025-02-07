// `include "potential_decay.v"
// `include "Addition_Subtraction.v"
// `include "Multiplication.v"
`timescale 1ns/100ps

module test_potential_adder;

    reg CLK;
    reg clear;                                              //clear to start timestep
    reg [31:0] v_threshold;
    reg [31:0] input_weight; 
    reg [31:0] decayed_potential;
    reg [1:0] model;
    reg [31:0] a;
    reg [31:0] b;
    reg [31:0] c;
    reg [31:0] d;
    reg [31:0] u_initialize;
    wire [31:0] final_potential; 
    wire spike;
    reg[3:0] CLK_count;

    //test membrane potential value 4. Divided by 2 is 2
    // potential_decay potential_decay_1(CLK,clear, model, decay_rate,input_potential, output_potential);

    //generate 1024 potential decay units
    genvar i;
    generate
        for(i=0; i<1; i=i+1) begin
            potential_adder pd(
                .clear(clear),                                              //clear to start timestep
                .v_threshold(v_threshold),
                .input_weight(input_weight), 
                .decayed_potential(decayed_potential),
                .model(model),
                .a(a),
                .b(b),
                .c(c),
                .d(d),
                .u_initialize(u_initialize),
                .final_potential(final_potential), 
                .spike(spike)
            );
        end
    endgenerate


    //record on gtkwave
    initial begin
        $dumpfile("potential_adder_test.vcd");
        $dumpvars(0, test_potential_adder);
        #200
        $finish;
    end

    //assign inputs
    initial begin
        CLK = 1'b0;
        CLK_count = 0;
        clear = 1'b0;
        v_threshold = 32'h42200000;
        model = 2'b00;
        a = 32'h4287c7ae;
        b = 32'h4287c7ae;
        c = 32'h4287c7ae;
        d = 32'h4287c7ae;
        u_initialize = 32'h4287c7ae;

        #60
        input_weight = 32'h42470A3D;
        decayed_potential = 32'h425ED852;


    end

    //invert clock every 4 seconds
    always
        #4 CLK = ~CLK;

    //timestep is 4 clockcycles
    always @(posedge CLK) begin

        if(CLK_count==3) begin
            CLK_count=0;
            clear = 1'b1;
        end else begin
            CLK_count = CLK_count+1;
        end

        if(CLK_count==1) begin
            clear = 1'b0;
        end
    end
    
endmodule