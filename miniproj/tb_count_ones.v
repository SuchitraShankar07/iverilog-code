`timescale 1 ns / 100 ps
`define TESTVECS 10

module tb;
    reg clk, reset;
    reg [7:0] A;            
    wire [3:0] Count;      

    EightBitCounter UUT (
        .A(A),
        .Count(Count)
    );

    reg [7:0] test_vecs[0:(`TESTVECS-1)];
    integer i;

    initial begin
        $dumpfile("counter_test.vcd");
        $dumpvars(0, tb);
    end

    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
    test_vecs[0] = 8'b10100111;
    test_vecs[1] = 8'b11111111;
    test_vecs[2] = 8'b00000000;
    test_vecs[3] = 8'b01101100;
    test_vecs[4] = 8'b11010001;
    test_vecs[5] = 8'b00101010;
    test_vecs[6] = 8'b10111100;
    test_vecs[7] = 8'b01011011;
    test_vecs[8] = 8'b10000111;
    test_vecs[9] = 8'b11100000;

    end

    initial begin
        A = 8'b0;
  
        for (i = 0; i < `TESTVECS; i = i + 1) begin
            #10;
            A = test_vecs[i];  
        end
        #100 $finish;
    end

    always @(A)
        $monitor("At time = %t, Input A = %b, Count = %d", $time, A, Count);
endmodule
