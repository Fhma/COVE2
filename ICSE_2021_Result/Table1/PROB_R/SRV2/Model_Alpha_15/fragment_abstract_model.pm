dtmc
  const double r3; 
  const double r5; 
  const double r6; 
  const double p52; 
  const double prob_f1_s29; 
  const double z52; 
  const double z51; 
  const double prob_f5_s37; 
  const double p61; 
  const double p62; 
  const double prob_f5_s34; 
  const double prob_f2_s10; 
  const double prob_f2_s11; 
  const double p32; 
  const double prob_f8_s41; 
  const double z32; 
  const double z31; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double prob_f1_s33; 
  const double prob_f1_s32; 
  const double prob_f8_s38; 
 
 const double PX_0_1 ;// = (( (z31)/(z31+z32) ) * ( prob_f1_s3 )); 
  const double PX_0_2 ;// = (( (z32)/(z31+z32) ) * ( prob_f1_s3 ));
  const double PX_0_3 ;// = (( (z51)/(z51+z52) ) * ( prob_f1_s5 ));
  const double PX_0_4 ;// = (( (z52)/(z51+z52) ) * ( prob_f1_s5 ));
  const double PX_0_15 ;// = (  ( 1 ) * ( prob_f1_s29 ) + ( 1 ) * ( prob_f1_s32 )  + ( 1 ) * ( prob_f1_s33 ) );
 const double PX_1_6 ;// = ( ( (p61) ) * ( prob_f2_s10 ) + ( (p62) ) * ( prob_f2_s11 ) ); 
  const double PX_1_7 ;// = ( ( ((-1)*p61+1) ) * ( prob_f2_s10 ) + ( ((-1)*p62+1) ) * ( prob_f2_s11 ) );
 const double PX_4_18 ;// = (( 1 ) * ( prob_f5_s34 )); 
  const double PX_4_23 ;// = (( 1 ) * ( prob_f5_s37 ));
 const double PX_7_24 ;// = (( 1 ) * ( prob_f8_s38 )); 
  const double PX_7_29 ;// = (( 1 ) * ( prob_f8_s41 ));
 const double PX_8_12 ;// = ((r6)); 
  const double PX_8_13 ;// = (((-1)*r6+1));
 const double PX_14_8 ;// = ((p52)); 
  const double PX_14_9 ;// = (((-1)*p52+1));
 const double PX_15_10 ;// = ((p32)); 
  const double PX_15_11 ;// = (((-1)*p32+1));
 const double PX_16_16 ;// = (( (r3) ) * ( (z31)/(z31+z32) )); 
  const double PX_16_25 ;// = (((-1)*r3+1));
  const double PX_16_27 ;// = (( (r3) ) * ( (z32)/(z31+z32) ));
 const double PX_17_17 ;// = (( (r5) ) * ( (z51)/(z51+z52) )); 
  const double PX_17_19 ;// = (((-1)*r5+1));
  const double PX_17_21 ;// = (( (r5) ) * ( (z52)/(z51+z52) ));

module abstract 
s : [0 .. 18] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=7) + (PX_0_2):(s'=15) + (PX_0_3):(s'=4) + (PX_0_4):(s'=14) + (PX_0_15):(s'=18); 
 [] s=1 -> (PX_1_6):(s'=13) + (PX_1_7):(s'=8); 
 [] s=4 -> (PX_4_18):(s'=1) + (PX_4_23):(s'=17); 
 [] s=7 -> (PX_7_24):(s'=1) + (PX_7_29):(s'=16); 
 [] s=8 -> (PX_8_12):(s'=1) + (PX_8_13):(s'=18); 
 [] s=9 -> (1):(s'=18); 
 [] s=10 -> (1):(s'=14); 
 [] s=11 -> (1):(s'=18); 
 [] s=12 -> (1):(s'=15); 
 [] s=13 -> ((1)):(s'=0); 
 [] s=14 -> (PX_14_8):(s'=1) + (PX_14_9):(s'=17); 
 [] s=15 -> (PX_15_10):(s'=1) + (PX_15_11):(s'=16); 
 [] s=16 -> (PX_16_16):(s'=7) + (PX_16_25):(s'=11) + (PX_16_27):(s'=12); 
 [] s=17 -> (PX_17_17):(s'=4) + (PX_17_19):(s'=9) + (PX_17_21):(s'=10); 
 [] s=18 -> ((1)):(s'=18); 
 
endmodule
 