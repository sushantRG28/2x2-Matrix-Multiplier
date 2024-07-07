`timescale 1ns / 1ps

module dlatch(D,en,Q,mr);
input D,en,mr;
output Q;
wire ww1,ww2,dn;
wire Qb,mrn;
not n0(mrn,mr);
not n1(dn,D);
nand na1(ww1,D,en);
nand na2(ww2,dn,en);
nand na3(Qb,Q,ww2,mrn);
nand na4(Q,Qb,ww1);
endmodule

module dff(CLK,D,Q,mr);
input CLK,D,mr; output Q;
wire clk;
not n0(clk,CLK);
wire q,clkn;
dlatch dl1(D,clk,q,mr);
not n1(clkn,clk);
dlatch dl2(q,clkn,Q,mr);
endmodule
