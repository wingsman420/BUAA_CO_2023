`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:07:42 11/09/2023 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input [4:0]rs,
    input [4:0]rt,
    input [4:0]rd,
    input [31:0]data,
    input GRFop,
    input clk,
    input reset,
	 input [31:0] pc,
    output [31:0]r1,
    output [31:0]r2,
	 output [31:0]jrData
    );
	 
	 reg [31:0] GRF[0:31];
	 integer i;
	 
	 initial
	 begin
	     for(i = 0; i < 32 ;i = i+1)
		  begin
		     GRF[i] <= 0;	
		  end
	 end
	 
	 assign r1 = (rs == rd && rs != 0 &&GRFop==1)? data : GRF[rs];
	 assign r2 = (rt == rd && rt != 0 &&GRFop==1) ? data : GRF[rt];
	 assign jrData = (rs == rd && rs != 0 &&GRFop==1)?data:GRF[rs];
	 
	 always@(posedge clk)
	 begin
	    if(reset)
		 begin
	     for(i = 0; i < 32 ;i = i+1)
		  begin
		     GRF[i] <= 0;	
		  end
		 end 
		 else if(GRFop != 0)
		  begin
		     if(rd != 0)
		     begin
		       GRF[rd] <= data;
				 //$display("%d@%h: $%d <= %h", $time,pc, rd, data);
		     end
		     else
			    begin
		       GRF[0] <= 0;
				 //$display("%d@%h: $%d <= %h",$time, pc, rd, data);
             end
			  end		
	 end
	 
endmodule
