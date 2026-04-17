`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 11:45:31
// Design Name: 
// Module Name: ALU
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


module ALU#(parameter N=8)
(
    input [N-1:0] a,b,
    input [3:0] opcode,
    output reg [N-1:0] y,
    output reg zero,carry_out,parity,borrow,invalid_oprn,
    input carry_in
    );
    
    
    localparam OP_ADD = 1;
    localparam OP_ADD_CARRY = 2;
    localparam OP_SUB = 3;
    localparam OP_INC = 4;
    localparam OP_DEC = 5;
    localparam OP_AND = 6;
    localparam OP_NOT = 7;
     localparam OP_ROL = 8;
    localparam OP_ROR = 9;
    
    
    always @(*)begin
    carry_out=0;y=0;borrow=0;invalid_oprn=0;
    case (opcode)
    OP_ADD: begin y=a+b;  end
    OP_ADD_CARRY: begin {carry_out,y}=a+b+carry_in;  end
    OP_SUB: begin {borrow,y}=a-b;  end
    OP_INC: begin {carry_out,y}= a+ 1'b1;  end
    OP_DEC: begin {borrow,y}=a- 1'b1;  end
    OP_AND: begin y=a&b;  end 
    OP_NOT: begin y=~a;  end  
    OP_ROL: begin y={a[N-2:0],a[N-1]};  end
     OP_ROR: begin y= {a[0],a[N-1:1]};  end
    
    default :begin invalid_oprn = 1;   end
    
    endcase
    
     parity = ^y;
     zero = (y==0);
    end
    
    
    
endmodule
