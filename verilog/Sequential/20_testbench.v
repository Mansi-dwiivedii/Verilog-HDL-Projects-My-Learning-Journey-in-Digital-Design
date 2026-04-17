`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2025 16:32:33
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

localparam W =8;
localparam D =8;
localparam D_LOG =$clog2(D);

reg clk=0;
reg [D_LOG-1:0] addr_rd;
wire [W-1:0]data_rd;

integer i;

rom_async #(.W(W),.D(D))DUT(.clk(clk),.addr_rd(addr_rd),.data_out(data_rd));

always begin #0.5 clk=~clk; end

task read_data(input[D_LOG-1:0]address_in);
 begin
   @(posedge clk);
   addr_rd = address_in;
   @(posedge clk);
   #0.1;
   $display("address=%d,data_rd=%x",addr_rd,data_rd);
   end
endtask

initial begin
#1;
$display("ROM content:");
for(i=0;i<D;i=i+1)begin
read_data(i);
end

#40;$stop;

end

   
  


endmodule
