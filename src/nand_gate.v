`timescale 1ps / 1ps
module nand_gate (
    input A,
    input B,
    output Y
);

    assign Y = ~(A & B);

endmodule
