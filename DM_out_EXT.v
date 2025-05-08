`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:11:09 12/06/2023 
// Design Name: 
// Module Name:    DM_out_EXT 
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
module DM_out_EXT(
    input [1:0]A,
    input [31:0]Din,
    input [2:0]op,
    output reg [31:0]Dout
    );
	 
	 reg [7:0]tmpbyte;

	 always@(*)
	 begin
	     case(op)
		      0:Dout <= Din;//lw
				1:begin
				         case(A)
							     0: tmpbyte = Din[7:0];
								  1: tmpbyte = Din[15:8];
								  2: tmpbyte = Din[23:16];
								  3: tmpbyte = Din[31:24];
						   endcase
					   	Dout <= {24'b0,tmpbyte};
				    end
				2:begin
				         case(A)
							     0: tmpbyte = Din[7:0];
								  1: tmpbyte = Din[15:8];
								  2: tmpbyte = Din[23:16];
								  3: tmpbyte = Din[31:24];
						   endcase
					   	Dout <= {{24{tmpbyte[7]}},tmpbyte};
				    end
				3:begin
				       if(A[1] == 0)
				       Dout <= {16'b0,Din[15:0]};
						 else
						 Dout <= {16'b0,Din[31:16]};
					end	 
				4:begin
				       if(A[1] == 0)
				       Dout <= {{16{Din[15]}},Din[15:0]};
						 else
						 Dout <= {{16{Din[31]}},Din[31:16]};
					end	 
				endcase
	 end


endmodule
