dtmc
  const double p52; 
 
module f4 
s : [13 .. 27] init 13; 
 
 [] s=13 -> (((-1)*p52+1)):(s'=14) + ((p52)):(s'=27); 
 [] s=14 -> true; 
 [] s=27 -> true; 
 
endmodule
label " prob_f4_s14 "= (s = 14); 
 label " prob_f4_s27 " = (s = 27); 
 