`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 20:22:33
// Design Name: 
// Module Name: hex_7seg_decoder
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


module hex_7seg_decoder(
    input [3:0] a,
    output dot,
    output reg [6:0] y
    );
    
    always @(*) begin
      case(a)
      4'd0: y = 7'b1111110;
      4'd1: y = 7'b0110000;
      4'd2: y = 7'b1101101;
      4'd3: y = 7'b1111001;
      4'd4: y = 7'b0110011;
      
      4'd5: y = 7'b1011011;
      4'd6: y = 7'b1011111;
      4'd7: y = 7'b1110000;
      4'd8: y = 7'b1111111;
      4'd9: y = 7'b1110011;
      
      4'd10: y = 7'b1110111;
      4'd11: y = 7'b0011111;
      4'd12: y = 7'b1001110;
      4'd13: y = 7'b0111101;
      4'd14: y = 7'b1001111;
      4'd15: y = 7'b1000111;
      
    
      
      
      
      endcase
    
    
    end
    
    
assign dot = 1'b1;
    
endmodule
