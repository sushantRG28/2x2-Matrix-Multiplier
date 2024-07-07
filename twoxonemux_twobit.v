`timescale 1ns / 1ps

module twoxonemux_twobit(a,b,s,o);
input [1:0] a,b; input s; output [1:0] o;

twoxonemux t0(a[0],b[0],s,o[0]);
twoxonemux t1(a[1],b[1],s,o[1]);

endmodule
