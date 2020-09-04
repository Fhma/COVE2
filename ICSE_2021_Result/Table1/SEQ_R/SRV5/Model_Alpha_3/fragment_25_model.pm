dtmc
     //const double p22; 
  // const double p11;  
  // const double r22;  
  // const double y1;  
  // const double y2;  
 
 const double P25_26_1;// = (((-1)*p22+1)); 
  const double P25_26_3 ;// = (( (p22) ) * ( ((-1)*y1-y2+1) ));
  const double P25_26_4 ;// = (( (p22) ) * ( (y1) ));
  const double P25_26_5 ;// = (( (p22) ) * ( ( (y2) ) * ( (p11) ) ));
  const double P25_26_6 ;// = (( (p22) ) * ( ( (y2) ) * ( ((-1)*p11+1) ) ));
 const double P25_57_2;// = ((r22)); 
  const double P25_57_7 ;// = (((-1)*r22+1));

module f25 
s : [26 .. 122] init 26; 
 
 [] s=26 -> (P25_26_1):(s'=57) + (P25_26_3):(s'=117) + (P25_26_4):(s'=118) + (P25_26_5):(s'=119) + (P25_26_6):(s'=121); 
 [] s=57 -> (P25_57_2):(s'=26) + (P25_57_7):(s'=122); 
 [] s=117 -> true; 
 [] s=118 -> true; 
 [] s=119 -> true; 
 [] s=121 -> true; 
 [] s=122 -> true; 
 
endmodule
label " prob_f25_s117 "= (s = 117); 
 label " prob_f25_s118 " = (s = 118); 
 label " prob_f25_s119 " = (s = 119); 
 label " prob_f25_s121 " = (s = 121); 
 label " prob_f25_s122 " = (s = 122); 
 