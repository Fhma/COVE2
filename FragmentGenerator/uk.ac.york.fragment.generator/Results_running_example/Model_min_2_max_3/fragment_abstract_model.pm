dtmc
  const double prob_f6_s12; 
  const double p21; 
  const double p22; 
  const double prob_f1_s15; 
  const double prob_f6_s16; 
  const double x; 
  const double prob_f1_s2; 
  const double prob_f3_s5; 
  const double prob_f3_s6; 
  const double y; 
 
module abstract 
s : [0 .. 8] init 0; 
 
 [] s=0 -> (( (x) ) * ( prob_f1_s2 )):(s'=2) + (( ((-1)*x+1) ) * ( prob_f1_s2 )):(s'=5) + (( 1 ) * ( prob_f1_s15 )):(s'=1); 
 [] s=1 -> ((1)):(s'=7); 
 [] s=2 -> ( ( (p21) ) * ( prob_f3_s5 ) + ( (p22) ) * ( prob_f3_s6 ) ):(s'=3) + ( ( ((-1)*p21+1) ) * ( prob_f3_s5 ) + ( ((-1)*p22+1) ) * ( prob_f3_s6 ) ):(s'=4); 
 [] s=3 -> ((1)):(s'=8); 
 [] s=4 -> ((1)):(s'=7); 
 [] s=5 -> (( (y) ) * ( prob_f6_s12 )):(s'=0) + (( ((-1)*y+1) ) * ( prob_f6_s12 )):(s'=8) + (( 1 ) * ( prob_f6_s16 )):(s'=6); 
 [] s=6 -> ((1)):(s'=7); 
 [] s=7 -> ((1)):(s'=7); 
 [] s=8 -> ((1)):(s'=8); 
 
endmodule
 