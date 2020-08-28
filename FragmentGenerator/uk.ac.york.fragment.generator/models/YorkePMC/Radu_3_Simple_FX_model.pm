dtmc

const double p1;
const double p2;
const double p3;
const double p4;
const double p5;
const double p6;



module Rudu_example3
s:[0..9] init 0;

[] s = 0 -> p1:(s'=1) + (1-p1):(s'=2);
[] s = 1 -> p2:(s'=4) + (1-p2):(s'= 8);
[] s = 2 -> p3:(s'=1) + (1-p3):(s'=3);
[] s = 3 -> 1:(s'=4);
[] s = 4 -> 1:(s'=5);
[] s = 5 -> p4:(s'=6)+ (1-p4):(s'=7);
[] s = 6 -> p5:(s'=4) + (1-p5):(s'=7);
[] s = 7 -> (1-p6):(s'=8) + p6:(s'=9);
[] s = 8 -> 1:(s'=8);
[] s = 9 -> 1:(s'=9);

endmodule
