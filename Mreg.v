`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:26:44 11/17/2023 
// Design Name: 
// Module Name:    Mreg 
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
module Mreg( 
    input [31:0]E_im,
    input [31:0]E_pc,
    input [5:0]E_opcode,
    input [5:0]E_func,
    input [31:0]E_ALUout,
    input [31:0]E_r2,
	 input [31:0] E_EXT_imm,
	 input [4:0] E_rd,
	 input [4:0] E_rt,
	 input [1:0] E_Tnew,
    input clk,
    input reset,
	 output [31:0]M_im,
    output [5:0]M_opcode,
    output [5:0]M_func,
    output [31:0]M_ALUout,
    output [31:0]M_r2,
	 output [31:0] M_pc,
	 output [31:0] M_EXT_imm,
	 output [4:0] M_rd,
	 output [4:0] M_rt,
	 output [1:0]M_Tnew
    );
	       reg [5:0]opcode;
	       reg [5:0]func;
	       reg [31:0]r2;
	       reg [31:0]out;
			 reg [31:0]pc;
			 reg [4:0]rd;
			 reg [31:0] imm;
			 reg [4:0]rt;
			 reg [1:0]Tnew;
			 reg [31:0]im;
	 
	 initial 
	 begin
	     	 opcode <= 0;
		    func <= 0;
	   	 r2 <= 0;
		    out <= 0;
			 pc <= 0;
			 rd <= 0;
			 imm <=0;
			 rt <= 0;
			 Tnew <= 0;
			 im<=0;
	 end
	 
	 always@(posedge clk)
	 begin
	 if(reset)
	 begin
	      opcode <= 0;
		    func <= 0;
	   	 r2 <= 0;
		    out <= 0;
			 pc <= 0;
			 rd <= 0;
			 imm <= 0;
			 rt <= 0;
			 Tnew <= 0;
			 im<=0;
	 end
	 else
	 begin
	       opcode <= E_opcode;
		    func <= E_func;
	   	 r2 <= E_r2;
		    out <= E_ALUout;     
			 pc <= E_pc;
			 rd <= E_rd;
			 imm <= E_EXT_imm;
			 rt <= E_rt;
			 Tnew <= E_Tnew - 1;
			 im<=E_im;
	end		 
	 end
	 
	 assign M_opcode = opcode;
	 assign M_func = func;
	 assign M_r2 = r2;
	 assign M_ALUout = out;
	 assign M_pc = pc;
	 assign M_rd = rd;
	 assign M_EXT_imm = imm;
	 assign M_rt = rt;
	 assign  M_Tnew = Tnew;
	 assign M_im =im;


endmodule
