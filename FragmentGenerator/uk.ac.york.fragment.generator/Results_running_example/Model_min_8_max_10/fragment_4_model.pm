dtmc
  const double p21; 
 
module f4 
s : [5 .. 8] init 5; 
 
 [] s=5 -> ((p21)):(s'=7) + (((-1)*p21+1)):(s'=8); 
 [] s=7 -> true; 
 [] s=8 -> true; 
 
endmodule
label " prob_f4_s7 "= (s = 7); 
 label " prob_f4_s8 " = (s = 8); 
 