dtmc
 //const double p48; 
 
 const double P24_60_1;// = (((-1)*p48+1)); 
  const double P24_60_2 ;// = ((p48));

module f24 
s : [60 .. 182] init 60; 
 
 [] s=60 -> (P24_60_1):(s'=118) + (P24_60_2):(s'=182); 
 [] s=118 -> true; 
 [] s=182 -> true; 
 
endmodule
label " prob_f24_s118 "= (s = 118); 
 label " prob_f24_s182 " = (s = 182); 
 