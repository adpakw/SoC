// Copyright (c) 2020 FPGAcademy
// Please see license at https://github.com/fpgacademy/DESim

module Lab_1 (CLOCK, KEY, SW, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, LEDR);
    input  wire         CLOCK;
    input  wire [ 1: 0] KEY;
    input  wire [ 9: 0] SW;
    output reg  [ 6: 0] HEX0;
    output reg  [ 6: 0] HEX1;
    output reg  [ 6: 0] HEX2;
    output reg  [ 6: 0] HEX3;
    output reg  [ 6: 0] HEX4;
    output reg  [ 6: 0] HEX5;
    output wire [ 9: 0] LEDR;

    wire a = ~(~SW[3] | SW[0] & SW[1] & ~(SW[2] & SW[3]) | SW[1]) & ~(~SW[1] & SW[3] | SW[0])&~(SW[1] | ~(SW[2]&~SW[3]));

    assign LEDR[0] = a;

endmodule
