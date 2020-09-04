dtmc
    //const double p12; 
  // const double p11;  
  // const double p14;  
  // const double p13;  
 
 const double P10_13_1;// = ((p11)); 
  const double P10_13_6 ;// = (((-1)*p11+1));
 const double P10_14_2;// = ((p12)); 
  const double P10_14_8 ;// = (((-1)*p12+1));
 const double P10_15_3;// = ((p13)); 
  const double P10_15_9 ;// = (((-1)*p13+1));
 const double P10_16_4;// = ((p14)); 
  const double P10_16_7 ;// = (((-1)*p14+1));

module f10 
s : [13 .. 126] init 13; 
 
 [] s=13 -> (P10_13_1):(s'=14) + (P10_13_6):(s'=119); 
 [] s=14 -> (P10_14_2):(s'=15) + (P10_14_8):(s'=125); 
 [] s=15 -> (P10_15_3):(s'=16) + (P10_15_9):(s'=126); 
 [] s=16 -> (P10_16_4):(s'=17) + (P10_16_7):(s'=120); 
 [] s=17 -> ((1)):(s'=14); 
 [] s=119 -> true; 
 [] s=120 -> true; 
 [] s=125 -> true; 
 [] s=126 -> true; 
 
endmodule
label " prob_f10_s119 "= (s = 119); 
 label " prob_f10_s120 " = (s = 120); 
 label " prob_f10_s125 " = (s = 125); 
 label " prob_f10_s126 " = (s = 126); 
 