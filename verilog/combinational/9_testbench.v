`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 18:18:53
// Design Name: 
// Module Name: testbench
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


module testbench( );
reg [3:0]d;
wire v; 
wire [1:0]q;

priority_encoder DUT(.d(d),.q(q),.v(v));

initial begin
$monitor("MON:d=%d,q=%d,v=%d",d,q,v);
#10;  d = 4'b0010;
#10;  d = 4'b0100;
#10;  d = 4'b1000;


end



endmodule


