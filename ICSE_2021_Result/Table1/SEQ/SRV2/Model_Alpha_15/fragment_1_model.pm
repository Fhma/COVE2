dtmc
           //const double p41; 
  // const double p21;  
  // const double p42;  
  // const double p12;  
  // const double p11;  
  // const double p22;  
  // const double z1;  
  // const double x;  
  // const double y1;  
  // const double z2;  
  // const double y2;  
 
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
 const double P1_13_15;// = ((p42)); 
  const double P1_13_19 ;// = (((-1)*p42+1));
 const double P1_15_16;// = ((p22)); 
  const double P1_15_20 ;// = (((-1)*p22+1));
 const double P1_16_17;// = ((p12)); 
  const double P1_16_18 ;// = (((-1)*p12+1));

module f1 
s : [0 .. 19] init 0; 
 
 [] s=0 -> (P1_0_1):(s'=1) + (P1_0_2):(s'=4); 
 [] s=1 -> (P1_1_3):(s'=2) + (P1_1_4):(s'=16); 
 [] s=2 -> (P1_2_5):(s'=7) + (P1_2_6):(s'=15); 
 [] s=3 -> true; 
 [] s=4 -> (P1_4_7):(s'=8) + (P1_4_8):(s'=13); 
 [] s=5 -> true; 
 [] s=7 -> (P1_7_9):(s'=1) + (P1_7_10):(s'=3) + (P1_7_11):(s'=5); 
 [] s=8 -> (P1_8_12):(s'=0) + (P1_8_13):(s'=4) + (P1_8_14):(s'=5); 
 [] s=13 -> (P1_13_15):(s'=8) + (P1_13_19):(s'=18); 
 [] s=15 -> (P1_15_16):(s'=7) + (P1_15_20):(s'=19); 
 [] s=16 -> (P1_16_17):(s'=2) + (P1_16_18):(s'=17); 
 [] s=17 -> true; 
 [] s=18 -> true; 
 [] s=19 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s17 " = (s = 17); 
 label " prob_f1_s18 " = (s = 18); 
 label " prob_f1_s19 " = (s = 19); 
 