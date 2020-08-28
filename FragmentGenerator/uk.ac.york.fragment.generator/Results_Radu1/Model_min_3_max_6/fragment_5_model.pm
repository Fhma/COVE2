dtmc
  const double p31; 
 
module f5 
s : [3 .. 14] init 3; 
 
 [] s=3 -> ((p31)):(s'=6) + (((-1)*p31+1)):(s'=14); 
 [] s=6 -> true; 
 [] s=14 -> true; 
 
endmodule
label " prob_f5_s6 "= (s = 6); 
 label " prob_f5_s14 " = (s = 14); 
 