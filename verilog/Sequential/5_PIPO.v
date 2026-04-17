`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 17:11:07
// Design Name: 
// Module Name: PIPO
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


module PIPO(
    input [3:0] d,
    output reg [3:0] q,
    input clk,reset_n
    );
    
    always @(posedge clk or reset_n) begin
      if(!reset_n)
        q<=4'b0;
      else
        q[3:0]<= d[3:0];
      end
  
endmodule
