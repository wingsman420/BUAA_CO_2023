`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:38:09 12/06/2023 
// Design Name: 
// Module Name:    BE_EXT 
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
module BE_EXT(
    input [31:0]in,
    input [1:0]storeSel,
    input [31:0]addr,
    output reg [3:0]byteen,
	 output reg [31:0] out
    );
	 initial
	 begin
	   byteen <= 0 ;
		out <= 0 ;
	 end
	 
	 always@(*)
	 begin
	    case(storeSel)
		          1: begin
					     byteen <= 15;
						   out <= in;
					     end
					 2: begin
					           if(addr[1] == 1)
								      begin
								      byteen <= 12;
										out <= {in[15:0],16'b0};
										end
									else
									   begin
                              byteen <= 3; 
										out <= in;
										end
					      end
					 3:case(addr[1:0])
                              0: begin
										     byteen <= 1; 
											  out <= in;
											  end
										1: begin
										     byteen <= 2; 
											  out <= {in[23:0],8'b0};
											  end
										2: begin
										     byteen <= 4; 
											  out <= {in[15:0],16'b0};
											  end
										3: begin
										     byteen <= 8; 
											  out <= {in[7:0],24'b0};
											  end
							endcase
					default: byteen <=0; 		
       endcase							
	 end


endmodule
