`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:06:18 11/09/2023 
// Design Name: 
// Module Name:    control 
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
module control(
    input [5:0]op,
    input [5:0]func,
	 output [1:0]Tuse_rs,
	 output [1:0] Tuse_rt,
	 output [1:0] Tnew,
    output [2:0]ALUop,
    output [1:0]EXTop,
    output NPCbeq,
	 output NPCj,
	 output NPCjal,
    output GRFop,
    output memR,
    output memW,
    output IMchoose,
    output [1:0]WBop,
	 output ALUsel,
	 output NPCjr,
	 output jumpANDlink,
	 output write,
	 output isel,
	 output jsel,
	 output useR2direct,
	 output [1:0] storeSel,
	 output [2:0]lwSel,
	 output [1:0]MDop,
	 output MD_start,
	 output MD_mtHI,
	 output MD_mtLO,
	 output MD_Rsel,
	 output ALU_MD_sel,
	 output usehl,
	 output NPCbne
    );
	 wire add,sub,slt,sltu,oor,aand; //ALU
	 wire ori,addi,andi;//ALUi
	 wire lui;//imm_only
	 wire mfhi,mflo,mthi,mtlo,mult, multu, div, divu;//MD
	 wire lw,sw,sb,sh,lb,lh;//L or S
	 wire beq,j,jal,jr,bne;//jump
	 assign add = !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&func[5]&&!func[4]&&!func[3]&&!func[2]&&!func[1]&&!func[0];
    assign sub = !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&func[5]&&!func[4]&&!func[3]&&!func[2]&&func[1]&&!func[0];
	 assign ori = !op[5]&&!op[4]&&op[3]&&op[2]&&!op[1]&&op[0];
	 assign beq = !op[5]&&!op[4]&&!op[3]&&op[2]&&!op[1]&&!op[0];
	 assign lw = op[5]&&!op[4]&&!op[3]&&!op[2]&&op[1]&&op[0];
	 assign sw = op[5]&&!op[4]&&op[3]&&!op[2]&&op[1]&&op[0];
	 assign lui = !op[5]&&!op[4]&&op[3]&&op[2]&&op[1]&&op[0];
	 assign j = !op[5]&&!op[4]&&!op[3]&&!op[2]&&op[1]&&!op[0];
	 assign jal = !op[5]&&!op[4]&&!op[3]&&!op[2]&&op[1]&&op[0];
	 assign jr = !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&!func[5]&&!func[4]&&func[3]&&!func[2]&&!func[1]&&!func[0];
	 assign sb = op[5]&&!op[4]&&op[3]&&!op[2]&&!op[1]&&!op[0];
	 assign sh = op[5]&&!op[4]&&op[3]&&!op[2]&&!op[1]&&op[0];
	 assign lb= op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0];
	 assign lh = op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&op[0];
	 assign mfhi = !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&!func[5]&&func[4]&&!func[3]&&!func[2]&&!func[1]&&!func[0];
	 assign mflo = !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&!func[5]&&func[4]&&!func[3]&&!func[2]&&func[1]&&!func[0];
	 assign mthi = !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&!func[5]&&func[4]&&!func[3]&&!func[2]&&!func[1]&&func[0];
	 assign mtlo= !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&!func[5]&&func[4]&&!func[3]&&!func[2]&&func[1]&&func[0];
	 assign mult = !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&!func[5]&&func[4]&&func[3]&&!func[2]&&!func[1]&&!func[0];
	 assign multu = !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&!func[5]&&func[4]&&func[3]&&!func[2]&&!func[1]&&func[0];
	 assign div = !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&!func[5]&&func[4]&&func[3]&&!func[2]&&func[1]&&!func[0];
	 assign divu = !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&!func[5]&&func[4]&&func[3]&&!func[2]&&func[1]&&func[0];
	 assign slt = !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&func[5]&&!func[4]&&func[3]&&!func[2]&&func[1]&&!func[0];
	 assign sltu = !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&func[5]&&!func[4]&&func[3]&&!func[2]&&func[1]&&func[0];
	 assign oor = !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&func[5]&&!func[4]&&!func[3]&&func[2]&&!func[1]&&func[0];
	 assign aand = !op[5]&&!op[4]&&!op[3]&&!op[2]&&!op[1]&&!op[0]&&func[5]&&!func[4]&&!func[3]&&func[2]&&!func[1]&&!func[0];
	 assign andi = !op[5]&&!op[4]&&op[3]&&op[2]&&!op[1]&&!op[0];
	 assign addi = !op[5]&&!op[4]&&op[3]&&!op[2]&&!op[1]&&!op[0];
	 assign bne = !op[5]&&!op[4]&&!op[3]&&op[2]&&!op[1]&&op[0];
	 
	 assign Tuse_rs = (j||jal||lui||mflo||mfhi)?3:
	                                    (lw||lb||lh|| ori||add||sub||sw||sb||sh||mtlo||mthi||mult||multu||div||divu||slt||sltu||oor||aand||andi||addi)?1 :0;
	 //assign Tuse_rs[1] = 0;
	 //assign Tuse_rs[0] = ori||add||sub||lui||sw||sb||sh||mtlo||mthi||mult||multu||div||divu||slt||sltu||oor||aand;
	 assign Tuse_rt = (lw||lb||lh||j||jal||ori||lui||mflo||mfhi||mthi||mtlo||andi||addi)?3:
	                                   (sw||sb||sh)?2:
												  (add||sub||lui||mult||multu||div||divu||slt||sltu||oor||aand)?1:0;
	 //assign Tuse_rt[1] = sw||sb||sh||ori;
	 //assign Tuse_rt[0] = add||sub||lui||mult||multu||div||divu||slt||sltu||oor||aand;
	 assign ALUop[2] = slt||sltu||aand||andi;
	 assign ALUop[1] = sub||ori||oor||aand||andi;
	 assign ALUop[0] = add||ori||lw||sw||sb||sh||lb||lh||sltu||oor||addi;
	 assign EXTop[1] = lw||sw||beq||lui||sb||sh||lb||lh||bne||addi;
	 assign EXTop[0] = ori||lui||andi;
	 assign NPCbne = bne;
	 assign NPCbeq = beq;
	 assign NPCj = j;
	 assign NPCjal = jal;
	 assign memR = lw||lb||lh;
	 assign memW = sw||sh||sb;
	 assign IMchoose = ori||lw||sw||lui||sb||sh||lb||lh||addi||andi;
	 assign WBop[1] = 0;
	 assign WBop[0] = lw||lb||lh;
	 assign ALUsel = ori || sw ||lw||sb||sh||lb||lh||addi||andi;
	 assign NPCjr = jr;
	 assign Tnew[1] = lw||lb||lh;
	 assign Tnew[0] = add || sub|| lui||ori||mflo||mfhi||slt||sltu||aand||oor||addi||andi;
	 assign write = add||sub||lui|| ori||lw||jal||lh||lb||mfhi||mflo||slt||sltu||aand||oor||addi||andi;
	 assign isel = lui;//immOnly
	 assign jsel = jal;//link
	 assign useR2direct = sw||sb||sh;
	 assign storeSel[1] = sh||sb;
	 assign storeSel[0] = sw||sb;
	 assign lwSel[2] = lh;
	 assign lwSel[1] = lb;
	 assign lwSel[0] = 0;
	 assign MDop[0] = multu||divu;
	 assign MDop[1] = div||divu;
	 assign MD_start = multu||mult||divu||div;
	 assign MD_mtHI = mthi;
	 assign MD_mtLO = mtlo;
	 assign MD_Rsel = mflo;
	 assign ALU_MD_sel = mflo||mfhi;
	 assign usehl = mflo||mfhi||mtlo||mthi||mult||multu||div||divu;
	 

endmodule
