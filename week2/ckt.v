module ckt (A2,B2,C2,D,Z);

    output D,Z;
    input A2, B2, C2;
    wire w1,w2;
    and G1 (w1, C2, B2);
    or G2 (D, w1, A2);
    and G3(w2,A2,B2);
    or G4(Z,D,w2);


endmodule






