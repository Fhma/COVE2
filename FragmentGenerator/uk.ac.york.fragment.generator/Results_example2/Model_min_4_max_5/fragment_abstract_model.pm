dtmc
  const double p52; 
  const double p51; 
  const double prob_f1_s26; 
  const double prob_f1_s25; 
  const double prob_f1_s24; 
  const double prob_f1_s23; 
  const double z52; 
  const double z51; 
  const double p61; 
  const double p62; 
  const double prob_f2_s12; 
  const double prob_f2_s11; 
  const double p32; 
  const double p31; 
  const double prob_f3_s14; 
  const double prob_f3_s13; 
  const double z32; 
  const double z31; 
  const double prob_f1_s4; 
  const double prob_f1_s3; 
  const double prob_f1_s5; 
  const double prob_f3_s29; 
  const double prob_f3_s28; 
  const double prob_f3_s27; 
  const double p41; 
  const double p42; 
  const double z41; 
  const double z42; 
 
module abstract 
s : [0 .. 6] init 0; 
 
 [] s=0 -> (( (z31)/(z31+z32) ) * ( prob_f1_s3 )):(s'=4) + (( (z32)/(z31+z32) ) * ( prob_f1_s3 )):(s'=5) + (     ( 1 ) * ( prob_f1_s23 ) + ( 1 ) * ( prob_f1_s24 )  + ( 1 ) * ( prob_f1_s25 )  + ( 1 ) * ( prob_f1_s26 )  + (  ( (z41)/(z41+z42) ) * ( ((-1)*p41+1) ) + ( (z42)/(z41+z42) ) * ( ((-1)*p42+1) )  ) * ( prob_f1_s4 )  + (  ( (z51)/(z51+z52) ) * ( ((-1)*p51+1) ) + ( (z52)/(z51+z52) ) * ( ((-1)*p52+1) )  ) * ( prob_f1_s5 ) ):(s'=6) + ((  ( (z41)/(z41+z42) ) * ( (p41) ) + ( (z42)/(z41+z42) ) * ( (p42) )  ) * ( prob_f1_s4 )):(s'=2) + ((  ( (z51)/(z51+z52) ) * ( (p51) ) + ( (z52)/(z51+z52) ) * ( (p52) )  ) * ( prob_f1_s5 )):(s'=1); 
 [] s=1 -> ( ( ((-1)*p61+1) ) * ( prob_f2_s11 ) + ( ((-1)*p62+1) ) * ( prob_f2_s12 ) ):(s'=6) + ( ( (p61) ) * ( prob_f2_s11 ) + ( (p62) ) * ( prob_f2_s12 ) ):(s'=3); 
 [] s=2 -> ( ( (p51) ) * ( prob_f3_s13 ) + ( (p52) ) * ( prob_f3_s14 ) ):(s'=1) + (   ( ((-1)*p51+1) ) * ( prob_f3_s13 ) + ( ((-1)*p52+1) ) * ( prob_f3_s14 )  + ( 1 ) * ( prob_f3_s28 )  + ( 1 ) * ( prob_f3_s29 ) ):(s'=6) + (( 1 ) * ( prob_f3_s27 )):(s'=0); 
 [] s=3 -> ((1)):(s'=0); 
 [] s=4 -> ((p31)):(s'=1) + (((-1)*p31+1)):(s'=6); 
 [] s=5 -> ((p32)):(s'=1) + (((-1)*p32+1)):(s'=6); 
 [] s=6 -> ((1)):(s'=6); 
 
endmodule
 