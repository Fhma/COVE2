dtmc
  const double p21; 
  const double p22; 
  const double x; 
  const double prob_f1_s2; 
  const double y; 
  const double prob_f5_s12; 
  const double prob_f2_s5; 
  const double prob_f5_s11; 
  const double prob_f1_s3; 
  const double prob_f2_s6; 
 
module abstract 
s : [0 .. 6] init 0; 
 
 [] s=0 -> (( (x) ) * ( prob_f1_s2 )):(s'=1) + (( ((-1)*x+1) ) * ( prob_f1_s2 )):(s'=4) + (( (1) ) * ( prob_f1_s3 )):(s'=5); 
 [] s=1 -> ( ( (p21) ) * ( prob_f2_s5 ) + ( (p22) ) * ( prob_f2_s6 ) ):(s'=2) + ( ( ((-1)*p21+1) ) * ( prob_f2_s5 ) + ( ((-1)*p22+1) ) * ( prob_f2_s6 ) ):(s'=3); 
 [] s=2 -> ((1)):(s'=6); 
 [] s=3 -> ((1)):(s'=5); 
 [] s=4 -> (( (1) ) * ( prob_f5_s11 )):(s'=5) + (( (y) ) * ( prob_f5_s12 )):(s'=0) + (( ((-1)*y+1) ) * ( prob_f5_s12 )):(s'=6); 
 [] s=5 -> ((1)):(s'=5); 
 [] s=6 -> ((1)):(s'=6); 
 
endmodule
 