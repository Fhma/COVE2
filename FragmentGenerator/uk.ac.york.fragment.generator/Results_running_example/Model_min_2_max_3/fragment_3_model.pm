dtmc
  const double alpha1; 
 
module f3 
s : [4 .. 6] init 4; 
 
 [] s=4 -> ((alpha1)):(s'=5) + (((-1)*alpha1+1)):(s'=6); 
 [] s=5 -> true; 
 [] s=6 -> true; 
 
endmodule
label " prob_f3_s5 "= (s = 5); 
 label " prob_f3_s6 " = (s = 6); 
 