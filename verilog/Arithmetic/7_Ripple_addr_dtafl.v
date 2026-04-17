`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 16:07:42
// Design Name: 
// Module Name: Ripple_addr_dtafl
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


module Ripple_addr_dtafl(
    input [3:0] a,b,
    output [3:0] sum,
    input carry_in,
    output carry_out
    );
    
    wire [2:0] c;
    
    Full_adder_dataflow FA0(.a(a[0]),.b(b[0]),.sum(sum[0]),.c_in(carry_in),.c_out(c[0]));
    Full_adder_dataflow FA1(.a(a[1]),.b(b[1]),.sum(sum[1]),.c_in(c[0]),.c_out(c[1]));
    Full_adder_dataflow FA2(.a(a[2]),.b(b[2]),.sum(sum[2]),.c_in(c[1]),.c_out(c[2]));
    Full_adder_dataflow FA3(.a(a[3]),.b(b[3]),.sum(sum[3]),.c_in(c[2]),.c_out(carry_out));
   
    
endmodule
