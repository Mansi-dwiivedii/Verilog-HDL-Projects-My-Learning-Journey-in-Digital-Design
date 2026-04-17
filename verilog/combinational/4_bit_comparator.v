`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 18:35:26
// Design Name: 
// Module Name: bit_comparator
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


module bit_comparator(
    input A,B,
    output S,E,G
    );
    
    wire nota,notb;
   
   not(nota,A);
    not(notb,B);
    
    and and1(S,B,nota);
    and and2(G,A,notb);
    xnor x1(E,A,B);
    
endmodule
