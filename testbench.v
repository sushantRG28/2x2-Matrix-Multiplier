`timescale 1ns / 1ps

module testbench;
wire [8:0] o; reg clk,mr,ce;
reg [3:0] i;

matrixmult mm(o,clk,mr,ce,i);

initial clk=0;
always #10 clk=~clk;
initial begin
#2 mr=1;
#1 mr=0; ce=0;
#1 ce=1;

////matrices inputs////
#3 i=7;
#20 i=3;
#20 i=12;
#20 i=9;
#20 i=14;
#20 i=6;
#20 i=8;
#20 i=14;
///////////////////////

#5 ce=0;
#88

 $finish;
end
endmodule
