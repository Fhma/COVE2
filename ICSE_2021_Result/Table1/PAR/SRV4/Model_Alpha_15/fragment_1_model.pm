dtmc
           //const double x; 
  // const double p12;  
  // const double p11;  
  // const double p14;  
  // const double p13;  
  // const double p21;  
  // const double p23;  
  // const double p22;  
  // const double p24;  
  // const double y1;  
  // const double y2;  
 
 const double P1_0_1;// = ((x)); 
  const double P1_0_2 ;// = (((-1)*x+1));
 const double P1_1_3;// = ((p14*p13*p12*p11)); 
  const double P1_1_4 ;// = (((-1)*p14*p13*p12*p11+p13*p12*p11));
  const double P1_1_5 ;// = (((-1)*p14*p13*p12*p11+p14*p12*p11));
  const double P1_1_6 ;// = ((p14*p13*p12*p11-p13*p12*p11-p14*p12*p11+p12*p11));
  const double P1_1_7 ;// = (((-1)*p14*p13*p12*p11+p14*p13*p11));
  const double P1_1_8 ;// = ((p14*p13*p12*p11-p13*p12*p11-p14*p13*p11+p13*p11));
  const double P1_1_9 ;// = ((p14*p13*p12*p11-p14*p12*p11-p14*p13*p11+p14*p11));
  const double P1_1_10 ;// = (((-1)*p14*p13*p12*p11+p13*p12*p11+p14*p12*p11+p14*p13*p11-p12*p11-p13*p11-p14*p11+p11));
  const double P1_1_11 ;// = (((-1)*p14*p13*p12*p11+p14*p13*p12));
  const double P1_1_12 ;// = ((p14*p13*p12*p11-p13*p12*p11-p14*p13*p12+p13*p12));
  const double P1_1_13 ;// = ((p14*p13*p12*p11-p14*p12*p11-p14*p13*p12+p14*p12));
  const double P1_1_14 ;// = (((-1)*p14*p13*p12*p11+p13*p12*p11+p14*p12*p11+p14*p13*p12-p12*p11-p13*p12-p14*p12+p12));
  const double P1_1_15 ;// = ((p14*p13*p12*p11-p14*p13*p11-p14*p13*p12+p14*p13));
  const double P1_1_16 ;// = (((-1)*p14*p13*p12*p11+p13*p12*p11+p14*p13*p11+p14*p13*p12-p13*p11-p13*p12-p14*p13+p13));
  const double P1_1_17 ;// = (((-1)*p14*p13*p12*p11+p14*p12*p11+p14*p13*p11+p14*p13*p12-p14*p11-p14*p12-p14*p13+p14));
  const double P1_1_18 ;// = ((p14*p13*p12*p11-p13*p12*p11-p14*p12*p11-p14*p13*p11-p14*p13*p12+p12*p11+p13*p11+p14*p11+p13*p12+p14*p12+p14*p13-p11-p12-p13-p14+1));
 const double P1_2_19;// = ((p24*p23*p22*p21)); 
  const double P1_2_20 ;// = (((-1)*p24*p23*p22*p21+p23*p22*p21));
  const double P1_2_21 ;// = (((-1)*p24*p23*p22*p21+p24*p22*p21));
  const double P1_2_22 ;// = ((p24*p23*p22*p21-p23*p22*p21-p24*p22*p21+p22*p21));
  const double P1_2_23 ;// = (((-1)*p24*p23*p22*p21+p24*p23*p21));
  const double P1_2_24 ;// = ((p24*p23*p22*p21-p23*p22*p21-p24*p23*p21+p23*p21));
  const double P1_2_25 ;// = ((p24*p23*p22*p21-p24*p22*p21-p24*p23*p21+p24*p21));
  const double P1_2_26 ;// = (((-1)*p24*p23*p22*p21+p23*p22*p21+p24*p22*p21+p24*p23*p21-p22*p21-p23*p21-p24*p21+p21));
  const double P1_2_27 ;// = (((-1)*p24*p23*p22*p21+p24*p23*p22));
  const double P1_2_28 ;// = ((p24*p23*p22*p21-p23*p22*p21-p24*p23*p22+p23*p22));
  const double P1_2_29 ;// = ((p24*p23*p22*p21-p24*p22*p21-p24*p23*p22+p24*p22));
  const double P1_2_30 ;// = (((-1)*p24*p23*p22*p21+p23*p22*p21+p24*p22*p21+p24*p23*p22-p22*p21-p23*p22-p24*p22+p22));
  const double P1_2_31 ;// = ((p24*p23*p22*p21-p24*p23*p21-p24*p23*p22+p24*p23));
  const double P1_2_32 ;// = (((-1)*p24*p23*p22*p21+p23*p22*p21+p24*p23*p21+p24*p23*p22-p23*p21-p23*p22-p24*p23+p23));
  const double P1_2_33 ;// = (((-1)*p24*p23*p22*p21+p24*p22*p21+p24*p23*p21+p24*p23*p22-p24*p21-p24*p22-p24*p23+p24));
  const double P1_2_67 ;// = ((p24*p23*p22*p21-p23*p22*p21-p24*p22*p21-p24*p23*p21-p24*p23*p22+p22*p21+p23*p21+p24*p21+p23*p22+p24*p22+p24*p23-p21-p22-p23-p24+1));
 const double P1_7_34;// = ((y2)); 
  const double P1_7_35 ;// = (((-1)*y1-y2+1));
  const double P1_7_36 ;// = ((y1));

