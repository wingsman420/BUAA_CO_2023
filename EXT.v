`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:47:31 11/08/2023 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input [15:0]MUX_O_IMM,
    input [1:0]EXTop,
    output [31:0]EXT_O
    );
	 assign EXT_O = (EXTop[1] == 0)? (EXTop[0] == 0)? 32'b0 : {16'b0,MUX_O_IMM} : (EXTop[0] == 0)? {{16{MUX_O_IMM[15]}},MUX_O_IMM} : {MUX_O_IMM,16'b0};	 

endmodule
