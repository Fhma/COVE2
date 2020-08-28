dtmc
  const double p41; 
  const double p21;  
  const double p11;  
  const double z1;  
  const double x;  
  const double z2;  
  const double y1;  
  const double y2;  
 
module f1 
s : [0 .. 15] init 0; 
 
 [] s=0 -> ((x)):(s'=1) + (((-1)*x+1)):(s'=4); 
 [] s=1 -> ((p11)):(s'=2) + (((-1)*p11+1)):(s'=11); 
 [] s=2 -> ((p21)):(s'=7) + (((-1)*p21+1)):(s'=14); 
 [] s=4 -> ((p41)):(s'=8) + (((-1)*p41+1)):(s'=12); 
 [] s=7 -> ((y2)):(s'=1) + (( ((-1)*y1-y2+1) ) + ( (y1) )):(s'=13); 
 [] s=8 -> ((z2)):(s'=0) + (((-1)*z1-z2+1)):(s'=4) + ((z1)):(s'=15); 
 [] s=11 -> true; 
 [] s=12 -> true; 
 [] s=13 -> true; 
 [] s=14 -> true; 
 [] s=15 -> true; 
 
endmodule
label " prob_f1_s11 "= (s = 11); 
 label " prob_f1_s12 " = (s = 12); 
 label " prob_f1_s13 " = (s = 13); 
 label " prob_f1_s14 " = (s = 14); 
 label " prob_f1_s15 " = (s = 15); 
 