`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 16:47:53
// Design Name: 
// Module Name: Ripple_behav
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


module Ripple_behav(
    input [3:0] a,b,
    output [3:0] sum,
    input carry_in,
    output carry_out
    );
    
     wire [2:0] c;
    
    Full_adder FA0(.a(a[0]),.b(b[0]),.sum(sum[0]),.carry_in(carry_in),.carry_out(c[0]));
    Full_adder FA1(.a(a[1]),.b(b[1]),.sum(sum[1]),.carry_in(c[0]),.carry_out(c[1]));
    Full_adder FA2(.a(a[2]),.b(b[2]),.sum(sum[2]),.carry_in(c[1]),.carry_out(c[2]));
    Full_adder FA3(.a(a[3]),.b(b[3]),.sum(sum[3]),.carry_in(c[2]),.carry_out(carry_out));
   
    
endmodule
