`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 18:01:53
// Design Name: 
// Module Name: SIPO
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


module SIPO(
    input sdi,clk,reset,
    output reg [3:0] q
    );
    
    always @(posedge clk or negedge clk)begin
     if(!reset)
      q = 4'b0;
      else
      q[3:0]={q[2:0],sdi};
    end
endmodule
