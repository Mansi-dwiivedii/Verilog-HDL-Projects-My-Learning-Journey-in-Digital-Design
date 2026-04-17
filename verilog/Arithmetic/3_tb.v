`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 11:56:18
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

reg a; 
reg b; 
wire sum;  
wire carry;

half_adder_behavioural HALF_ADD(.a(a),
.b(b),
.sum(sum),
.carry(carry));

initial begin 
      $monitor("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
end


initial begin
  #1; a = 0; b = 0;
  #1; a = 0; b = 1;
  #1; a = 1; b = 0;
  #1; a = 1; b = 1;
  #1; a = 0; b = 0;
  #1; a = 1; b = 1;

end


endmodule
