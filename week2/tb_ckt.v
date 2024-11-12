
module tb_ckt;
    wire D, Z;
    reg A2, B2, C2;
    
    ckt M1 (A2, B2, C2, D, Z);
    initial begin
        A2 = 1'b0;
        B2 = 1'b0;
        C2 = 1'b0;

        #20 A2 = 1'b0;
        B2 = 1'b0;
        C2 = 1'b1;

        #20 A2 = 1'b0;
        B2 = 1'b1;
        C2 = 1'b0;

        #20 A2 = 1'b0;
        B2 = 1'b1;
        C2 = 1'b1;

        #20 A2 = 1'b1;
        B2 = 1'b0;
        C2 = 1'b0;

        #20 A2 = 1'b1;
        B2 = 1'b0;
        C2 = 1'b1;

        #20 A2 = 1'b1;
        B2 = 1'b1;
        C2 = 1'b0;

        #20 A2 = 1'b1;
        B2 = 1'b1;
        C2 = 1'b1;
    end
    initial begin
        $monitor($time, "  A2 = %b, B2 = %b, C2 = %b, D = %b, Z=%b", A2, B2, C2, D, Z);
    end
    initial begin
        $dumpfile("ckt.vcd");
        $dumpvars(0, tb_ckt);
    end
    initial begin
        #200
        $finish;

    end
endmodule