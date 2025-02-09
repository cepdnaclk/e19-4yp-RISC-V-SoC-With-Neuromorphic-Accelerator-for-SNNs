`timescale 1ns/100ps

module controller(
    input wire load_data,
    input wire [7:0] data,
    input wire clk, rst,
    output reg load,
    output reg [31:0] value,
    output reg [9:0] address,
    output reg [2:0] decay_mode,
    output reg [2:0] init_mode_adder,
    output reg [1:0] adder_model,
    output reg init_mode_acc,
    output reg neuron_mode
);

    reg [7:0] controller_mode;
    reg [1:0] controller_status;
    reg [7:0] buffer [2:0];
    reg [1:0] buffer_status;
    reg [1:0] buffer_mode;
    reg data_ready, prev_load_data;

    always @(posedge clk) begin
        prev_load_data <= load_data;
        if (rst) begin
            data_ready <= 0;
        end else if (load_data && !prev_load_data) begin
            data_ready <= 1;
        end else if (data_ready) begin
            data_ready <= 0;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            load <= 0;
            address <= 0;
            value <= 0;
            decay_mode <= 0;
            adder_model <= 0;
            init_mode_adder <= 0;
            init_mode_acc <= 0;
            controller_mode <= 0;
            controller_status <= `MODE_SELECT;
            buffer[0] <= 0;
            buffer[1] <= 0;
            buffer[2] <= 0;
            buffer_status <= 0;
            buffer_mode <= `BUFFER_IDLE;
            neuron_mode <= 1;
        end else if (data_ready) begin
            if (controller_status == `MODE_SELECT) begin
                if(data == `END_PACKET) begin
                    load <= 1;
                    #10 load <= 0;
                    neuron_mode <= 0;
                    controller_status <= `MODE_SELECT;
                    address <= 0;
                    value <= 0;
                end else begin
                    load <= 0;
                    neuron_mode <= 1;
                    controller_mode <= data;
                    controller_status <= `MODE_LOAD;
                end
            end else if (controller_status == `MODE_LOAD) begin
                buffer[buffer_status] <= data;
                buffer_status <= buffer_status + 1;
                if (buffer_status == `ADDRESS_DONE) begin
                    decay_mode <= buffer[0][2:0];
                    init_mode_adder <= buffer[0][5:3];
                    adder_model <= buffer[0][7:6];
                    init_mode_acc <= data[0];
                    buffer_status <= 0;
                    if (controller_mode == `SET_CONTROL_SIGNALS) begin
                        controller_status <= `MODE_SELECT;
                    end else begin
                        controller_status <= `MODE_BUFFER;
                        if(controller_mode == `ADDR_WEIGHT_SET) begin
                            buffer_mode <= `BUFFER_ADDRESS;
                        end else if(controller_mode == `WEIGHT_SET) begin
                            buffer_mode <= `BUFFER_VALUE;
                        end
                    end                    
                end
            end else if (controller_status == `MODE_BUFFER) begin
                buffer[buffer_status] <= data;
                buffer_status <= buffer_status + 1;
                if (buffer_mode == `BUFFER_ADDRESS) begin
                    if (buffer_status == `ADDRESS_DONE) begin
                        address <= {data[1:0], buffer[0][7:0]};
                        buffer_mode <= `BUFFER_VALUE;
                        buffer_status <= 0;
                    end
                end else if (buffer_mode == `BUFFER_VALUE) begin
                    if(buffer_status == `VALUE_DONE) begin
                        value <= {data, buffer[2], buffer[1], buffer[0]};
                        buffer_mode <= `BUFFER_IDLE;
                        controller_status <= `MODE_SELECT;
                        buffer_status <= 0;
                    end
                end
            end
        end
    end

endmodule