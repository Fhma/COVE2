dtmc
                 //const double p12; 
  // const double p11;  
  // const double r12;  
  // const double r11;  
  // const double y1;  
  // const double y2;  
  // const double p41;  
  // const double p21;  
  // const double r41;  
  // const double p42;  
  // const double r21;  
  // const double p22;  
  // const double r42;  
  // const double r22;  
  // const double z1;  
  // const double x;  
  // const double z2;  
 
 const double P1_0_1;// = ((x)); 
  const double P1_0_2 ;// = (((-1)*x+1));
 const double P1_1_3;// = ((p11)); 
  const double P1_1_4 ;// = (((-1)*p11+1));
 const double P1_2_5;// = ((p21)); 
  const double P1_2_6 ;// = (((-1)*p21+1));
 const double P1_4_7;// = ((p41)); 
  const double P1_4_8 ;// = (((-1)*p41+1));
 const double P1_7_9;// = ((y2)); 
  const double P1_7_10 ;// = (((-1)*y1-y2+1));
  const double P1_7_11 ;// = ((y1));
 const double P1_8_12;// = ((z2)); 
  const double P1_8_13 ;// = (((-1)*z1-z2+1));
  const double P1_8_14 ;// = ((z1));
 const double P1_12_15;// = ((p42)); 
  const double P1_12_16 ;// = (((-1)*p42+1));
 const double P1_14_17;// = ((p22)); 
  const double P1_14_18 ;// = (((-1)*p22+1));
 const double P1_15_19;// = ((p12)); 
  const double P1_15_20 ;// = (((-1)*p12+1));
 const double P1_16_21;// = ((r11)); 
  const double P1_16_29 ;// = (((-1)*r11+1));
 const double P1_17_22;// = ((r21)); 
  const double P1_17_23 ;// = (((-1)*r21+1));
 const double P1_19_24;// = ((r41)); 
  const double P1_19_25 ;// = (((-1)*r41+1));
 const double P1_25_26;// = ((r42)); 
  const double P1_25_33 ;// = (((-1)*r42+1));
 const double P1_27_27;// = ((r22)); 
  const double P1_27_31 ;// = (((-1)*r22+1));
 const double P1_28_28;// = ((r12)); 
  const double P1_28_32 ;// = (((-1)*r12+1));

module f1 
s : [0 .. 32] init 0; 
 
 [] s=0 -> (P1_0_1):(s'=1) + (P1_0_2):(s'=4); 
 [] s=1 -> (P1_1_3):(s'=2) + (P1_1_4):(s'=16); 
 [] s=2 -> (P1_2_5):(s'=7) + (P1_2_6):(s'=17); 
 [] s=3 -> true; 
 [] s=4 -> (P1_4_7):(s'=8) + (P1_4_8):(s'=19); 
 [] s=5 -> true; 
 [] s=7 -> (P1_7_9):(s'=1) + (P1_7_10):(s'=3) + (P1_7_11):(s'=5); 
 [] s=8 -> (P1_8_12):(s'=0) + (P1_8_13):(s'=4) + (P1_8_14):(s'=5); 
 [] s=12 -> (P1_12_15):(s'=8) + (P1_12_16):(s'=25); 
 [] s=14 -> (P1_14_17):(s'=7) + (P1_14_18):(s'=27); 
 [] s=15 -> (P1_15_19):(s'=2) + (P1_15_20):(s'=28); 
 [] s=16 -> (P1_16_21):(s'=1) + (P1_16_29):(s'=29); 
 [] s=17 -> (P1_17_22):(s'=2) + (P1_17_23):(s'=14); 
 [] s=19 -> (P1_19_24):(s'=4) + (P1_19_25):(s'=12); 
 [] s=25 -> (P1_25_26):(s'=12) + (P1_25_33):(s'=32); 
 [] s=27 -> (P1_27_27):(s'=14) + (P1_27_31):(s'=30); 
 [] s=28 -> (P1_28_28):(s'=15) + (P1_28_32):(s'=31); 
 [] s=29 -> (1):(s'=15); 
 [] s=30 -> true; 
 [] s=31 -> true; 
 [] s=32 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s30 " = (s = 30); 
 label " prob_f1_s31 " = (s = 31); 
 label " prob_f1_s32 " = (s = 32); 
 