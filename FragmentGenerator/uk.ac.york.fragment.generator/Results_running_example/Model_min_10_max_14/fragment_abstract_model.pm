dtmc
  const double p22; 
  const double prob_f1_s15; 
  const double prob_f1_s11; 
  const double prob_f1_s3; 
  const double prob_f1_s6; 
  const double prob_f1_s5; 
  const double p21; 
 
module abstract 
s : [0 .. 4] init 0; 
 
 [] s=0 -> ( ( (1) ) * ( prob_f1_s3 ) + ( (1) ) * ( prob_f1_s11 ) ):(s'=3) + ( ( (p21) ) * ( prob_f1_s5 ) + ( (p22) ) * ( prob_f1_s6 ) ):(s'=1) + ( ( ((-1)*p21+1) ) * ( prob_f1_s5 ) + ( ((-1)*p22+1) ) * ( prob_f1_s6 ) ):(s'=2) + (( 1 ) * ( prob_f1_s15 )):(s'=4); 
 [] s=1 -> ((1)):(s'=4); 
 [] s=2 -> ((1)):(s'=3); 
 [] s=3 -> ((1)):(s'=3); 
 [] s=4 -> ((1)):(s'=4); 
 
endmodule
 