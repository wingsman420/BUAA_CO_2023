`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:34:08 11/09/2023 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input [31:0]add,
    input [31:0]data,
    input memW,
	 input memR,
    input clk,
    input reset,
	 input [31:0]pc,
    output [31:0]WB
    );
	 
	 reg [31:0] DM[0:3071];
	 integer i;
	 
	 initial 
	 begin
	    for(i = 0; i < 3072 ; i = i + 1)
		 begin
		    DM[i] <= 0;
		 end
	 end
	 
	 assign WB = (memR == 1) ? DM[add[13:2]] : 0;
	 
	 always@(posedge clk)
	 begin
	 if(reset)
	 begin
	    for(i = 0; i < 3072 ; i = i + 1)
		 begin
		    DM[i] <= 0;
		 end
	 end
	 else if(memW == 1)
	 begin
	    DM[add[13:2]] = data;
		 $display("%d@%h: *%h <= %h",$time, pc, add, data);
	 end
	 end


endmodule
