dtmc
                    //const double r2; 
  // const double r4;  
  // const double p12;  
  // const double p11;  
  // const double y1;  
  // const double y2;  
  // const double z12;  
  // const double z11;  
  // const double p41;  
  // const double p21;  
  // const double p42;  
  // const double p22;  
  // const double z41;  
  // const double z1;  
  // const double x;  
  // const double z21;  
  // const double z2;  
  // const double z42;  
  // const double z22;  
  // const double r1;  
 
 const double P1_0_1;// = ((x)); 
  const double P1_0_2 ;// = (((-1)*x+1));
 const double P1_1_3;// = ((z11)/(z11+z12)); 
  const double P1_1_4 ;// = ((z12)/(z11+z12));
 const double P1_2_5;// = ((z21)/(z21+z22)); 
  const double P1_2_6 ;// = ((z22)/(z21+z22));
 const double P1_4_7;// = ((z41)/(z41+z42)); 
  const double P1_4_8 ;// = ((z42)/(z41+z42));
 const double P1_7_9;// = ((y2)); 
  const double P1_7_10 ;// = (((-1)*y1-y2+1));
  const double P1_7_11 ;// = ((y1));
 const double P1_8_12;// = ((z2)); 
  const double P1_8_13 ;// = (((-1)*z1-z2+1));
  const double P1_8_14 ;// = ((z1));
 const double P1_14_15;// = ((p41)); 
  const double P1_14_16 ;// = (((-1)*p41+1));
 const double P1_15_17;// = ((p42)); 
  const double P1_15_18 ;// = (((-1)*p42+1));
 const double P1_18_19;// = ((p21)); 
  const double P1_18_20 ;// = (((-1)*p21+1));
 const double P1_19_21;// = ((p22)); 
  const double P1_19_22 ;// = (((-1)*p22+1));
 const double P1_20_23;// = (((-1)*p11+1)); 
  const double P1_20_29 ;// = ((p11));
 const double P1_21_24;// = (((-1)*p12+1)); 
  const double P1_21_31 ;// = ((p12));
 const double P1_22_25;// = ((r1)); 
  const double P1_22_28 ;// = (((-1)*r1+1));
 const double P1_23_26;// = ((r2)); 
  const double P1_23_34 ;// = (((-1)*r2+1));
 const double P1_25_27;// = ((r4)); 
  const double P1_25_33 ;// = (((-1)*r4+1));

module f1 
s : [0 .. 33] init 0; 
 
 [] s=0 -> (P1_0_1):(s'=1) + (P1_0_2):(s'=4); 
 [] s=1 -> (P1_1_3):(s'=20) + (P1_1_4):(s'=21); 
 [] s=2 -> (P1_2_5):(s'=18) + (P1_2_6):(s'=19); 
 [] s=3 -> true; 
 [] s=4 -> (P1_4_7):(s'=14) + (P1_4_8):(s'=15); 
 [] s=5 -> true; 
 [] s=7 -> (P1_7_9):(s'=1) + (P1_7_10):(s'=3) + (P1_7_11):(s'=5); 
 [] s=8 -> (P1_8_12):(s'=0) + (P1_8_13):(s'=4) + (P1_8_14):(s'=5); 
 [] s=14 -> (P1_14_15):(s'=8) + (P1_14_16):(s'=25); 
 [] s=15 -> (P1_15_17):(s'=8) + (P1_15_18):(s'=25); 
 [] s=18 -> (P1_18_19):(s'=7) + (P1_18_20):(s'=23); 
 [] s=19 -> (P1_19_21):(s'=7) + (P1_19_22):(s'=23); 
 [] s=20 -> (P1_20_23):(s'=22) + (P1_20_29):(s'=30); 
 [] s=21 -> (P1_21_24):(s'=22) + (P1_21_31):(s'=31); 
 [] s=22 -> (P1_22_25):(s'=1) + (P1_22_28):(s'=29); 
 [] s=23 -> (P1_23_26):(s'=2) + (P1_23_34):(s'=33); 
 [] s=25 -> (P1_25_27):(s'=4) + (P1_25_33):(s'=32); 
 [] s=29 -> true; 
 [] s=30 -> (1):(s'=2); 
 [] s=31 -> (1):(s'=2); 
 [] s=32 -> true; 
 [] s=33 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s29 " = (s = 29); 
 label " prob_f1_s32 " = (s = 32); 
 label " prob_f1_s33 " = (s = 33); 
 