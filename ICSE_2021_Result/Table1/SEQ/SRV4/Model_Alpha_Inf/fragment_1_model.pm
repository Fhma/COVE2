dtmc
                 //const double p12; 
  // const double p11;  
  // const double p14;  
  // const double p13;  
  // const double y1;  
  // const double y2;  
  // const double p41;  
  // const double p21;  
  // const double p43;  
  // const double p42;  
  // const double p23;  
  // const double p44;  
  // const double p22;  
  // const double p24;  
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
 const double P1_17_15;// = ((p42)); 
  const double P1_17_16 ;// = (((-1)*p42+1));
 const double P1_18_17;// = ((p43)); 
  const double P1_18_18 ;// = (((-1)*p43+1));
 const double P1_19_19;// = ((p44)); 
  const double P1_19_32 ;// = (((-1)*p44+1));
 const double P1_23_20;// = ((p22)); 
  const double P1_23_21 ;// = (((-1)*p22+1));
 const double P1_24_22;// = ((p23)); 
  const double P1_24_23 ;// = (((-1)*p23+1));
 const double P1_25_24;// = ((p24)); 
  const double P1_25_30 ;// = (((-1)*p24+1));
 const double P1_26_25;// = ((p12)); 
  const double P1_26_26 ;// = (((-1)*p12+1));
 const double P1_27_27;// = ((p13)); 
  const double P1_27_28 ;// = (((-1)*p13+1));
 const double P1_28_29;// = ((p14)); 
  const double P1_28_31 ;// = (((-1)*p14+1));

module f1 
s : [0 .. 31] init 0; 
 
 [] s=0 -> (P1_0_1):(s'=1) + (P1_0_2):(s'=4); 
 [] s=1 -> (P1_1_3):(s'=2) + (P1_1_4):(s'=26); 
 [] s=2 -> (P1_2_5):(s'=7) + (P1_2_6):(s'=23); 
 [] s=3 -> true; 
 [] s=4 -> (P1_4_7):(s'=8) + (P1_4_8):(s'=17); 
 [] s=5 -> true; 
 [] s=7 -> (P1_7_9):(s'=1) + (P1_7_10):(s'=3) + (P1_7_11):(s'=5); 
 [] s=8 -> (P1_8_12):(s'=0) + (P1_8_13):(s'=4) + (P1_8_14):(s'=5); 
 [] s=17 -> (P1_17_15):(s'=8) + (P1_17_16):(s'=18); 
 [] s=18 -> (P1_18_17):(s'=8) + (P1_18_18):(s'=19); 
 [] s=19 -> (P1_19_19):(s'=8) + (P1_19_32):(s'=31); 
 [] s=23 -> (P1_23_20):(s'=7) + (P1_23_21):(s'=24); 
 [] s=24 -> (P1_24_22):(s'=7) + (P1_24_23):(s'=25); 
 [] s=25 -> (P1_25_24):(s'=7) + (P1_25_30):(s'=29); 
 [] s=26 -> (P1_26_25):(s'=2) + (P1_26_26):(s'=27); 
 [] s=27 -> (P1_27_27):(s'=2) + (P1_27_28):(s'=28); 
 [] s=28 -> (P1_28_29):(s'=2) + (P1_28_31):(s'=30); 
 [] s=29 -> true; 
 [] s=30 -> true; 
 [] s=31 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s29 " = (s = 29); 
 label " prob_f1_s30 " = (s = 30); 
 label " prob_f1_s31 " = (s = 31); 
 