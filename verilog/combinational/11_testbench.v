`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 12:13:24
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


module testbench #(parameter N=8);

reg [N-1:0] a,b;
reg [3:0] opcode;
wire [N-1:0] y;
wire zero,carry_out,parity,borrow,invalid_oprn;
reg carry_in;


ALU UUT (.a(a),.b(b),.y(y),.opcode(opcode),.zero(zero),
.carry_out(carry_out),.carry_in(carry_in),.borrow(borrow),.invalid_oprn(invalid_oprn),.parity(parity));


initial begin
$monitor("a=%b,b=%b,y=%b,opcode=%b,carry_in=%b,carry_out=%b,zero=%b,borrow=%b,invalid_oprn=%b,parity=%b",a,b,y,opcode,carry_in,carry_out,zero,borrow,invalid_oprn,parity);

#1;$display("\nTEST OF INVALID");
opcode=0; a=0; b=0;carry_in=0;

#1;$display("\nTEST OF ADD");
opcode=1; a=9; b=33;carry_in=0;

#1;$display("\nTEST OF ADD_CARRY");
opcode=2; a=4; b=22;carry_in=1;

#1;$display("\nTEST OF SUB");
opcode=3; a=65; b=64;carry_in=0;

#1;$display("\nTEST OF INC");
opcode=4; a=233; b=69;carry_in=0;

#1;$display("\nTEST OF DEC");
opcode=5; a=1; b=3;carry_in=0;

#1;$display("\nTEST OF OP_AND");
opcode=6; a=8'b00000010; b=8'b00000011;

#1;$display("\nTEST OF OP_NOT");
opcode=7; a=8'b11111110;

#1;$display("\nTEST OF ROL");
opcode=8; a=8'b00000001;

#1;$display("\nTEST OF ROR");
opcode=9; a=8'b10000000;






end

endmodule
