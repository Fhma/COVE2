dtmc
  const double prob_f2_s31; 
  const double prob_f2_s11; 
  const double prob_f7_s37; 
  const double p51; 
  const double p54; 
  const double p31; 
  const double p53; 
  const double prob_f1_s29; 
  const double prob_f3_s33; 
  const double p34; 
  const double p33; 
  const double prob_f3_s32; 
  const double prob_f3_s15; 
  const double prob_f3_s35; 
  const double prob_f3_s34; 
  const double prob_f1_s4; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double prob_f4_s36; 
  const double prob_f4_s13; 
  const double p41; 
  const double p62; 
  const double p64; 
  const double p44; 
  const double prob_f1_s30; 
  const double prob_f7_s21; 
 
 const double PX_0_1 = ( ( (p31) ) * ( prob_f1_s3 ) + ( (p51) ) * ( prob_f1_s5 ) ); 
  const double PX_0_2 = (( ((-1)*p31+1) ) * ( prob_f1_s3 ));
  const double PX_0_3 = (  ( (p41) ) * ( prob_f1_s4 ) + ( ((-1)*p41+1) ) * ( prob_f1_s4 )  + ( ((-1)*p51+1) ) * ( prob_f1_s5 ) );
  const double PX_0_20 = ( ( 1 ) * ( prob_f1_s29 ) + ( 1 ) * ( prob_f1_s30 ) );
 const double PX_1_6 = ( ( (p62) ) * ( prob_f2_s11 ) + ( 1 ) * ( prob_f2_s31 ) ); 
  const double PX_1_7 = (( ((-1)*p62+1) ) * ( prob_f2_s11 ));
 const double PX_2_10 = (  ( (p53) ) * ( prob_f3_s15 ) + ( 1 ) * ( prob_f3_s33 )  + ( 1 ) * ( prob_f3_s34 ) ); 
  const double PX_2_11 = (( ((-1)*p53+1) ) * ( prob_f3_s15 ));
  const double PX_2_21 = (( 1 ) * ( prob_f3_s32 ));
  const double PX_2_22 = (( 1 ) * ( prob_f3_s35 ));
 const double PX_3_8 = (( ((-1)*p64+1) ) * ( prob_f4_s13 )); 
  const double PX_3_9 = ( ( (p64) ) * ( prob_f4_s13 ) + ( 1 ) * ( prob_f4_s36 ) );
 const double PX_4_12 = ((p54)); 
  const double PX_4_13 = (((-1)*p54+1));
 const double PX_5_14 = ((p44)); 
  const double PX_5_15 = (((-1)*p44+1));
 const double PX_6_16 = ( ( (p33) ) * ( prob_f7_s21 ) + ( 1 ) * ( prob_f7_s37 ) ); 
  const double PX_6_17 = (( ((-1)*p33+1) ) * ( prob_f7_s21 ));
 const double PX_7_18 = ((p34)); 
  const double PX_7_19 = (((-1)*p34+1));
 const double PX_8_4 = ((1)); 
 const double PX_9_5 = ((1)); 

module abstract 
s : [0 .. 9] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=6) + (PX_0_3):(s'=2) + (PX_0_20):(s'=8); 
 [] s=1 -> (PX_1_6):(s'=9) + (PX_1_7):(s'=3); 
 [] s=2 -> (PX_2_10):(s'=1) + (PX_2_11):(s'=4) + (PX_2_21):(s'=0) + (PX_2_22):(s'=5); 
 [] s=3 -> (PX_3_8):(s'=8) + (PX_3_9):(s'=9); 
 [] s=4 -> (PX_4_12):(s'=1) + (PX_4_13):(s'=8); 
 [] s=5 -> (PX_5_14):(s'=2) + (PX_5_15):(s'=8); 
 [] s=6 -> (PX_6_16):(s'=1) + (PX_6_17):(s'=7); 
 [] s=7 -> (PX_7_18):(s'=1) + (PX_7_19):(s'=8); 
 [] s=8 -> (PX_8_4):(s'=8); 
 [] s=9 -> (PX_9_5):(s'=0); 
 
endmodule
 