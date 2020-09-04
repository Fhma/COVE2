dtmc
     //const double p11; 
  // const double p24;  
  // const double r24;  
  // const double y1;  
  // const double y2;  
 
 const double P23_24_1;// = (((-1)*p24+1)); 
  const double P23_24_3 ;// = (( (p24) ) * ( ((-1)*y1-y2+1) ));
  const double P23_24_4 ;// = (( (p24) ) * ( (y1) ));
  const double P23_24_5 ;// = (( (p24) ) * ( ( (y2) ) * ( (p11) ) ));
  const double P23_24_6 ;// = (( (p24) ) * ( ( (y2) ) * ( ((-1)*p11+1) ) ));
 const double P23_49_2;// = ((r24)); 
  const double P23_49_7 ;// = (((-1)*r24+1));

module f23 
s : [24 .. 110] init 24; 
 
 [] s=24 -> (P23_24_1):(s'=49) + (P23_24_3):(s'=106) + (P23_24_4):(s'=107) + (P23_24_5):(s'=108) + (P23_24_6):(s'=109); 
 [] s=49 -> (P23_49_2):(s'=24) + (P23_49_7):(s'=110); 
 [] s=106 -> true; 
 [] s=107 -> true; 
 [] s=108 -> true; 
 [] s=109 -> true; 
 [] s=110 -> true; 
 
endmodule
label " prob_f23_s106 "= (s = 106); 
 label " prob_f23_s107 " = (s = 107); 
 label " prob_f23_s108 " = (s = 108); 
 label " prob_f23_s109 " = (s = 109); 
 label " prob_f23_s110 " = (s = 110); 
 