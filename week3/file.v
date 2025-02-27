module invert(input wire i,output wire o);
assign o=!i;
endmodule

module and2(input wire i0,i1,output wire o);
assign o = i0&i1;
endmodule

module or2(input wire i0,i1,output wire o);
assign o = i0|i1;
endmodule

module xor2(input wire i0,i1,output wire o);
assign o = i0^i1;
endmodule

module nand2(input wire i0,i1,output wire o);
wire t;
and2 and2_0(i0,i1,t);
invert invert_0(t,o);
endmodule

module nor2(input wire i0,i1,output wire o);
wire t;
or2 or2_0(i0,i1,t);
invert invert_0(t,o);
endmodule

module xnor2(input wire i0,i1,output wire o);
wire t;
xor2 xor2_0(i0,i1,t);
invert invert_0(t,o);
endmodule

module and3(input wire i0,i1,i2,output wire o);
wire t;
and2 and2_0(i0,i1,t);
and2 and2_1(i2,t,o);
endmodule

module or3(input wire i0,i1,i2,output wire o);
wire t;
or2 or2_0(i0,i1,t);
or2 or2_1(i2,t,o);
endmodule

module nor3(input wire i0,i1,i2,output wire o);
wire t;
or2 or2_0(i0,i1,t);
nor2 nor2_1(i2,t,o);
endmodule

module nand3(input wire i0,i1,i2,output wire o);
wire t;
and2 and2_0(i0,i1,t);
nand2 nand2_1(i2,t,o);
endmodule

module xor3(input wire i0,i1,i2,output wire o);
wire t;
xor2 xor2_0(i0,i1,t);
xor2 xor2_1(i2,t,o);
endmodule

module fa(input wire i0,i1,cin,output wire sum,cout);
wire t0,t1,t2;
xor3 xor3_i0(io,i1,cin,sum);
and2 and2_i1(i0,i1,t0);
and2 and2_i2(i1,cin,t1);
and2 and2_i3(cin,i0,t2);
or3 or3_i4(t0,t1,t2,cout);
endmodule

module circuit3(input wire[0:2]i1, input wire i2,output wire sum1,cout1);
wire x1,x2;
fa fa_1(i1[0],i1[1],i1[2],x1,x2);
fa fa_2(x1,x2,i2,sum1,cout1);
endmodule