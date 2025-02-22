module clock_generator(input wire CLK_Gen, output reg clear, output reg set, output reg done_gen, output reg mac_init);

    reg [31:0] CLK_count;
    reg [31:0] SET_Count;

    //timestep is 4 clockcycles
    always @(posedge CLK_Gen) begin

			SET_Count = SET_Count + 1;
			if(SET_Count == 200000000) begin
					set = 1'b1;
					//out0 = 1'b1;
					//source_address = 12'd0;
			end  
		  
			if (SET_Count == 400000000) begin
				set = 1'b0;
				//out0 = 1'b0;
			end
			
			if (SET_Count == 500000000) begin
				//source_address = 12'd5;	
                mac_init = 1'b1;
			end

            if (SET_Count == 600000000) begin
				//source_address = 12'd5;	
                mac_init = 1'b0;
			end
	 
        if(CLK_count==300000000) begin
            CLK_count=0;
            clear = 1'b1;
				done_gen = 1'b1;
        end else begin
            CLK_count = CLK_count+1;
        end

        if(CLK_count==100000000) begin
            clear = 1'b0;
				done_gen = 1'b0;
        end
	 
    end
	 
endmodule