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
    input reset,
    input [31:0] i_inst_rdata,
    input [31:0] m_data_rdata,
    output [31:0] i_inst_addr,
    output [31:0] m_data_addr,
    output [31:0] m_data_wdata,
    output [3 :0] m_data_byteen,
    output [31:0] m_inst_addr,
    output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr
    );
	 wire [31:0] F_pc;
	 wire [31:0]F_npc;
	 wire [31:0] F_im;
	 wire [31:0] D_EXT_imm;
	 wire D_equal_sign;
	 wire [31:0] D_jr_address;
	 wire [31:0] D_pc;
	 wire [31:0] D_npc;
	 wire [31:0] D_im;
	 wire [4:0] D_rs;
	 wire [4:0] D_rt;
	 wire [4:0] D_rd;
	 wire [5:0] D_opcode;
	 wire [5:0] D_func;
	 wire [25:0] D_jout;
	 wire [15:0] D_imm;
	 wire [1:0] D_EXTop;
	 wire D_beq_sign;
	 wire D_J_sign;
	 wire D_GRFop;
	 wire D_memR;
	 wire D_memW;
	 wire D_imChoose;
	 wire [1:0]D_WBop;
	 wire D_jr_sign;
	 wire D_jal_sign;
	 wire [31:0] D_GRF_r1;
	 wire [31:0] D_GRF_r2;
	 wire [1:0]D_Tuse_rs;
	 wire [1:0]D_Tuse_rt;
	 wire [1:0]D_Tnew;
	 wire [31:0] E_pc;
	 wire [5:0]E_opcode;
	 wire [5:0] E_func;
	 wire [31:0] E_GRF_r1;
	 wire [31:0] E_GRF_r2;
	 wire [31:0] E_EXT_imm;
	 wire [2:0]E_ALUop;
	 wire E_ALUsel;
	 wire [31:0]E_im;
	 wire [31:0]ALU_A;
	 wire [31:0]ALU_B;
	 wire [31:0]ALU_BB;
	 wire [1:0]E_selA;
	 wire [1:0]E_selB;
	 wire [31:0]E_ALUout;
	 wire [5:0] M_opcode;
	 wire [5:0] M_func;
	 wire [31:0] M_ALUout;
	 wire [31:0] M_r2;
	 wire M_memR;
	 wire M_memW;
	 wire [1:0]M_WBop;
	 wire [31:0] M_WB;
	 wire [31:0] M_pc;
	 wire [31:0]M_DM_WB;
	 wire [31:0] M_EXT_imm;
	 wire [5:0] W_opcode;
	 wire [5:0] W_func;
	 wire [31:0] W_WB;
	 wire [4:0]M_rd;
	 wire [4:0]W_rd;
	 wire [4:0]E_rd;
	 wire [4:0]E_rs;
	 wire [4:0] E_rt;
	 wire [4:0] M_rt;
	 wire [1:0]E_Tnew;
	 wire [1:0]M_Tnew;
	 wire E_write;
	 wire M_write;
	 wire W_write;
	 wire M_link;
	 wire M_data_sel;
	 wire [31:0]M_DM_in;
	 wire [31:0]W_pc;
	 wire [31:0]E_tempout;
	 wire E_isel;
	 wire E_jsel;
	 wire D_useR2;
	 wire [31:0]D_real_GRFr2;
	 wire [31:0]jr_add_old;
	 wire [31:0]M_im;
	 wire [1:0] M_storeSel;
	 wire [31:0]M_DM_WB_EXT;
	 wire [2:0]M_lwSel;
	 wire [1:0]E_MDop;
	 wire E_start;
	 wire E_MDoutSel;
	 wire E_mtLO;
	 wire E_mtHI;
	 wire [31:0] E_MDout;
	 wire E_busy;
	 wire E_ALU_MD_sel;
	 wire D_usehl;
	 wire D_bne_NPC;
	 wire [31:0]M_DM_in_new;
	 
	 assign i_inst_addr = F_pc;
	 assign F_im = i_inst_rdata;
	 
	 PC PC1(F_npc,clk,reset,F_pc);
	 //IM IM1(F_pc,F_im);
	 NPC NPC1(F_pc,D_EXT_imm,D_jout,D_J_sign,D_jal_sign,D_beq_sign,D_equal_sign,D_jr_sign,D_bne_NPC,D_jr_address,blockSign,F_npc);
	 Dreg Dreg1(clk,reset,blockSign,F_pc,F_npc,F_im,D_pc,D_npc,D_im);
	 
	 
	 Block block(E_start,E_busy,D_usehl,D_Tuse_rs,D_Tuse_rt,E_Tnew,M_Tnew,D_rs,D_rt,E_rd,E_rs,E_rt,M_rt,M_rd,W_rd,E_write,M_write,W_write,D_GRF_r1,D_GRF_r2,E_ALUout,M_WB,W_WB,D_useR2,jr_add_old,blockSign,E_selA,E_selB,M_data_sel,D_equal_sign,D_real_GRFr2,D_jr_address);
	 
	 	 
	 MUX MUX1(D_im,D_imChoose,D_jal_sign,D_rs,D_rt,D_rd,D_opcode,D_imm,D_func,D_jout);
	 control D_control(.op(D_opcode),
	                                       .func(D_func),
														.Tuse_rs(D_Tuse_rs),
														.Tuse_rt(D_Tuse_rt),
														.Tnew(D_Tnew),
														.EXTop(D_EXTop),
														.NPCbeq(D_beq_sign),
														.NPCj(D_J_sign),
														.NPCjal(D_jal_sign),
														.GRFop(D_GRFop),
														.memR(D_memR),
														.memW(D_memW),
														.IMchoose(D_imChoose),
														.WBop(D_WBop),
													   .NPCjr(D_jr_sign),
														.useR2direct(D_useR2),
														.usehl(D_usehl),
														.NPCbne(D_bne_NPC));
	 GRF GRF1(D_rs,D_rt,W_rd,W_WB,W_write,clk,reset,W_pc,D_GRF_r1,D_GRF_r2,jr_add_old);
	 
	 EXT EXT1(D_imm,D_EXTop,D_EXT_imm);
	 Ereg Ereg1(blockSign,D_im,D_pc,D_opcode,D_func,D_GRF_r1,D_real_GRFr2,D_EXT_imm,D_rd,D_rs,D_rt,D_Tnew,clk,reset,E_im,E_opcode,E_func,E_GRF_r1,E_GRF_r2,E_EXT_imm,E_pc,E_rd,E_rs,E_rt,E_Tnew);

	 ALUtrans ALUtrans1(E_GRF_r1,E_GRF_r2,M_ALUout,W_WB,E_selA,E_selB,ALU_A,ALU_B);
    GRF_MUX_ALU  GRF_MUX_ALU1(ALU_B,E_EXT_imm,E_ALUsel,ALU_BB);
	 ALU ALU1(ALU_A,ALU_BB,E_ALUop,E_tempout);
	 MUT_DIV MUT_DIV1(clk,reset,ALU_A,ALU_BB,E_MDop,E_start,E_MDoutSel,E_mtHI,E_mtLO,E_MDout,E_busy);
	 ALUout_sel ALUout_sel1(E_tempout,E_EXT_imm,E_pc,E_MDout,E_isel,E_jsel,E_ALU_MD_sel,E_ALUout);
	 control E_control(
	     .op(E_opcode),
		  .func(E_func),
		  .ALUop(E_ALUop),
		  .ALUsel(E_ALUsel),
		  .write(E_write),
		  .isel(E_isel),
		  .jsel(E_jsel),
		  .MDop(E_MDop),
		  .MD_start(E_start),
		  .MD_Rsel(E_MDoutSel),
		  .MD_mtLO(E_mtLO),
		  .MD_mtHI(E_mtHI),
		  .ALU_MD_sel(E_ALU_MD_sel)
	 );
	 Mreg Mreg1(E_im,E_pc,E_opcode,E_func,E_ALUout,E_GRF_r2,E_EXT_imm,E_rd,E_rt,E_Tnew,clk,reset,M_im,M_opcode,M_func,M_ALUout,M_r2,M_pc,M_EXT_imm,M_rd,M_rt,M_Tnew);
	  
	 control M_control(
	     .op(M_opcode),
		  .func(M_func),
		  .memR(M_memR),
		  .memW(M_memW),
		  .WBop(M_WBop),
		  .write(M_write),
		  .storeSel(M_storeSel),
		  .lwSel(M_lwSel)
	 );
	 DM_data_MUX  DM_MUX(M_r2,W_WB,M_data_sel,M_DM_in);
	 BE_EXT BE_EXT1(M_DM_in,M_storeSel,M_ALUout,m_data_byteen,M_DM_in_new);
	 assign M_DM_WB = m_data_rdata;
	 assign m_data_addr = M_ALUout;
	 assign m_data_wdata = M_DM_in_new;
	 assign m_inst_addr = M_pc;
	 DM_out_EXT DM_out_EXT1(M_ALUout[1:0],M_DM_WB,M_lwSel,M_DM_WB_EXT);
	 //DM DM1(M_ALUout,M_DM_in,M_memW,M_memR,clk,reset,M_pc,M_DM_WB);
	 WB_MUX  WB_MUX1(M_pc,M_WBop,M_ALUout,M_DM_WB_EXT,M_EXT_imm,M_WB);
	 Wreg Wreg1(M_opcode,M_func,M_WB,M_rd,M_pc,clk,reset,W_opcode,W_func,W_WB,W_rd,W_pc);
	 
	 control W_control(
	 .op(W_opcode),
	 .func(W_func),
	 .write(W_write)
	 );
	 assign w_grf_we = W_write;
	 assign w_grf_addr = W_rd;
	 assign w_grf_wdata= W_WB;
	 assign w_inst_addr= W_pc;
/*always@(*)
	 begin
	    if(D_pc == 32'h000036bc)
		 begin
		   $display("@%h: $1 <= %h", D_pc,D_im);
		 end
	 end*/
endmodule
