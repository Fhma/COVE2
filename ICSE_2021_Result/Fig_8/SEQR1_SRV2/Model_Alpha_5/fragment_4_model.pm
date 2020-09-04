dtmc
    //const double z1; 
  // const double z2;  
  // const double p41;  
  // const double p51;  
 
 const double P4_8_1;// = (( ((-1)*z1-z2+1) ) * ( (p41) )); 
  const double P4_8_2 ;// = ((z2));
  const double P4_8_3 ;// = (( (z1) ) * ( (p51) ));
  const double P4_8_4 ;// = (( ((-1)*z1-z2+1) ) * ( ((-1)*p41+1) ));
  const double P4_8_5 ;// = (( (z1) ) * ( ((-1)*p51+1) ));

module f4 
s : [8 .. 38] init 8; 
 
 [] s=8 -> (P4_8_1):(s'=8) + (P4_8_2):(s'=34) + (P4_8_3):(s'=35) + (P4_8_4):(s'=37) + (P4_8_5):(s'=38); 
 [] s=34 -> true; 
 [] s=35 -> true; 
 [] s=37 -> true; 
 [] s=38 -> true; 
 
endmodule
label " prob_f4_s34 "= (s = 34); 
 label " prob_f4_s35 " = (s = 35); 
 label " prob_f4_s37 " = (s = 37); 
 label " prob_f4_s38 " = (s = 38); 
 