module f1 
s : [0 .. 112] init 0; 
 
 [] s=0 -> (P1_0_1):(s'=1) + (P1_0_2):(s'=4); 
 [] s=1 -> (P1_1_3):(s'=16) + (P1_1_4):(s'=17) + (P1_1_5):(s'=18) + (P1_1_6):(s'=19) + (P1_1_7):(s'=20) + (P1_1_8):(s'=21) + (P1_1_9):(s'=22) + (P1_1_10):(s'=23) + (P1_1_11):(s'=24) + (P1_1_12):(s'=25) + (P1_1_13):(s'=26) + (P1_1_14):(s'=27) + (P1_1_15):(s'=28) + (P1_1_16):(s'=29) + (P1_1_17):(s'=30) + (P1_1_18):(s'=31); 
 [] s=2 -> (P1_2_19):(s'=32) + (P1_2_20):(s'=33) + (P1_2_21):(s'=34) + (P1_2_22):(s'=35) + (P1_2_23):(s'=36) + (P1_2_24):(s'=37) + (P1_2_25):(s'=38) + (P1_2_26):(s'=39) + (P1_2_27):(s'=40) + (P1_2_28):(s'=41) + (P1_2_29):(s'=42) + (P1_2_30):(s'=43) + (P1_2_31):(s'=44) + (P1_2_32):(s'=45) + (P1_2_33):(s'=46) + (P1_2_67):(s'=112); 
 [] s=3 -> true; 
 [] s=4 -> true; 
 [] s=5 -> true; 
 [] s=7 -> (P1_7_34):(s'=1) + (P1_7_35):(s'=3) + (P1_7_36):(s'=5); 
 [] s=16 -> ((1)):(s'=2); 
 [] s=17 -> ((1)):(s'=2); 
 [] s=18 -> ((1)):(s'=2); 
 [] s=19 -> ((1)):(s'=2); 
 [] s=20 -> ((1)):(s'=2); 
 [] s=21 -> ((1)):(s'=2); 
 [] s=22 -> ((1)):(s'=2); 
 [] s=23 -> ((1)):(s'=2); 
 [] s=24 -> ((1)):(s'=2); 
 [] s=25 -> ((1)):(s'=2); 
 [] s=26 -> ((1)):(s'=2); 
 [] s=27 -> ((1)):(s'=2); 
 [] s=28 -> ((1)):(s'=2); 
 [] s=29 -> ((1)):(s'=2); 
 [] s=30 -> ((1)):(s'=2); 
 [] s=31 -> true; 
 [] s=32 -> ((1)):(s'=7); 
 [] s=33 -> ((1)):(s'=7); 
 [] s=34 -> ((1)):(s'=7); 
 [] s=35 -> ((1)):(s'=7); 
 [] s=36 -> ((1)):(s'=7); 
 [] s=37 -> ((1)):(s'=7); 
 [] s=38 -> ((1)):(s'=7); 
 [] s=39 -> ((1)):(s'=7); 
 [] s=40 -> ((1)):(s'=7); 
 [] s=41 -> ((1)):(s'=7); 
 [] s=42 -> ((1)):(s'=7); 
 [] s=43 -> ((1)):(s'=7); 
 [] s=44 -> ((1)):(s'=7); 
 [] s=45 -> ((1)):(s'=7); 
 [] s=46 -> ((1)):(s'=7); 
 [] s=112 -> true; 
 
endmodule
label " prob_f1_s3 "= (s = 3); 
 label " prob_f1_s4 " = (s = 4); 
 label " prob_f1_s5 " = (s = 5); 
 label " prob_f1_s31 " = (s = 31); 
 label " prob_f1_s112 " = (s = 112); 
 