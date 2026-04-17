`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 12:33:18
// Design Name: 
// Module Name: full_adder_structural
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





























module full_adder_structural(
    input a,b,carry_in,
    output sum,carry_out
    );
    
   wire sum1;
   wire carry1,carry2;
   
   half_adder_structural HA1(.a(a),.b(b),.sum(sum1),.carry(carry1)); 
   half_adder_structural HA2(.a(sum1),.b(carry_in),.sum(sum),.carry(carry2));
   
   
   or or1(carry_out,carry2,carry1);
  
    
endmodule
