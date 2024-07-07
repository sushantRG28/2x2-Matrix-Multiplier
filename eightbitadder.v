`timescale 1ns / 1ps

module eightbitadder(a,b,o);
input [7:0] a,b; output [8:0] o;

wire c1,c2,c3,c4,c5,c6,c7,c8;
fulladder fa0(c1,o[0],a[0],b[0],0);
fulladder fa1(c2,o[1],a[1],b[1],c1);
fulladder fa2(c3,o[2],a[2],b[2],c2);
fulladder fa3(c4,o[3],a[3],b[3],c3);
fulladder fa4(c5,o[4],a[4],b[4],c4);
fulladder fa5(c6,o[5],a[5],b[5],c5);
fulladder fa6(c7,o[6],a[6],b[6],c6);
fulladder fa7(c8,o[7],a[7],b[7],c7);
and gg(o[8],c8,1'b1);

endmodule
