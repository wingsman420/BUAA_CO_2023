`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:08:01 11/08/2023 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
    input [31:0]PC_O,
    input [31:0]EXT_O,//imm
	 input [25:0]jout,
    input J_sign,
    input Jal_sign,
    input beq_sign,
    input ALU_zero_sign,
	 input Jr_sign,
	 input [31:0]JrData,
	 input block,
    output [31:0]NPC_O
    );
	 
	 assign NPC_O = (block == 1) ? PC_O:
	                                   (J_sign == 1) ? {PC_O[31:28],jout,2'b00}:
	                                   (Jal_sign == 1) ? {PC_O[31:28],jout,2'b00}:
						                    (Jr_sign == 1) ? JrData:
						                    (beq_sign == 1 && ALU_zero_sign == 1)? {EXT_O[29:0],2'b0} + PC_O :
						                     PC_O + 4;

endmodule
