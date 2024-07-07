`timescale 1ns / 1ps

module matrixmult(o,clk,mr,ce,i);
output [8:0] o; input clk,mr,ce;
input [3:0] i;

wire [2:0] count;
wire [7:0] p;
wire [3:0] l0,l1,l2,l3,l4,l5,l6,l7;
threebitcounter tbc(count,clk,ce,mr);
threexeightdecoder txe(count,p);
fourbitregister tbr0(i,clk,p[0],l0,mr);
fourbitregister tbr1(i,clk,p[1],l1,mr);
fourbitregister tbr2(i,clk,p[2],l2,mr);
fourbitregister tbr3(i,clk,p[3],l3,mr);
fourbitregister tbr4(i,clk,p[4],l4,mr);
fourbitregister tbr5(i,clk,p[5],l5,mr);
fourbitregister tbr6(i,clk,p[6],l6,mr);
fourbitregister tbr7(i,clk,p[7],l7,mr);

wire ol;
or aa(ol,l6[0],l6[1],l6[2],l6[3]);

wire [3:0] x,xx,y,yy;
wire [2:0] cc;
wire clkn;
customcounter tbch(cc,clk,p[7],mr);
twoxonemux_fourbit txx0(l0,l2,cc[2],x);
twoxonemux_fourbit txx1(l1,l3,cc[2],y);
twoxonemux_fourbit txx2(l4,l5,cc[1],xx);
twoxonemux_fourbit txx3(l6,l7,cc[1],yy);

wire [7:0] xxx,yyy;
wire [8:0] ooo;
fourbitmultiplier tbm0(x,xx,xxx);
fourbitmultiplier tbm1(y,yy,yyy);
eightbitadder fba(xxx,yyy,ooo);

wire c;
or kk(c,cc[0],1'bx);
and aaa0(o[0],ol,ooo[0],c);
and aaa1(o[1],ol,ooo[1],c);
and aaa2(o[2],ol,ooo[2],c);
and aaa3(o[3],ol,ooo[3],c);
and aaa4(o[4],ol,ooo[4],c);
and aaa5(o[5],ol,ooo[5],c);
and aaa6(o[6],ol,ooo[6],c);
and aaa7(o[7],ol,ooo[7],c);
and aaa8(o[8],ol,ooo[8],c);


endmodule
