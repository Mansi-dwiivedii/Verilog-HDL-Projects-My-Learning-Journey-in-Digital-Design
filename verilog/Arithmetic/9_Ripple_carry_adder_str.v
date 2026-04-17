`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 14:59:19
// Design Name: 
// Module Name: Ripple_carry_adder_str
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


module Ripple_carry_adder_str(
    input [3:0] a,b,
    input carry_in,
    output [3:0] sum,
    output carry_out
    );
    
    wire [2:0] c;
        
    Full_adder FA1(.a(a[0]),.b(b[0]),.carry_in(carry_in),.sum(sum[0]),.carry_out(c[0]));
    Full_adder FA2(.a(a[1]),.b(b[1]),.carry_in(c[0]),.sum(sum[1]),.carry_out(c[1]));
   Full_adder FA3(.a(a[2]),.b(b[2]),.carry_in(c[1]),.sum(sum[2]),.carry_out(c[2]));
   Full_adder FA4(.a(a[3]),.b(b[3]),.carry_in(c[2]),.sum(sum[3]),.carry_out(carry_out));
      
    
endmodule
