`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:03:06 12/07/2023 
// Design Name: 
// Module Name:    MUT_DIV 
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
module MUT_DIV(
    input clk,
	 input reset,
    input [31:0]I1,
    input [31:0]I2,
    input [1:0]op,
	 input start,
	 input Rsel,
	 input mtHI,
	 input mtLO,
    output [31:0]MDout,
	 output reg busy
    );
	 reg [31:0]HI; 
	 reg [31:0]LO;
	 reg [3:0]counter;
	 reg [63:0]temp;
	 
	 initial
	 begin
	     HI <= 0;
		  LO <= 0;
		  busy <=0;
		  counter <=0;
	 end
	 
	 assign MDout = (Rsel == 0 )? HI :LO;
	 
	 always@(posedge clk)
	 begin
	      if(reset)
			begin
			    HI <= 0;
		       LO <= 0;
		       busy <=0;
		       counter <=0;
			end
			else
			begin
			  if(!busy)
			  begin
			       if(start)
			       begin
			            busy=1;
				          case(op)
					            0: begin
					                //mult
					         	    temp = $signed(I1)*$signed(I2);
					                counter<=5;
				                	 end
				             	1: begin
					                      //multu
						                  temp=I1*I2;
						                   counter<=5;
					                  end
				             	2: begin
					                     //div
					                      temp={$signed(I1)%$signed(I2),$signed(I1)/$signed(I2)};
						                   counter<=10;
					                end
					           3: begin
					                    //divu
						                temp={I1%I2,I1/I2};
						                counter<=10;
					                end
			   	            endcase
							end	
                    if(mtHI) begin
				                HI<=I1;
		                   	end
			           if(mtLO) begin
				               LO<=I1;
			                   end
			       end
			       else if(busy)
			        begin
					       if(counter>0)
					       counter =counter -1;
							 else if(counter == 0)
							 begin
							      busy = 0;
									{HI,LO} <=temp;
							 end
			       end
			end
	        
	 end
	 
        


endmodule
