`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:54 11/24/2023 
// Design Name: 
// Module Name:    DM_data_MUX 
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
module DM_data_MUX(
    input [31:0]M_r2,
    input [31:0]W_trans,
    input sel,
    output [31:0]DM_data_in
    );
	 
	 assign DM_data_in = (sel)? W_trans :M_r2;


endmodule
