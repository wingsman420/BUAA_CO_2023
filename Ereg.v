`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:12 11/16/2023 
// Design Name: 
// Module Name:    Ereg 
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
module Ereg(
    input blockSign,
    input [31:0]D_im,
    input [31:0] D_pc,
    input [5:0]D_opcode,
	 input [5:0]D_func,
    input [31:0]D_GRF_r1,
    input [31:0]D_GRF_r2,
    input [31:0]D_EXT_imm,
	 input [4:0] D_rd,
	 input [4:0]D_rs,
	 input [4:0]D_rt,
	 input [1:0]D_Tnew,
    input clk,
    input reset,
	 output [31:0] E_im,
    output [5:0]E_opcode,
	 output [5:0]E_func,
    output [31:0]E_GRF_r1,
    output [31:0]E_GRF_r2,
    output [31:0]E_EXT_imm,
	 output [31:0] E_pc,
	 output [4:0] E_rd,
	 output [4:0] E_rs,
	 output [4:0] E_rt,
	 output [1:0] E_Tnew
    );
	 
	 reg [5:0]opcode;
	 reg [5:0]func;
	 reg [31:0]r1;
	 reg [31:0]r2;
	 reg [31:0]imm;
	 reg [31:0] pc;
	 reg [4:0]rd;
	 reg [31:0] im;
	 reg [4:0]rs;
	 reg [4:0]rt;
	 reg [1:0]Tnew;
	 
	 initial
	 begin 
	    im <= 0;
	    opcode <= 0;
		 func <= 0;
		 r1 <= 0;
		 r2 <= 0;
		 imm <= 0;
		 pc <= 0;
		 rd <= 0;
		 rs<= 0;
		 rt <=0;
		 Tnew <= 0 ;
	 end
	 
	 always@(posedge clk)
	 begin
	     if(reset || blockSign)
		  begin
		      opcode <= 0;
		      func <= 0;
		      r1 <= 0;
		      r2 <= 0;
				imm <= 0;
				pc <= 0;
				rd <= 0;
				im <=0;
			   rs<= 0;
		      rt <=0;
				Tnew <= 0 ;
		  end
		  else
		  begin
		      opcode <= D_opcode;
				func <= D_func;
				r1 <= D_GRF_r1;
				r2 <= D_GRF_r2;
				imm <= D_EXT_imm;
				pc <= D_pc;
				rd <= D_rd;
				im <= D_im;
				rs <= D_rs;
				rt <= D_rt;
				Tnew <=D_Tnew;
		  end
	 end
	 
	 assign E_opcode = opcode;
	 assign E_func = func;
    assign E_GRF_r1 = r1;
    assign E_GRF_r2 = r2;
    assign E_EXT_imm = imm;
	 assign E_pc = pc;
	 assign E_rd = rd;
	 assign E_im = im;
	 assign E_rs = rs;
	 assign E_rt = rt;
	 assign E_Tnew = Tnew;


endmodule
