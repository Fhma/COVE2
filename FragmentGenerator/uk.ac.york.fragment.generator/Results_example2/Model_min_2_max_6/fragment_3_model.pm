dtmc
  const double p41; 
  const double p42;  
  const double z41;  
  const double z52;  
  const double z1;  
  const double z51;  
  const double z2;  
  const double z42;  
 
module f3 
s : [8 .. 29] init 8; 
 
 [] s=8 -> (( ((-1)*z1-z2+1) ) * ( (z41)/(z41+z42) )):(s'=15) + (( ((-1)*z1-z2+1) ) * ( (z42)/(z41+z42) )):(s'=16) + (( (z1) ) * ( (z51)/(z51+z52) )):(s'=13) + (( (z1) ) * ( (z52)/(z51+z52) )):(s'=14) + ((z2)):(s'=27); 
 [] s=13 -> true; 
 [] s=14 -> true; 
 [] s=15 -> ((p41)):(s'=8) + (((-1)*p41+1)):(s'=28); 
 [] s=16 -> ((p42)):(s'=8) + (((-1)*p42+1)):(s'=29); 
 [] s=27 -> true; 
 [] s=28 -> true; 
 [] s=29 -> true; 
 
endmodule
label " prob_f3_s13 "= (s = 13); 
 label " prob_f3_s14 " = (s = 14); 
 label " prob_f3_s27 " = (s = 27); 
 label " prob_f3_s28 " = (s = 28); 
 label " prob_f3_s29 " = (s = 29); 
 