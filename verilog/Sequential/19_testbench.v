`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2025 15:13:23
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


module testbench#(parameter  W =8,
                  parameter D =16,
                  parameter D_LOG = $clog2(D)

    );
reg  clk=0;
reg we_n;
reg [D_LOG-1:0] addr_wr;
reg[D_LOG-1:0] addr_rd;
reg[W-1:0] data_wr;
wire[W-1:0] data_rd;
integer error_count=0,success_count=0,test_count=0;
integer num_test,i,rand_addr_wr;

dual_port_sram #(.W(W),.D(D),.D_LOG(D_LOG)) DUT(
    .clk(clk),
    .we_n(we_n),
    .addr_wr(addr_wr),
    .addr_rd(addr_rd),
    .data_wr(data_wr),
    .data_rd(data_rd)
);


task write_data(input[W-1:0] data_in,input[D_LOG-1:0]address_in);
begin
  @(posedge clk);
  we_n=1;
   data_wr = data_in; addr_wr = address_in;
  @(posedge clk);
  we_n=0;
end
endtask

task read_data(input[D_LOG-1:0]address_in);
begin
  @(posedge clk);
   addr_rd = address_in;
  @(posedge clk);
  we_n=1;
end
endtask

task compare_data(input[D_LOG-1:0]address,
                  input[W-1:0] expected_data,
                  input[W-1:0]observed_data);
 begin
   if(expected_data === observed_data) begin
  $display("address=%d,expected_data=%d,observed_data=%d",address,expected_data,observed_data);
    success_count = success_count + 1;
   end else begin
    $display("address=%d,expected_data=%d,observed_data=%d",address,expected_data,observed_data);
  
    error_count = error_count+1;
   end
   test_count = test_count +1;
  
end
endtask


always begin #0.5 clk=~clk; end

initial begin
#1;
num_test = D;
success_count=0;error_count=0;test_count=0;

 $display("Test1 Start");
 for(i=0;i<num_test;i=i+1)begin
    data_wr =$random;
    write_data(data_wr,i);
    read_data(i);
    #0.1;
    compare_data(i,data_wr,data_rd);
 end
 
  $display("Test2 Start");
 for(i=0;i<num_test;i=i+1)begin
    rand_addr_wr = $random % D;
    data_wr =(rand_addr_wr<<4)|((rand_addr_wr%2)?4'hA:4'h5);
    write_data(data_wr,rand_addr_wr);
    read_data(rand_addr_wr);
    #0.1;
    compare_data(i,data_wr,data_rd);
 end
 
 
 
 $display("TEST success_count=%d,error_count=%d,test_count=%d",success_count,error_count,test_count);
 #40; $stop;

end






endmodule
