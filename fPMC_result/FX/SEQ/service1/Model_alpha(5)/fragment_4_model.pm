dtmc
   //const double z1; 
  // const double z2;  
  // const double p41;  
 
 const double P4_8_1;// = (( ((-1)*z1-z2+(1)) ) * ( (p41) )); 
  const double P4_8_2 ;// = ((z2));
  const double P4_8_3 ;// = ((z1));
  const double P4_8_4 ;// = (( ((-1)*z1-z2+(1)) ) * ( ((-1)*p41+(1)) ));

module f4 
s : [8 .. 17] init 8; 
 
 [] s=8 -> (P4_8_1):(s'=8) + (P4_8_2):(s'=15) + (P4_8_3):(s'=16) + (P4_8_4):(s'=17); 
 [] s=15 -> true; 
 [] s=16 -> true; 
 [] s=17 -> true; 
 
endmodule
label " prob_f4_s15 "= (s = 15); 
 label " prob_f4_s16 " = (s = 16); 
 label " prob_f4_s17 " = (s = 17); 
 