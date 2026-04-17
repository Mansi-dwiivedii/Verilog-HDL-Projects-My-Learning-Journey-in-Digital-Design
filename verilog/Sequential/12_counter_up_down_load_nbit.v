`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 17:33:31
// Design Name: 
// Module Name: counter_up_down_load_nbit
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


module counter_up_down_load_nbit
#(parameter N = 4)(
    input clk,reset_n,load_en,up_down,
    input [N-1:0] counter_in,
    output reg [N-1:0] counter_out
    );
    
    always@(posedge clk or negedge reset_n)begin
     if(!reset_n)
       counter_out <= 1'b0;
     else if (load_en)
       counter_out<=counter_in;
     else
       if(up_down) begin
        counter_out = counter_out+1'b1;
       end
       else begin
        counter_out=counter_out-1'b1;
       end
   
    end
endmodule
