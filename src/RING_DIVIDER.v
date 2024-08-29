`timescale 1ps / 1ps
module RING_DIVIDER(
    input logic enable,
    input logic enable1,
    output logic osc_out,
    output logic final_out,
    output logic n1,
    output logic n2,
    output logic n3,
    output logic n4
);
    frequency_divider freq_div (
        .clk_in(osc_out),
        .clk_out2(),
        .clk_out4(),
        .clk_out8(),
        .clk_out16(),
        .clk_out32(),
        .clk_out64(),
        .clk_out128(final_out)
    );
    
    RING_OSCILLATOR ring_osc (
        .en0(enable),
        .en1(enable1),
        .in(osc_out),
        .out(osc_out),
        .n1(n1),
        .n2(n2),
        .n3(n3),
        .n4(n4)
    );
endmodule
