dtmc
  const double p32; 
  const double p31;  
  const double p12;  
  const double p11;  
  const double r;  
  const double x;  
  const double y;  
 
module f1 
s : [0 .. 15] init 0; 
 
 [] s=0 -> (((-1)*p11+1)):(s'=1) + ((p11)):(s'=2); 
 [] s=1 -> ((p12)):(s'=2) + (((-1)*p12+1)):(s'=3); 
 [] s=2 -> ((x)):(s'=4) + (((-1)*x+1)):(s'=9); 
 [] s=3 -> true; 
 [] s=4 -> true; 
 [] s=9 -> (((-1)*p31+1)):(s'=10) + ((p31)):(s'=12); 
 [] s=10 -> (((-1)*r*p32+r)):(s'=9) + ((r*p32-p32-r+1)):(s'=11) + ((p32)):(s'=12); 
 [] s=11 -> true; 
 [] s=12 -> ((y)):(s'=0) + (((-1)*y+1)):(s'=15); 
 [] s=15 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s4 " = (s = 4); 
 label " prob_f1_s11 " = (s = 11); 
 label " prob_f1_s15 " = (s = 15); 
 