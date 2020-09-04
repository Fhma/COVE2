dtmc
 //const double p52; 
 
 const double P25_64_1;// = ((p52)); 
  const double P25_64_2 ;// = (((-1)*p52+1));

module f25 
s : [64 .. 183] init 64; 
 
 [] s=64 -> (P25_64_1):(s'=65) + (P25_64_2):(s'=183); 
 [] s=65 -> true; 
 [] s=183 -> true; 
 
endmodule
label " prob_f25_s65 "= (s = 65); 
 label " prob_f25_s183 " = (s = 183); 
 