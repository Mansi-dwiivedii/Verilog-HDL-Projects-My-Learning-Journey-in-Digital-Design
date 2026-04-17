`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 18:00:36
// Design Name: 
// Module Name: MUX_usingTriStateBuffer
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


module MUX_usingTriStateBuffer(
    input A,B,Sel,
    output Out
    );
    
    bufif0(Out,A,Sel);
    bufif1(Out,B,Sel);
endmodule
