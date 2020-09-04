dtmc
 //const double p43; 
 
 const double P23_53_1;// = ((p43)); 
  const double P23_53_2 ;// = (((-1)*p43+1));

module f23 
s : [53 .. 122] init 53; 
 
 [] s=53 -> (P23_53_1):(s'=54) + (P23_53_2):(s'=122); 
 [] s=54 -> true; 
 [] s=122 -> true; 
 
endmodule
label " prob_f23_s54 "= (s = 54); 
 label " prob_f23_s122 " = (s = 122); 
 