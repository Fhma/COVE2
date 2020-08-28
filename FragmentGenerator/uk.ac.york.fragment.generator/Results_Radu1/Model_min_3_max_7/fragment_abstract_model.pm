dtmc
  const double p51; 
  const double y1; 
  const double y2; 
  const double p61; 
  const double prob_f1_s15; 
  const double prob_f1_s14; 
  const double prob_f1_s13; 
  const double prob_f1_s12; 
  const double prob_f1_s11; 
  const double prob_f4_s6; 
  const double prob_f4_s16; 
 
module abstract 
s : [0 .. 5] init 0; 
 
 [] s=0 -> (  ( 1 ) * ( prob_f1_s11 ) + ( 1 ) * ( prob_f1_s12 )  + ( 1 ) * ( prob_f1_s14 ) ):(s'=4) + (( ( ((-1)*y1-y2+1) ) / ( ( ((-1)*y1-y2+1) ) + ( (y1) ) ) ) * ( prob_f1_s13 )):(s'=3) + ( ( ( (y1) ) / ( ( ((-1)*y1-y2+1) ) + ( (y1) ) ) ) * ( prob_f1_s13 ) + ( 1 ) * ( prob_f1_s15 ) ):(s'=2); 
 [] s=2 -> ( ((-1)*p51+1) + ( (p51) ) * ( ((-1)*p61+1) ) ):(s'=4) + (( (p51) ) * ( (p61) )):(s'=5); 
 [] s=3 -> ( ( ((-1)*p61+1) ) * ( prob_f4_s6 ) + ( 1 ) * ( prob_f4_s16 ) ):(s'=4) + (( (p61) ) * ( prob_f4_s6 )):(s'=5); 
 [] s=4 -> ((1)):(s'=4); 
 [] s=5 -> ((1)):(s'=5); 
 
endmodule
 