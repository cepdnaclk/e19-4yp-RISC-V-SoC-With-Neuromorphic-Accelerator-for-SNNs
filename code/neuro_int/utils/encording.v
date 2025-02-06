// Decay modes
`define LIF0 3'b000
`define LIF2 3'b001
`define LIF4 3'b010
`define LIF8 3'b011
`define LIF24 3'b100
`define IZHI 3'b101
`define QUAD 3'b110
`define IDLE 3'b111

// Adder model
`define LIF 2'b00
`define IZHI_AD 2'b01
`define QLIF 2'b10

// Adder init mode
`define DEFAULT 3'b000
`define A 3'b001
`define B 3'b010
`define C 3'b011
`define D 3'b100
`define VT 3'b101
`define U 3'b110
`define IDLE 3'b111

// controller working modes
`define ADDR_WEIGHT_SET 8'b11111111
`define WEIGHT_SET 8'b11111110
`define SET_CONTROL_SIGNALS 8'b11111101
`define END_PACKET 8'b00000000

// controller status
`define MODE_SELECT 2'b00
`define MODE_LOAD 2'b01
`define MODE_BUFFER 2'b10

// buffer modes
`define BUFFER_IDLE 2'b00
`define BUFFER_ADDRESS 2'b01
`define BUFFER_VALUE 2'b10

// buffer status
`define ADDRESS_DONE 2'b01
`define VALUE_DONE 2'b11