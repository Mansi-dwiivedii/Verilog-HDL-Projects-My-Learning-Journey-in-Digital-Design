`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.07.2025 19:34:28
// Design Name: 
// Module Name: tesbench
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


module tesbench( );

wire sum,carry;
reg  a,b;

half_adder_structural uut(.a(a),.b(b),.sum(sum),.carry(carry));

initial begin
 $monitor("a=%d,b=%d,sum=%d,carry=%d",a,b,sum,carry);
 end
 
 
 initial begin
     #1;
     a=0;b=0;
     #2;
     a=0;b= 1;
     #1
     a=1;b=0;
     #1;
     a=1;b=1;
 
     
     
 end


endmodule
