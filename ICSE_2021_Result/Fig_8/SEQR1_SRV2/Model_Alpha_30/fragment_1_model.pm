dtmc
                             //const double p52; 
  // const double p51;  
  // const double r52;  
  // const double r51;  
  // const double p12;  
  // const double p11;  
  // const double r12;  
  // const double r11;  
  // const double p61;  
  // const double r61;  
  // const double p62;  
  // const double p21;  
  // const double r62;  
  // const double r21;  
  // const double p22;  
  // const double r22;  
  // const double p32;  
  // const double p31;  
  // const double r32;  
  // const double r31;  
  // const double y1;  
  // const double y2;  
  // const double p41;  
  // const double r41;  
  // const double p42;  
  // const double r42;  
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
 const double P1_6_13;// = (((-1)*p61+1)); 
  const double P1_6_49 ;// = ((p61));
 const double P1_7_14;// = ((y2)); 
  const double P1_7_15 ;// = (((-1)*y1-y2+1));
  const double P1_7_16 ;// = ((y1));
 const double P1_8_17;// = ((z2)); 
  const double P1_8_18 ;// = (((-1)*z1-z2+1));
  const double P1_8_19 ;// = ((z1));
 const double P1_10_20;// = (((-1)*p62+1)); 
  const double P1_10_50 ;// = ((p62));
 const double P1_11_21;// = ((p52)); 
  const double P1_11_22 ;// = (((-1)*p52+1));
 const double P1_12_23;// = ((p42)); 
  const double P1_12_24 ;// = (((-1)*p42+1));
 const double P1_13_25;// = ((p32)); 
  const double P1_13_26 ;// = (((-1)*p32+1));
 const double P1_14_27;// = ((p22)); 
  const double P1_14_28 ;// = (((-1)*p22+1));
 const double P1_15_29;// = ((p12)); 
  const double P1_15_30 ;// = (((-1)*p12+1));
 const double P1_16_31;// = ((r11)); 
  const double P1_16_32 ;// = (((-1)*r11+1));
 const double P1_17_33;// = ((r21)); 
  const double P1_17_34 ;// = (((-1)*r21+1));
 const double P1_18_35;// = ((r31)); 
  const double P1_18_36 ;// = (((-1)*r31+1));
 const double P1_19_37;// = ((r41)); 
  const double P1_19_38 ;// = (((-1)*r41+1));
 const double P1_20_39;// = ((r51)); 
  const double P1_20_40 ;// = (((-1)*r51+1));
 const double P1_21_41;// = ((r61)); 
  const double P1_21_42 ;// = (((-1)*r61+1));
 const double P1_23_43;// = ((r62)); 
  const double P1_23_56 ;// = (((-1)*r62+1));
 const double P1_24_44;// = ((r52)); 
  const double P1_24_55 ;// = (((-1)*r52+1));
 const double P1_25_45;// = ((r42)); 
  const double P1_25_53 ;// = (((-1)*r42+1));
 const double P1_26_46;// = ((r32)); 
  const double P1_26_54 ;// = (((-1)*r32+1));
 const double P1_27_47;// = ((r22)); 
  const double P1_27_51 ;// = (((-1)*r22+1));
 const double P1_28_48;// = ((r12)); 
  const double P1_28_52 ;// = (((-1)*r12+1));

module f1 
s : [0 .. 36] init 0; 
 
 [] s=0 -> (P1_0_1):(s'=1) + (P1_0_2):(s'=4); 
 [] s=1 -> (P1_1_3):(s'=2) + (P1_1_4):(s'=16); 
 [] s=2 -> (P1_2_5):(s'=7) + (P1_2_6):(s'=17); 
 [] s=3 -> (P1_3_7):(s'=6) + (P1_3_8):(s'=18); 
 [] s=4 -> (P1_4_9):(s'=8) + (P1_4_10):(s'=19); 
 [] s=5 -> (P1_5_11):(s'=6) + (P1_5_12):(s'=20); 
 [] s=6 -> (P1_6_13):(s'=21) + (P1_6_49):(s'=29); 
 [] s=7 -> (P1_7_14):(s'=1) + (P1_7_15):(s'=3) + (P1_7_16):(s'=5); 
 [] s=8 -> (P1_8_17):(s'=0) + (P1_8_18):(s'=4) + (P1_8_19):(s'=5); 
 [] s=10 -> (P1_10_20):(s'=23) + (P1_10_50):(s'=30); 
 [] s=11 -> (P1_11_21):(s'=6) + (P1_11_22):(s'=24); 
 [] s=12 -> (P1_12_23):(s'=8) + (P1_12_24):(s'=25); 
 [] s=13 -> (P1_13_25):(s'=6) + (P1_13_26):(s'=26); 
 [] s=14 -> (P1_14_27):(s'=7) + (P1_14_28):(s'=27); 
 [] s=15 -> (P1_15_29):(s'=2) + (P1_15_30):(s'=28); 
 [] s=16 -> (P1_16_31):(s'=1) + (P1_16_32):(s'=15); 
 [] s=17 -> (P1_17_33):(s'=2) + (P1_17_34):(s'=14); 
 [] s=18 -> (P1_18_35):(s'=3) + (P1_18_36):(s'=13); 
 [] s=19 -> (P1_19_37):(s'=4) + (P1_19_38):(s'=12); 
 [] s=20 -> (P1_20_39):(s'=5) + (P1_20_40):(s'=11); 
 [] s=21 -> (P1_21_41):(s'=6) + (P1_21_42):(s'=10); 
 [] s=23 -> (P1_23_43):(s'=10) + (P1_23_56):(s'=36); 
 [] s=24 -> (P1_24_44):(s'=11) + (P1_24_55):(s'=35); 
 [] s=25 -> (P1_25_45):(s'=12) + (P1_25_53):(s'=33); 
 [] s=26 -> (P1_26_46):(s'=13) + (P1_26_54):(s'=34); 
 [] s=27 -> (P1_27_47):(s'=14) + (P1_27_51):(s'=31); 
 [] s=28 -> (P1_28_48):(s'=15) + (P1_28_52):(s'=32); 
 [] s=29 -> true; 
 [] s=30 -> true; 
 [] s=31 -> true; 
 [] s=32 -> true; 
 [] s=33 -> true; 
 [] s=34 -> true; 
 [] s=35 -> true; 
 [] s=36 -> true; 
 
endmodule
label " prob_f1_s29 "= (s = 29); 
 label " prob_f1_s30 " = (s = 30); 
 label " prob_f1_s31 " = (s = 31); 
 label " prob_f1_s32 " = (s = 32); 
 label " prob_f1_s33 " = (s = 33); 
 label " prob_f1_s34 " = (s = 34); 
 label " prob_f1_s35 " = (s = 35); 
 label " prob_f1_s36 " = (s = 36); 
 