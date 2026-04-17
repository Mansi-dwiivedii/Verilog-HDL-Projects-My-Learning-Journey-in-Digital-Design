`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 13:22:58
// Design Name: 
// Module Name: fulladder_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fulladder_testbench();
 reg a,b,c_in;
 wire sum,c_out;
 
 full_addr_dataflow uut1(.a(a),.b(b),.c_in(c_in),.sum(sum),.c_out(c_out));
 
 initial begin
   $monitor("Time=%0t | a=%0b b=%0b c_in=%0b | sum=%0b c_out=%0b",
          $time, a, b, c_in, sum, c_out);
 end
 
 initial begin
 
  a = 0; b = 0; c_in=0; #10;
  a = 0; b = 0; c_in=1; #10;
  a = 0; b = 1; c_in=0; #10;
  a = 0; b = 1; c_in=1; #10;
  a = 1; b = 0; c_in=0; #10;
  a = 1; b = 0; c_in=1; #10;
  a = 1; b = 1; c_in=0; #10;
  a = 1; b = 1; c_in=1; #10;
 
 
 end



endmodule
