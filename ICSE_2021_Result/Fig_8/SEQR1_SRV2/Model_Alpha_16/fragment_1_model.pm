dtmc
                     //const double p51; 
  // const double p31;  
  // const double r51;  
  // const double p12;  
  // const double p11;  
  // const double r31;  
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
 const double P1_3_7;// = ((p31)); 
  const double P1_3_8 ;// = (((-1)*p31+1));
 const double P1_4_9;// = ((p41)); 
  const double P1_4_10 ;// = (((-1)*p41+1));
 const double P1_5_11;// = ((p51)); 
  const double P1_5_12 ;// = (((-1)*p51+1));
 const double P1_7_13;// = ((y2)); 
  const double P1_7_14 ;// = (((-1)*y1-y2+1));
  const double P1_7_15 ;// = ((y1));
 const double P1_8_16;// = ((z2)); 
  const double P1_8_17 ;// = (((-1)*z1-z2+1));
  const double P1_8_18 ;// = ((z1));
 const double P1_12_19;// = ((p42)); 
  const double P1_12_20 ;// = (((-1)*p42+1));
 const double P1_14_21;// = ((p22)); 
  const double P1_14_22 ;// = (((-1)*p22+1));
 const double P1_15_23;// = ((p12)); 
  const double P1_15_24 ;// = (((-1)*p12+1));
 const double P1_16_25;// = ((r11)); 
  const double P1_16_26 ;// = (((-1)*r11+1));
 const double P1_17_27;// = ((r21)); 
  const double P1_17_28 ;// = (((-1)*r21+1));
 const double P1_18_29;// = ((r31)); 
  const double P1_18_37 ;// = (((-1)*r31+1));
 const double P1_19_30;// = ((r41)); 
  const double P1_19_31 ;// = (((-1)*r41+1));
 const double P1_20_32;// = ((r51)); 
  const double P1_20_38 ;// = (((-1)*r51+1));
 const double P1_25_33;// = ((r42)); 
  const double P1_25_40 ;// = (((-1)*r42+1));
 const double P1_27_34;// = ((r22)); 
  const double P1_27_36 ;// = (((-1)*r22+1));
 const double P1_28_35;// = ((r12)); 
  const double P1_28_39 ;// = (((-1)*r12+1));

module f1 
s : [0 .. 33] init 0; 
 
 [] s=0 -> (P1_0_1):(s'=1) + (P1_0_2):(s'=4); 
 [] s=1 -> (P1_1_3):(s'=2) + (P1_1_4):(s'=16); 
 [] s=2 -> (P1_2_5):(s'=7) + (P1_2_6):(s'=17); 
 [] s=3 -> (P1_3_7):(s'=6) + (P1_3_8):(s'=18); 
 [] s=4 -> (P1_4_9):(s'=8) + (P1_4_10):(s'=19); 
 [] s=5 -> (P1_5_11):(s'=6) + (P1_5_12):(s'=20); 
 [] s=6 -> true; 
 [] s=7 -> (P1_7_13):(s'=1) + (P1_7_14):(s'=3) + (P1_7_15):(s'=5); 
 [] s=8 -> (P1_8_16):(s'=0) + (P1_8_17):(s'=4) + (P1_8_18):(s'=5); 
 [] s=12 -> (P1_12_19):(s'=8) + (P1_12_20):(s'=25); 
 [] s=14 -> (P1_14_21):(s'=7) + (P1_14_22):(s'=27); 
 [] s=15 -> (P1_15_23):(s'=2) + (P1_15_24):(s'=28); 
 [] s=16 -> (P1_16_25):(s'=1) + (P1_16_26):(s'=15); 
 [] s=17 -> (P1_17_27):(s'=2) + (P1_17_28):(s'=14); 
 [] s=18 -> (P1_18_29):(s'=3) + (P1_18_37):(s'=30); 
 [] s=19 -> (P1_19_30):(s'=4) + (P1_19_31):(s'=12); 
 [] s=20 -> (P1_20_32):(s'=5) + (P1_20_38):(s'=31); 
 [] s=25 -> (P1_25_33):(s'=12) + (P1_25_40):(s'=33); 
 [] s=27 -> (P1_27_34):(s'=14) + (P1_27_36):(s'=29); 
 [] s=28 -> (P1_28_35):(s'=15) + (P1_28_39):(s'=32); 
 [] s=29 -> true; 
 [] s=30 -> true; 
 [] s=31 -> true; 
 [] s=32 -> true; 
 [] s=33 -> true; 
 
endmodule
label " prob_f1_s6 "= (s = 6); 
 label " prob_f1_s29 " = (s = 29); 
 label " prob_f1_s30 " = (s = 30); 
 label " prob_f1_s31 " = (s = 31); 
 label " prob_f1_s32 " = (s = 32); 
 label " prob_f1_s33 " = (s = 33); 
 