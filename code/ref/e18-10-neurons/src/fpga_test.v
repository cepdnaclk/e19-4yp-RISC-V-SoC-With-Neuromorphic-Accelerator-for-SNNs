//`timescale 1ns/100ps

module fpga_test(
    input wire CLK,
    output reg clear);
	 
	 reg[3:0] CLK_count;

    initial begin 
        //initialize clock
        CLK_count = 0;
        clear = 1'b0;
        #100
        $finish;    

    end

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