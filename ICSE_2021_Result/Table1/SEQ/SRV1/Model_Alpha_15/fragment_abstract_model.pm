dtmc
  const double p61; 
  const double p51; 
  const double p31; 
  const double prob_f1_s13; 
  const double prob_f1_s12; 
  const double prob_f1_s11; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
 
 const double PX_0_1 ;// = ( ( (p31) ) * ( prob_f1_s3 ) + ( (p51) ) * ( prob_f1_s5 ) ); 
  const double PX_0_2 ;// = (    ( ((-1)*p31+1) ) * ( prob_f1_s3 ) + ( ((-1)*p51+1) ) * ( prob_f1_s5 )  + ( 1 ) * ( prob_f1_s11 )  + ( 1 ) * ( prob_f1_s12 )  + ( 1 ) * ( prob_f1_s13 ) );
 const double PX_1_3 ;// = (((-1)*p61+1)); 
  const double PX_1_4 ;// = ((p61));

module abstract 
s : [0 .. 3] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=2); 
 [] s=1 -> (PX_1_3):(s'=2) + (PX_1_4):(s'=3); 
 [] s=2 -> ((1)):(s'=2); 
 [] s=3 -> ((1)):(s'=0); 
 
endmodule
 