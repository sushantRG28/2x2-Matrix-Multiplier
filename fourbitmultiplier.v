`timescale 1ns / 1ps

module fulladder(cout,sum,a,b,cin);
input a,b,cin; output cout,sum;

wire s1,c1,c2;
xor x1(s1,a,b);
xor x2(sum,s1,cin);
and a1(c1,a,b);
and a2(c2,s1,cin);
or o1(cout,c1,c2);

endmodule

module fourbitadder(s4,sum,a0,a1,a2,a3,b0,b1,b2,b3,cin);
input a0,a1,a2,a3,b0,b1,b2,b3,cin;
output [3:0] sum; output s4;
wire c1,c2,c3,cout1;
fulladder f1(c1,sum[0],a0,b0,cin);
fulladder f2(c2,sum[1],a1,b1,c1);
fulladder f3(c3,sum[2],a2,b2,c2);
fulladder f4(cout1,sum[3],a3,b3,c3);
and ll4(s4,cout1,1'b1);
endmodule

module fourbitmultiplier(A,B,T);
input [3:0] A,B;
output [7:0] T;

wire a,b,c;
wire [3:0] p,q,r,s,sum1,sum2,sum3;

and A0(p[0],A[0],B[0]);
and A1(p[1],A[0],B[1]);
and A2(p[2],A[0],B[2]);
and A3(p[3],A[0],B[3]);

and A4(q[0],A[1],B[0]);
and A5(q[1],A[1],B[1]);
and A6(q[2],A[1],B[2]);
and A7(q[3],A[1],B[3]);

and A8 (r[0],A[2],B[0]);
and A9 (r[1],A[2],B[1]);
and A10(r[2],A[2],B[2]);
and A11(r[3],A[2],B[3]);

and A12(s[0],A[3],B[0]);
and A13(s[1],A[3],B[1]);
and A14(s[2],A[3],B[2]);
and A15(s[3],A[3],B[3]);

and ab(T[0],p[0],1'b1);
fourbitadder B0(a,sum1,p[1],p[2],p[3],0,q[0],q[1],q[2],q[3],0);
and ab1(T[1],sum1[0],1'b1);
fourbitadder B1(b,sum2,sum1[1],sum1[2],sum1[3],a,r[0],r[1],r[2],r[3],0);
and ab2(T[2],sum2[0],1'b1);
fourbitadder B2(c,sum3,sum2[1],sum2[2],sum2[3],b,s[0],s[1],s[2],s[3],0);
and ab3(T[3],sum3[0],1'b1);
and ab4(T[4],sum3[1],1'b1);
and ab5(T[5],sum3[2],1'b1);
and ab6(T[6],sum3[3],1'b1);
and ab7(T[7],c,1'b1);

endmodule
