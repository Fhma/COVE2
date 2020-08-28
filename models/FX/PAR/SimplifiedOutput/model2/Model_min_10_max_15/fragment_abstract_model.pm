dtmc
  const double prob_f2_s36; 
  const double prob_f2_s38; 
  const double prob_f2_s37; 
  const double p52; 
  const double p51; 
  const double p32; 
  const double p31; 
  const double prob_f1_s40; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double prob_f2_s39; 
  const double prob_f1_s19; 
  const double prob_f1_s31; 
 
 const double PX_0_1 ;// = (( (p32*p31) ) * ( prob_f1_s3 )); 
  const double PX_0_2 ;// = (( ((-1)*p32*p31+p31) ) * ( prob_f1_s3 ));
  const double PX_0_3 ;// = (( ((-1)*p32*p31+p32) ) * ( prob_f1_s3 ));
  const double PX_0_4 ;// = (( (p32*p31-p31-p32+1) ) * ( prob_f1_s3 ));
  const double PX_0_5 ;// = (( (p52*p51) ) * ( prob_f1_s5 ));
  const double PX_0_6 ;// = (( ((-1)*p52*p51+p51) ) * ( prob_f1_s5 ));
  const double PX_0_7 ;// = (( ((-1)*p52*p51+p52) ) * ( prob_f1_s5 ));
  const double PX_0_8 ;// = (( (p52*p51-p51-p52+1) ) * ( prob_f1_s5 ));
  const double PX_0_16 ;// = (( (1) ) * ( prob_f1_s19 ));
  const double PX_0_22 ;// = (( (1) ) * ( prob_f1_s31 ));
  const double PX_0_29 ;// = (( 1 ) * ( prob_f1_s40 ));
 const double PX_1_27 ;// = (  ( (1) ) * ( prob_f2_s36 ) + ( (1) ) * ( prob_f2_s37 )  + ( (1) ) * ( prob_f2_s38 ) ); 
  const double PX_1_28 ;// = (( (1) ) * ( prob_f2_s39 ));
 const double PX_2_17 ;// = ((1)); 
 const double PX_3_18 ;// = ((1)); 
 const double PX_4_19 ;// = ((1)); 
 const double PX_5_20 ;// = ((1)); 
 const double PX_6_21 ;// = ((1)); 
 const double PX_7_23 ;// = ((1)); 
 const double PX_8_24 ;// = ((1)); 
 const double PX_9_25 ;// = ((1)); 
 const double PX_10_26 ;// = ((1)); 
 const double PX_11_9 ;// = ((1)); 
 const double PX_12_10 ;// = ((1)); 
 const double PX_13_11 ;// = ((1)); 
 const double PX_14_12 ;// = ((1)); 
 const double PX_15_13 ;// = ((1)); 
 const double PX_16_14 ;// = ((1)); 
 const double PX_17_15 ;// = ((1)); 

module abstract 
s : [0 .. 17] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=3) + (PX_0_2):(s'=4) + (PX_0_3):(s'=5) + (PX_0_4):(s'=6) + (PX_0_5):(s'=7) + (PX_0_6):(s'=8) + (PX_0_7):(s'=9) + (PX_0_8):(s'=10) + (PX_0_16):(s'=16) + (PX_0_22):(s'=13) + (PX_0_29):(s'=2); 
 [] s=1 -> (PX_1_27):(s'=17) + (PX_1_28):(s'=11); 
 [] s=2 -> (PX_2_17):(s'=15); 
 [] s=3 -> (PX_3_18):(s'=1); 
 [] s=4 -> (PX_4_19):(s'=1); 
 [] s=5 -> (PX_5_20):(s'=1); 
 [] s=6 -> (PX_6_21):(s'=14); 
 [] s=7 -> (PX_7_23):(s'=1); 
 [] s=8 -> (PX_8_24):(s'=1); 
 [] s=9 -> (PX_9_25):(s'=1); 
 [] s=10 -> (PX_10_26):(s'=12); 
 [] s=11 -> (PX_11_9):(s'=11); 
 [] s=12 -> (PX_12_10):(s'=12); 
 [] s=13 -> (PX_13_11):(s'=13); 
 [] s=14 -> (PX_14_12):(s'=14); 
 [] s=15 -> (PX_15_13):(s'=15); 
 [] s=16 -> (PX_16_14):(s'=16); 
 [] s=17 -> (PX_17_15):(s'=0); 
 
endmodule
 