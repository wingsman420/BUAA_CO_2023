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
`define zeroEXT 1
`define signEXT 2
`define highEXT 3
module EXT(
    input [15:0]MUX_O_IMM,
    input [1:0]EXTop,
    output reg [31:0]EXT_O
    );
	 always@(*)
	 begin
	      case(EXTop)
			       0 : EXT_O <= 0;
					 `zeroEXT : EXT_O <=  {16'b0,MUX_O_IMM};
					 `signEXT : EXT_O <= {{16{MUX_O_IMM[15]}},MUX_O_IMM} ;
					 `highEXT : EXT_O <= {MUX_O_IMM,16'b0};	 
					 default : EXT_O <= 0;
					 endcase
 	 end
	 
endmodule
