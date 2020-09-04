dtmc
   //const double r53; 
  // const double p61;  
  // const double p53;  
 
 const double P13_15_1;// = (((-1)*p53+1)); 
  const double P13_15_3 ;// = (( (p53) ) * ( (p61) ));
  const double P13_15_4 ;// = (( (p53) ) * ( ((-1)*p61+1) ));
 const double P13_46_2;// = ((r53)); 
  const double P13_46_5 ;// = (((-1)*r53+1));

module f13 
s : [15 .. 90] init 15; 
 
 [] s=15 -> (P13_15_1):(s'=46) + (P13_15_3):(s'=88) + (P13_15_4):(s'=89); 
 [] s=46 -> (P13_46_2):(s'=15) + (P13_46_5):(s'=90); 
 [] s=88 -> true; 
 [] s=89 -> true; 
 [] s=90 -> true; 
 
endmodule
label " prob_f13_s88 "= (s = 88); 
 label " prob_f13_s89 " = (s = 89); 
 label " prob_f13_s90 " = (s = 90); 
 