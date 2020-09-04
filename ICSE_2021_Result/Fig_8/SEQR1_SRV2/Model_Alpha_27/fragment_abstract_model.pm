dtmc
  const double prob_f2_s36; 
  const double prob_f2_s35; 
  const double p62; 
  const double prob_f1_s29; 
  const double prob_f1_s34; 
  const double prob_f1_s33; 
  const double prob_f1_s10; 
  const double prob_f1_s32; 
  const double prob_f1_s31; 
  const double prob_f1_s30; 
 
 const double PX_0_2 ;// = ( ( (p62) ) * ( prob_f1_s10 ) + ( 1 ) * ( prob_f1_s29 ) ); 
  const double PX_0_3 ;// = (( ((-1)*p62+1) ) * ( prob_f1_s10 ));
  const double PX_0_5 ;// = (    ( 1 ) * ( prob_f1_s30 ) + ( 1 ) * ( prob_f1_s31 )  + ( 1 ) * ( prob_f1_s32 )  + ( 1 ) * ( prob_f1_s33 )  + ( 1 ) * ( prob_f1_s34 ) );
 const double PX_1_6 ;// = (( 1 ) * ( prob_f2_s35 )); 
  const double PX_1_7 ;// = (( 1 ) * ( prob_f2_s36 ));

module abstract 
s : [0 .. 3] init 0; 
 
 [] s=0 -> (PX_0_2):(s'=2) + (PX_0_3):(s'=1) + (PX_0_5):(s'=3); 
 [] s=1 -> (PX_1_6):(s'=3) + (PX_1_7):(s'=2); 
 [] s=2 -> ((1)):(s'=0); 
 [] s=3 -> ((1)):(s'=3); 
 
endmodule
 