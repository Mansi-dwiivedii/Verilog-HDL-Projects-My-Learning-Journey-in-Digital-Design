`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2025 12:27:44
// Design Name: 
// Module Name: ram_sp_async_read
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


module ram_sp_async_read(
    input clk ,
    input [7:0] data_in,
    input [3:0] address,
    input write_en,
    output [7:0] data_out
 );
 
 reg[7:0] ram[15:0];
 
 always @(posedge clk) begin
   if(write_en)begin
     ram[address]<= data_in;
   end
 
 end
 
 //the read is asynchronous
 assign data_out = ram[address];
 
 
endmodule
