`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:15 11/22/2023 
// Design Name: 
// Module Name:    TransControl 
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
module TransControl(
    input [4:0]E_rs,
    input [4:0]E_rt,
    input [4:0]M_rd,
    input [4:0]W_rd,
    input ansSignM,
    input ansSignW,
    output [1:0]E_selA,
    output [1:0]E_selB,
    output pause
    );
	 reg [1:0]selA;
	 reg [1:0]selB;
	 always@(*)
	 begin
	     if(ansSignM)
		  begin
		       if(E_rs == M_rd)
				 begin
				       selA <= 1;
				 end
				 else
				 begin
				       selA <= 0;
				 end
				 if(E_rt == M_rd)
				 begin 
				      selB <=1;
				 end
				 else
				      selB <=0;
				 begin
				 end
		  end
		  else if(ansSignW)
		  begin
		      if(E_rs == W_rd)
				begin
				    selA <= 2;
				end
				else
				begin
				   selB <= 0;
				end
				if(E_rt == W_rd)
				begin
				     selB <= 2;
			  end
			  else
			  begin
			        selB <= 0;
			  end
		  end
		  else
		  begin
		        selA <= 0;
				  selB <= 0;
		  end
	 end

    assign E_selA = selA;
	 assign E_selB = selB;

endmodule
