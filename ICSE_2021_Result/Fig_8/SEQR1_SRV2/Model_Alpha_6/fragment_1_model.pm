dtmc
           //const double p21; 
  // const double p12;  
  // const double r21;  
  // const double p11;  
  // const double p22;  
  // const double r12;  
  // const double r11;  
  // const double r22;  
  // const double x;  
  // const double y1;  
  // const double y2;  
 
 const double P1_0_1;// = ((x)); 
  const double P1_0_2 ;// = (((-1)*x+1));
 const double P1_1_3;// = ((p11)); 
  const double P1_1_4 ;// = (((-1)*p11+1));
 const double P1_2_5;// = ((p21)); 
  const double P1_2_6 ;// = (((-1)*p21+1));
 const double P1_7_7;// = ((y2)); 
  const double P1_7_8 ;// = (((-1)*y1-y2+1));
  const double P1_7_9 ;// = ((y1));
 const double P1_14_10;// = ((p22)); 
  const double P1_14_11 ;// = (((-1)*p22+1));
 const double P1_15_12;// = ((p12)); 
  const double P1_15_13 ;// = (((-1)*p12+1));
 const double P1_16_14;// = ((r11)); 
  const double P1_16_19 ;// = (((-1)*r11+1));
 const double P1_17_15;// = ((r21)); 
  const double P1_17_16 ;// = (((-1)*r21+1));
 const double P1_27_17;// = ((r22)); 
  const double P1_27_21 ;// = (((-1)*r22+1));
 const double P1_28_18;// = ((r12)); 
  const double P1_28_22 ;// = (((-1)*r12+1));

module f1 
s : [0 .. 31] init 0; 
 
 [] s=0 -> (P1_0_1):(s'=1) + (P1_0_2):(s'=4); 
 [] s=1 -> (P1_1_3):(s'=2) + (P1_1_4):(s'=16); 
 [] s=2 -> (P1_2_5):(s'=7) + (P1_2_6):(s'=17); 
 [] s=3 -> true; 
 [] s=4 -> true; 
 [] s=5 -> true; 
 [] s=7 -> (P1_7_7):(s'=1) + (P1_7_8):(s'=3) + (P1_7_9):(s'=5); 
 [] s=14 -> (P1_14_10):(s'=7) + (P1_14_11):(s'=27); 
 [] s=15 -> (P1_15_12):(s'=2) + (P1_15_13):(s'=28); 
 [] s=16 -> (P1_16_14):(s'=1) + (P1_16_19):(s'=29); 
 [] s=17 -> (P1_17_15):(s'=2) + (P1_17_16):(s'=14); 
 [] s=27 -> (P1_27_17):(s'=14) + (P1_27_21):(s'=30); 
 [] s=28 -> (P1_28_18):(s'=15) + (P1_28_22):(s'=31); 
 [] s=29 -> (1):(s'=15); 
 [] s=30 -> true; 
 [] s=31 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s4 " = (s = 4); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s30 " = (s = 30); 
 label " prob_f1_s31 " = (s = 31); 
 