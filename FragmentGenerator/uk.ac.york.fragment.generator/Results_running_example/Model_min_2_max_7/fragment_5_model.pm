dtmc
  const double r; 
  const double p32;  
  const double p31;  
 
module f5 
s : [9 .. 12] init 9; 
 
 [] s=9 -> (((-1)*p31+1)):(s'=10) + ((p31)):(s'=12); 
 [] s=10 -> (((-1)*r*p32+r)):(s'=9) + ((r*p32-p32-r+1)):(s'=11) + ((p32)):(s'=12); 
 [] s=11 -> true; 
 [] s=12 -> true; 
 
endmodule
label " prob_f5_s11 "= (s = 11); 
 label " prob_f5_s12 " = (s = 12); 
 