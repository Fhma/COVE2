dtmc
  const double prob_f2_s10; 
  const double r6; 
  const double prob_f2_s11; 
  const double p52; 
  const double p32; 
  const double prob_f1_s29; 
  const double z52; 
  const double z51; 
  const double z32; 
  const double z31; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double prob_f5_s36; 
  const double p61; 
  const double p62; 
  const double prob_f8_s39; 
  const double prob_f1_s33; 
  const double prob_f8_s37; 
  const double prob_f1_s32; 
  const double prob_f8_s38; 
  const double prob_f5_s35; 
  const double prob_f5_s34; 
 
 const double PX_0_1 = (( (z31)/(z31+z32) ) * ( prob_f1_s3 )); 
  const double PX_0_2 = (( (z32)/(z31+z32) ) * ( prob_f1_s3 ));
  const double PX_0_3 = (( (z51)/(z51+z52) ) * ( prob_f1_s5 ));
  const double PX_0_4 = (( (z52)/(z51+z52) ) * ( prob_f1_s5 ));
  const double PX_0_15 = (  ( 1 ) * ( prob_f1_s29 ) + ( 1 ) * ( prob_f1_s32 )  + ( 1 ) * ( prob_f1_s33 ) );
 const double PX_1_6 = ( ( (p61) ) * ( prob_f2_s10 ) + ( (p62) ) * ( prob_f2_s11 ) ); 
  const double PX_1_7 = ( ( ((-1)*p61+1) ) * ( prob_f2_s10 ) + ( ((-1)*p62+1) ) * ( prob_f2_s11 ) );
 const double PX_3_8 = ((p52)); 
  const double PX_3_9 = (((-1)*p52+1));
 const double PX_4_16 = (( 1 ) * ( prob_f5_s34 )); 
  const double PX_4_17 = (( 1 ) * ( prob_f5_s35 ));
  const double PX_4_18 = (( 1 ) * ( prob_f5_s36 ));
 const double PX_6_10 = ((p32)); 
  const double PX_6_11 = (((-1)*p32+1));
 const double PX_7_19 = (( 1 ) * ( prob_f8_s37 )); 
  const double PX_7_20 = (( 1 ) * ( prob_f8_s38 ));
  const double PX_7_21 = (( 1 ) * ( prob_f8_s39 ));
 const double PX_8_12 = ((r6)); 
  const double PX_8_13 = (((-1)*r6+1));
 const double PX_9_5 = ((1)); 
 const double PX_10_14 = ((1)); 

module abstract 
s : [0 .. 10] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=7) + (PX_0_2):(s'=6) + (PX_0_3):(s'=4) + (PX_0_4):(s'=3) + (PX_0_15):(s'=10); 
 [] s=1 -> (PX_1_6):(s'=9) + (PX_1_7):(s'=8); 
 [] s=3 -> (PX_3_8):(s'=1) + (PX_3_9):(s'=4); 
 [] s=4 -> (PX_4_16):(s'=1) + (PX_4_17):(s'=10) + (PX_4_18):(s'=3); 
 [] s=6 -> (PX_6_10):(s'=1) + (PX_6_11):(s'=7); 
 [] s=7 -> (PX_7_19):(s'=1) + (PX_7_20):(s'=10) + (PX_7_21):(s'=6); 
 [] s=8 -> (PX_8_12):(s'=1) + (PX_8_13):(s'=10); 
 [] s=9 -> (PX_9_5):(s'=0); 
 [] s=10 -> (PX_10_14):(s'=10); 
 
endmodule
 