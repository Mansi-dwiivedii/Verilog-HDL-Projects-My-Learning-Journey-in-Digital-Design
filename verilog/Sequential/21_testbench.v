`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2025 12:37:49
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

reg clk = 0;
reg rst_n;
reg validate_code;
reg [3:0] access_code;
wire open_access_door;
wire [1:0] state_out;


fsm1 DUT(.clk(clk),.rst_n(rst_n),.validate_code(validate_code),.access_code(access_code),.open_access_door(open_access_door),.state_out(state_out));

always begin #5; clk=~clk; end


initial begin
$monitor("access_code=%b,state_out=%b,open_access_door=%b",access_code,state_out,open_access_door);

rst_n =0; #2.5; rst_n=1;
validate_code = 0 ; access_code=0;
@(posedge clk);
validate_code =1; access_code = 0;
@(posedge clk);
validate_code =1; access_code = 0;
@(posedge clk);
validate_code =1; access_code = 9;
@(posedge clk);
validate_code =0; access_code = 9;
#40 $stop;

end




endmodule
