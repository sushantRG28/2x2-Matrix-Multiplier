`timescale 1ns / 1ps

module fourbitregister(i,clk,l,o,mr);
input [3:0] i; output [3:0] o;
input clk,l,mr;

wire load;
and a0(load,l,clk);

dff d0(load,i[0],o[0],mr);
dff d1(load,i[1],o[1],mr);
dff d2(load,i[2],o[2],mr);
dff d3(load,i[3],o[3],mr);

endmodule
