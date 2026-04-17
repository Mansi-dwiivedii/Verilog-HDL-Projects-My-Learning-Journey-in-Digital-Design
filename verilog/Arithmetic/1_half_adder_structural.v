`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.07.2025 19:31:55
// Design Name: 
// Module Name: half_adder_structural
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


module half_adder_structural(
    input a,b,
    output sum,carry
    );
    
    xor XOR1(sum,a,b);
    and AND1(carry,a,b);
    
    
    
    
endmodule
