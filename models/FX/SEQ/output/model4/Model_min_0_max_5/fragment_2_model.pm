dtmc
  const double p61; 
 
 const double PX_6_1 = (((-1)*p61+1)); 
  const double PX_6_2 = ((p61));

module f2 
s : [6 .. 31] init 6; 
 
 [] s=6 -> (PX_6_1):(s'=11) + (PX_6_2):(s'=31); 
 [] s=11 -> true; 
 [] s=31 -> true; 
 
endmodule
label " prob_f2_s11 "= (s = 11); 
 label " prob_f2_s31 " = (s = 31); 
 