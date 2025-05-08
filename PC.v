`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:48:39 11/08/2023 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input [31:0]NPC_O,
    input clk,
    input reset,
    output [31:0]PC_O
    );
	 
	 reg [31:0] pc;
	 initial
	 begin
	 pc <= 32'h00003000;
	 end
	 
	 always@(posedge clk)
	 begin
	      if(reset)
			begin
			     pc <= 32'h00003000;
			end
			else
			begin
			     pc <= NPC_O;
		   end
    end
	 
	 assign PC_O = pc;

endmodule
