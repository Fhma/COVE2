dtmc
  const double prob_f2_s20; 
  const double prob_f2_s11; 
  const double p52; 
  const double p51; 
  const double p62; 
  const double p32; 
  const double prob_f1_s19; 
  const double p31; 
  const double prob_f1_s18; 
  const double prob_f1_s17; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
 
module abstract 
s : [0 .. 5] init 0; 
 
 [] s=0 -> ( ( (p31) ) * ( prob_f1_s3 ) + ( (p51) ) * ( prob_f1_s5 ) ):(s'=1) + (( ((-1)*p31+1) ) * ( prob_f1_s3 )):(s'=3) + (( ((-1)*p51+1) ) * ( prob_f1_s5 )):(s'=2) + (  ( 1 ) * ( prob_f1_s17 ) + ( 1 ) * ( prob_f1_s18 )  + ( 1 ) * ( prob_f1_s19 ) ):(s'=4); 
 [] s=1 -> (( ((-1)*p62+1) ) * ( prob_f2_s11 )):(s'=4) + ( ( (p62) ) * ( prob_f2_s11 ) + ( 1 ) * ( prob_f2_s20 ) ):(s'=5); 
 [] s=2 -> ((p52)):(s'=1) + (((-1)*p52+1)):(s'=4); 
 [] s=3 -> ((p32)):(s'=1) + (((-1)*p32+1)):(s'=4); 
 [] s=4 -> ((1)):(s'=4); 
 [] s=5 -> ((1)):(s'=0); 
 
endmodule
 