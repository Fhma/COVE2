dtmc
  const double p61; 
 
 const double PX_6_1 = (((-1)*p61+1)); 
  const double PX_6_2 = ((p61));

module f2 
s : [6 .. 26] init 6; 
 
 [] s=6 -> (PX_6_1):(s'=11) + (PX_6_2):(s'=26); 
 [] s=11 -> true; 
 [] s=26 -> true; 
 
endmodule
label " prob_f2_s11 "= (s = 11); 
 label " prob_f2_s26 " = (s = 26); 
 