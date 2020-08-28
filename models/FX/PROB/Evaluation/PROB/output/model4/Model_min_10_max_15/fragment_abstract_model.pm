dtmc
  const double p52; 
  const double p51; 
  const double p54; 
  const double p53; 
  const double z52; 
  const double z51; 
  const double z54; 
  const double z53; 
  const double p61; 
  const double p63; 
  const double p62; 
  const double p64; 
  const double prob_f2_s14; 
  const double prob_f2_s13; 
  const double prob_f2_s12; 
  const double prob_f2_s11; 
  const double p32; 
  const double p31; 
  const double p34; 
  const double p33; 
  const double prob_f1_s46; 
  const double prob_f1_s45; 
  const double prob_f1_s44; 
  const double prob_f1_s43; 
  const double z32; 
  const double prob_f1_s42; 
  const double z31; 
  const double prob_f1_s41; 
  const double z34; 
  const double prob_f1_s40; 
  const double z33; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double prob_f1_s39; 
  const double prob_f1_s38; 
  const double prob_f1_s37; 
  const double prob_f1_s36; 
  const double prob_f1_s35; 
 
 const double PX_0_1 = (( (z31)/(z31+z32+z33+z34) ) * ( prob_f1_s3 )); 
  const double PX_0_2 = (( (z32)/(z31+z32+z33+z34) ) * ( prob_f1_s3 ));
  const double PX_0_3 = (( (z33)/(z31+z32+z33+z34) ) * ( prob_f1_s3 ));
  const double PX_0_4 = (( (z34)/(z31+z32+z33+z34) ) * ( prob_f1_s3 ));
  const double PX_0_5 = (( (z51)/(z51+z52+z53+z54) ) * ( prob_f1_s5 ));
  const double PX_0_6 = (( (z52)/(z51+z52+z53+z54) ) * ( prob_f1_s5 ));
  const double PX_0_7 = (( (z53)/(z51+z52+z53+z54) ) * ( prob_f1_s5 ));
  const double PX_0_8 = (( (z54)/(z51+z52+z53+z54) ) * ( prob_f1_s5 ));
  const double PX_0_29 = (           ( 1 ) * ( prob_f1_s35 ) + ( 1 ) * ( prob_f1_s36 )  + ( 1 ) * ( prob_f1_s37 )  + ( 1 ) * ( prob_f1_s38 )  + ( 1 ) * ( prob_f1_s39 )  + ( 1 ) * ( prob_f1_s40 )  + ( 1 ) * ( prob_f1_s41 )  + ( 1 ) * ( prob_f1_s42 )  + ( 1 ) * ( prob_f1_s43 )  + ( 1 ) * ( prob_f1_s44 )  + ( 1 ) * ( prob_f1_s45 )  + ( 1 ) * ( prob_f1_s46 ) );
 const double PX_1_11 = (   ( ((-1)*p61+1) ) * ( prob_f2_s11 ) + ( ((-1)*p62+1) ) * ( prob_f2_s12 )  + ( ((-1)*p63+1) ) * ( prob_f2_s13 )  + ( ((-1)*p64+1) ) * ( prob_f2_s14 ) ); 
  const double PX_1_12 = (   ( (p61) ) * ( prob_f2_s11 ) + ( (p62) ) * ( prob_f2_s12 )  + ( (p63) ) * ( prob_f2_s13 )  + ( (p64) ) * ( prob_f2_s14 ) );
 const double PX_2_13 = ((p51)); 
  const double PX_2_14 = (((-1)*p51+1));
 const double PX_3_15 = ((p52)); 
  const double PX_3_16 = (((-1)*p52+1));
 const double PX_4_17 = ((p53)); 
  const double PX_4_18 = (((-1)*p53+1));
 const double PX_5_19 = ((p54)); 
  const double PX_5_20 = (((-1)*p54+1));
 const double PX_6_21 = ((p31)); 
  const double PX_6_22 = (((-1)*p31+1));
 const double PX_7_23 = ((p32)); 
  const double PX_7_24 = (((-1)*p32+1));
 const double PX_8_25 = ((p33)); 
  const double PX_8_26 = (((-1)*p33+1));
 const double PX_9_27 = ((p34)); 
  const double PX_9_28 = (((-1)*p34+1));
 const double PX_10_9 = ((1)); 
 const double PX_11_10 = ((1)); 

module abstract 
s : [0 .. 11] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=6) + (PX_0_2):(s'=7) + (PX_0_3):(s'=8) + (PX_0_4):(s'=9) + (PX_0_5):(s'=2) + (PX_0_6):(s'=3) + (PX_0_7):(s'=4) + (PX_0_8):(s'=5) + (PX_0_29):(s'=10); 
 [] s=1 -> (PX_1_11):(s'=10) + (PX_1_12):(s'=11); 
 [] s=2 -> (PX_2_13):(s'=1) + (PX_2_14):(s'=10); 
 [] s=3 -> (PX_3_15):(s'=1) + (PX_3_16):(s'=10); 
 [] s=4 -> (PX_4_17):(s'=1) + (PX_4_18):(s'=10); 
 [] s=5 -> (PX_5_19):(s'=1) + (PX_5_20):(s'=10); 
 [] s=6 -> (PX_6_21):(s'=1) + (PX_6_22):(s'=10); 
 [] s=7 -> (PX_7_23):(s'=1) + (PX_7_24):(s'=10); 
 [] s=8 -> (PX_8_25):(s'=1) + (PX_8_26):(s'=10); 
 [] s=9 -> (PX_9_27):(s'=1) + (PX_9_28):(s'=10); 
 [] s=10 -> (PX_10_9):(s'=10); 
 [] s=11 -> (PX_11_10):(s'=0); 
 
endmodule
 