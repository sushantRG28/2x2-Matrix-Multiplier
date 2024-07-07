`timescale 1ns / 1ps

module twobitmultiplier(a,b,o);
input [1:0] a,b; output [3:0] o;

wire p0,p1,p2,c1;
and a0(o[0],a[0],b[0]);
and a1(p0,a[1],b[0]);
and a2(p1,a[0],b[1]);
and a3(p2,a[1],b[1]);
xor x0(o[1],p0,p1);
and a4(c1,p0,p1);
xor x1(o[2],c1,p2);
and a5(o[3],c1,p2);

endmodule
