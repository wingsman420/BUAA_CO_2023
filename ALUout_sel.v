`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:47:00 11/24/2023 
// Design Name: 
// Module Name:    ALUout_sel 
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
module ALUout_sel(
    input [31:0]ALUout,
    input [31:0]imm,
	 input [31:0]pc,
    input isel,
	 input jsel,
    output [31:0]out
    );
	 
	 assign out = (isel == 1)? imm:
                           	 (jsel==1)?pc+8:
										 ALUout;


endmodule
