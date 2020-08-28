dtmc
  const double z1; 
  const double z2;  
  const double p41;  
 
module f5 
s : [8 .. 18] init 8; 
 
 [] s=8 -> (( ((-1)*z1-z2+1) ) * ( (p41) )):(s'=8) + ((z2)):(s'=16) + ((z1)):(s'=17) + (( ((-1)*z1-z2+1) ) * ( ((-1)*p41+1) )):(s'=18); 
 [] s=16 -> true; 
 [] s=17 -> true; 
 [] s=18 -> true; 
 
endmodule
label " prob_f5_s16 "= (s = 16); 
 label " prob_f5_s17 " = (s = 17); 
 label " prob_f5_s18 " = (s = 18); 
 