`timescale 1ns / 1ps

module fivebitregister(i,clk,l,o,mr);
input [4:0] i; output [4:0] o;
input l,clk,mr;

wire loadn,load,ll;
//or x(ll,l,1'bx);
and a0(load,l,clk);
//not nn(load,loadn);

dff d0(load,i[0],o[0],mr);
dff d1(load,i[1],o[1],mr);
dff d2(load,i[2],o[2],mr);
dff d3(load,i[3],o[3],mr);
dff d4(load,i[4],o[4],mr);

endmodule
