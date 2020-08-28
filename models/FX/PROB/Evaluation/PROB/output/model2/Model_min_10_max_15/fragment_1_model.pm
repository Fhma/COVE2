dtmc
  const double p12; 
  const double p11;  
  const double y1;  
  const double y2;  
  const double z12;  
  const double z11;  
  const double p41;  
  const double p21;  
  const double p42;  
  const double p22;  
  const double z41;  
  const double z1;  
  const double x;  
  const double z21;  
  const double z2;  
  const double z42;  
  const double z22;  
 
 const double PX_0_1 = ((x)); 
  const double PX_0_2 = (((-1)*x+1));
 const double PX_1_3 = ((z11)/(z11+z12)); 
  const double PX_1_4 = ((z12)/(z11+z12));
 const double PX_2_5 = ((z21)/(z21+z22)); 
  const double PX_2_6 = ((z22)/(z21+z22));
 const double PX_4_7 = ((z41)/(z41+z42)); 
  const double PX_4_8 = ((z42)/(z41+z42));
 const double PX_7_9 = ((y2)); 
  const double PX_7_10 = (((-1)*y1-y2+1));
  const double PX_7_11 = ((y1));
 const double PX_8_12 = ((z2)); 
  const double PX_8_13 = (((-1)*z1-z2+1));
  const double PX_8_14 = ((z1));
 const double PX_15_15 = ((p41)); 
  const double PX_15_21 = (((-1)*p41+1));
 const double PX_16_16 = ((p42)); 
  const double PX_16_22 = (((-1)*p42+1));
 const double PX_19_17 = ((p21)); 
  const double PX_19_23 = (((-1)*p21+1));
 const double PX_20_18 = ((p22)); 
  const double PX_20_24 = (((-1)*p22+1));
 const double PX_21_19 = ((p11)); 
  const double PX_21_25 = (((-1)*p11+1));
 const double PX_22_20 = ((p12)); 
  const double PX_22_26 = (((-1)*p12+1));

module f1 
s : [0 .. 28] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=4); 
 [] s=1 -> (PX_1_3):(s'=21) + (PX_1_4):(s'=22); 
 [] s=2 -> (PX_2_5):(s'=19) + (PX_2_6):(s'=20); 
 [] s=3 -> true; 
 [] s=4 -> (PX_4_7):(s'=15) + (PX_4_8):(s'=16); 
 [] s=5 -> true; 
 [] s=7 -> (PX_7_9):(s'=1) + (PX_7_10):(s'=3) + (PX_7_11):(s'=5); 
 [] s=8 -> (PX_8_12):(s'=0) + (PX_8_13):(s'=4) + (PX_8_14):(s'=5); 
 [] s=15 -> (PX_15_15):(s'=8) + (PX_15_21):(s'=23); 
 [] s=16 -> (PX_16_16):(s'=8) + (PX_16_22):(s'=24); 
 [] s=19 -> (PX_19_17):(s'=7) + (PX_19_23):(s'=25); 
 [] s=20 -> (PX_20_18):(s'=7) + (PX_20_24):(s'=26); 
 [] s=21 -> (PX_21_19):(s'=2) + (PX_21_25):(s'=27); 
 [] s=22 -> (PX_22_20):(s'=2) + (PX_22_26):(s'=28); 
 [] s=23 -> true; 
 [] s=24 -> true; 
 [] s=25 -> true; 
 [] s=26 -> true; 
 [] s=27 -> true; 
 [] s=28 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s23 " = (s = 23); 
 label " prob_f1_s24 " = (s = 24); 
 label " prob_f1_s25 " = (s = 25); 
 label " prob_f1_s26 " = (s = 26); 
 label " prob_f1_s27 " = (s = 27); 
 label " prob_f1_s28 " = (s = 28); 
 