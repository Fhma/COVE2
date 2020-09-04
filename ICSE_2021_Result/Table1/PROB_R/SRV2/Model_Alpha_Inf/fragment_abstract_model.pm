dtmc
  const double prob_f1_s36; 
  const double prob_f1_s35; 
  const double prob_f1_s34; 
  const double prob_f1_s33; 
  const double prob_f1_s32; 
  const double prob_f1_s31; 
  const double prob_f1_s30; 
  const double prob_f1_s29; 
 
 const double PX_0_3 ;// = (     ( 1 ) * ( prob_f1_s29 ) + ( 1 ) * ( prob_f1_s30 )  + ( 1 ) * ( prob_f1_s31 )  + ( 1 ) * ( prob_f1_s32 )  + ( 1 ) * ( prob_f1_s33 )  + ( 1 ) * ( prob_f1_s34 ) ); 
  const double PX_0_4 ;// = ( ( 1 ) * ( prob_f1_s35 ) + ( 1 ) * ( prob_f1_s36 ) );

module abstract 
s : [0 .. 2] init 0; 
 
 [] s=0 -> (PX_0_3):(s'=2) + (PX_0_4):(s'=1); 
 [] s=1 -> ((1)):(s'=0); 
 [] s=2 -> ((1)):(s'=2); 
 
endmodule
 