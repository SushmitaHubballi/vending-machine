
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:51:34 04/04/2022 
// Design Name: 
// Module Name:    vending_machine 
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
module vending_machine(clk,rst,ip,op,change
    );

input clk,rst;
input[1:0]ip;
output reg op;
output reg[1:0] change;

parameter s0=2'b00, s1=2'b01, s2=2'b10;

reg[1:0] c_state,n_state;

always @ (posedge clk)
 begin
  if(rst==1)
   begin
    c_state=0;
    n_state=0;
    change=2'b00;
   end
  else c_state=n_state;

  case(c_state)
  s0: if(ip==0)
        begin
		   n_state=s0;
			op=0;
			change=2'b00;
		  end
 
      else if (ip==2'b01)
		 begin
		  n_state=s1;
		  op=0;
		  change=2'b00;
		 end
   
     else if (ip==2'b10)
		 begin
		  n_state=s2;
		  op=0;
		  change=2'b00;
		 end	
	
	 
	s1: if(ip==0)
        begin
		   n_state=s0;
			op=0;
			change=2'b01;
		  end
 
      else if (ip==2'b01)
		 begin
		  n_state=s1;
		  op=0;
		  change=2'b00;
		 end
   
     else if (ip==2'b10)
		 begin
		  n_state=s0;
		  op=1;
		  change=2'b00;
		 end 
	
   s2: if(ip==0)
        begin
		   n_state=s0;
			op=0;
			change=2'b10;
		  end
 
      else if (ip==2'b01)
		 begin
		  n_state=s0;
		  op=1;
		  change=2'b00;
		 end
   
     else if (ip==2'b10)
		 begin
		  n_state=s0;
		  op=1;
		  change=2'b01;
		 end
		 
endcase
end

endmodule
