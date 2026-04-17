`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 18:18:55
// Design Name: 
// Module Name: Multiplexer
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


module Multiplexer(
    input A,B,X,
    output Y
    );
     
    wire A1,A2,notX;
    
    assign notX = ~X;
    assign A1 = A & notX;
    assign A2 = B & X;
    assign Y = A1 | A2;
    
    
endmodule
