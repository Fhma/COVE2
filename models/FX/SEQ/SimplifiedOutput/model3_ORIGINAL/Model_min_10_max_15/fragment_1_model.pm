dtmc
  const double p12; 
  const double p11;  
  const double p13;  
  const double y1;  
  const double y2;  
  const double p41;  
  const double p21;  
  const double p43;  
  const double p42;  
  const double p23;  
  const double p22;  
  const double z1;  
  const double x;  
  const double z2;  
 
module f1 
s : [0 .. 25] init 0; 
 
 [] s=0 -> ((x)):(s'=1) + (((-1)*x+1)):(s'=4); 
 [] s=1 -> ((p11)):(s'=2) + (((-1)*p11+1)):(s'=21); 
 [] s=2 -> ((p21)):(s'=7) + (((-1)*p21+1)):(s'=19); 
 [] s=3 -> true; 
 [] s=4 -> ((p41)):(s'=8) + (((-1)*p41+1)):(s'=15); 
 [] s=5 -> true; 
 [] s=7 -> ((y2)):(s'=1) + (((-1)*y1-y2+1)):(s'=3) + ((y1)):(s'=5); 
 [] s=8 -> ((z2)):(s'=0) + (((-1)*z1-z2+1)):(s'=4) + ((z1)):(s'=5); 
 [] s=15 -> ((p42)):(s'=8) + (((-1)*p42+1)):(s'=16); 
 [] s=16 -> ((p43)):(s'=8) + (((-1)*p43+1)):(s'=25); 
 [] s=19 -> ((p22)):(s'=7) + (((-1)*p22+1)):(s'=20); 
 [] s=20 -> ((p23)):(s'=7) + (((-1)*p23+1)):(s'=23); 
 [] s=21 -> ((p12)):(s'=2) + (((-1)*p12+1)):(s'=22); 
 [] s=22 -> ((p13)):(s'=2) + (((-1)*p13+1)):(s'=24); 
 [] s=23 -> true; 
 [] s=24 -> true; 
 [] s=25 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s23 " = (s = 23); 
 label " prob_f1_s24 " = (s = 24); 
 label " prob_f1_s25 " = (s = 25); 
 