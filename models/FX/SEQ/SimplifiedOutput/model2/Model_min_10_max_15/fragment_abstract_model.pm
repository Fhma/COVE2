dtmc
  const double prob_f2_s20; 
  const double prob_f2_s11; 
  const double p52; 
  const double p51; 
  const double p62; 
  const double p32; 
  const double prob_f1_s19; 
  const double p31; 
  const double prob_f1_s18; 
  const double prob_f1_s17; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
 
 const double PX_0_1 ;// = ( ( (p31) ) * ( prob_f1_s3 ) + ( (p51) ) * ( prob_f1_s5 ) ); 
  const double PX_0_2 ;// = (( ((-1)*p31+1) ) * ( prob_f1_s3 ));
  const double PX_0_3 ;// = (( ((-1)*p51+1) ) * ( prob_f1_s5 ));
  const double PX_0_12 ;// = (  ( 1 ) * ( prob_f1_s17 ) + ( 1 ) * ( prob_f1_s18 )  + ( 1 ) * ( prob_f1_s19 ) );
 const double PX_1_6 ;// = (( ((-1)*p62+1) ) * ( prob_f2_s11 )); 
  const double PX_1_7 ;// = ( ( (p62) ) * ( prob_f2_s11 ) + ( 1 ) * ( prob_f2_s20 ) );
 const double PX_2_8 ;// = ((p52)); 
  const double PX_2_9 ;// = (((-1)*p52+1));
 const double PX_3_10 ;// = ((p32)); 
  const double PX_3_11 ;// = (((-1)*p32+1));
 const double PX_4_4 ;// = ((1)); 
 const double PX_5_5 ;// = ((1)); 

module abstract 
s : [0 .. 5] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=1) + (PX_0_2):(s'=3) + (PX_0_3):(s'=2) + (PX_0_12):(s'=4); 
 [] s=1 -> (PX_1_6):(s'=4) + (PX_1_7):(s'=5); 
 [] s=2 -> (PX_2_8):(s'=1) + (PX_2_9):(s'=4); 
 [] s=3 -> (PX_3_10):(s'=1) + (PX_3_11):(s'=4); 
 [] s=4 -> (PX_4_4):(s'=4); 
 [] s=5 -> (PX_5_5):(s'=0); 
 
endmodule
 