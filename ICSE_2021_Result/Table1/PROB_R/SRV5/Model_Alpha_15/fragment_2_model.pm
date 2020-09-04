dtmc
     //const double z61; 
  // const double z63;  
  // const double z62;  
  // const double z65;  
  // const double z64;  
 
 const double P2_6_1;// = ((z61)/(z61+z62+z63+z64+z65)); 
  const double P2_6_2 ;// = ((z62)/(z61+z62+z63+z64+z65));
  const double P2_6_3 ;// = ((z63)/(z61+z62+z63+z64+z65));
  const double P2_6_4 ;// = ((z64)/(z61+z62+z63+z64+z65));
  const double P2_6_5 ;// = ((z65)/(z61+z62+z63+z64+z65));

module f2 
s : [6 .. 14] init 6; 
 
 [] s=6 -> (P2_6_1):(s'=10) + (P2_6_2):(s'=11) + (P2_6_3):(s'=12) + (P2_6_4):(s'=13) + (P2_6_5):(s'=14); 
 [] s=10 -> true; 
 [] s=11 -> true; 
 [] s=12 -> true; 
 [] s=13 -> true; 
 [] s=14 -> true; 
 
endmodule
label " prob_f2_s10 "= (s = 10); 
 label " prob_f2_s11 " = (s = 11); 
 label " prob_f2_s12 " = (s = 12); 
 label " prob_f2_s13 " = (s = 13); 
 label " prob_f2_s14 " = (s = 14); 
 