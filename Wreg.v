`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:47 11/20/2023 
// Design Name: 
// Module Name:    Wreg 
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
module Wreg(
    input [5:0]opcode,
	 input [5:0]func,
    input [31:0]WBans,
	 input [4:0] rd,
	 input [31:0]M_pc,
    input clk,
    input reset,
    output [5:0]opcode_O,
	 output [5:0]func_O,
    output [31:0]WBans_O,
	 output [4:0] rd_O,
	 output [31:0]W_pc
    );
	 
	 reg [5:0]OP;
	 reg [5:0]FUNC;
	 reg [31:0]WB;
	 reg [4:0] RD;
	 reg [31:0]PC;
	 
	 initial
	 begin
	    OP <= 0;
		 FUNC <=0;
		 WB <= 0;
		 RD <=0;
		 PC<=0;
	 end
	 
	 always@(posedge clk)
	 begin
	     if(reset)
		  begin
		       OP <= 0;
				 FUNC <= 0;
		       WB <= 0;
				 RD<=0;
				 PC<= 0;
		  end
		  else
		  begin
		       OP <= opcode;
				 FUNC <= func;
				 WB <= WBans;
				 RD <= rd;
				 PC <=M_pc;
		  end
	 end
	 
	 assign opcode_O = OP;
	 assign func_O = FUNC;
	 assign WBans_O = WB;
	 assign rd_O = RD;
	 assign W_pc = PC;


endmodule
