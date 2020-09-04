dtmc
 //const double p14; 
 
 const double P11_15_1;// = (((-1)*p14+1)); 
  const double P11_15_2 ;// = ((p14));

module f11 
s : [15 .. 123] init 15; 
 
 [] s=15 -> (P11_15_1):(s'=122) + (P11_15_2):(s'=123); 
 [] s=122 -> true; 
 [] s=123 -> true; 
 
endmodule
label " prob_f11_s122 "= (s = 122); 
 label " prob_f11_s123 " = (s = 123); 
 