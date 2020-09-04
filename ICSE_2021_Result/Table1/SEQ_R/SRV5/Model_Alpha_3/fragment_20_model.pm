dtmc
   //const double r32; 
  // const double p61;  
  // const double p32;  
 
 const double P20_22_1;// = (((-1)*p32+1)); 
  const double P20_22_3 ;// = (( (p32) ) * ( (p61) ));
  const double P20_22_4 ;// = (( (p32) ) * ( ((-1)*p61+1) ));
 const double P20_53_2;// = ((r32)); 
  const double P20_53_5 ;// = (((-1)*r32+1));

module f20 
s : [22 .. 107] init 22; 
 
 [] s=22 -> (P20_22_1):(s'=53) + (P20_22_3):(s'=105) + (P20_22_4):(s'=106); 
 [] s=53 -> (P20_53_2):(s'=22) + (P20_53_5):(s'=107); 
 [] s=105 -> true; 
 [] s=106 -> true; 
 [] s=107 -> true; 
 
endmodule
label " prob_f20_s105 "= (s = 105); 
 label " prob_f20_s106 " = (s = 106); 
 label " prob_f20_s107 " = (s = 107); 
 