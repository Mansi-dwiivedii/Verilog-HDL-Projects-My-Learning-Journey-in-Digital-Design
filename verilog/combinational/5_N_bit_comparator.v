`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 11:15:25
// Design Name: 
// Module Name: N_bit_comparator
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


module N_bit_comparator
#(parameter N=3)

(
    input [N-1:0] a,b,
    output reg smaller,equal,greater
    );
    
    always @(*) begin
    smaller = a < b;
    greater = a > b;
    equal = (a==b);
    
    end
    
    
endmodule
