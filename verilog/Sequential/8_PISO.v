`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 11:25:58
// Design Name: 
// Module Name: PISO
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


module PISO(
    input sdi,pl,clk,reset_n,
    input [3:0] d,
    output sdo
    );
     reg[3:0] piso;
     wire [3:0] data_src;
     
     assign data_src = pl ? d : {piso[2:0],sdi};
     
     always@(posedge clk or negedge reset_n)begin
      if(!reset_n)
       piso[3:0]=4'b0;
      else
      piso[3:0] <= data_src;
     end
    
     assign sdo = piso[3];
     
     
     
     
     
     
endmodule
