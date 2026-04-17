`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 16:19:17
// Design Name: 
// Module Name: d_flipflop_async
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


module d_flipflop_async(
    input d,reset_n,clock,
    output q,q_not
    );
    
    reg d_flipflop;
    
    always @(posedge clock or negedge reset_n) begin
    if(!reset_n)
      d_flipflop <= d; 
     else 
     d_flipflop <= 1'b0; 
    end
    
    
assign q = d_flipflop;
assign q_not = ~q;

endmodule

    
    
  
