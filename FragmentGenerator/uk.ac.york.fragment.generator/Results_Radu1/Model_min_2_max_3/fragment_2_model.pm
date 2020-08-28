dtmc
  const double p11; 
  const double y1;  
  const double y2;  
  const double p21;  
 
module f2 
s : [2 .. 14] init 2; 
 
 [] s=2 -> ((p21)):(s'=7) + (((-1)*p21+1)):(s'=11); 
 [] s=7 -> (( (y2) ) * ( (p11) )):(s'=2) + (((-1)*y1-y2+1)):(s'=12) + ((y1)):(s'=13) + (( (y2) ) * ( ((-1)*p11+1) )):(s'=14); 
 [] s=11 -> true; 
 [] s=12 -> true; 
 [] s=13 -> true; 
 [] s=14 -> true; 
 
endmodule
label " prob_f2_s11 "= (s = 11); 
 label " prob_f2_s12 " = (s = 12); 
 label " prob_f2_s13 " = (s = 13); 
 label " prob_f2_s14 " = (s = 14); 
 