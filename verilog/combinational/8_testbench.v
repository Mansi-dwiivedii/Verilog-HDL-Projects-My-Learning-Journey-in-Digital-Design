`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 16:58:52
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


module testbench();
reg [7:0] d;
reg en; 
wire [2:0] y;

Encoder8to3 DUT(.d(d),.en(en),.y(y));

initial begin
$monitor("MON:d=%b,en=%b,y=%b",d,en,y);

d = 8'b00000100;en = 1;#10;
d = 8'b00001000;en=1; #10;

end


endmodule
