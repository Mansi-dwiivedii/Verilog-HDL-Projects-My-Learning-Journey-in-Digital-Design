`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 14:51:11
// Design Name: 
// Module Name: d_latch
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


module d_latch(
    input d,en,
    output q,q_not
    );
    
    reg d_latch;
    
    always @(d or en)begin
     if(en)
     d_latch <= d;
    end
    
    assign q = d_latch; 
    assign q_not = ~q;
    
endmodule
