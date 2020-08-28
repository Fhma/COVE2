dtmc
  const double p12; 
  const double p11;  
  const double r12;  
  const double r11;  
  const double y1;  
  const double y2;  
  const double p41;  
  const double p21;  
  const double r41;  
  const double p42;  
  const double r21;  
  const double p22;  
  const double r42;  
  const double r22;  
  const double z1;  
  const double x;  
  const double z2;  
 
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
 const double PX_12_15 = ((p42)); 
  const double PX_12_16 = (((-1)*p42+1));
 const double PX_14_17 = ((p22)); 
  const double PX_14_18 = (((-1)*p22+1));
 const double PX_15_19 = ((p12)); 
  const double PX_15_20 = (((-1)*p12+1));
 const double PX_16_21 = ((r11)); 
  const double PX_16_22 = (((-1)*r11+1));
 const double PX_17_23 = ((r21)); 
  const double PX_17_24 = (((-1)*r21+1));
 const double PX_19_25 = ((r41)); 
  const double PX_19_26 = (((-1)*r41+1));
 const double PX_25_27 = ((r42)); 
  const double PX_25_32 = (((-1)*r42+1));
 const double PX_27_28 = ((r22)); 
  const double PX_27_30 = (((-1)*r22+1));
 const double PX_28_29 = ((r12)); 
  const double PX_28_31 = (((-1)*r12+1));

module f1 
s : [0 .. 31] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=4); 
 [] s=1 -> (PX_1_3):(s'=2) + (PX_1_4):(s'=16); 
 [] s=2 -> (PX_2_5):(s'=7) + (PX_2_6):(s'=17); 
 [] s=3 -> true; 
 [] s=4 -> (PX_4_7):(s'=8) + (PX_4_8):(s'=19); 
 [] s=5 -> true; 
 [] s=7 -> (PX_7_9):(s'=1) + (PX_7_10):(s'=3) + (PX_7_11):(s'=5); 
 [] s=8 -> (PX_8_12):(s'=0) + (PX_8_13):(s'=4) + (PX_8_14):(s'=5); 
 [] s=12 -> (PX_12_15):(s'=8) + (PX_12_16):(s'=25); 
 [] s=14 -> (PX_14_17):(s'=7) + (PX_14_18):(s'=27); 
 [] s=15 -> (PX_15_19):(s'=2) + (PX_15_20):(s'=28); 
 [] s=16 -> (PX_16_21):(s'=1) + (PX_16_22):(s'=15); 
 [] s=17 -> (PX_17_23):(s'=2) + (PX_17_24):(s'=14); 
 [] s=19 -> (PX_19_25):(s'=4) + (PX_19_26):(s'=12); 
 [] s=25 -> (PX_25_27):(s'=12) + (PX_25_32):(s'=31); 
 [] s=27 -> (PX_27_28):(s'=14) + (PX_27_30):(s'=29); 
 [] s=28 -> (PX_28_29):(s'=15) + (PX_28_31):(s'=30); 
 [] s=29 -> true; 
 [] s=30 -> true; 
 [] s=31 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s29 " = (s = 29); 
 label " prob_f1_s30 " = (s = 30); 
 label " prob_f1_s31 " = (s = 31); 
 