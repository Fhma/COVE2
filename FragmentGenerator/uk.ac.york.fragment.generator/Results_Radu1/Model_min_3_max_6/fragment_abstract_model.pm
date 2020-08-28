dtmc
  const double p51; 
  const double y1; 
  const double y2; 
  const double prob_f1_s4; 
  const double prob_f5_s6; 
  const double prob_f5_s14; 
  const double p61; 
  const double p41; 
  const double prob_f1_s13; 
  const double prob_f1_s12; 
  const double prob_f1_s11; 
  const double z1; 
  const double z2; 
 
module abstract 
s : [0 .. 6] init 0; 
 
 [] s=0 -> (( (p41) ) * ( prob_f1_s4 )):(s'=2) + (  ( ((-1)*p41+1) ) * ( prob_f1_s4 ) + ( 1 ) * ( prob_f1_s11 )  + ( 1 ) * ( prob_f1_s13 ) ):(s'=5) + (( ( ((-1)*y1-y2+1) ) / ( ( ((-1)*y1-y2+1) ) + ( (y1) ) ) ) * ( prob_f1_s12 )):(s'=4) + (( ( (y1) ) / ( ( ((-1)*y1-y2+1) ) + ( (y1) ) ) ) * ( prob_f1_s12 )):(s'=3); 
 [] s=2 -> ((z2)):(s'=0) + ((z1)):(s'=3) + (( ((-1)*z1-z2+1) ) * ( (p41) )):(s'=2) + (( ((-1)*z1-z2+1) ) * ( ((-1)*p41+1) )):(s'=5); 
 [] s=3 -> ( ((-1)*p51+1) + ( (p51) ) * ( ((-1)*p61+1) ) ):(s'=5) + (( (p51) ) * ( (p61) )):(s'=6); 
 [] s=4 -> ( ( ((-1)*p61+1) ) * ( prob_f5_s6 ) + ( 1 ) * ( prob_f5_s14 ) ):(s'=5) + (( (p61) ) * ( prob_f5_s6 )):(s'=6); 
 [] s=5 -> ((1)):(s'=5); 
 [] s=6 -> ((1)):(s'=6); 
 
endmodule
 