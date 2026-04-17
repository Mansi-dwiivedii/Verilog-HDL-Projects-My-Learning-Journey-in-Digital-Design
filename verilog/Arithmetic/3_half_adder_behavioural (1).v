`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 11:42:33
// Design Name: 
// Module Name: half_adder_behavioural
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


module half_adder_behavioural(
    input a,b,
    output reg sum,carry
    );
    
    always @(a or b)begin
      sum = a ^ b;
      carry = a & b;
    end
endmodule
