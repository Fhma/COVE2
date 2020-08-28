dtmc

const double p1;
const double p2;



module xinwei_incoming
s:[0..5] init 0;

[] s = 0 -> 1:(s'=1);
[] s = 1 -> p1:(s'=2) + (1-p1):(s'=4);
[] s = 2 -> 1:(s'=2);
[] s = 3 -> p2:(s'=1) + (1-p2):(s'=5);
[] s = 4 -> 1:(s'=4);
[] s = 5 -> 1:(s'=5);



endmodule
