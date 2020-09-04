dtmc
     //const double p11; 
  // const double p25;  
  // const double r25;  
  // const double y1;  
  // const double y2;  
 
 const double P28_29_1;// = (((-1)*p25+1)); 
  const double P28_29_3 ;// = (( (p25) ) * ( ((-1)*y1-y2+1) ));
  const double P28_29_4 ;// = (( (p25) ) * ( (y1) ));
  const double P28_29_5 ;// = (( (p25) ) * ( ( (y2) ) * ( (p11) ) ));
  const double P28_29_6 ;// = (( (p25) ) * ( ( (y2) ) * ( ((-1)*p11+1) ) ));
 const double P28_60_2;// = ((r25)); 
  const double P28_60_7 ;// = (((-1)*r25+1));

module f28 
s : [29 .. 137] init 29; 
 
 [] s=29 -> (P28_29_1):(s'=60) + (P28_29_3):(s'=133) + (P28_29_4):(s'=134) + (P28_29_5):(s'=135) + (P28_29_6):(s'=136); 
 [] s=60 -> (P28_60_2):(s'=29) + (P28_60_7):(s'=137); 
 [] s=133 -> true; 
 [] s=134 -> true; 
 [] s=135 -> true; 
 [] s=136 -> true; 
 [] s=137 -> true; 
 
endmodule
label " prob_f28_s133 "= (s = 133); 
 label " prob_f28_s134 " = (s = 134); 
 label " prob_f28_s135 " = (s = 135); 
 label " prob_f28_s136 " = (s = 136); 
 label " prob_f28_s137 " = (s = 137); 
 