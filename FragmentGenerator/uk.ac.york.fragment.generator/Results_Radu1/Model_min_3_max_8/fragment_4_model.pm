dtmc
  const double p31; 
 
module f4 
s : [3 .. 16] init 3; 
 
 [] s=3 -> ((p31)):(s'=6) + (((-1)*p31+1)):(s'=16); 
 [] s=6 -> true; 
 [] s=16 -> true; 
 
endmodule
label " prob_f4_s6 "= (s = 6); 
 label " prob_f4_s16 " = (s = 16); 
 