dtmc
  const double p22; 
  const double prob_f1_s15; 
  const double prob_f1_s11; 
  const double prob_f4_s7; 
  const double prob_f1_s4; 
  const double prob_f1_s3; 
  const double prob_f4_s8; 
  const double alpha1; 
 
module abstract 
s : [0 .. 5] init 0; 
 
 [] s=0 -> ( ( (1) ) * ( prob_f1_s3 ) + ( (1) ) * ( prob_f1_s11 ) ):(s'=4) + (( (alpha1) ) * ( prob_f1_s4 )):(s'=3) + (( ((-1)*alpha1+1) ) * ( prob_f1_s4 )):(s'=2) + (( 1 ) * ( prob_f1_s15 )):(s'=5); 
 [] s=2 -> (( (p22) ) * ( (1) )):(s'=5) + (( ((-1)*p22+1) ) * ( (1) )):(s'=4); 
 [] s=3 -> (( (1) ) * ( prob_f4_s7 )):(s'=5) + (( (1) ) * ( prob_f4_s8 )):(s'=4); 
 [] s=4 -> ((1)):(s'=4); 
 [] s=5 -> ((1)):(s'=5); 
 
endmodule
 