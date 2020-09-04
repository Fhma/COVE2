dtmc
 //const double p10; 
 
 const double P12_13_1;// = (((-1)*p10+1)); 
  const double P12_13_2 ;// = ((p10));

module f12 
s : [13 .. 107] init 13; 
 
 [] s=13 -> (P12_13_1):(s'=95) + (P12_13_2):(s'=107); 
 [] s=95 -> true; 
 [] s=107 -> true; 
 
endmodule
label " prob_f12_s95 "= (s = 95); 
 label " prob_f12_s107 " = (s = 107); 
 