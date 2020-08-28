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
 
 const double PX_0_1 = ((x)); 
  const double PX_0_2 = (((-1)*x+1));
 const double PX_1_3 = ((p11)); 
  const double PX_1_4 = (((-1)*p11+1));
 const double PX_2_5 = ((p21)); 
  const double PX_2_6 = (((-1)*p21+1));
 const double PX_4_7 = ((p41)); 
  const double PX_4_8 = (((-1)*p41+1));
 const double PX_7_9 = ((y2)); 
  const double PX_7_10 = (((-1)*y1-y2+1));
  const double PX_7_11 = ((y1));
 const double PX_8_12 = ((z2)); 
  const double PX_8_13 = (((-1)*z1-z2+1));
  const double PX_8_14 = ((z1));
 const double PX_13_15 = ((p42)); 
  const double PX_13_19 = (((-1)*p42+1));
 const double PX_15_16 = ((p22)); 
  const double PX_15_20 = (((-1)*p22+1));
 const double PX_16_17 = ((p12)); 
  const double PX_16_18 = (((-1)*p12+1));

module f1 
s : [0 .. 19] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=4); 
 [] s=1 -> (PX_1_3):(s'=2) + (PX_1_4):(s'=16); 
 [] s=2 -> (PX_2_5):(s'=7) + (PX_2_6):(s'=15); 
 [] s=3 -> true; 
 [] s=4 -> (PX_4_7):(s'=8) + (PX_4_8):(s'=13); 
 [] s=5 -> true; 
 [] s=7 -> (PX_7_9):(s'=1) + (PX_7_10):(s'=3) + (PX_7_11):(s'=5); 
 [] s=8 -> (PX_8_12):(s'=0) + (PX_8_13):(s'=4) + (PX_8_14):(s'=5); 
 [] s=13 -> (PX_13_15):(s'=8) + (PX_13_19):(s'=18); 
 [] s=15 -> (PX_15_16):(s'=7) + (PX_15_20):(s'=19); 
 [] s=16 -> (PX_16_17):(s'=2) + (PX_16_18):(s'=17); 
 [] s=17 -> true; 
 [] s=18 -> true; 
 [] s=19 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s17 " = (s = 17); 
 label " prob_f1_s18 " = (s = 18); 
 label " prob_f1_s19 " = (s = 19); 
 