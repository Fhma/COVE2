dtmc
              //const double x; 
  // const double p12;  
  // const double p11;  
  // const double p13;  
  // const double p21;  
  // const double p23;  
  // const double p22;  
  // const double y1;  
  // const double y2;  
  // const double p41;  
  // const double p43;  
  // const double p42;  
  // const double z1;  
  // const double z2;  
 
 const double P1_0_1;// = ((x)); 
  const double P1_0_2 ;// = (((-1)*x+1));
 const double P1_1_3;// = ((p13*p12*p11)); 
  const double P1_1_4 ;// = (((-1)*p13*p12*p11+p12*p11));
  const double P1_1_5 ;// = (((-1)*p13*p12*p11+p13*p11));
  const double P1_1_6 ;// = ((p13*p12*p11-p12*p11-p13*p11+p11));
  const double P1_1_7 ;// = (((-1)*p13*p12*p11+p13*p12));
  const double P1_1_8 ;// = ((p13*p12*p11-p12*p11-p13*p12+p12));
  const double P1_1_9 ;// = ((p13*p12*p11-p13*p11-p13*p12+p13));
  const double P1_1_10 ;// = (((-1)*p13*p12*p11+p12*p11+p13*p11+p13*p12-p11-p12-p13+1));
 const double P1_2_11;// = ((p23*p22*p21)); 
  const double P1_2_12 ;// = (((-1)*p23*p22*p21+p22*p21));
  const double P1_2_13 ;// = (((-1)*p23*p22*p21+p23*p21));
  const double P1_2_14 ;// = ((p23*p22*p21-p22*p21-p23*p21+p21));
  const double P1_2_15 ;// = (((-1)*p23*p22*p21+p23*p22));
  const double P1_2_16 ;// = ((p23*p22*p21-p22*p21-p23*p22+p22));
  const double P1_2_17 ;// = ((p23*p22*p21-p23*p21-p23*p22+p23));
  const double P1_2_18 ;// = (((-1)*p23*p22*p21+p22*p21+p23*p21+p23*p22-p21-p22-p23+1));
 const double P1_4_19;// = ((p43*p42*p41)); 
  const double P1_4_20 ;// = (((-1)*p43*p42*p41+p42*p41));
  const double P1_4_21 ;// = (((-1)*p43*p42*p41+p43*p41));
  const double P1_4_22 ;// = ((p43*p42*p41-p42*p41-p43*p41+p41));
  const double P1_4_23 ;// = (((-1)*p43*p42*p41+p43*p42));
  const double P1_4_24 ;// = ((p43*p42*p41-p42*p41-p43*p42+p42));
  const double P1_4_25 ;// = ((p43*p42*p41-p43*p41-p43*p42+p43));
  const double P1_4_26 ;// = (((-1)*p43*p42*p41+p42*p41+p43*p41+p43*p42-p41-p42-p43+1));
 const double P1_7_27;// = ((y2)); 
  const double P1_7_28 ;// = (((-1)*y1-y2+1));
  const double P1_7_29 ;// = ((y1));
 const double P1_8_30;// = ((z2)); 
  const double P1_8_31 ;// = (((-1)*z1-z2+1));
  const double P1_8_32 ;// = ((z1));

module f1 
s : [0 .. 47] init 0; 
 
 [] s=0 -> (P1_0_1):(s'=1) + (P1_0_2):(s'=4); 
 [] s=1 -> (P1_1_3):(s'=16) + (P1_1_4):(s'=17) + (P1_1_5):(s'=18) + (P1_1_6):(s'=19) + (P1_1_7):(s'=20) + (P1_1_8):(s'=21) + (P1_1_9):(s'=22) + (P1_1_10):(s'=23); 
 [] s=2 -> (P1_2_11):(s'=24) + (P1_2_12):(s'=25) + (P1_2_13):(s'=26) + (P1_2_14):(s'=27) + (P1_2_15):(s'=28) + (P1_2_16):(s'=29) + (P1_2_17):(s'=30) + (P1_2_18):(s'=31); 
 [] s=3 -> true; 
 [] s=4 -> (P1_4_19):(s'=40) + (P1_4_20):(s'=41) + (P1_4_21):(s'=42) + (P1_4_22):(s'=43) + (P1_4_23):(s'=44) + (P1_4_24):(s'=45) + (P1_4_25):(s'=46) + (P1_4_26):(s'=47); 
 [] s=5 -> true; 
 [] s=7 -> (P1_7_27):(s'=1) + (P1_7_28):(s'=3) + (P1_7_29):(s'=5); 
 [] s=8 -> (P1_8_30):(s'=0) + (P1_8_31):(s'=4) + (P1_8_32):(s'=5); 
 [] s=16 -> ((1)):(s'=2); 
 [] s=17 -> ((1)):(s'=2); 
 [] s=18 -> ((1)):(s'=2); 
 [] s=19 -> ((1)):(s'=2); 
 [] s=20 -> ((1)):(s'=2); 
 [] s=21 -> ((1)):(s'=2); 
 [] s=22 -> ((1)):(s'=2); 
 [] s=23 -> true; 
 [] s=24 -> ((1)):(s'=7); 
 [] s=25 -> ((1)):(s'=7); 
 [] s=26 -> ((1)):(s'=7); 
 [] s=27 -> ((1)):(s'=7); 
 [] s=28 -> ((1)):(s'=7); 
 [] s=29 -> ((1)):(s'=7); 
 [] s=30 -> ((1)):(s'=7); 
 [] s=31 -> true; 
 [] s=40 -> ((1)):(s'=8); 
 [] s=41 -> ((1)):(s'=8); 
 [] s=42 -> ((1)):(s'=8); 
 [] s=43 -> ((1)):(s'=8); 
 [] s=44 -> ((1)):(s'=8); 
 [] s=45 -> ((1)):(s'=8); 
 [] s=46 -> ((1)):(s'=8); 
 [] s=47 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s23 " = (s = 23); 
 label " prob_f1_s31 " = (s = 31); 
 label " prob_f1_s47 " = (s = 47); 
 