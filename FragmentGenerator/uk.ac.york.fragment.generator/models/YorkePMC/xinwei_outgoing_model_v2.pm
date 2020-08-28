dtmc

const double p1;
const double p2;
const double p3;
const double p4;
const double p5;
const double p6;
const double p7;

module xinwei_outgoing
s:[0..5] init 0;

[] s = 0 -> p1:(s'=1) + p2:(s'=2);
[] s = 1 -> p3:(s'=2) + p4:(s'= 3)+ p5:(s'= 4)+p6:(s'=0)+p7:(s'=5);
[] s = 2 -> 1:(s'=4);
[] s = 3 -> 1:(s'=3);
[] s = 4 -> 1:(s'=4);
[] s = 5 -> 1:(s'=5);
endmodule
