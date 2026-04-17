`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 18:53:55
// Design Name: 
// Module Name: CLock_divider
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


module CLock_divider
#(parameter N=4)
(
    input clk,reset_n,
    output [N-1:0] counter,
    output reg clock_divd
    );
    
    always@(posedge clk or negedge reset_n)begin
      if(!reset_n)
        clock_divd <= 0;
      else
        clock_divd <= ~clock_divd;
    end
    
    counter #(.N(N)) Cnt(.clk(clk),.reset_n(reset_n),.counter(counter));
endmodule
