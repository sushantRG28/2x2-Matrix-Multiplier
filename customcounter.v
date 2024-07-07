`timescale 1ns / 1ps

module customcounter(count,clk,ce,mr);
input clk,ce,mr;
output [2:0] count;

wire [2:0] ct,dt;
wire [1:0] bt;
wire [3:0] at;
wire [2:0] s;
wire a,c;

not A(a,ce);
not B(c,clk);

not E0(ct[0],count[0]);
not E1(ct[1],count[1]);
not E2(ct[2],count[2]);


and A0(at[0],count[0],ct[1]);
and A1(at[1],ct[1],ct[2],ce);
and A2(at[2],a,count[0]);
and A3(at[3],ct[2],count[0]);

and B0(bt[0],count[1],count[0],a);
and B1(bt[1],ct[1],count[0],ce);

and AB1(s[0],count[0],a,count[2]);
and AB2(s[1],count[2],count[0],ct[1]);
and AB3(s[2],ct[2],count[0],count[1],ce);

or C0(dt[0],at[1],count[0]);
or C1(dt[1],bt[0],bt[1]);
or C2(dt[2],s[2],s[0],s[1]);


dff d0(c,dt[0],count[0],mr);
dff d1(c,dt[1],count[1],mr);
dff d2(c,dt[2],count[2],mr);

endmodule
