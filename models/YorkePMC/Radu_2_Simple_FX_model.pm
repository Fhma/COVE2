dtmc

const double p1;
const double p2;
const double p3;
const double p4;
const double p5;
const double p6;
const double p7;
const double p8;
const double p9;
const double p10;
const double p11;
const double p12;
const double p13;
const double p14;


module Rudu_example2
s:[0..8] init 0;

[] s = 0 -> p1:(s'=1) + p2:(s'=2);
[] s = 1 -> p3:(s'=7) + p4:(s'= 3);
[] s = 2 -> p5:(s'=1);
[] s = 3 -> p6:(s'=5);
[] s = 4 -> p7:(s'=6)+ p8:(s'=3);
[] s = 5 -> p9:(s'=4) + p10:(s'=6);
[] s = 6 -> p11:(s'=7) + p12:(s'=8);
[] s = 7 -> p13:(s'=8) + p14:(s'=7);
[] s = 8 -> 1:(s'=8);
endmodule
