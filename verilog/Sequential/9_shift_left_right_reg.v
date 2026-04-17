`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 12:21:40
// Design Name: 
// Module Name: shift_left_right_reg
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


module shift_left_right_reg(
    input load_enable,right_left_shift,clock,reset_n,
    input [7:0] I,
    output reg [7:0] Q
    );
    
    always @(posedge clock or negedge reset_n) begin
    
    if (!reset_n )
      Q <= 8'b0;
    else if (load_enable==1'b0)
      Q <= I;
    else begin
     if(right_left_shift == 1'b0)
       Q[7:0]={Q[6:0],1'b0};
     else
      Q[7:0]={1'b0,Q[7:1]};
    end
    
    end
endmodule
