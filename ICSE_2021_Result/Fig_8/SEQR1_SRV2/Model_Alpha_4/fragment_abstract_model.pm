dtmc
  const double prob_f2_s32; 
  const double prob_f9_s47; 
  const double prob_f9_s48; 
  const double prob_f2_s33; 
  const double p51; 
  const double p31; 
  const double r51; 
  const double prob_f8_s46; 
  const double prob_f8_s45; 
  const double prob_f1_s4; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double prob_f5_s40; 
  const double prob_f4_s34; 
  const double prob_f5_s39; 
  const double prob_f4_s35; 
  const double prob_f6_s42; 
  const double p41; 
  const double prob_f6_s41; 
  const double r41; 
  const double prob_f1_s31; 
  const double prob_f4_s38; 
  const double prob_f1_s30; 
  const double prob_f4_s37; 
  const double prob_f7_s43; 
  const double prob_f7_s44; 
 
 const double PX_0_1 ;// = ( ( (p31) ) * ( prob_f1_s3 ) + ( (p51) ) * ( prob_f1_s5 ) ); 
  const double PX_0_2 ;// = (( ((-1)*p31+1) ) * ( prob_f1_s3 ));
  const double PX_0_3 ;// = (( (p41) ) * ( prob_f1_s4 ));
  const double PX_0_4 ;// = (( ((-1)*p41+1) ) * ( prob_f1_s4 ));
  const double PX_0_5 ;// = (( ((-1)*p51+1) ) * ( prob_f1_s5 ));
  const double PX_0_13 ;// = ( ( 1 ) * ( prob_f1_s30 ) + ( 1 ) * ( prob_f1_s31 ) );
 const double PX_1_14 ;// = (( 1 ) * ( prob_f2_s32 )); 
  const double PX_1_15 ;// = (( 1 ) * ( prob_f2_s33 ));
 const double PX_3_16 ;// = (( 1 ) * ( prob_f4_s34 )); 
  const double PX_3_17 ;// = (( 1 ) * ( prob_f4_s35 ));
  const double PX_3_20 ;// = (( 1 ) * ( prob_f4_s37 ));
  const double PX_3_21 ;// = (( 1 ) * ( prob_f4_s38 ));
 const double PX_4_22 ;// = (( 1 ) * ( prob_f5_s39 )); 
  const double PX_4_23 ;// = (( 1 ) * ( prob_f5_s40 ));
 const double PX_5_24 ;// = (( 1 ) * ( prob_f6_s41 )); 
  const double PX_5_25 ;// = (( 1 ) * ( prob_f6_s42 ));
 const double PX_6_26 ;// = (( 1 ) * ( prob_f7_s43 )); 
  const double PX_6_27 ;// = (( 1 ) * ( prob_f7_s44 ));
 const double PX_7_28 ;// = (( 1 ) * ( prob_f8_s45 )); 
  const double PX_7_29 ;// = (( 1 ) * ( prob_f8_s46 ));
 const double PX_8_30 ;// = (( 1 ) * ( prob_f9_s47 )); 
  const double PX_8_31 ;// = (( 1 ) * ( prob_f9_s48 ));
 const double PX_11_7 ;// = (((-1)*r41+1)); 
  const double PX_11_10 ;// = (( (r41) ) * ( (p41) ));
  const double PX_11_11 ;// = (( (r41) ) * ( ((-1)*p41+1) ));
 const double PX_12_8 ;// = (((-1)*r51+1)); 
  const double PX_12_12 ;// = (( (r51) ) * ( ((-1)*p51+1) ));
  const double PX_12_18 ;// = (( (r51) ) * ( (p51) ));

module abstract 
s : [0 .. 13] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=8) + (PX_0_3):(s'=3) + (PX_0_4):(s'=11) + (PX_0_5):(s'=12) + (PX_0_13):(s'=13); 
 [] s=1 -> (PX_1_14):(s'=10) + (PX_1_15):(s'=4); 
 [] s=3 -> (PX_3_16):(s'=0) + (PX_3_17):(s'=1) + (PX_3_20):(s'=11) + (PX_3_21):(s'=12); 
 [] s=4 -> (PX_4_22):(s'=10) + (PX_4_23):(s'=13); 
 [] s=5 -> (PX_5_24):(s'=1) + (PX_5_25):(s'=13); 
 [] s=6 -> (PX_6_26):(s'=3) + (PX_6_27):(s'=13); 
 [] s=7 -> (PX_7_28):(s'=1) + (PX_7_29):(s'=13); 
 [] s=8 -> (PX_8_30):(s'=7) + (PX_8_31):(s'=1); 
 [] s=9 -> (1):(s'=1); 
 [] s=10 -> ((1)):(s'=0); 
 [] s=11 -> (PX_11_7):(s'=6) + (PX_11_10):(s'=3) + (PX_11_11):(s'=11); 
 [] s=12 -> (PX_12_8):(s'=5) + (PX_12_12):(s'=12) + (PX_12_18):(s'=9); 
 [] s=13 -> ((1)):(s'=13); 
 
endmodule
 