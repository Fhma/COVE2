dtmc
  const double prob_f2_s14; 
  const double prob_f2_s13; 
  const double prob_f2_s12; 
  const double prob_f2_s11; 
  const double p51; 
  const double p11; 
  const double prob_f6_s15; 
  const double prob_f1_s1; 
  const double prob_f1_s4; 
  const double prob_f5_s18; 
  const double prob_f5_s17; 
  const double prob_f5_s16; 
  const double p61; 
  const double p41; 
  const double prob_f6_s6; 
 
module abstract 
s : [0 .. 7] init 0; 
 
 [] s=0 -> (( (p11) ) * ( prob_f1_s1 )):(s'=1) + ( ( ((-1)*p11+1) ) * ( prob_f1_s1 ) + ( ((-1)*p41+1) ) * ( prob_f1_s4 ) ):(s'=6) + (( (p41) ) * ( prob_f1_s4 )):(s'=4); 
 [] s=1 -> ( ( 1 ) * ( prob_f2_s11 ) + ( 1 ) * ( prob_f2_s14 ) ):(s'=6) + (( 1 ) * ( prob_f2_s12 )):(s'=5) + (( 1 ) * ( prob_f2_s13 )):(s'=3); 
 [] s=3 -> ( ((-1)*p51+1) + ( (p51) ) * ( ((-1)*p61+1) ) ):(s'=6) + (( (p51) ) * ( (p61) )):(s'=7); 
 [] s=4 -> (( 1 ) * ( prob_f5_s16 )):(s'=0) + (( 1 ) * ( prob_f5_s17 )):(s'=3) + (( 1 ) * ( prob_f5_s18 )):(s'=6); 
 [] s=5 -> ( ( ((-1)*p61+1) ) * ( prob_f6_s6 ) + ( 1 ) * ( prob_f6_s15 ) ):(s'=6) + (( (p61) ) * ( prob_f6_s6 )):(s'=7); 
 [] s=6 -> ((1)):(s'=6); 
 [] s=7 -> ((1)):(s'=7); 
 
endmodule
 