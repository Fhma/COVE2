dtmc
  const double prob_f6_s53; 
  const double p51; 
  const double prob_f6_s52; 
  const double p31; 
  const double prob_f1_s43; 
  const double prob_f1_s42; 
  const double prob_f4_s49; 
  const double prob_f1_s41; 
  const double prob_f4_s48; 
  const double prob_f7_s54; 
  const double prob_f1_s3; 
  const double prob_f7_s55; 
  const double prob_f1_s5; 
  const double prob_f10_s60; 
  const double prob_f10_s61; 
  const double prob_f9_s58; 
  const double prob_f9_s59; 
  const double prob_f2_s45; 
  const double prob_f2_s44; 
  const double prob_f8_s57; 
  const double prob_f8_s56; 
  const double prob_f3_s47; 
  const double prob_f3_s46; 
  const double prob_f5_s51; 
  const double prob_f5_s50; 
 
 const double PX_0_1 ;// = ( ( (p31) ) * ( prob_f1_s3 ) + ( (p51) ) * ( prob_f1_s5 ) ); 
  const double PX_0_2 ;// = (( ((-1)*p31+1) ) * ( prob_f1_s3 ));
  const double PX_0_3 ;// = (( ((-1)*p51+1) ) * ( prob_f1_s5 ));
  const double PX_0_6 ;// = (  ( 1 ) * ( prob_f1_s41 ) + ( 1 ) * ( prob_f1_s42 )  + ( 1 ) * ( prob_f1_s43 ) );
 const double PX_1_7 ;// = (( 1 ) * ( prob_f2_s44 )); 
  const double PX_1_8 ;// = (( 1 ) * ( prob_f2_s45 ));
 const double PX_2_9 ;// = (( 1 ) * ( prob_f3_s46 )); 
  const double PX_2_10 ;// = (( 1 ) * ( prob_f3_s47 ));
 const double PX_3_11 ;// = (( 1 ) * ( prob_f4_s48 )); 
  const double PX_3_12 ;// = (( 1 ) * ( prob_f4_s49 ));
 const double PX_4_13 ;// = (( 1 ) * ( prob_f5_s50 )); 
  const double PX_4_14 ;// = (( 1 ) * ( prob_f5_s51 ));
 const double PX_5_15 ;// = (( 1 ) * ( prob_f6_s52 )); 
  const double PX_5_16 ;// = (( 1 ) * ( prob_f6_s53 ));
 const double PX_6_17 ;// = (( 1 ) * ( prob_f7_s54 )); 
  const double PX_6_18 ;// = (( 1 ) * ( prob_f7_s55 ));
 const double PX_7_19 ;// = (( 1 ) * ( prob_f8_s56 )); 
  const double PX_7_20 ;// = (( 1 ) * ( prob_f8_s57 ));
 const double PX_8_21 ;// = (( 1 ) * ( prob_f9_s58 )); 
  const double PX_8_22 ;// = (( 1 ) * ( prob_f9_s59 ));
 const double PX_9_23 ;// = (( 1 ) * ( prob_f10_s60 )); 
  const double PX_9_24 ;// = (( 1 ) * ( prob_f10_s61 ));

module abstract 
s : [0 .. 11] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=8) + (PX_0_3):(s'=9) + (PX_0_6):(s'=11); 
 [] s=1 -> (PX_1_7):(s'=10) + (PX_1_8):(s'=2); 
 [] s=2 -> (PX_2_9):(s'=10) + (PX_2_10):(s'=3); 
 [] s=3 -> (PX_3_11):(s'=10) + (PX_3_12):(s'=11); 
 [] s=4 -> (PX_4_13):(s'=1) + (PX_4_14):(s'=5); 
 [] s=5 -> (PX_5_15):(s'=1) + (PX_5_16):(s'=11); 
 [] s=6 -> (PX_6_17):(s'=1) + (PX_6_18):(s'=7); 
 [] s=7 -> (PX_7_19):(s'=1) + (PX_7_20):(s'=11); 
 [] s=8 -> (PX_8_21):(s'=6) + (PX_8_22):(s'=1); 
 [] s=9 -> (PX_9_23):(s'=4) + (PX_9_24):(s'=1); 
 [] s=10 -> ((1)):(s'=0); 
 [] s=11 -> ((1)):(s'=11); 
 
endmodule
 