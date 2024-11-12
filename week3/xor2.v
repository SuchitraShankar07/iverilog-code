module xor2(input wire i0,i1, output wire o4);
assign o4=i0^i1;
endmodule

module and2(input wire i0,i1, output wire o2);
assign o2=i0&i1;
endmodule

module or2(input wire i0,i1, output wire o2);
assign o2=i0|i1;
endmodule


module fulladd(input wire a,b,cin, output wire sum,cout);
wire [4:0]t;
xor2 x0(a,b, t[0]);
xor2 x1(t[0],cin,sum);
and2 a0(a,b, t[1]);
and2 a1(a,cin,t[2]);
and2 a2(b, cin, t[3]);
or2 o0(t[1],t[2],t[4]);
or2 o1(t[3],t[4], cout);
endmodule


module halfadd(a,b,summ,cout);
input a,b;
output summ,cout;
xor2 x0(a,b, summ);
and2 a0(a,b, cout);
endmodule
