`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:43:43 11/17/2023 
// Design Name: 
// Module Name:    ALUtrans 
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
module ALUtrans(
    input [31:0]GRF_r1,
    input [31:0]GRF_r2,
    input [31:0]M_trans,
    input [31:0]W_trans,
    output [1:0]selA,
	 output [1:0]selB,
    output reg [31:0]A,
    output reg [31:0]B
    );
	 
	 always@(*)
	 begin
	     case(selA)
		      0 : A <= GRF_r1;
				1: A <= M_trans;
				2: A <= W_trans;
				default: A <=0;
			endcase
        	case(selB)
		      0 : B<= GRF_r2;
				1: B <= M_trans;
				2: B <= W_trans;
				default: B <=0;
			endcase		
	 end


endmodule
