dtmc
   //const double r53; 
  // const double p61;  
  // const double p53;  
 
 const double P12_14_1;// = (((-1)*p53+1)); 
  const double P12_14_3 ;// = (( (p53) ) * ( (p61) ));
  const double P12_14_4 ;// = (( (p53) ) * ( ((-1)*p61+1) ));
 const double P12_39_2;// = ((r53)); 
  const double P12_39_5 ;// = (((-1)*r53+1));

module f12 
s : [14 .. 76] init 14; 
 
 [] s=14 -> (P12_14_1):(s'=39) + (P12_14_3):(s'=74) + (P12_14_4):(s'=75); 
 [] s=39 -> (P12_39_2):(s'=14) + (P12_39_5):(s'=76); 
 [] s=74 -> true; 
 [] s=75 -> true; 
 [] s=76 -> true; 
 
endmodule
label " prob_f12_s74 "= (s = 74); 
 label " prob_f12_s75 " = (s = 75); 
 label " prob_f12_s76 " = (s = 76); 
 