dtmc
     //const double p23; 
  // const double p11;  
  // const double r23;  
  // const double y1;  
  // const double y2;  
 
 const double P26_27_1;// = (((-1)*p23+1)); 
  const double P26_27_3 ;// = (( (p23) ) * ( ((-1)*y1-y2+1) ));
  const double P26_27_4 ;// = (( (p23) ) * ( (y1) ));
  const double P26_27_5 ;// = (( (p23) ) * ( ( (y2) ) * ( (p11) ) ));
  const double P26_27_6 ;// = (( (p23) ) * ( ( (y2) ) * ( ((-1)*p11+1) ) ));
 const double P26_58_2;// = ((r23)); 
  const double P26_58_7 ;// = (((-1)*r23+1));

module f26 
s : [27 .. 127] init 27; 
 
 [] s=27 -> (P26_27_1):(s'=58) + (P26_27_3):(s'=123) + (P26_27_4):(s'=124) + (P26_27_5):(s'=125) + (P26_27_6):(s'=126); 
 [] s=58 -> (P26_58_2):(s'=27) + (P26_58_7):(s'=127); 
 [] s=123 -> true; 
 [] s=124 -> true; 
 [] s=125 -> true; 
 [] s=126 -> true; 
 [] s=127 -> true; 
 
endmodule
label " prob_f26_s123 "= (s = 123); 
 label " prob_f26_s124 " = (s = 124); 
 label " prob_f26_s125 " = (s = 125); 
 label " prob_f26_s126 " = (s = 126); 
 label " prob_f26_s127 " = (s = 127); 
 