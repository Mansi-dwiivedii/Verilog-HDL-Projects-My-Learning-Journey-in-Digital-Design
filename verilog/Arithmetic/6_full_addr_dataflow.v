`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 13:14:15
// Design Name: 
// Module Name: full_addr_dataflow
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


module full_addr_dataflow(
    input a,b,c_in,
    output sum,c_out
    );
    
    
    wire sum1,and1,and2;
    
    assign sum1 = a ^ b;
    assign and1 = sum1 & c_in;
    assign and2 = a & b;
    
    assign sum = sum1 ^c_in;
    assign c_out = and1 | and2;
    
    
endmodule
