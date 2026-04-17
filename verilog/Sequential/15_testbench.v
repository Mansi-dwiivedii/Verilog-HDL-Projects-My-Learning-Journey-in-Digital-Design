`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 19:42:28
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


module testbench(
);
reg clk,reset;
wire clk_out;

Clock_divider_by_3 UUT(.clk(clk),.reset(reset),.clk_out(clk_out));

initial begin
clk=0;
forever begin
#10; clk=~clk;
end
end

always@(posedge clk )begin
$display("clk=%b,reset=%b,clk_out=%b",clk,reset,clk_out);

end




initial begin 
#10; reset=1;
 #10; reset = 0;
#10; reset = 0;
#10;reset=0;
#10;reset=0;
#10;reset=0;

#100; $stop;
end




endmodule
