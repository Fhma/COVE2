dtmc
  const double p51; 
  const double prob_f3_s14; 
  const double y1; 
  const double prob_f3_s6; 
  const double y2; 
  const double prob_f1_s4; 
  const double p61; 
  const double p41; 
  const double prob_f1_s13; 
  const double prob_f1_s12; 
  const double prob_f1_s11; 
  const double prob_f4_s16; 
  const double prob_f4_s15; 
  const double prob_f4_s17; 
 
 const double PX_0_1 ;// = (( (p41) ) * ( prob_f1_s4 )); 
  const double PX_0_2 ;// = (  ( ((-1)*p41+(1)) ) * ( prob_f1_s4 ) + ( 1 ) * ( prob_f1_s11 )  + ( 1 ) * ( prob_f1_s13 ) );
  const double PX_0_8 ;// = (( ( ((-1)*y1-y2+(1)) ) / ( ( ((-1)*y1-y2+(1)) ) + ( (y1) ) ) ) * ( prob_f1_s12 ));
  const double PX_0_9 ;// = (( ( (y1) ) / ( ( ((-1)*y1-y2+(1)) ) + ( (y1) ) ) ) * ( prob_f1_s12 ));
 const double PX_2_4 ;// = ( ( ((-1)*p61+(1)) ) * ( prob_f3_s6 ) + ( 1 ) * ( prob_f3_s14 ) ); 
  const double PX_2_5 ;// = (( (p61) ) * ( prob_f3_s6 ));
 const double PX_3_11 ;// = (( 1 ) * ( prob_f4_s15 )); 
  const double PX_3_12 ;// = (( 1 ) * ( prob_f4_s16 ));
  const double PX_3_13 ;// = (( 1 ) * ( prob_f4_s17 ));
 const double PX_4_3 ;// = ( ((-1)*p51+(1)) + ( (p51) ) * ( ((-1)*p61+(1)) ) ); 
  const double PX_4_10 ;// = (( (p51) ) * ( (p61) ));

module abstract 
s : [0 .. 6] init 0; 
 
 [] s=0 -> (PX_0_1):(s'=3) + (PX_0_2):(s'=5) + (PX_0_8):(s'=2) + (PX_0_9):(s'=4); 
 [] s=2 -> (PX_2_4):(s'=5) + (PX_2_5):(s'=6); 
 [] s=3 -> (PX_3_11):(s'=0) + (PX_3_12):(s'=4) + (PX_3_13):(s'=5); 
 [] s=4 -> (PX_4_3):(s'=5) + (PX_4_10):(s'=6); 
 [] s=5 -> ((1)):(s'=5); 
 [] s=6 -> ((1)):(s'=0); 
 
endmodule
 