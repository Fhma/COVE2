dtmc
  const double z21; 
  const double z22;  
 
module f2 
s : [2 .. 20] init 2; 
 
 [] s=2 -> ((z21)/(z21+z22)):(s'=19) + ((z22)/(z21+z22)):(s'=20); 
 [] s=19 -> true; 
 [] s=20 -> true; 
 
endmodule
label " prob_f2_s19 "= (s = 19); 
 label " prob_f2_s20 " = (s = 20); 
 