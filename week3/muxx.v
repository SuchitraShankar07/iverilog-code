module mux2(input wire i0, i1, j, output wire o);
    assign o = (j == 0) ? i0 : i1;
endmodule

module mux4(input wire [3:0] i, input wire j1, j0, output wire o);
    wire t0, t1;
    
    mux2 mux2_0(.i0(i[0]), .i1(i[1]), .j(j0), .o(t0));
    mux2 mux2_1(.i0(i[2]), .i1(i[3]), .j(j0), .o(t1));
    mux2 mux2_2(.i0(t0), .i1(t1), .j(j1), .o(o));
endmodule

*/

module invert(input wire i, output wire o);
assign o=!i;
endmodule
module and2(input wire i0, i1, output wire o);
assign o=i0 & i1;
endmodule
module or2(input wire i0, i1, output wire o);
assign o= i0|i1;
endmodule
module xor2(input wire i0, i1, output wire o);
assign o=i0^i1;
endmodule
module nand2(input wire i0, i1, output wire o);
wire t;
and2 and2_0(i0,i1,t);
invert invert_0(t, o);
endmodule
module nor2(input wire i0, i1, output wire o);
wire t;
or2 or2_0(i0,i1,t);
invert invert_0(t, o);
endmodule
module xnor2(input wire i0, i1, output wire o);
wire t;
xor2 xor2_0(i0,i1,t);
invert invert_0(t, o);
endmodule
module and3(input wire i0, i1,i2 output wire o);
wire t;
and2 and2_0(i0,i1,t);
and2 and2_0(i2,t,o);
endmodule
module or3(input wire i0, i1,i2 output wire o);
wire t;
or2 or2_0(i0,i1,t);
or2 or2_1(i2,t,o);
endmodule
module nor3(input wire i0, i1,i2 output wire o);
wire t;
or2 or2_0(i0,i1,t);
nor2 nor2_0(i2,t,o);
endmodule
module nand3(input wire i0, i1,i2 output wire o);
wire t;
and2 and2_0(i0,i1,t);
and2 and2_0(i2,t,o);
endmodule
module xor3(input wire i0, i1,i2 output wire o);
wire t;
xor2 xor2_0(i0,i1,t);
xor2 xor2_1(i2,t,o);
endmodule



module fa (input wire i0, i1,cin, output wire sum ,count)
wire t0, t1, t2;
xor3 _i0(i0,i1,cin,sum);
and2 _i1(i0,i1,t0);
and2 _i2
endmodule