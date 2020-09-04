dtmc
 //const double p13; 
 
 const double P11_15_1;// = ((p13)); 
  const double P11_15_2 ;// = (((-1)*p13+1));

module f11 
s : [15 .. 119] init 15; 
 
 [] s=15 -> (P11_15_1):(s'=16) + (P11_15_2):(s'=119); 
 [] s=16 -> true; 
 [] s=119 -> true; 
 
endmodule
label " prob_f11_s16 "= (s = 16); 
 label " prob_f11_s119 " = (s = 119); 
 