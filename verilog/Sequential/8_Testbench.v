`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 11:42:43
// Design Name: 
// Module Name: Testbench
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


module Testbench( );
reg [3:0]d;
reg clk,reset_n,pl,sdi;
wire sdo;

PISO UUT(.clk(clk),.reset_n(reset_n),.d(d),.pl(pl),.sdo(sdo),.sdi(sdi));

initial clk = 0;
always #5 clk = ~clk;


always @(posedge clk) begin
  $display("Time=%0t | clk=%b, reset_n=%b, d=%b, pl=%b, sdi=%b, sdo=%b", 
            $time, clk, reset_n, d, pl, sdi, sdo);
end


initial begin

   reset_n = 0; pl = 0; sdi = 0; d = 4'b0000;
    #10;
  reset_n = 1; pl = 1; sdi = 0; d = 4'b1111;
    #10;
  reset_n = 1; pl = 0; sdi = 0; d = 4'b1111;
    #10;
    reset_n = 1; pl = 0; sdi = 0; d = 4'b1111;
    #10;
   reset_n = 1; pl = 0; sdi = 0; d = 4'b1111;
    #10;
    reset_n = 1; pl = 0; sdi = 0; d = 4'b1111;
    #10;
    
     reset_n = 0; pl = 0; sdi = 0; d = 4'b1111;
    #10;
     reset_n = 1; pl = 1; sdi = 0; d = 4'b1111;
    #10;
    
    #150; $finish;

end



endmodule
