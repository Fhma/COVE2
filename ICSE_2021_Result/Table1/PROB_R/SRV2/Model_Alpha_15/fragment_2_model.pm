dtmc
  //const double z61; 
  // const double z62;  
 
 const double P2_6_1;// = ((z61)/(z61+z62)); 
  const double P2_6_2 ;// = ((z62)/(z61+z62));

module f2 
s : [6 .. 11] init 6; 
 
 [] s=6 -> (P2_6_1):(s'=10) + (P2_6_2):(s'=11); 
 [] s=10 -> true; 
 [] s=11 -> true; 
 
endmodule
label " prob_f2_s10 "= (s = 10); 
 label " prob_f2_s11 " = (s = 11); 
 