
module test;
    reg [3:0] ii;
    reg s0, s1;
    wire yy;

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, test);
    end

    mux4 newMux(.i(ii), .j0(s0), .j1(s1), .o(yy));

    initial begin
      $monitor("ii=%b; s0=%b; s1=%b, output=%b", ii, s0, s1, yy);
        ii = 4'b0000; s0 = 1'b0; s1 = 1'b0;
        #5 ii = 4'b1000; s0 = 1'b0; s1 = 1'b0;
        #5 ii = 4'b0000; s0 = 1'b0; s1 = 1'b1;
        #5 ii = 4'b0100; s0 = 1'b0; s1 = 1'b0;
        #5 ii = 4'b0000; s0 = 1'b1; s1 = 1'b1;
        #5 ii = 4'b0010; s0 = 1'b1; s1 = 1'b0;
        #5 ii = 4'b0000; s0 = 1'b1; s1 = 1'b1;
        #5 ii = 4'b0001; s0 = 1'b1; s1 = 1'b0;
       
    end
endmodule