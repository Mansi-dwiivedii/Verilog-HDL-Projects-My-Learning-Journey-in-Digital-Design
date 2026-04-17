`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 11:27:03
// Design Name: 
// Module Name: testbench
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


module testbench  #(parameter N = 4)(
 );

 reg [N-1:0]a,b;
 wire  smaller,equal,greater;
 
 N_bit_comparator  #(.N(N)) DUT(.a(a),.b(b),.smaller(smaller),.greater(greater),.equal(equal));
 
 initial begin
 $monitor("MON:a=%d,b=%d,smaller=%b,greater=%b,equal=%b",a,b,smaller,greater,equal);
 
 #1; a=0; b=0;
  #1; a=5; b=99;
   #1; a=100; b=47;
 end
 
 
endmodule
