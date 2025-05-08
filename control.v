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
    output [1:0]ALUop,
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
	 output NPCjr
    );
	 wire add,sub,lw,sw,beq,lui,j,jal,ori,jr;
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
	 
	 assign ALUop[1] = sub||ori;
	 assign ALUop[0] = add||ori||lw||sw;
	 assign EXTop[1] = lw||sw||beq||lui;
	 assign EXTop[0] = ori||lui;
	 assign NPCbeq = beq;
	 assign NPCj = j;
	 assign NPCjal = jal;
	 assign GRFop = add||sub||ori||lw||lui||jal;
	 assign memR = lw;
	 assign memW = sw;
	 assign IMchoose = ori||lw||sw||lui;
	 assign WBop[1] = lui;
	 assign WBop[0] = lw;
	 assign ALUsel = ori || sw ||lw;
	 assign NPCjr = jr;
	 

endmodule
