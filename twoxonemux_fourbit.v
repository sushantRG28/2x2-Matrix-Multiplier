`timescale 1ns / 1ps

module twoxonemux_fourbit(a,b,s,o);
input [3:0] a,b; input s; output [3:0] o;

twoxonemux t0(a[0],b[0],s,o[0]);
twoxonemux t1(a[1],b[1],s,o[1]);
twoxonemux t2(a[2],b[2],s,o[2]);
twoxonemux t3(a[3],b[3],s,o[3]);

endmodule
