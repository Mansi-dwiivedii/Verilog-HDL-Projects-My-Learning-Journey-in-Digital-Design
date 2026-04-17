`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 09:25:18
// Design Name: 
// Module Name: N_bit_adder
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


module N_bit_adder
         
         #(parameter N = 3)    
   (input [N-1:0] a,b,
    output reg [N:0] sum );
    
    always @(*) begin
      sum[N:0] = a[N-1:0]+b[N-1:0];
    end
    
endmodule
