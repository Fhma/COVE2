dtmc
   //const double z1; 
  // const double z2;  
  // const double p41;  
 
 const double P7_8_1;// = (( ((-1)*z1-z2+1) ) * ( (p41) )); 
  const double P7_8_2 ;// = ((z2));
  const double P7_8_3 ;// = ((z1));
  const double P7_8_4 ;// = (( ((-1)*z1-z2+1) ) * ( ((-1)*p41+1) ));

module f7 
s : [8 .. 76] init 8; 
 
 [] s=8 -> (P7_8_1):(s'=8) + (P7_8_2):(s'=74) + (P7_8_3):(s'=75) + (P7_8_4):(s'=76); 
 [] s=74 -> true; 
 [] s=75 -> true; 
 [] s=76 -> true; 
 
endmodule
label " prob_f7_s74 "= (s = 74); 
 label " prob_f7_s75 " = (s = 75); 
 label " prob_f7_s76 " = (s = 76); 
 