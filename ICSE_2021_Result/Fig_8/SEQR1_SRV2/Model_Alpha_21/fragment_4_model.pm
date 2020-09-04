dtmc
   //const double p61; 
  // const double p52;  
  // const double r52;  
 
 const double P4_11_1;// = (((-1)*p52+1)); 
  const double P4_11_3 ;// = (( (p52) ) * ( (p61) ));
  const double P4_11_4 ;// = (( (p52) ) * ( ((-1)*p61+1) ));
 const double P4_24_2;// = ((r52)); 
  const double P4_24_5 ;// = (((-1)*r52+1));

module f4 
s : [11 .. 39] init 11; 
 
 [] s=11 -> (P4_11_1):(s'=24) + (P4_11_3):(s'=36) + (P4_11_4):(s'=38); 
 [] s=24 -> (P4_24_2):(s'=11) + (P4_24_5):(s'=39); 
 [] s=36 -> true; 
 [] s=38 -> true; 
 [] s=39 -> true; 
 
endmodule
label " prob_f4_s36 "= (s = 36); 
 label " prob_f4_s38 " = (s = 38); 
 label " prob_f4_s39 " = (s = 39); 
 