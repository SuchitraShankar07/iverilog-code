//This program takes a top down approach to the given problem statement to find the number of 1's in a given 8 bit input.
//It involves having 2 counters for each half of the input, and then adding the 2 "counts" to get a 4 bit output.
//The carry out produced in the adder is ignored as the maximum output can only be 1000 = 8, and it would be redundant to retain context of that carry out bit.

module fourbitcounter(
    input [3:0] A,
    output [3:0] Count
);
assign Count = A[0]+A[1]+A[2]+A[3];
endmodule

module fourbitadder(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Sum
);
assign Sum = A+B;
endmodule

module EightBitCounter (
    input [7:0] A,
    output [3:0] Count
);
    wire [3:0] Count1, Count2; 

    fourbitcounter C1 (.A(A[3:0]), .Count(Count1));
    fourbitcounter C2 (.A(A[7:4]), .Count(Count2));

    fourbitadder Adder (.A(Count1), .B(Count2), .Sum(Count));
endmodule
