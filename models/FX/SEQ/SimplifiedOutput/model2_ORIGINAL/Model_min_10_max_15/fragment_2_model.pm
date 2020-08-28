dtmc
  const double p61; 
 
module f2 
s : [6 .. 20] init 6; 
 
 [] s=6 -> (((-1)*p61+1)):(s'=11) + ((p61)):(s'=20); 
 [] s=11 -> true; 
 [] s=20 -> true; 
 
endmodule
label " prob_f2_s11 "= (s = 11); 
 label " prob_f2_s20 " = (s = 20); 
 