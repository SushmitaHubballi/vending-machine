`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:10:03 04/04/2022
// Design Name:   vending_machine
// Module Name:   D:/xilinx_college/vending_machine/vending-machinetb.v
// Project Name:  vending_machine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vending_machine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vending_machinetb;

	// Inputs
	reg clk;
	reg rst;
	reg [1:0] ip;

	// Outputs
	wire op;
	wire [1:0] change;

	// Instantiate the Unit Under Test (UUT)
	vending_machine uut (
		.clk(clk), 
		.rst(rst), 
		.ip(ip), 
		.op(op), 
		.change(change)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		#6 rst=0;
		ip = 1;
      #11 ip=2;
		#25  $finish;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
     always #5 clk=~clk; 
endmodule

