dtmc
  const double prob_f2_s38; 
  const double prob_f2_s11; 
  const double prob_f3_s39; 
  const double p51; 
  const double prob_f8_s43; 
  const double p31; 
  const double p53; 
  const double p55; 
  const double p33; 
  const double prob_f6_s18; 
  const double p35; 
  const double prob_f3_s13; 
  const double prob_f8_s26; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double prob_f5_s40; 
  const double prob_f5_s16; 
  const double prob_f7_s24; 
  const double p62; 
  const double prob_f6_s41; 
  const double p65; 
  const double p64; 
  const double prob_f1_s37; 
  const double prob_f1_s36; 
  const double prob_f1_s35; 
  const double prob_f7_s42; 
 
 const double PX_0_1 ;// = ( ( (p31) ) * ( prob_f1_s3 ) + ( (p51) ) * ( prob_f1_s5 ) ); 
  const double PX_0_2 ;// = (( ((-1)*p31+1) ) * ( prob_f1_s3 ));
  const double PX_0_3 ;// = (( ((-1)*p51+1) ) * ( prob_f1_s5 ));
  const double PX_0_20 ;// = (  ( 1 ) * ( prob_f1_s35 ) + ( 1 ) * ( prob_f1_s36 )  + ( 1 ) * ( prob_f1_s37 ) );
 const double PX_1_6 ;// = ( ( (p62) ) * ( prob_f2_s11 ) + ( 1 ) * ( prob_f2_s38 ) ); 
  const double PX_1_7 ;// = (( ((-1)*p62+1) ) * ( prob_f2_s11 ));
 const double PX_2_8 ;// = ( ( (p64) ) * ( prob_f3_s13 ) + ( 1 ) * ( prob_f3_s39 ) ); 
  const double PX_2_9 ;// = (( ((-1)*p64+1) ) * ( prob_f3_s13 ));
 const double PX_3_10 ;// = (((-1)*p65+1)); 
  const double PX_3_11 ;// = ((p65));
 const double PX_4_12 ;// = ( ( (p53) ) * ( prob_f5_s16 ) + ( 1 ) * ( prob_f5_s40 ) ); 
  const double PX_4_13 ;// = (( ((-1)*p53+1) ) * ( prob_f5_s16 ));
 const double PX_5_14 ;// = ( ( (p55) ) * ( prob_f6_s18 ) + ( 1 ) * ( prob_f6_s41 ) ); 
  const double PX_5_15 ;// = (( ((-1)*p55+1) ) * ( prob_f6_s18 ));
 const double PX_6_16 ;// = ( ( (p33) ) * ( prob_f7_s24 ) + ( 1 ) * ( prob_f7_s42 ) ); 
  const double PX_6_17 ;// = (( ((-1)*p33+1) ) * ( prob_f7_s24 ));
 const double PX_7_18 ;// = ( ( (p35) ) * ( prob_f8_s26 ) + ( 1 ) * ( prob_f8_s43 ) ); 
  const double PX_7_19 ;// = (( ((-1)*p35+1) ) * ( prob_f8_s26 ));

module abstract 
s : [0 .. 9] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=6) + (PX_0_3):(s'=4) + (PX_0_20):(s'=8); 
 [] s=1 -> (PX_1_6):(s'=9) + (PX_1_7):(s'=2); 
 [] s=2 -> (PX_2_8):(s'=9) + (PX_2_9):(s'=3); 
 [] s=3 -> (PX_3_10):(s'=8) + (PX_3_11):(s'=9); 
 [] s=4 -> (PX_4_12):(s'=1) + (PX_4_13):(s'=5); 
 [] s=5 -> (PX_5_14):(s'=1) + (PX_5_15):(s'=8); 
 [] s=6 -> (PX_6_16):(s'=1) + (PX_6_17):(s'=7); 
 [] s=7 -> (PX_7_18):(s'=1) + (PX_7_19):(s'=8); 
 [] s=8 -> ((1)):(s'=8); 
 [] s=9 -> ((1)):(s'=0); 
 
endmodule
 