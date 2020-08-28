dtmc
  const double prob_f5_s28; 
  const double prob_f2_s11; 
  const double p51; 
  const double p31; 
  const double p53; 
  const double p33; 
  const double prob_f1_s25; 
  const double prob_f1_s24; 
  const double prob_f1_s23; 
  const double prob_f4_s27; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double prob_f2_s26; 
  const double prob_f5_s18; 
  const double prob_f4_s14; 
  const double p63; 
  const double p62; 
 
module abstract 
s : [0 .. 6] init 0; 
 
 [] s=0 -> ( ( (p31) ) * ( prob_f1_s3 ) + ( (p51) ) * ( prob_f1_s5 ) ):(s'=1) + (( ((-1)*p31+1) ) * ( prob_f1_s3 )):(s'=4) + (( ((-1)*p51+1) ) * ( prob_f1_s5 )):(s'=3) + (  ( 1 ) * ( prob_f1_s23 ) + ( 1 ) * ( prob_f1_s24 )  + ( 1 ) * ( prob_f1_s25 ) ):(s'=5); 
 [] s=1 -> ( ( (p62) ) * ( prob_f2_s11 ) + ( 1 ) * ( prob_f2_s26 ) ):(s'=6) + (( ((-1)*p62+1) ) * ( prob_f2_s11 )):(s'=2); 
 [] s=2 -> (((-1)*p63+1)):(s'=5) + ((p63)):(s'=6); 
 [] s=3 -> ( ( (p53) ) * ( prob_f4_s14 ) + ( 1 ) * ( prob_f4_s27 ) ):(s'=1) + (( ((-1)*p53+1) ) * ( prob_f4_s14 )):(s'=5); 
 [] s=4 -> ( ( (p33) ) * ( prob_f5_s18 ) + ( 1 ) * ( prob_f5_s28 ) ):(s'=1) + (( ((-1)*p33+1) ) * ( prob_f5_s18 )):(s'=5); 
 [] s=5 -> ((1)):(s'=5); 
 [] s=6 -> ((1)):(s'=0); 
 
endmodule
 