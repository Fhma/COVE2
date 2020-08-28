dtmc
  const double prob_f5_s28; 
  const double prob_f2_s11; 
  const double p51; 
  const double p31; 
  const double p53; 
  const double p33; 
  const double prob_f1_s25; 
  const double prob_f1_s24; 
  const double prob_f1_s23; 
  const double prob_f4_s27; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double prob_f2_s26; 
  const double prob_f5_s18; 
  const double prob_f4_s14; 
  const double p63; 
  const double p62; 
 
 const double PX_0_1 = ( ( (p31) ) * ( prob_f1_s3 ) + ( (p51) ) * ( prob_f1_s5 ) ); 
  const double PX_0_2 = (( ((-1)*p31+1) ) * ( prob_f1_s3 ));
  const double PX_0_3 = (( ((-1)*p51+1) ) * ( prob_f1_s5 ));
  const double PX_0_14 = (  ( 1 ) * ( prob_f1_s23 ) + ( 1 ) * ( prob_f1_s24 )  + ( 1 ) * ( prob_f1_s25 ) );
 const double PX_1_6 = ( ( (p62) ) * ( prob_f2_s11 ) + ( 1 ) * ( prob_f2_s26 ) ); 
  const double PX_1_7 = (( ((-1)*p62+1) ) * ( prob_f2_s11 ));
 const double PX_2_8 = (((-1)*p63+1)); 
  const double PX_2_9 = ((p63));
 const double PX_3_10 = ( ( (p53) ) * ( prob_f4_s14 ) + ( 1 ) * ( prob_f4_s27 ) ); 
  const double PX_3_11 = (( ((-1)*p53+1) ) * ( prob_f4_s14 ));
 const double PX_4_12 = ( ( (p33) ) * ( prob_f5_s18 ) + ( 1 ) * ( prob_f5_s28 ) ); 
  const double PX_4_13 = (( ((-1)*p33+1) ) * ( prob_f5_s18 ));
 const double PX_5_4 = ((1)); 
 const double PX_6_5 = ((1)); 

module abstract 
s : [0 .. 6] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=4) + (PX_0_3):(s'=3) + (PX_0_14):(s'=5); 
 [] s=1 -> (PX_1_6):(s'=6) + (PX_1_7):(s'=2); 
 [] s=2 -> (PX_2_8):(s'=5) + (PX_2_9):(s'=6); 
 [] s=3 -> (PX_3_10):(s'=1) + (PX_3_11):(s'=5); 
 [] s=4 -> (PX_4_12):(s'=1) + (PX_4_13):(s'=5); 
 [] s=5 -> (PX_5_4):(s'=5); 
 [] s=6 -> (PX_6_5):(s'=0); 
 
endmodule
 