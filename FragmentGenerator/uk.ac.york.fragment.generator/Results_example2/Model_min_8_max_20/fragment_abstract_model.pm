dtmc
  const double prob_f2_s12; 
  const double prob_f2_s11; 
  const double p52; 
  const double p51; 
  const double p32; 
  const double p31; 
  const double prob_f1_s28; 
  const double prob_f1_s27; 
  const double prob_f1_s26; 
  const double prob_f1_s25; 
  const double prob_f1_s24; 
  const double prob_f1_s23; 
  const double z52; 
  const double z51; 
  const double z32; 
  const double z31; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double p61; 
  const double p62; 
 
module abstract 
s : [0 .. 7] init 0; 
 
 [] s=0 -> (( (z31)/(z31+z32) ) * ( prob_f1_s3 )):(s'=5) + (( (z32)/(z31+z32) ) * ( prob_f1_s3 )):(s'=6) + (( (z51)/(z51+z52) ) * ( prob_f1_s5 )):(s'=3) + (( (z52)/(z51+z52) ) * ( prob_f1_s5 )):(s'=4) + (     ( 1 ) * ( prob_f1_s23 ) + ( 1 ) * ( prob_f1_s24 )  + ( 1 ) * ( prob_f1_s25 )  + ( 1 ) * ( prob_f1_s26 )  + ( 1 ) * ( prob_f1_s27 )  + ( 1 ) * ( prob_f1_s28 ) ):(s'=7); 
 [] s=1 -> ( ( ((-1)*p61+1) ) * ( prob_f2_s11 ) + ( ((-1)*p62+1) ) * ( prob_f2_s12 ) ):(s'=7) + ( ( (p61) ) * ( prob_f2_s11 ) + ( (p62) ) * ( prob_f2_s12 ) ):(s'=2); 
 [] s=2 -> ((1)):(s'=0); 
 [] s=3 -> ((p51)):(s'=1) + (((-1)*p51+1)):(s'=7); 
 [] s=4 -> ((p52)):(s'=1) + (((-1)*p52+1)):(s'=7); 
 [] s=5 -> ((p31)):(s'=1) + (((-1)*p31+1)):(s'=7); 
 [] s=6 -> ((p32)):(s'=1) + (((-1)*p32+1)):(s'=7); 
 [] s=7 -> ((1)):(s'=7); 
 
endmodule
 