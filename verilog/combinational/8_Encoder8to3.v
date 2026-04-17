`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 16:51:55
// Design Name: 
// Module Name: Encoder8to3
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


module Encoder8to3(
    input [7:0] d,
    input en,
    output reg [2:0] y
    );
    
    always @(*) begin
      if(en==0)
       y=8'b0;
      else begin
       case(d)
          8'b00000001: y=3'd0;
          8'b00000010: y=3'd1;
          8'b00000011: y=3'd2;
          8'b00000100: y=3'd3;
          8'b00000101: y=3'd4;
          8'b00000110: y=3'd5;
          8'b00000111: y=3'd6;
          8'b00001000: y=3'd7;
       
       endcase
    
       end
    end
    
endmodule
