`timescale 1ns / 1ps

module twobitregister(i,clk,l,o,mr);
input [1:0] i; output [1:0] o;
input clk,l,mr;

wire load;
and a0(load,l,clk);

dff d0(load,i[0],o[0],mr);
dff d1(load,i[1],o[1],mr);

endmodule
