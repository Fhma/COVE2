dtmc
  const double z61; 
  const double z62;  
 
module f2 
s : [6 .. 12] init 6; 
 
 [] s=6 -> ((z61)/(z61+z62)):(s'=11) + ((z62)/(z61+z62)):(s'=12); 
 [] s=11 -> true; 
 [] s=12 -> true; 
 
endmodule
label " prob_f2_s11 "= (s = 11); 
 label " prob_f2_s12 " = (s = 12); 
 