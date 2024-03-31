`timescale 1ns / 1ps

module counter_top(
    input  clk, reset,
    output wire clk_lhz,
    output wire DP,
    output wire [7:0] AN,
    output [6:0] count_show
    );

    reg [3:0]temp_count;
    wire [3:0]count;

    Clock_divider dut2(.clock_in(clk),.clk_out(clk_lhz));
        always @(posedge clk_lhz ) begin
            if (reset) begin
                temp_count = 4'b0000;
            end else begin
                temp_count = temp_count+1;
            end
        end

    assign count = temp_count;

    Binto7Segment dut(.Clk(clk_lhz),SW(count),
    .Segment_A(count_show[6]),
    .Segment_B(count_show[5]),
    .Segment_C(count_show[4]),
    .Segment_D(count_show[3]),
    .Segment_E(count_show[2]),
    .Segment_F(count_show[1]),
    .Segment_G(count_show[0]),
    .DP(DP),
    .AN(AN)
    );

endmodule //counter_top

module Clock_divider (clock_in,clock_out);
    input clock_in;
    output reg clock_out;
    reg [27:0] counter = 28'd0;
    parameter DIVISOR = 28'd100000000;

    always @(posedge clock_in ) begin
        counter <= counter + 28'd1;
        if (counter >= (DIVISOR-1)) begin
            counter <= 28'd0;
            clock_out <= (counter<DIVISOR/2)? 1'b1 : 1'b0;
        end
    end
endmodule   //Clock_divider

module Binto7Segment (
    input Clk,
    input [3:0]SW,
    output Segment_A,
    output Segment_B,
    output Segment_C,
    output Segment_D,
    output Segment_E,
    output Segment_F,
    output Segment_G,
    output wire DP,
    output wire [7:0]AN
);
    reg [6:0] r=7'h00;
    assign AN = 8'b11111110;
    assign DP = 1;

    always @(posedge Clk ) begin
        case (param)
            4'b0000 : r <= 7'h7E; 
            4'b0001 : r <= 7'h30;
            4'b0010 : r <= 7'h6D;
            4'b0011 : r <= 7'h79;
            4'b0100 : r <= 7'h33;
            4'b0101 : r <= 7'h5B;
            4'b0110 : r <= 7'h5F;
            4'b0111 : r <= 7'h70;
            4'b1000 : r <= 7'h7F;
            4'b1001 : r <= 7'h7B;
            4'b1010 : r <= 7'h77;
            4'b1011 : r <= 7'h1F;
            4'b1100 : r <= 7'h4E;
            4'b1101 : r <= 7'h3D;
            4'b1110 : r <= 7'h4F;
            4'b1111 : r <= 7'h47;
        endcase
    end
    assign Segment_A = ~r[6];
    assign Segment_B = ~r[5];
    assign Segment_C = ~r[4];
    assign Segment_D = ~r[3];
    assign Segment_E = ~r[2];
    assign Segment_F = ~r[1];
    assign Segment_G = ~r[0];
endmodule
