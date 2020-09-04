dtmc
 //const double p11; 
 
 const double P9_12_1;// = ((p11)); 
  const double P9_12_2 ;// = (((-1)*p11+1));

module f9 
s : [12 .. 121] init 12; 
 
 [] s=12 -> (P9_12_1):(s'=13) + (P9_12_2):(s'=121); 
 [] s=13 -> true; 
 [] s=121 -> true; 
 
endmodule
label " prob_f9_s13 "= (s = 13); 
 label " prob_f9_s121 " = (s = 121); 
 