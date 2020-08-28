dtmc
  const double prob_f1_s15; 
  const double prob_f1_s11; 
  const double prob_f1_s3; 
  const double prob_f1_s8; 
  const double prob_f1_s7; 
 
module abstract 
s : [0 .. 2] init 0; 
 
 [] s=0 -> (  ( (1) ) * ( prob_f1_s3 ) + ( (1) ) * ( prob_f1_s8 )  + ( (1) ) * ( prob_f1_s11 ) ):(s'=1) + ( ( (1) ) * ( prob_f1_s7 ) + ( 1 ) * ( prob_f1_s15 ) ):(s'=2); 
 [] s=1 -> ((1)):(s'=1); 
 [] s=2 -> ((1)):(s'=2); 
 
endmodule
 