dtmc
  const double prob_f2_s32; 
  const double prob_f5_s39; 
  const double prob_f5_s38; 
  const double prob_f4_s36; 
  const double prob_f2_s33; 
  const double prob_f6_s40; 
  const double p51; 
  const double prob_f6_s41; 
  const double p31; 
  const double prob_f1_s29; 
  const double prob_f3_s35; 
  const double prob_f3_s34; 
  const double prob_f1_s31; 
  const double prob_f1_s30; 
  const double prob_f4_s37; 
  const double prob_f7_s42; 
  const double prob_f7_s43; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
 
 const double PX_0_1 ;// = ( ( (p31) ) * ( prob_f1_s3 ) + ( (p51) ) * ( prob_f1_s5 ) ); 
  const double PX_0_2 ;// = (( ((-1)*p31+1) ) * ( prob_f1_s3 ));
  const double PX_0_3 ;// = (( ((-1)*p51+1) ) * ( prob_f1_s5 ));
  const double PX_0_6 ;// = (  ( 1 ) * ( prob_f1_s29 ) + ( 1 ) * ( prob_f1_s30 )  + ( 1 ) * ( prob_f1_s31 ) );
 const double PX_1_7 ;// = (( 1 ) * ( prob_f2_s32 )); 
  const double PX_1_8 ;// = (( 1 ) * ( prob_f2_s33 ));
 const double PX_2_9 ;// = (( 1 ) * ( prob_f3_s34 )); 
  const double PX_2_10 ;// = (( 1 ) * ( prob_f3_s35 ));
 const double PX_3_11 ;// = (( 1 ) * ( prob_f4_s36 )); 
  const double PX_3_12 ;// = (( 1 ) * ( prob_f4_s37 ));
 const double PX_4_13 ;// = (( 1 ) * ( prob_f5_s38 )); 
  const double PX_4_14 ;// = (( 1 ) * ( prob_f5_s39 ));
 const double PX_5_15 ;// = (( 1 ) * ( prob_f6_s40 )); 
  const double PX_5_16 ;// = (( 1 ) * ( prob_f6_s41 ));
 const double PX_6_17 ;// = (( 1 ) * ( prob_f7_s42 )); 
  const double PX_6_18 ;// = (( 1 ) * ( prob_f7_s43 ));

module abstract 
s : [0 .. 8] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=5) + (PX_0_3):(s'=6) + (PX_0_6):(s'=8); 
 [] s=1 -> (PX_1_7):(s'=7) + (PX_1_8):(s'=2); 
 [] s=2 -> (PX_2_9):(s'=7) + (PX_2_10):(s'=8); 
 [] s=3 -> (PX_3_11):(s'=1) + (PX_3_12):(s'=8); 
 [] s=4 -> (PX_4_13):(s'=1) + (PX_4_14):(s'=8); 
 [] s=5 -> (PX_5_15):(s'=4) + (PX_5_16):(s'=1); 
 [] s=6 -> (PX_6_17):(s'=3) + (PX_6_18):(s'=1); 
 [] s=7 -> ((1)):(s'=0); 
 [] s=8 -> ((1)):(s'=8); 
 
endmodule
 