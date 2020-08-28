dtmc
  const double z52; 
  const double z51;  
 
module f4 
s : [5 .. 14] init 5; 
 
 [] s=5 -> ((z51)/(z51+z52)):(s'=13) + ((z52)/(z51+z52)):(s'=14); 
 [] s=13 -> true; 
 [] s=14 -> true; 
 
endmodule
label " prob_f4_s13 "= (s = 13); 
 label " prob_f4_s14 " = (s = 14); 
 