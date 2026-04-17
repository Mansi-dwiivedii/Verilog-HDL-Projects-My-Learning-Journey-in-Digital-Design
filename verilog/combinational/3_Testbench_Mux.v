`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 18:02:46
// Design Name: 
// Module Name: Testbench_Mux
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


module Testbench_Mux( );
reg A,B,Sel;
wire Out; 

MUX_usingTriStateBuffer UUT(.A(A),.B(B),.Sel(Sel),.Out(Out));

initial begin
  $monitor("MON:A=%b,B=%b,Sel=%b,Out=%b",A,B,Sel,Out);
 
end

initial begin
#10; A=0 ;B=1; Sel=0;
#10; A=0 ;B=1; Sel=1;
#10; A=1 ;B=0; Sel=0;
#10; A=1 ;B=0; Sel=1;


end


endmodule
