`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 20:30:53
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
reg  [3:0] a;
wire dot;
wire [6:0] y;


hex_7seg_decoder UUT(.a(a),.dot(dot),.y(y));

initial begin
$monitor("a = %d,y=%b,dot=%b",a,y,dot);

#10; a=4'b0001;
#10; a=4'b0010;
#10; a=4'b0100;


end




endmodule
