dtmc
 //const double p15; 
 
 const double P11_18_1;// = ((p15)); 
  const double P11_18_2 ;// = (((-1)*p15+1));

module f11 
s : [18 .. 127] init 18; 
 
 [] s=18 -> (P11_18_1):(s'=19) + (P11_18_2):(s'=127); 
 [] s=19 -> true; 
 [] s=127 -> true; 
 
endmodule
label " prob_f11_s19 "= (s = 19); 
 label " prob_f11_s127 " = (s = 127); 
 