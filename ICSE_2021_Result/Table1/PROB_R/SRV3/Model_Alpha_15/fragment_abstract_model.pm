dtmc
  const double r3; 
  const double r5; 
  const double r6; 
  const double p52; 
  const double p53; 
  const double z52; 
  const double z51; 
  const double z53; 
  const double prob_f5_s45; 
  const double prob_f5_s41; 
  const double prob_f8_s50; 
  const double p61; 
  const double p63; 
  const double p62; 
  const double prob_f2_s10; 
  const double prob_f2_s12; 
  const double prob_f2_s11; 
  const double p32; 
  const double prob_f8_s46; 
  const double p33; 
  const double z32; 
  const double z31; 
  const double prob_f1_s40; 
  const double z33; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double prob_f1_s39; 
  const double prob_f1_s35; 
 
 const double PX_0_1 ;// = (( (z31)/(z31+z32+z33) ) * ( prob_f1_s3 )); 
  const double PX_0_2 ;// = (( (z32)/(z31+z32+z33) ) * ( prob_f1_s3 ));
  const double PX_0_3 ;// = (( (z33)/(z31+z32+z33) ) * ( prob_f1_s3 ));
  const double PX_0_4 ;// = (( (z51)/(z51+z52+z53) ) * ( prob_f1_s5 ));
  const double PX_0_5 ;// = (( (z52)/(z51+z52+z53) ) * ( prob_f1_s5 ));
  const double PX_0_6 ;// = (( (z53)/(z51+z52+z53) ) * ( prob_f1_s5 ));
  const double PX_0_21 ;// = (  ( 1 ) * ( prob_f1_s35 ) + ( 1 ) * ( prob_f1_s39 )  + ( 1 ) * ( prob_f1_s40 ) );
 const double PX_1_8 ;// = (  ( (p61) ) * ( prob_f2_s10 ) + ( (p62) ) * ( prob_f2_s11 )  + ( (p63) ) * ( prob_f2_s12 ) ); 
  const double PX_1_9 ;// = (  ( ((-1)*p61+1) ) * ( prob_f2_s10 ) + ( ((-1)*p62+1) ) * ( prob_f2_s11 )  + ( ((-1)*p63+1) ) * ( prob_f2_s12 ) );
 const double PX_4_24 ;// = (( 1 ) * ( prob_f5_s41 )); 
  const double PX_4_31 ;// = (( 1 ) * ( prob_f5_s45 ));
 const double PX_7_32 ;// = (( 1 ) * ( prob_f8_s46 )); 
  const double PX_7_39 ;// = (( 1 ) * ( prob_f8_s50 ));
 const double PX_8_18 ;// = ((r6)); 
  const double PX_8_19 ;// = (((-1)*r6+1));
 const double PX_16_10 ;// = ((p52)); 
  const double PX_16_11 ;// = (((-1)*p52+1));
 const double PX_17_12 ;// = ((p53)); 
  const double PX_17_13 ;// = (((-1)*p53+1));
 const double PX_18_14 ;// = ((p32)); 
  const double PX_18_15 ;// = (((-1)*p32+1));
 const double PX_19_16 ;// = ((p33)); 
  const double PX_19_17 ;// = (((-1)*p33+1));
 const double PX_20_22 ;// = (( (r3) ) * ( (z31)/(z31+z32+z33) )); 
  const double PX_20_33 ;// = (((-1)*r3+1));
  const double PX_20_35 ;// = (( (r3) ) * ( (z32)/(z31+z32+z33) ));
  const double PX_20_37 ;// = (( (r3) ) * ( (z33)/(z31+z32+z33) ));
 const double PX_21_23 ;// = (( (r5) ) * ( (z51)/(z51+z52+z53) )); 
  const double PX_21_25 ;// = (((-1)*r5+1));
  const double PX_21_27 ;// = (( (r5) ) * ( (z52)/(z51+z52+z53) ));
  const double PX_21_29 ;// = (( (r5) ) * ( (z53)/(z51+z52+z53) ));

module abstract 
s : [0 .. 22] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=7) + (PX_0_2):(s'=18) + (PX_0_3):(s'=19) + (PX_0_4):(s'=4) + (PX_0_5):(s'=16) + (PX_0_6):(s'=17) + (PX_0_21):(s'=22); 
 [] s=1 -> (PX_1_8):(s'=15) + (PX_1_9):(s'=8); 
 [] s=4 -> (PX_4_24):(s'=1) + (PX_4_31):(s'=21); 
 [] s=7 -> (PX_7_32):(s'=1) + (PX_7_39):(s'=20); 
 [] s=8 -> (PX_8_18):(s'=1) + (PX_8_19):(s'=22); 
 [] s=9 -> (1):(s'=22); 
 [] s=10 -> (1):(s'=16); 
 [] s=11 -> (1):(s'=17); 
 [] s=12 -> (1):(s'=22); 
 [] s=13 -> (1):(s'=18); 
 [] s=14 -> (1):(s'=19); 
 [] s=15 -> ((1)):(s'=0); 
 [] s=16 -> (PX_16_10):(s'=1) + (PX_16_11):(s'=21); 
 [] s=17 -> (PX_17_12):(s'=1) + (PX_17_13):(s'=21); 
 [] s=18 -> (PX_18_14):(s'=1) + (PX_18_15):(s'=20); 
 [] s=19 -> (PX_19_16):(s'=1) + (PX_19_17):(s'=20); 
 [] s=20 -> (PX_20_22):(s'=7) + (PX_20_33):(s'=12) + (PX_20_35):(s'=13) + (PX_20_37):(s'=14); 
 [] s=21 -> (PX_21_23):(s'=4) + (PX_21_25):(s'=9) + (PX_21_27):(s'=10) + (PX_21_29):(s'=11); 
 [] s=22 -> ((1)):(s'=22); 
 
endmodule
 