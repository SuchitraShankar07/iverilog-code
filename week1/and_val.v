module and_val; //name of my module
reg a,b; //stores values for a, b
wire c; //c holds value of c temporarily
and2 and_val(c,a,b);
initial
begin //acts like flower brackets

#000 a=0; b=0;
#100 a=0; b=1;

#100 a=1; b=1;
#100 a=1; b=0;
end
initial
begin
$monitor($time,"a=%b, b=%b, c=%b", a,b,c);
end
initial
begin
$dumpfile("and_val.vcd");
$dumpvars (0, and_val);
end
endmodule



/*
module and_val; //name of my module
reg a,b; //stores values for a, b
wire c; //c holds value of c temporarily
and2 and_val(c,a);
initial
begin //acts like flower brackets

#000 a=0;
#100 a=1;
#100 a=0;
end
initial
begin
$monitor($time,"a=%b, c=%b", a,c);
end
initial
begin
$dumpfile("and_val.vcd");
$dumpvars (0, and_val);
end
endmodule
*/
