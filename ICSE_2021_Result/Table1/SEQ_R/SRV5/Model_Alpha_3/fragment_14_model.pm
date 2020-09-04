dtmc
   //const double r54; 
  // const double p61;  
  // const double p54;  
 
 const double P14_16_1;// = (((-1)*p54+1)); 
  const double P14_16_3 ;// = (( (p54) ) * ( (p61) ));
  const double P14_16_4 ;// = (( (p54) ) * ( ((-1)*p61+1) ));
 const double P14_47_2;// = ((r54)); 
  const double P14_47_5 ;// = (((-1)*r54+1));

module f14 
s : [16 .. 93] init 16; 
 
 [] s=16 -> (P14_16_1):(s'=47) + (P14_16_3):(s'=91) + (P14_16_4):(s'=92); 
 [] s=47 -> (P14_47_2):(s'=16) + (P14_47_5):(s'=93); 
 [] s=91 -> true; 
 [] s=92 -> true; 
 [] s=93 -> true; 
 
endmodule
label " prob_f14_s91 "= (s = 91); 
 label " prob_f14_s92 " = (s = 92); 
 label " prob_f14_s93 " = (s = 93); 
 