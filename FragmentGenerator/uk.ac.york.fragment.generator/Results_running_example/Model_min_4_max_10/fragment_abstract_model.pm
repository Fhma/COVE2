dtmc
  const double prob_f3_s11; 
  const double prob_f3_s12; 
  const double x; 
  const double prob_f1_s2; 
  const double y; 
  const double prob_f1_s3; 
  const double prob_f2_s7; 
  const double prob_f2_s8; 
 
module abstract 
s : [0 .. 4] init 0; 
 
 [] s=0 -> (( (x) ) * ( prob_f1_s2 )):(s'=1) + (( ((-1)*x+1) ) * ( prob_f1_s2 )):(s'=2) + (( (1) ) * ( prob_f1_s3 )):(s'=3); 
 [] s=1 -> (( (1) ) * ( prob_f2_s7 )):(s'=4) + (( (1) ) * ( prob_f2_s8 )):(s'=3); 
 [] s=2 -> (( (1) ) * ( prob_f3_s11 )):(s'=3) + (( (y) ) * ( prob_f3_s12 )):(s'=0) + (( ((-1)*y+1) ) * ( prob_f3_s12 )):(s'=4); 
 [] s=3 -> ((1)):(s'=3); 
 [] s=4 -> ((1)):(s'=4); 
 
endmodule
 