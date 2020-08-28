dtmc
  const double p32; 
 
 const double PX_20_1 = (((-1)*p32+1)); 
  const double PX_20_2 = ((p32));

module f7 
s : [20 .. 37] init 20; 
 
 [] s=20 -> (PX_20_1):(s'=21) + (PX_20_2):(s'=37); 
 [] s=21 -> true; 
 [] s=37 -> true; 
 
endmodule
label " prob_f7_s21 "= (s = 21); 
 label " prob_f7_s37 " = (s = 37); 
 