`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 18:11:05
// Design Name: 
// Module Name: counter_modulo
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


module counter_modulo #(parameter N=4,W=10) 

(
    input reset_n,clk,enable,
    output reg [N-1:0] counter_out
    );
    
    
    always@(posedge clk or negedge reset_n)
    begin
    if(!reset_n)
     counter_out <= 4'b0;
    else if (enable)
     if(counter_out == W-1) begin
        counter_out<=4'b0000;
        end
     else begin
     counter_out <= counter_out+1'b1;
     end
          
    end
endmodule
