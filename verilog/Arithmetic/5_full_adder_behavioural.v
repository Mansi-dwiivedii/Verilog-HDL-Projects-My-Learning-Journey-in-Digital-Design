`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 16:19:31
// Design Name: 
// Module Name: full_adder_behavioural
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


module full_adder_behavioural(
    input a,b,carry_in,
    output reg sum,carry_out
    );
    
    always @(a or b or carry_in) begin
       sum  = a^b^carry_in;
       carry_out = (a&b) | (carry_in&(a ^ b));
     end
    
    
endmodule
