/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_ring_divider (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);
	assign uio_oe = 8'b0000_0000;
	assign uio_out = 8'b0000_0000;
	assign uo_out[7:1] = 7'b0000_000
	
  RING_DIVIDER RING_DIV (
        .enable(ena),
        .enable1(ena),
        .osc_out(),
        .final_out(uo_out[0]),
        .n1(),
        .n2(),
        .n3(),
        .n4()
    );
    
endmodule
