`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2025 16:21:26
// Design Name: 
// Module Name: rom_async
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


module rom_async#(parameter W =8,
                       parameter D =16,
                       parameter D_LOG = $clog2(D)
                      )(
  input clk,
  input[D_LOG-1:0] addr_rd,
  output reg [W-1:0] data_out
     );
     
  reg [W-1:0] rom [0:D-1];
  
  initial begin
     $readmemh("ROMA_INIT.txt", rom, 0, D-1);

  end
  
  always @(posedge clk ) begin
      data_out <= rom[addr_rd];
  end
 
    
   
endmodule
