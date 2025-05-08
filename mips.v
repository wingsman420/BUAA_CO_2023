`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:41:08 11/08/2023 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
	 wire [31:0]pc;
	 wire [31:0]next_pc;
	 wire [31:0]instr;
	 wire IMchoose;
	 wire Jsign;
	 wire Jalsign;
	 wire beqsign;
	 wire ALU_zero;
	 wire [4:0]rs;
	 wire [4:0]rt;
	 wire [4:0]rd;
	 wire [5:0]opcode;
	 wire [5:0]func;
	 wire [15:0]imm;
	 wire [25:0]jout;
	 wire GRFop;
	 wire [1:0]EXTop;
	 wire [31:0]r1;
	 wire [31:0]r2;
	 wire [31:0]B;
    wire [31:0]imm_ext;	
    wire	[31:0]ALUout; 
	 wire [31:0]WB_DM;
	 wire [31:0]WB;
	 wire [1:0]WBop;
	 wire ALUsel;
	 wire [1:0]ALUop;
	 wire NPCjr;
	 wire [31:0]jrData;

	 PC PC1(next_pc,clk,reset,pc);
	 NPC NPC1(pc,imm_ext,jout,Jsign,Jalsign,beqsign,ALU_zero,NPCjr,jrData,next_pc);
	 IM IM1(pc,instr);
	 MUX MUX1(instr,IMchoose,rs,rt,rd,opcode,imm,func,jout);
	 GRF GRF1(rs,rt,rd,WB,GRFop,clk,reset,pc,Jalsign,r1,r2,jrData);
	 EXT EXT1(imm,EXTop,imm_ext);
	 GRF_MUX_ALU MUX2(r2,imm_ext,ALUsel,B);
	 ALU ALU1(r1,B,ALUop,ALUout,ALU_zero);
	 DM DM1(ALUout,r2,memW,memR,clk,reset,pc,WB_DM);
	 WB_MUX WB_MUX1(WBop,ALUout,WB_DM,imm_ext,WB);
	 control control1(opcode,func,ALUop,EXTop,beqsign,Jsign,Jalsign,GRFop,memR,memW,IMchoose,WBop,ALUsel,NPCjr);
	 
	 
	 


endmodule
