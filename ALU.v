`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:24:46 11/09/2023 
// Design Name: 
// Module Name:    ALU 
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
`define ADD 1
`define SUB 2
`define OR 3
`define SLT 4
`define SLTU 5
`define AND 6
module ALU(
    input [31:0]I1,
    input [31:0]I2,
    input [2:0]ALUop,
    output [31:0]OUT
    );
	 reg [31:0]alureg;
	 always@(*)
	 begin
	      case(ALUop)
			      0 : alureg <= 0;
					`ADD : alureg <= I1 + I2 ;
					`SUB : alureg <= I1 - I2;
					`OR    : alureg <= I1 | I2;
					`SLT : alureg <= ($signed(I1) < $signed(I2))? 1:0;
					`SLTU : alureg <= (I1 < I2)?1:0;
					`AND : alureg <= I1&I2;
					default : alureg <= 32'hffffffff;
				endcase	
	 end
	 assign OUT = alureg;

endmodule
