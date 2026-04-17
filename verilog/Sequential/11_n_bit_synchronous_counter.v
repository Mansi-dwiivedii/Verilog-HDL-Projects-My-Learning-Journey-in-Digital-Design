`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 16:59:55
// Design Name: 
// Module Name: n_bit_synchronous_counter
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


module n_bit_synchronous_counter
#(parameter N=3)(
    input reset,clk,
    output reg [N-1:0] counter
    );
    
    always@(posedge clk or negedge reset)begin
     if(!reset)
      counter <=1'b0;
     else
      counter <= counter+1'b1;
    end
    
    
    
endmodule
