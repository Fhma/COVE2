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
  const double p61; 
  const double p62; 
  const double prob_f1_s18; 
  const double prob_f1_s17; 
  const double prob_f1_s14; 
  const double prob_f1_s13; 
 
module abstract 
s : [0 .. 3] init 0; 
 
 [] s=0 -> (   ( (p51) ) * ( prob_f1_s13 ) + ( (p52) ) * ( prob_f1_s14 )  + ( (p31) ) * ( prob_f1_s17 )  + ( (p32) ) * ( prob_f1_s18 ) ):(s'=1) + (         ( ((-1)*p51+1) ) * ( prob_f1_s13 ) + ( ((-1)*p52+1) ) * ( prob_f1_s14 )  + ( ((-1)*p31+1) ) * ( prob_f1_s17 )  + ( ((-1)*p32+1) ) * ( prob_f1_s18 )  + ( 1 ) * ( prob_f1_s23 )  + ( 1 ) * ( prob_f1_s24 )  + ( 1 ) * ( prob_f1_s25 )  + ( 1 ) * ( prob_f1_s26 )  + ( 1 ) * ( prob_f1_s27 )  + ( 1 ) * ( prob_f1_s28 ) ):(s'=3); 
 [] s=1 -> ( ( ((-1)*p61+1) ) * ( prob_f2_s11 ) + ( ((-1)*p62+1) ) * ( prob_f2_s12 ) ):(s'=3) + ( ( (p61) ) * ( prob_f2_s11 ) + ( (p62) ) * ( prob_f2_s12 ) ):(s'=2); 
 [] s=2 -> ((1)):(s'=0); 
 [] s=3 -> ((1)):(s'=3); 
 
endmodule
 