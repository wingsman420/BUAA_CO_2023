`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:24:46 11/09/2023 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0]I1,
    input [31:0]I2,
    input [1:0]ALUop,
    output [31:0]OUT,
    output z
    );
	 
	 assign z = (I1 == I2);
	 assign OUT = (ALUop[1] == 0) ? (ALUop[0] == 0) ? 0 :I1 + I2  :
	                                (ALUop[0] == 0) ? I1 - I2 : (I1 | I2) ;

endmodule
