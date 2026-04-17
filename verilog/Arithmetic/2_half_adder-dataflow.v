`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.07.2025 19:46:35
// Design Name: 
// Module Name: half_adder-dataflow
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


module half_adder-dataflow(
    input a,b,
    output sum,carry
    );
    assign sum = a ^ b;     // XOR for sum
  assign carry = a & b;   // AND for carry
endmodule
