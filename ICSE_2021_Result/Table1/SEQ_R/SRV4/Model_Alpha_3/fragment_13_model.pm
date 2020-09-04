dtmc
   //const double r54; 
  // const double p61;  
  // const double p54;  
 
 const double P13_15_1;// = (((-1)*p54+1)); 
  const double P13_15_3 ;// = (( (p54) ) * ( (p61) ));
  const double P13_15_4 ;// = (( (p54) ) * ( ((-1)*p61+1) ));
 const double P13_40_2;// = ((r54)); 
  const double P13_40_5 ;// = (((-1)*r54+1));

module f13 
s : [15 .. 79] init 15; 
 
 [] s=15 -> (P13_15_1):(s'=40) + (P13_15_3):(s'=77) + (P13_15_4):(s'=78); 
 [] s=40 -> (P13_40_2):(s'=15) + (P13_40_5):(s'=79); 
 [] s=77 -> true; 
 [] s=78 -> true; 
 [] s=79 -> true; 
 
endmodule
label " prob_f13_s77 "= (s = 77); 
 label " prob_f13_s78 " = (s = 78); 
 label " prob_f13_s79 " = (s = 79); 
 