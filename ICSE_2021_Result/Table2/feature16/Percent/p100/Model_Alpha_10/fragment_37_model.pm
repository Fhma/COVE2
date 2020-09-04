dtmc
 //const double p70; 
 
 const double P37_91_1;// = ((p70)); 
  const double P37_91_2 ;// = (((-1)*p70+1));

module f37 
s : [91 .. 154] init 91; 
 
 [] s=91 -> (P37_91_1):(s'=92) + (P37_91_2):(s'=154); 
 [] s=92 -> true; 
 [] s=154 -> true; 
 
endmodule
label " prob_f37_s92 "= (s = 92); 
 label " prob_f37_s154 " = (s = 154); 
 