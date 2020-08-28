dtmc
  const double p41; 
  const double p21;  
  const double p42;  
  const double p12;  
  const double p11;  
  const double p22;  
  const double z1;  
  const double x;  
  const double y1;  
  const double z2;  
  const double y2;  
 
module f1 
s : [0 .. 19] init 0; 
 
 [] s=0 -> ((x)):(s'=1) + (((-1)*x+1)):(s'=4); 
 [] s=1 -> ((p11)):(s'=2) + (((-1)*p11+1)):(s'=16); 
 [] s=2 -> ((p21)):(s'=7) + (((-1)*p21+1)):(s'=15); 
 [] s=3 -> true; 
 [] s=4 -> ((p41)):(s'=8) + (((-1)*p41+1)):(s'=13); 
 [] s=5 -> true; 
 [] s=7 -> ((y2)):(s'=1) + (((-1)*y1-y2+1)):(s'=3) + ((y1)):(s'=5); 
 [] s=8 -> ((z2)):(s'=0) + (((-1)*z1-z2+1)):(s'=4) + ((z1)):(s'=5); 
 [] s=13 -> ((p42)):(s'=8) + (((-1)*p42+1)):(s'=18); 
 [] s=15 -> ((p22)):(s'=7) + (((-1)*p22+1)):(s'=19); 
 [] s=16 -> ((p12)):(s'=2) + (((-1)*p12+1)):(s'=17); 
 [] s=17 -> true; 
 [] s=18 -> true; 
 [] s=19 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s17 " = (s = 17); 
 label " prob_f1_s18 " = (s = 18); 
 label " prob_f1_s19 " = (s = 19); 
 