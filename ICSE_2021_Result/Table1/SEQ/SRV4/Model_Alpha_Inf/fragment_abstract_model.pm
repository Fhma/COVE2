dtmc
  const double prob_f2_s32; 
  const double prob_f2_s11; 
  const double p51; 
  const double p54; 
  const double p31; 
  const double p53; 
  const double prob_f1_s29; 
  const double prob_f3_s33; 
  const double p34; 
  const double p33; 
  const double prob_f3_s13; 
  const double prob_f6_s35; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double prob_f4_s34; 
  const double prob_f6_s21; 
  const double p62; 
  const double p64; 
  const double prob_f1_s31; 
  const double prob_f4_s15; 
  const double prob_f1_s30; 
 
 const double PX_0_1 ;// = ( ( (p31) ) * ( prob_f1_s3 ) + ( (p51) ) * ( prob_f1_s5 ) ); 
  const double PX_0_2 ;// = (( ((-1)*p31+1) ) * ( prob_f1_s3 ));
  const double PX_0_3 ;// = (( ((-1)*p51+1) ) * ( prob_f1_s5 ));
  const double PX_0_18 ;// = (  ( 1 ) * ( prob_f1_s29 ) + ( 1 ) * ( prob_f1_s30 )  + ( 1 ) * ( prob_f1_s31 ) );
 const double PX_1_6 ;// = ( ( (p62) ) * ( prob_f2_s11 ) + ( 1 ) * ( prob_f2_s32 ) ); 
  const double PX_1_7 ;// = (( ((-1)*p62+1) ) * ( prob_f2_s11 ));
 const double PX_2_8 ;// = (( ((-1)*p64+1) ) * ( prob_f3_s13 )); 
  const double PX_2_9 ;// = ( ( (p64) ) * ( prob_f3_s13 ) + ( 1 ) * ( prob_f3_s33 ) );
 const double PX_3_10 ;// = ( ( (p53) ) * ( prob_f4_s15 ) + ( 1 ) * ( prob_f4_s34 ) ); 
  const double PX_3_11 ;// = (( ((-1)*p53+1) ) * ( prob_f4_s15 ));
 const double PX_4_12 ;// = ((p54)); 
  const double PX_4_13 ;// = (((-1)*p54+1));
 const double PX_5_14 ;// = ( ( (p33) ) * ( prob_f6_s21 ) + ( 1 ) * ( prob_f6_s35 ) ); 
  const double PX_5_15 ;// = (( ((-1)*p33+1) ) * ( prob_f6_s21 ));
 const double PX_6_16 ;// = ((p34)); 
  const double PX_6_17 ;// = (((-1)*p34+1));

module abstract 
s : [0 .. 8] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=5) + (PX_0_3):(s'=3) + (PX_0_18):(s'=7); 
 [] s=1 -> (PX_1_6):(s'=8) + (PX_1_7):(s'=2); 
 [] s=2 -> (PX_2_8):(s'=7) + (PX_2_9):(s'=8); 
 [] s=3 -> (PX_3_10):(s'=1) + (PX_3_11):(s'=4); 
 [] s=4 -> (PX_4_12):(s'=1) + (PX_4_13):(s'=7); 
 [] s=5 -> (PX_5_14):(s'=1) + (PX_5_15):(s'=6); 
 [] s=6 -> (PX_6_16):(s'=1) + (PX_6_17):(s'=7); 
 [] s=7 -> ((1)):(s'=7); 
 [] s=8 -> ((1)):(s'=0); 
 
endmodule
 