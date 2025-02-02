`timescale 1ns/100ps

module tb_async_fifo;

    parameter DATA_WIDTH = 12;
    parameter ADDR_WIDTH = 4;

    reg wr_clk, rd_clk, rst_n, wr_en, rd_en;
    reg [DATA_WIDTH-1:0] wr_data;
    wire [DATA_WIDTH-1:0] rd_data;
    wire empty, full;
    reg clear;
    reg clk;
    reg [3:0] clk_count;

    async_fifo_copy #(DATA_WIDTH, ADDR_WIDTH) uut (
        // .wr_clk(wr_clk),
        .rd_clk(clear),
        .rst_n(rst_n),
        .wr_en(~clear),
        .wr_data(wr_data),
        .rd_en(clear),
        .rd_data(rd_data),
        .empty(empty),
        .full(full)
    );

    initial begin
        wr_clk = 1;
        clk = 0;
        rd_clk = 0;
        rst_n = 0;
        wr_en = 0;
        rd_en = 0;
        wr_data = 12'hxx;
        clk_count = 0;

        // Reset
        #10 rst_n = 1;

        // Write data
        #10 wr_en = 1; #1 wr_data = 12'h00;
        #20 wr_en = 0;

        // Read data
        #10 rd_en = 1;
        #20 rd_en = 0;

        // write data
        #10 wr_en = 1; #1 wr_data = 12'hB2;
        #20 wr_en = 0;

        // Read data
        #10 rd_en = 1;
        #20 rd_en = 0;
        // #10 rd_en = 1;
        // #20 rd_en = 0;

        // Write more data
        #10 wr_en = 1; wr_data = 12'h00;
        #30 wr_en = 0;

        // Read more data
        #10 rd_en = 1;
        #20 rd_en = 0;

        // Write more data
        #10 wr_en = 1; wr_data = 12'hC4;
        #20 wr_data = 32'h32;
        #35 wr_en = 0;

        // Read more data
        #50 rd_en = 1;
        #20 rd_en = 0;

        #200
        $finish;
    end

    // always #4 wr_clk = ~wr_clk;
    // // always #7 rd_clk = ~rd_clk;
    // always @ (wr_clk) begin
    //     rd_clk = ~wr_clk;
    // end

    always #4 clk = ~clk;

    //timestep is 4 clockcycles
    always @(posedge clk) begin

        if(clk_count==3) begin
            clk_count=0;
            clear = 1'b1;
            rd_clk = clear;
            wr_clk = ~clear;
        end else begin
            clk_count = clk_count+1;
        end

        if(clk_count==1) begin
            clear = 1'b0;
            rd_clk = clear;
            wr_clk = ~clear;
        end
    end

    

    // Observe the timing on gtkwave
    initial begin
        $dumpfile("async_fifo.vcd");
        $dumpvars(0,tb_async_fifo);
    end

endmodule
