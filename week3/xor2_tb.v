module xor2_tb;
  reg aa, bb,cc;
  wire ss, cy;

  // Correct instantiation of the halfadd module
  fulladd uut (.a(aa), .b(bb), .cin(cc),.sum(ss), .cout(cy));

  initial begin
    $dumpfile("Fulladd_test.vcd");
    $dumpvars(0, xor2_tb);
  end

  initial begin
    $monitor($time, " a=%b, b=%b, sum=%b, carry=%b", aa, bb, ss, cy);
   aa = 1'b0; bb = 1'b0; cc=1'b0;
  #5 aa = 1'b0; bb = 1'b0; cc=1'b1;
  #5 aa = 1'b0; bb = 1'b1; cc=1'b0;
  #5 aa = 1'b0; bb = 1'b1; cc=1'b1;
  #5 aa = 1'b1; bb = 1'b0; cc=1'b0;
  #5 aa = 1'b1; bb = 1'b0; cc=1'b1;
  #5 aa = 1'b1; bb = 1'b1; cc=1'b0;
  #5 aa = 1'b1; bb = 1'b1; cc=1'b1;
  end
endmodule
