dtmc
  const double z32; 
  const double z31;  
 
module f3 
s : [3 .. 18] init 3; 
 
 [] s=3 -> ((z31)/(z31+z32)):(s'=17) + ((z32)/(z31+z32)):(s'=18); 
 [] s=17 -> true; 
 [] s=18 -> true; 
 
endmodule
label " prob_f3_s17 "= (s = 17); 
 label " prob_f3_s18 " = (s = 18); 
 