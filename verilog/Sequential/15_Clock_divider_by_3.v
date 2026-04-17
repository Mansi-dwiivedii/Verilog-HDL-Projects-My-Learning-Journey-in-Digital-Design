`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 19:36:35
// Design Name: 
// Module Name: Clock_divider_by_3
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


module Clock_divider_by_3(
    input reset,clk,
    input clk_out
    );
    reg qa,qb,qc;
    
    always@(posedge clk or negedge reset)begin
     if(reset)
      qa<=1'b0;
     else
     qa <= (~qa)&(~qb);
    end 
     always@(posedge clk or negedge reset)begin
     if(reset)
      qb<=1'b0;
     else
     qb <= qa;
     end
     
     always@(posedge clk or negedge reset)begin
     if(reset)
      qc<=1'b0;
     else
     qc <= qb;
  
    end
    
    
    
    
   assign clk_out = qb|qc;
    
    
    
    
endmodule
