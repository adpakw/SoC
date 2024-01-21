module lab1
(
input [3:0] key,
output [0:0] LED
);
wire a = ~(~key [3] | key [0] & key [1] & ~(key [2] & key [3]) | key [1]) & ~(~key [1] & key [3] | key [0])&~(key [1] | ~(key [2]&~key [3]));

assign LED [0] = a;

endmodule
