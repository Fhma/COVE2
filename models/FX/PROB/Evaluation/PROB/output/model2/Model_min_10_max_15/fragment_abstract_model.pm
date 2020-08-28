dtmc
  const double prob_f2_s12; 
  const double prob_f2_s11; 
  const double p52; 
  const double p51; 
  const double p32; 
  const double p31; 
  const double prob_f1_s28; 
  const double prob_f1_s27; 
  const double prob_f1_s26; 
  const double prob_f1_s25; 
  const double prob_f1_s24; 
  const double prob_f1_s23; 
  const double z52; 
  const double z51; 
  const double z32; 
  const double z31; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double p61; 
  const double p62; 
 
 const double PX_0_1 = (( (z31)/(z31+z32) ) * ( prob_f1_s3 )); 
  const double PX_0_2 = (( (z32)/(z31+z32) ) * ( prob_f1_s3 ));
  const double PX_0_3 = (( (z51)/(z51+z52) ) * ( prob_f1_s5 ));
  const double PX_0_4 = (( (z52)/(z51+z52) ) * ( prob_f1_s5 ));
  const double PX_0_17 = (     ( 1 ) * ( prob_f1_s23 ) + ( 1 ) * ( prob_f1_s24 )  + ( 1 ) * ( prob_f1_s25 )  + ( 1 ) * ( prob_f1_s26 )  + ( 1 ) * ( prob_f1_s27 )  + ( 1 ) * ( prob_f1_s28 ) );
 const double PX_1_7 = ( ( ((-1)*p61+1) ) * ( prob_f2_s11 ) + ( ((-1)*p62+1) ) * ( prob_f2_s12 ) ); 
  const double PX_1_8 = ( ( (p61) ) * ( prob_f2_s11 ) + ( (p62) ) * ( prob_f2_s12 ) );
 const double PX_2_9 = ((p51)); 
  const double PX_2_10 = (((-1)*p51+1));
 const double PX_3_11 = ((p52)); 
  const double PX_3_12 = (((-1)*p52+1));
 const double PX_4_13 = ((p31)); 
  const double PX_4_14 = (((-1)*p31+1));
 const double PX_5_15 = ((p32)); 
  const double PX_5_16 = (((-1)*p32+1));
 const double PX_6_5 = ((1)); 
 const double PX_7_6 = ((1)); 

module abstract 
s : [0 .. 7] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=4) + (PX_0_2):(s'=5) + (PX_0_3):(s'=2) + (PX_0_4):(s'=3) + (PX_0_17):(s'=6); 
 [] s=1 -> (PX_1_7):(s'=6) + (PX_1_8):(s'=7); 
 [] s=2 -> (PX_2_9):(s'=1) + (PX_2_10):(s'=6); 
 [] s=3 -> (PX_3_11):(s'=1) + (PX_3_12):(s'=6); 
 [] s=4 -> (PX_4_13):(s'=1) + (PX_4_14):(s'=6); 
 [] s=5 -> (PX_5_15):(s'=1) + (PX_5_16):(s'=6); 
 [] s=6 -> (PX_6_5):(s'=6); 
 [] s=7 -> (PX_7_6):(s'=0); 
 
endmodule
 