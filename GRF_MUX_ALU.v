`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:40:28 11/09/2023 
// Design Name: 
// Module Name:    GRF_MUX_ALU 
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
module GRF_MUX_ALU(
    input [31:0]r2,
    input [31:0]imm,
    input ALUsel,
    output [31:0]B
    );
	 
	 assign B = (ALUsel == 0) ? r2 : imm;


endmodule
