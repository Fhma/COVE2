dtmc
  const double p52; 
  const double p51; 
  const double p12; 
  const double p11; 
  const double z12; 
  const double z11; 
  const double prob_f7_s27; 
  const double prob_f7_s28; 
  const double prob_f7_s25; 
  const double prob_f7_s26; 
  const double prob_f6_s22; 
  const double prob_f6_s23; 
  const double p61; 
  const double prob_f6_s21; 
  const double p62; 
  const double p21; 
  const double p22; 
  const double prob_f6_s24; 
  const double prob_f3_s18; 
  const double prob_f3_s17; 
  const double p32; 
  const double p31; 
  const double prob_f1_s1; 
  const double prob_f1_s4; 
  const double prob_f2_s19; 
  const double prob_f2_s20; 
  const double prob_f4_s14; 
  const double prob_f4_s13; 
  const double p41; 
  const double p42; 
  const double z41; 
  const double prob_f5_s12; 
  const double z42; 
  const double prob_f5_s11; 
 
module abstract 
s : [0 .. 8] init 0; 
 
 [] s=0 -> ((  ( (z11)/(z11+z12) ) * ( (p11) ) + ( (z12)/(z11+z12) ) * ( (p12) )  ) * ( prob_f1_s1 )):(s'=1) + ( (  ( (z11)/(z11+z12) ) * ( ((-1)*p11+1) ) + ( (z12)/(z11+z12) ) * ( ((-1)*p12+1) )  ) * ( prob_f1_s1 ) + (  ( (z41)/(z41+z42) ) * ( ((-1)*p41+1) ) + ( (z42)/(z41+z42) ) * ( ((-1)*p42+1) )  ) * ( prob_f1_s4 ) ):(s'=8) + ((  ( (z41)/(z41+z42) ) * ( (p41) ) + ( (z42)/(z41+z42) ) * ( (p42) )  ) * ( prob_f1_s4 )):(s'=6); 
 [] s=1 -> ( ( (p21) ) * ( prob_f2_s19 ) + ( (p22) ) * ( prob_f2_s20 ) ):(s'=5) + ( ( ((-1)*p21+1) ) * ( prob_f2_s19 ) + ( ((-1)*p22+1) ) * ( prob_f2_s20 ) ):(s'=8); 
 [] s=2 -> ( ( (p31) ) * ( prob_f3_s17 ) + ( (p32) ) * ( prob_f3_s18 ) ):(s'=4) + ( ( ((-1)*p31+1) ) * ( prob_f3_s17 ) + ( ((-1)*p32+1) ) * ( prob_f3_s18 ) ):(s'=8); 
 [] s=3 -> ( ( (p51) ) * ( prob_f4_s13 ) + ( (p52) ) * ( prob_f4_s14 ) ):(s'=4) + ( ( ((-1)*p51+1) ) * ( prob_f4_s13 ) + ( ((-1)*p52+1) ) * ( prob_f4_s14 ) ):(s'=8); 
 [] s=4 -> ( ( ((-1)*p61+1) ) * ( prob_f5_s11 ) + ( ((-1)*p62+1) ) * ( prob_f5_s12 ) ):(s'=8) + ( ( (p61) ) * ( prob_f5_s11 ) + ( (p62) ) * ( prob_f5_s12 ) ):(s'=7); 
 [] s=5 -> ( ( (p11) ) * ( prob_f6_s21 ) + ( (p12) ) * ( prob_f6_s22 ) ):(s'=1) + ( ( ((-1)*p11+1) ) * ( prob_f6_s21 ) + ( ((-1)*p12+1) ) * ( prob_f6_s22 ) ):(s'=8) + (( 1 ) * ( prob_f6_s23 )):(s'=2) + (( 1 ) * ( prob_f6_s24 )):(s'=3); 
 [] s=6 -> (( 1 ) * ( prob_f7_s25 )):(s'=0) + (( 1 ) * ( prob_f7_s26 )):(s'=3) + ( ( 1 ) * ( prob_f7_s27 ) + ( 1 ) * ( prob_f7_s28 ) ):(s'=8); 
 [] s=7 -> ((1)):(s'=0); 
 [] s=8 -> ((1)):(s'=8); 
 
endmodule
 