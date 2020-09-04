dtmc
     //const double p18; 
  // const double p17;  
  // const double p19;  
  // const double p21;  
  // const double p20;  
 
 const double P14_20_1;// = ((p17)); 
  const double P14_20_11 ;// = (((-1)*p17+1));
 const double P14_21_2;// = ((p18)); 
  const double P14_21_3 ;// = (((-1)*p18+1));
 const double P14_22_4;// = ((p19)); 
  const double P14_22_5 ;// = (((-1)*p19+1));
 const double P14_23_6;// = ((p20)); 
  const double P14_23_13 ;// = (((-1)*p20+1));
 const double P14_24_7;// = ((p21)); 
  const double P14_24_12 ;// = (((-1)*p21+1));

module f14 
s : [20 .. 123] init 20; 
 
 [] s=20 -> (P14_20_1):(s'=21) + (P14_20_11):(s'=121); 
 [] s=21 -> (P14_21_2):(s'=22) + (P14_21_3):(s'=27); 
 [] s=22 -> (P14_22_4):(s'=23) + (P14_22_5):(s'=26); 
 [] s=23 -> (P14_23_6):(s'=24) + (P14_23_13):(s'=123); 
 [] s=24 -> (P14_24_7):(s'=25) + (P14_24_12):(s'=122); 
 [] s=25 -> ((1)):(s'=22); 
 [] s=26 -> ((1)):(s'=21); 
 [] s=27 -> ((1)):(s'=20); 
 [] s=121 -> true; 
 [] s=122 -> true; 
 [] s=123 -> true; 
 
endmodule
label " prob_f14_s121 "= (s = 121); 
 label " prob_f14_s122 " = (s = 122); 
 label " prob_f14_s123 " = (s = 123); 
 