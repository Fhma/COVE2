dtmc
  const double y1; 
  const double y2;  
  const double z12;  
  const double z11;  
 
module f6 
s : [7 .. 24] init 7; 
 
 [] s=7 -> (( (y2) ) * ( (z11)/(z11+z12) )):(s'=21) + (( (y2) ) * ( (z12)/(z11+z12) )):(s'=22) + (((-1)*y1-y2+1)):(s'=23) + ((y1)):(s'=24); 
 [] s=21 -> true; 
 [] s=22 -> true; 
 [] s=23 -> true; 
 [] s=24 -> true; 
 
endmodule
label " prob_f6_s21 "= (s = 21); 
 label " prob_f6_s22 " = (s = 22); 
 label " prob_f6_s23 " = (s = 23); 
 label " prob_f6_s24 " = (s = 24); 
 