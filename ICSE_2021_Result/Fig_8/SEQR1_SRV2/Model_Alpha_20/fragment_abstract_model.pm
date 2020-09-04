dtmc
  const double prob_f2_s35; 
  const double prob_f2_s34; 
  const double prob_f4_s36; 
  const double p61; 
  const double r61; 
  const double prob_f1_s29; 
  const double prob_f1_s33; 
  const double prob_f1_s32; 
  const double prob_f1_s31; 
  const double prob_f4_s38; 
  const double prob_f1_s30; 
  const double prob_f4_s39; 
  const double prob_f1_s6; 
  const double prob_f5_s42; 
  const double prob_f5_s41; 
  const double prob_f5_s40; 
 
 const double PX_0_1 ;// = (( (p61) ) * ( prob_f1_s6 )); 
  const double PX_0_2 ;// = (( ((-1)*p61+1) ) * ( prob_f1_s6 ));
  const double PX_0_6 ;// = (  ( 1 ) * ( prob_f1_s29 ) + ( 1 ) * ( prob_f1_s32 )  + ( 1 ) * ( prob_f1_s33 ) );
  const double PX_0_7 ;// = (( 1 ) * ( prob_f1_s30 ));
  const double PX_0_10 ;// = (( 1 ) * ( prob_f1_s31 ));
 const double PX_1_11 ;// = (( 1 ) * ( prob_f2_s34 )); 
  const double PX_1_12 ;// = (( 1 ) * ( prob_f2_s35 ));
 const double PX_3_13 ;// = (( 1 ) * ( prob_f4_s36 )); 
  const double PX_3_15 ;// = (( 1 ) * ( prob_f4_s38 ));
  const double PX_3_16 ;// = (( 1 ) * ( prob_f4_s39 ));
 const double PX_4_17 ;// = (( 1 ) * ( prob_f5_s40 )); 
  const double PX_4_18 ;// = (( 1 ) * ( prob_f5_s41 ));
  const double PX_4_19 ;// = (( 1 ) * ( prob_f5_s42 ));
 const double PX_7_4 ;// = (((-1)*r61+1)); 
  const double PX_7_8 ;// = (( (r61) ) * ( (p61) ));
  const double PX_7_9 ;// = (( (r61) ) * ( ((-1)*p61+1) ));

module abstract 
s : [0 .. 8] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=6) + (PX_0_2):(s'=7) + (PX_0_6):(s'=8) + (PX_0_7):(s'=4) + (PX_0_10):(s'=3); 
 [] s=1 -> (PX_1_11):(s'=6) + (PX_1_12):(s'=8); 
 [] s=3 -> (PX_3_13):(s'=6) + (PX_3_15):(s'=7) + (PX_3_16):(s'=5); 
 [] s=4 -> (PX_4_17):(s'=6) + (PX_4_18):(s'=7) + (PX_4_19):(s'=8); 
 [] s=5 -> (1):(s'=8); 
 [] s=6 -> ((1)):(s'=0); 
 [] s=7 -> (PX_7_4):(s'=1) + (PX_7_8):(s'=6) + (PX_7_9):(s'=7); 
 [] s=8 -> ((1)):(s'=8); 
 
endmodule
 