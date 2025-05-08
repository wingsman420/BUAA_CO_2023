`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:24:13 11/08/2023 
// Design Name: 
// Module Name:    IM 
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
module IM(
    input [31:0]PC_O,
    output [31:0]IM_O
    );
	 wire [31:0]pc_now;
	 assign pc_now = PC_O - 32'h00003000;
	 reg [31:0] IM[0:4095];
	 initial
	 begin
	   $readmemh("code.txt",IM);
	 end
    
    assign IM_O = IM[pc_now[13:2]];


endmodule
