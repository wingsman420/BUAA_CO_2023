`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:11 11/15/2023 
// Design Name: 
// Module Name:    Dreg 
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
module Dreg(
    input clk,
	 input reset,
	 input block,
    input [31:0]pc,
    input [31:0]pc4,
    input [31:0]im,
    output [31:0]pc_O,
    output [31:0]pc4_O,
    output [31:0]im_O
    );
	 
	 reg [31:0]pcReg;
	 reg [31:0]pc4Reg;
	 reg [31:0]imReg;
	 
	 initial
	 begin
	      pcReg <= 0;
			pc4Reg <= 0;
			imReg <= 0;
	 end
	 
	 always@(posedge clk)
	 begin
	      if (reset == 1)
			begin
			     pcReg <= 0;
			     pc4Reg <= 0;
			     imReg <= 0;
			end
			else if(block !=1)
			begin
			     pcReg <= pc;
			     pc4Reg <= pc4;
			     imReg <= im;
			end
	 end
	 
	 assign pc_O = pcReg;
	 assign pc4_O = pc4Reg;
	 assign im_O = imReg;
	 
endmodule
