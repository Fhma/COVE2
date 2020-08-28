dtmc
  const double x; 
 
module f1 
s : [0 .. 4] init 0; 
 
 [] s=0 -> ((x)):(s'=1) + (((-1)*x+1)):(s'=4); 
 [] s=1 -> true; 
 [] s=4 -> true; 
 
endmodule
label " prob_f1_s1 "= (s = 1); 
 label " prob_f1_s4 " = (s = 4); 
 