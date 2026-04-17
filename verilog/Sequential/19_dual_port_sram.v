`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2025 14:57:10
// Design Name: 
// Module Name: dual_port_sram
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


module dual_port_sram#(parameter W =8,
                       parameter D =16,
                       parameter D_LOG = $clog2(D)
                      )(
  input clk,
  input we_n,
  input[D_LOG-1:0] addr_wr,
  input[D_LOG-1:0] addr_rd,
  input[W-1:0] data_wr,
  output[W-1:0] data_rd
     );
     
  reg [W-1:0] ram [0:D-1];
  
  always @(posedge clk ) begin
     if(we_n)
        ram[addr_wr]<=data_wr;
  end
  
  assign data_rd = ram[addr_rd];
    
    
endmodule
