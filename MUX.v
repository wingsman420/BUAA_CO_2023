`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:31:47 11/08/2023 
// Design Name: 
// Module Name:    MUX 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MUX(
    input [31:0]IM_O,
	 input IMchoose,
	 input jalSign,
    output [4:0]rs,
    output [4:0]rt,
    output [4:0]rd,
    output [5:0]opcode,
    output [15:0]imm,
    output [5:0]func,
	 output [25:0]jout
    );
	 assign opcode = IM_O[31:26];
	 assign rs = IM_O[25:21];
	 assign rt = IM_O[20:16];
	 assign rd = (jalSign == 1)? 31:
	                         (IMchoose == 0) ? IM_O[15:11] : IM_O[20:16];
	 assign func = IM_O[5:0];
	 assign imm = IM_O[15:0];
	 assign jout = IM_O[25:0];


endmodule
