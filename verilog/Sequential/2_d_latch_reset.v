`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 15:15:32
// Design Name: 
// Module Name: d_latch_reset
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


module d_latch_reset(
    input reset_n,d,en,
    output q,q_not
    );
    
    
    
    reg d_latch;
    
    always @(d or en or reset_n)begin
      if(!reset_n)
       d_latch<=1'b0;
      else if(en)
       d_latch <= d;
    end
    
    assign q = d_latch; 
    assign q_not = ~q;
    
    
    
endmodule
