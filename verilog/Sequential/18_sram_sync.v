`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2025 14:21:19
// Design Name: 
// Module Name: sram_sync
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


module sram_sync(
    input clk ,
    input [7:0] data_in,
    input [3:0] address,
    input write_en,
    output [7:0] data_out
 );
 
 reg[7:0] ram[15:0];
 reg[3:0] adrr_buffer;
  always @(posedge clk) begin
    if(write_en)begin
     ram[address]<= data_in;
    end
    adrr_buffer <= address;
  end
 
 //the read is asynchronous
 assign data_out = ram[adrr_buffer];
 
 


endmodule
