`timescale 1ns / 1ps

module fourbitadder(a,b,o);
input [3:0] a,b; output [4:0] o;
assign o=a+b;
endmodule
