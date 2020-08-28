dtmc
  const double p11; 
  const double x;  
  const double y1;  
  const double y2;  
  const double p21;  
 
module f1 
s : [0 .. 13] init 0; 
 
 [] s=0 -> ((x)):(s'=1) + (((-1)*x+1)):(s'=4); 
 [] s=1 -> ((p11)):(s'=2) + (((-1)*p11+1)):(s'=11); 
 [] s=2 -> ((p21)):(s'=7) + (((-1)*p21+1)):(s'=13); 
 [] s=4 -> true; 
 [] s=7 -> ((y2)):(s'=1) + (( ((-1)*y1-y2+1) ) + ( (y1) )):(s'=12); 
 [] s=11 -> true; 
 [] s=12 -> true; 
 [] s=13 -> true; 
 
endmodule
label " prob_f1_s4 "= (s = 4); 
 label " prob_f1_s11 " = (s = 11); 
 label " prob_f1_s12 " = (s = 12); 
 label " prob_f1_s13 " = (s = 13); 
 