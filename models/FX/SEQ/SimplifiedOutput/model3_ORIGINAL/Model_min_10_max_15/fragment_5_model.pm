dtmc
  const double p32; 
 
module f5 
s : [17 .. 28] init 17; 
 
 [] s=17 -> (((-1)*p32+1)):(s'=18) + ((p32)):(s'=28); 
 [] s=18 -> true; 
 [] s=28 -> true; 
 
endmodule
label " prob_f5_s18 "= (s = 18); 
 label " prob_f5_s28 " = (s = 28); 
 