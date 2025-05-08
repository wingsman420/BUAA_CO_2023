`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:50:52 09/20/2023
// Design Name:   test1
// Module Name:   /home/co-eda/Desktop/newProject/test1_tb.v
// Project Name:  newProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test1_tb;

	// Inputs
	reg [1:0] num;
	reg clk;

	// Outputs
	wire ans;

	// Instantiate the Unit Under Test (UUT)
	test1 uut (
		.num(num), 
		.clk(clk), 
		.ans(ans)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		num = 0;
		#2;
		num = 1;
		#2;
		num = 2;
		#2 ;
		num = 1;
		#2;
		num = 2;
		#2;
		num = 3;
		#2;
		num = 1;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		

	end
	
	always #1 clk = ~clk;
      
endmodule

