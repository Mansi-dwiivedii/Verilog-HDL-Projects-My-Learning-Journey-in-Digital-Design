`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2025 12:28:31
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


module Testbench #(parameter N=8);

reg [N-1:0] a,b;
reg [3:0] opcode;
wire [N-1:0] y;
wire zero,carry_out,parity,borrow,invalid_oprn;
reg carry_in;


localparam OP_ADD = 1;
localparam OP_ADD_CARRY = 2;
localparam OP_SUB = 3;
localparam OP_INC = 4;
localparam OP_DEC = 5;
localparam OP_AND = 6;
localparam OP_NOT = 7;
localparam OP_ROL = 8;
localparam OP_ROR = 9;
integer success_count = 0,error_count = 0,test_count=0,i = 0;


ALU UUT (.a(a),.b(b),.y(y),.opcode(opcode),.zero(zero),
.carry_out(carry_out),.carry_in(carry_in),.borrow(borrow),.invalid_oprn(invalid_oprn),.parity(parity));



function [N+4:0] model_ALU (input [3:0] opcode,
                            input [N-1:0] a,
                            input [N-1:0] b,
                            input carry_in );
    //local var ued to model the ALU behav
    reg [N-1:0] y;
    reg carry_out,borrow,zero,parity,invalid_oprn;

     begin
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
    
    default :begin invalid_oprn = 1; y=0;carry_out=0;  borrow=0;   end
    
    endcase
      
    parity = ^y;
     zero = (y==0);
     model_ALU = {invalid_oprn,parity,zero,borrow,carry_out,y};
    
    end

endfunction


task compare_data(input [N+4:0] expected_ALU,input [N+4:0] observed_ALU);
         begin
         
            if(expected_ALU===observed_ALU) begin
              $display("invalid_oprn=%d,parity=%b,zero=%b,borrow=%b,carry_out=%b,y=%b",
                       expected_ALU[N+4], expected_ALU[N+3], expected_ALU[N+2],
                        expected_ALU[N+1], expected_ALU[N], expected_ALU[N-1:0]);
              
              $display("invalid_oprn=%d,parity=%b,zero=%b,borrow=%b,carry_out=%b,y=%b",
                      observed_ALU[N+4], observed_ALU[N+3], observed_ALU[N+2],
                       observed_ALU[N+1], observed_ALU[N], observed_ALU[N-1]);
                               
             
              success_count = success_count+1; 
            
            end else begin
            
             $display("invalid_oprn=%d,parity=%b,zero=%b,borrow=%b,carry_out=%b,y=%b",
                       expected_ALU[N+4], expected_ALU[N+3], expected_ALU[N+2],
                        expected_ALU[N+1], expected_ALU[N], expected_ALU[N-1:0]);
              
              $display("invalid_oprn=%d,parity=%b,zero=%b,borrow=%b,carry_out=%b,y=%b",
                      observed_ALU[N+4], observed_ALU[N+3], observed_ALU[N+2],
                       observed_ALU[N+1], observed_ALU[N], observed_ALU[N-1]);
             error_count = error_count+1;

           end
           test_count = test_count+1;
         end
endtask

initial begin

 
 // ADD overflow
opcode = OP_ADD; a = 8'hFF; b = 8'h01; carry_in=0; #1;
compare_data(model_ALU(opcode,a,b,carry_in), {invalid_oprn,parity,zero,borrow,carry_out,y});

// ADD with carry
opcode = OP_ADD_CARRY; a = 8'hFF; b = 8'h00; carry_in=1; #1;
compare_data(model_ALU(opcode,a,b,carry_in), {invalid_oprn,parity,zero,borrow,carry_out,y});

// SUB borrow case
opcode = OP_SUB; a = 8'h00; b = 8'h01; carry_in=0; #1;
compare_data(model_ALU(opcode,a,b,carry_in), {invalid_oprn,parity,zero,borrow,carry_out,y});

// INC wraparound
opcode = OP_INC; a = 8'hFF; b = 8'h00; carry_in=0; #1;
compare_data(model_ALU(opcode,a,b,carry_in), {invalid_oprn,parity,zero,borrow,carry_out,y});

// DEC wraparound
opcode = OP_DEC; a = 8'h00; b = 8'h00; carry_in=0; #1;
compare_data(model_ALU(opcode,a,b,carry_in), {invalid_oprn,parity,zero,borrow,carry_out,y});

// AND edge case
opcode = OP_AND; a = 8'hAA; b = 8'h55; carry_in=0; #1;
compare_data(model_ALU(opcode,a,b,carry_in), {invalid_oprn,parity,zero,borrow,carry_out,y});

// NOT all ones
opcode = OP_NOT; a = 8'hFF; b = 8'h00; carry_in=0; #1;
compare_data(model_ALU(opcode,a,b,carry_in), {invalid_oprn,parity,zero,borrow,carry_out,y});

// ROL test
opcode = OP_ROL; a = 8'b1000_0001; b = 8'h00; carry_in=0; #1;
compare_data(model_ALU(opcode,a,b,carry_in), {invalid_oprn,parity,zero,borrow,carry_out,y});

// ROR test
opcode = OP_ROR; a = 8'b1000_0001; b = 8'h00; carry_in=0; #1;
compare_data(model_ALU(opcode,a,b,carry_in), {invalid_oprn,parity,zero,borrow,carry_out,y});

// Invalid opcode
opcode = 4'd10; a = 8'h12; b = 8'h34; carry_in=0; #1;
compare_data(model_ALU(opcode,a,b,carry_in), {invalid_oprn,parity,zero,borrow,carry_out,y});

     #1;
     $display("TEST%0d opcode=%0d,a=%0d,b=%0d,carry_in=%0b",i,opcode,a,b,carry_in);
     compare_data(model_ALU(opcode,a,b,carry_in),{invalid_oprn,parity,zero,borrow,carry_out,y});
     #2;
  
 


  $display("TEST RESULTS  success_count=%0d,error_count=%0d,test_count=%0d",success_count,error_count,test_count);
  #40 $stop;


end
endmodule
