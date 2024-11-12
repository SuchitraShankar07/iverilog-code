module fa (input wire i0, i1, cin, output wire sum, cout); 
wire t0, t1, t2; 
xor3 _i0 (i0, i1, cin, sum);
and2 _i1 (i0, i1, t0); 
and2 _i2 (i1, cin, t1); 
and2 _i3 (cin, i0, t2);
or3 _i4 (t0, t1, t2, cout); 
endmodule 
module addsub (input wire addsub, i0, i1, cin,output wire sumdiff, cout); 
wire t; 
fa _i0 (i0, t, cin, sumdiff, cout); 
xor2 _i1 ( i1, addsub, t ); 
endmodule 

module alu_slice ( 
    input wire [1:0] op, 
    input wire i0, i1, cin, 
    output wire o, cout 
);

wire t_sumdiff, t_and, t_or, t_andor; addsub _i0 ( 
    op[0], i0, i1, cin, t_sumdiff, cout 
); 

and2 _i1 ( 
    i0, i1, t_and 
); 

or2 _i2 ( 
    i0, i1, t_or 
); 

mux2 _i3 ( 
    t_and, t_or, 
    op[0], t_andor 
); 

mux2 _i4 ( 
    t_sumdiff, 
    t_andor, 
    op[1], 
    o 
); 

endmodule 
