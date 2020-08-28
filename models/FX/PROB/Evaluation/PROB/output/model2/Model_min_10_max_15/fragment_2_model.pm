dtmc
  const double z61; 
  const double z62;  
 
 const double PX_6_1 = ((z61)/(z61+z62)); 
  const double PX_6_2 = ((z62)/(z61+z62));

module f2 
s : [6 .. 12] init 6; 
 
 [] s=6 -> (PX_6_1):(s'=11) + (PX_6_2):(s'=12); 
 [] s=11 -> true; 
 [] s=12 -> true; 
 
endmodule
label " prob_f2_s11 "= (s = 11); 
 label " prob_f2_s12 " = (s = 12); 
 