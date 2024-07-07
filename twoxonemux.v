`timescale 1ns / 1ps

module twoxonemux(a,b,s,o);
input a,b; input s; output o;

wire sn,asn,bs;
not n0(sn,s);
and a0(asn,a,sn);
and a1(bs,b,s);
or o0(o,asn,bs);

endmodule
