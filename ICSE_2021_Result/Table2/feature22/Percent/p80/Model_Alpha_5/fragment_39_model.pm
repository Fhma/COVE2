dtmc
 //const double p66; 
 
 const double P39_87_1;// = ((p66)); 
  const double P39_87_2 ;// = (((-1)*p66+1));

module f39 
s : [87 .. 144] init 87; 
 
 [] s=87 -> (P39_87_1):(s'=88) + (P39_87_2):(s'=144); 
 [] s=88 -> true; 
 [] s=144 -> true; 
 
endmodule
label " prob_f39_s88 "= (s = 88); 
 label " prob_f39_s144 " = (s = 144); 
 