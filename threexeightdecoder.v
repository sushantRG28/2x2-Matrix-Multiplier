`timescale 1ns / 1ps

module threexeightdecoder(i,o);
input [2:0] i; output [7:0] o;

wire [7:0] in;
not n0(in[0],i[0]);
not n1(in[1],i[1]);
not n2(in[2],i[2]);

and a0(o[0],in[2],in[1],in[0]);
and a1(o[1],in[2],in[1],i[0]);
and a2(o[2],in[2],i[1],in[0]);
and a3(o[3],in[2],i[1],i[0]);
and a4(o[4],i[2],in[1],in[0]);
and a5(o[5],i[2],in[1],i[0]);
and a6(o[6],i[2],i[1],in[0]);
and a7(o[7],i[2],i[1],i[0]);

endmodule
