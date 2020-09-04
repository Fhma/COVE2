dtmc
 //const double p34; 
 
 const double P8_25_1;// = (((-1)*p34+1)); 
  const double P8_25_2 ;// = ((p34));

module f8 
s : [25 .. 43] init 25; 
 
 [] s=25 -> (P8_25_1):(s'=26) + (P8_25_2):(s'=43); 
 [] s=26 -> true; 
 [] s=43 -> true; 
 
endmodule
label " prob_f8_s26 "= (s = 26); 
 label " prob_f8_s43 " = (s = 43); 
 