*/ //AND
module and2(c,a,b);
input a,b;
output c;
assign c=a&b;
endmodule
*/

/*//OR
module and2(c,a,b);
input a,b;
output c;
assign c=a|b;
endmodule


*/
/* //NOT
module and2(c,a);
input a;
output c;
assign c=!a;
endmodule
*/

//NAND
/*
module and2(c,a,b);
input a,b;
output c;
assign c=!(a&b);
endmodule
*/
//NOR
/*
module and2(c,a,b);
input a,b;
output c;
assign c=!(a|b);
endmodule
*/
//XOR

module and2(c,a,b);
input a,b;
output c;
//assign c=(a&(~b)|(~a)&b);
assign c= a^b;
endmodule

//XNOR
/*
module and2(c,a,b);
input a,b;
output c;
assign c=!(a^b);
endmodule
*/

