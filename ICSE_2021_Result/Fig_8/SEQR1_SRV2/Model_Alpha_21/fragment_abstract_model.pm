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
 
 const double PX_0_1 ;// = (( (p61) ) * ( prob_f1_s6 )); 
  const double PX_0_2 ;// = (( ((-1)*p61+1) ) * ( prob_f1_s6 ));
  const double PX_0_6 ;// = (   ( 1 ) * ( prob_f1_s29 ) + ( 1 ) * ( prob_f1_s31 )  + ( 1 ) * ( prob_f1_s32 )  + ( 1 ) * ( prob_f1_s33 ) );
  const double PX_0_9 ;// = (( 1 ) * ( prob_f1_s30 ));
 const double PX_1_10 ;// = (( 1 ) * ( prob_f2_s34 )); 
  const double PX_1_11 ;// = (( 1 ) * ( prob_f2_s35 ));
 const double PX_3_12 ;// = (( 1 ) * ( prob_f4_s36 )); 
  const double PX_3_14 ;// = (( 1 ) * ( prob_f4_s38 ));
  const double PX_3_15 ;// = (( 1 ) * ( prob_f4_s39 ));
 const double PX_6_4 ;// = (((-1)*r61+1)); 
  const double PX_6_7 ;// = (( (r61) ) * ( (p61) ));
  const double PX_6_8 ;// = (( (r61) ) * ( ((-1)*p61+1) ));

module abstract 
s : [0 .. 7] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=5) + (PX_0_2):(s'=6) + (PX_0_6):(s'=7) + (PX_0_9):(s'=3); 
 [] s=1 -> (PX_1_10):(s'=5) + (PX_1_11):(s'=7); 
 [] s=3 -> (PX_3_12):(s'=5) + (PX_3_14):(s'=6) + (PX_3_15):(s'=4); 
 [] s=4 -> (1):(s'=7); 
 [] s=5 -> ((1)):(s'=0); 
 [] s=6 -> (PX_6_4):(s'=1) + (PX_6_7):(s'=5) + (PX_6_8):(s'=6); 
 [] s=7 -> ((1)):(s'=7); 
 
endmodule
 