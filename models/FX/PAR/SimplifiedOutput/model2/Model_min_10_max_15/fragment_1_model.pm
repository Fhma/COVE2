dtmc
  //const double p12; 
  //const double p11;  
  //const double y1;  
  //const double y2;  
  //const double p41;  
  //const double p21;  
  //const double p42;  
  //const double p22;  
  //const double z1;  
  //const double x;  
  //const double z2;  
 
 const double P1_0_1;// = ((x)); 
  const double P1_0_2 ;// = (((-1)*x+1));
 const double P1_1_3;// = ((p12*p11)); 
  const double P1_1_4 ;// = (((-1)*p12*p11+p11));
  const double P1_1_5 ;// = (((-1)*p12*p11+p12));
  const double P1_1_6 ;// = ((p12*p11-p11-p12+1));
 const double P1_2_7;// = ((p22*p21)); 
  const double P1_2_8 ;// = (((-1)*p22*p21+p21));
  const double P1_2_9 ;// = (((-1)*p22*p21+p22));
  const double P1_2_29 ;// = ((p22*p21-p21-p22+1));
 const double P1_4_10;// = ((p42*p41)); 
  const double P1_4_11 ;// = (((-1)*p42*p41+p41));
  const double P1_4_12 ;// = (((-1)*p42*p41+p42));
  const double P1_4_13 ;// = ((p42*p41-p41-p42+1));
 const double P1_7_14;// = ((y2)); 
  const double P1_7_15 ;// = (((-1)*y1-y2+1));
  const double P1_7_16 ;// = ((y1));
 const double P1_8_17;// = ((z2)); 
  const double P1_8_18 ;// = (((-1)*z1-z2+1));
  const double P1_8_19 ;// = ((z1));
 const double P1_16_20;// = ((1)); 
 const double P1_17_21;// = ((1)); 
 const double P1_18_22;// = ((1)); 
 const double P1_20_23;// = ((1)); 
 const double P1_21_24;// = ((1)); 
 const double P1_22_25;// = ((1)); 
 const double P1_28_26;// = ((1)); 
 const double P1_29_27;// = ((1)); 
 const double P1_30_28;// = ((1)); 

module f1 
s : [0 .. 40] init 0; 
 
 [] s=0 -> (P1_0_1):(s'=1) + (P1_0_2):(s'=4); 
 [] s=1 -> (P1_1_3):(s'=16) + (P1_1_4):(s'=17) + (P1_1_5):(s'=18) + (P1_1_6):(s'=19); 
 [] s=2 -> (P1_2_7):(s'=20) + (P1_2_8):(s'=21) + (P1_2_9):(s'=22) + (P1_2_29):(s'=40); 
 [] s=3 -> true; 
 [] s=4 -> (P1_4_10):(s'=28) + (P1_4_11):(s'=29) + (P1_4_12):(s'=30) + (P1_4_13):(s'=31); 
 [] s=5 -> true; 
 [] s=7 -> (P1_7_14):(s'=1) + (P1_7_15):(s'=3) + (P1_7_16):(s'=5); 
 [] s=8 -> (P1_8_17):(s'=0) + (P1_8_18):(s'=4) + (P1_8_19):(s'=5); 
 [] s=16 -> (P1_16_20):(s'=2); 
 [] s=17 -> (P1_17_21):(s'=2); 
 [] s=18 -> (P1_18_22):(s'=2); 
 [] s=19 -> true; 
 [] s=20 -> (P1_20_23):(s'=7); 
 [] s=21 -> (P1_21_24):(s'=7); 
 [] s=22 -> (P1_22_25):(s'=7); 
 [] s=28 -> (P1_28_26):(s'=8); 
 [] s=29 -> (P1_29_27):(s'=8); 
 [] s=30 -> (P1_30_28):(s'=8); 
 [] s=31 -> true; 
 [] s=40 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s19 " = (s = 19); 
 label " prob_f1_s31 " = (s = 31); 
 label " prob_f1_s40 " = (s = 40); 
 