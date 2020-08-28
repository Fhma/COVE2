dtmc
  const double p61; 
  const double p51; 
  const double p31; 
  const double prob_f1_s13; 
  const double prob_f1_s12; 
  const double prob_f1_s11; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
 
module abstract 
s : [0 .. 3] init 0; 
 
 [] s=0 -> ( ( (p31) ) * ( prob_f1_s3 ) + ( (p51) ) * ( prob_f1_s5 ) ):(s'=1) + (    ( ((-1)*p31+1) ) * ( prob_f1_s3 ) + ( ((-1)*p51+1) ) * ( prob_f1_s5 )  + ( 1 ) * ( prob_f1_s11 )  + ( 1 ) * ( prob_f1_s12 )  + ( 1 ) * ( prob_f1_s13 ) ):(s'=2); 
 [] s=1 -> (((-1)*p61+1)):(s'=2) + ((p61)):(s'=3); 
 [] s=2 -> ((1)):(s'=2); 
 [] s=3 -> ((1)):(s'=3); 
 
endmodule
 