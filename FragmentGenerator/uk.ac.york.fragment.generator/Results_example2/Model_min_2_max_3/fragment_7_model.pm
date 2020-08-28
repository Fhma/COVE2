dtmc
  const double p41; 
  const double p42;  
  const double z41;  
  const double z1;  
  const double z2;  
  const double z42;  
 
module f7 
s : [8 .. 28] init 8; 
 
 [] s=8 -> (( ((-1)*z1-z2+1) ) * ( (z41)/(z41+z42) )):(s'=15) + (( ((-1)*z1-z2+1) ) * ( (z42)/(z41+z42) )):(s'=16) + ((z2)):(s'=25) + ((z1)):(s'=26); 
 [] s=15 -> ((p41)):(s'=8) + (((-1)*p41+1)):(s'=27); 
 [] s=16 -> ((p42)):(s'=8) + (((-1)*p42+1)):(s'=28); 
 [] s=25 -> true; 
 [] s=26 -> true; 
 [] s=27 -> true; 
 [] s=28 -> true; 
 
endmodule
label " prob_f7_s25 "= (s = 25); 
 label " prob_f7_s26 " = (s = 26); 
 label " prob_f7_s27 " = (s = 27); 
 label " prob_f7_s28 " = (s = 28); 
 