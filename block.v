`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:34 11/23/2023 
// Design Name: 
// Module Name:    Block 
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
module Block(
    input [1:0]D_Tuse_rs,
	 input [1:0]D_Tuse_rt,
    input [1:0]E_Tnew,
    input [1:0]M_Tnew,
	 input [4:0]D_rs,
	 input [4:0]D_rt,
	 input [4:0]E_rd,
	 input [4:0]E_rs,
	 input [4:0]E_rt,
	 input [4:0] M_rt,
	 input [4:0]M_rd,
	 input [4:0]W_rd,
	 input E_write,
	 input M_write,
	 input W_write,
	 input [31:0]GRF_r1,
	 input [31:0]GRF_r2,
	 input [31:0]E_trans,
	 input [31:0]M_trans,
	 input [31:0]W_trans,
	 input useR2,
	 input [31:0]jr_add_old,
    output BlockSign,
	 output [1:0]E_ALU_A_sel,
	 output [1:0]E_ALU_B_sel,
	 output M_data_sel,
	 output zero_sign,
	 output [31:0]final_r2,
	 output [31:0]jr_addr
    );
	 wire [31:0]D1;
	 wire [31:0]D2;
	 
	 //freeze
	 assign BlockSign = (D_rs != 0 && D_rs == E_rd && E_write && D_Tuse_rs < E_Tnew) ? 1 :	                                         
                                            (D_rt != 0 && D_rt == E_rd && E_write && D_Tuse_rt < E_Tnew) ? 1 :
														  (D_rs != 0 && D_rs == M_rd && M_write && D_Tuse_rs < M_Tnew) ? 1 :
														  (D_rt != 0 && D_rt == M_rd && M_write && D_Tuse_rt < M_Tnew) ? 1 :
														  0;
	assign D1 = (D_rs != 0 && D_rs == E_rd && E_write) ? E_trans:
	                         (D_rs != 0 && D_rs == M_rd && M_write) ? M_trans:
									 GRF_r1;
	assign D2 = (D_rt != 0 && D_rt == E_rd && E_write) ? E_trans:
	                         (D_rt != 0 && D_rt== M_rd && M_write) ? M_trans:
									 GRF_r2;								 
	assign zero_sign = (D1 == D2)?1:0;													 
	assign final_r2 = (useR2&&D_rt != 0 && D_rt == E_rd && E_write) ? E_trans:
	                                   (useR2&&D_rt != 0 && D_rt == M_rd && M_write) ? M_trans:
												  GRF_r2;
	 assign jr_addr = (D_rs != 0 && D_rs == E_rd && E_write ) ? E_trans:
	                                   (D_rs != 0 && D_rs== M_rd && M_write) ? M_trans:
												  jr_add_old;
	 //E_trans
	 assign E_ALU_A_sel = (E_rs != 0 && E_rs == M_rd && M_write)  ? 1:
	                                               (E_rs != 0 && E_rs == W_rd && W_write) ? 2:
																  0;
    assign E_ALU_B_sel = (E_rt != 0 && E_rt == M_rd && M_write)  ? 1:
	                                                (E_rt != 0 && E_rt == W_rd && W_write) ? 2:
																  0;
	//M_trans
   assign M_data_sel = (M_rt != 0 && M_rt == W_rd && W_write) ?1 : 0; 
	 

endmodule
