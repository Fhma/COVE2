dtmc
  const double p31; 
 
module f6 
s : [3 .. 15] init 3; 
 
 [] s=3 -> ((p31)):(s'=6) + (((-1)*p31+1)):(s'=15); 
 [] s=6 -> true; 
 [] s=15 -> true; 
 
endmodule
label " prob_f6_s6 "= (s = 6); 
 label " prob_f6_s15 " = (s = 15); 
 