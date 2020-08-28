dtmc
  const double p22; 
  const double p21;  
  const double alpha1;  
 
module f2 
s : [4 .. 8] init 4; 
 
 [] s=4 -> ((alpha1)):(s'=5) + (((-1)*alpha1+1)):(s'=6); 
 [] s=5 -> ((p21)):(s'=7) + (((-1)*p21+1)):(s'=8); 
 [] s=6 -> ((p22)):(s'=7) + (((-1)*p22+1)):(s'=8); 
 [] s=7 -> true; 
 [] s=8 -> true; 
 
endmodule
label " prob_f2_s7 "= (s = 7); 
 label " prob_f2_s8 " = (s = 8); 
 