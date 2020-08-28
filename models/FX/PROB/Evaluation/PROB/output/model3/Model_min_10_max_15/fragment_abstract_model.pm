dtmc
  const double p52; 
  const double p51; 
  const double p53; 
  const double prob_f1_s29; 
  const double z52; 
  const double z51; 
  const double z53; 
  const double p61; 
  const double p63; 
  const double p62; 
  const double prob_f2_s13; 
  const double prob_f2_s12; 
  const double prob_f2_s11; 
  const double p32; 
  const double p31; 
  const double p33; 
  const double z32; 
  const double z31; 
  const double z33; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double prob_f1_s37; 
  const double prob_f1_s36; 
  const double prob_f1_s35; 
  const double prob_f1_s34; 
  const double prob_f1_s33; 
  const double prob_f1_s32; 
  const double prob_f1_s31; 
  const double prob_f1_s30; 
 
 const double PX_0_1 = (( (z31)/(z31+z32+z33) ) * ( prob_f1_s3 )); 
  const double PX_0_2 = (( (z32)/(z31+z32+z33) ) * ( prob_f1_s3 ));
  const double PX_0_3 = (( (z33)/(z31+z32+z33) ) * ( prob_f1_s3 ));
  const double PX_0_4 = (( (z51)/(z51+z52+z53) ) * ( prob_f1_s5 ));
  const double PX_0_5 = (( (z52)/(z51+z52+z53) ) * ( prob_f1_s5 ));
  const double PX_0_6 = (( (z53)/(z51+z52+z53) ) * ( prob_f1_s5 ));
  const double PX_0_23 = (        ( 1 ) * ( prob_f1_s29 ) + ( 1 ) * ( prob_f1_s30 )  + ( 1 ) * ( prob_f1_s31 )  + ( 1 ) * ( prob_f1_s32 )  + ( 1 ) * ( prob_f1_s33 )  + ( 1 ) * ( prob_f1_s34 )  + ( 1 ) * ( prob_f1_s35 )  + ( 1 ) * ( prob_f1_s36 )  + ( 1 ) * ( prob_f1_s37 ) );
 const double PX_1_9 = (  ( ((-1)*p61+1) ) * ( prob_f2_s11 ) + ( ((-1)*p62+1) ) * ( prob_f2_s12 )  + ( ((-1)*p63+1) ) * ( prob_f2_s13 ) ); 
  const double PX_1_10 = (  ( (p61) ) * ( prob_f2_s11 ) + ( (p62) ) * ( prob_f2_s12 )  + ( (p63) ) * ( prob_f2_s13 ) );
 const double PX_2_11 = ((p51)); 
  const double PX_2_12 = (((-1)*p51+1));
 const double PX_3_13 = ((p52)); 
  const double PX_3_14 = (((-1)*p52+1));
 const double PX_4_15 = ((p53)); 
  const double PX_4_16 = (((-1)*p53+1));
 const double PX_5_17 = ((p31)); 
  const double PX_5_18 = (((-1)*p31+1));
 const double PX_6_19 = ((p32)); 
  const double PX_6_20 = (((-1)*p32+1));
 const double PX_7_21 = ((p33)); 
  const double PX_7_22 = (((-1)*p33+1));
 const double PX_8_7 = ((1)); 
 const double PX_9_8 = ((1)); 

module abstract 
s : [0 .. 9] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=5) + (PX_0_2):(s'=6) + (PX_0_3):(s'=7) + (PX_0_4):(s'=2) + (PX_0_5):(s'=3) + (PX_0_6):(s'=4) + (PX_0_23):(s'=8); 
 [] s=1 -> (PX_1_9):(s'=8) + (PX_1_10):(s'=9); 
 [] s=2 -> (PX_2_11):(s'=1) + (PX_2_12):(s'=8); 
 [] s=3 -> (PX_3_13):(s'=1) + (PX_3_14):(s'=8); 
 [] s=4 -> (PX_4_15):(s'=1) + (PX_4_16):(s'=8); 
 [] s=5 -> (PX_5_17):(s'=1) + (PX_5_18):(s'=8); 
 [] s=6 -> (PX_6_19):(s'=1) + (PX_6_20):(s'=8); 
 [] s=7 -> (PX_7_21):(s'=1) + (PX_7_22):(s'=8); 
 [] s=8 -> (PX_8_7):(s'=8); 
 [] s=9 -> (PX_9_8):(s'=0); 
 
endmodule
 