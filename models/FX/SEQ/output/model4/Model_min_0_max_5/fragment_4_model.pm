dtmc
  const double p63; 
 
 const double PX_12_1 = (((-1)*p63+1)); 
  const double PX_12_2 = ((p63));

module f4 
s : [12 .. 36] init 12; 
 
 [] s=12 -> (PX_12_1):(s'=13) + (PX_12_2):(s'=36); 
 [] s=13 -> true; 
 [] s=36 -> true; 
 
endmodule
label " prob_f4_s13 "= (s = 13); 
 label " prob_f4_s36 " = (s = 36); 
 