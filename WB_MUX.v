`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:00:46 11/09/2023 
// Design Name: 
// Module Name:    WB_MUX 
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
`define ALUans 0
`define DMans 1
module WB_MUX(
    input [31:0] pc,
    input [1:0]WBop,
    input [31:0]ALUout,
    input [31:0]DM_WB,
    input [31:0]imm_ext,
    output [31:0]WB
    );
	 
	 reg [31:0]WBreg;
	 always@(*)
	 begin
	      case(WBop)
			       `ALUans : WBreg <= ALUout;
					 `DMans : WBreg <= DM_WB;
					 default : WBreg <= 0;
        endcase		
	 end
	 assign WB = WBreg;
	 //assign WB = (WBop[1] == 0) ? (WBop[0] == 0) ? ALUout : DM_WB :
	     //                         (WBop[0] == 0) ? imm_ext : 0;


endmodule