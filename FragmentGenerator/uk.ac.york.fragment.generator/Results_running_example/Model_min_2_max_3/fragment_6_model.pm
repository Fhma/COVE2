dtmc
  const double r; 
  const double p32;  
  const double p31;  
 
module f6 
s : [9 .. 16] init 9; 
 
 [] s=9 -> (((-1)*p31+1)):(s'=10) + ((p31)):(s'=12); 
 [] s=10 -> (((-1)*r*p32+r)):(s'=9) + ((p32)):(s'=12) + ((r*p32-p32-r+1)):(s'=16); 
 [] s=12 -> true; 
 [] s=16 -> true; 
 
endmodule
label " prob_f6_s12 "= (s = 12); 
 label " prob_f6_s16 " = (s = 16); 
 