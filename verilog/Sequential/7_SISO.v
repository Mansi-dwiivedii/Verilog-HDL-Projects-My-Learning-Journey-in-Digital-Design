`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 18:29:15
// Design Name: 
// Module Name: SISO
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


module SISO(
    input clk,reset_n,sdi,
    output reg sdo
    );
    reg [3:0]SISO;
    
    always @(posedge clk or negedge reset_n)begin
      if(!reset_n)begin
         SISO<=4'b000;
         sdo<=1'b0;
      end
      else begin
        sdo <= SISO[0];
        SISO[3:0]<={SISO[3:1],sdi};
        end
    end
    
   
endmodule
