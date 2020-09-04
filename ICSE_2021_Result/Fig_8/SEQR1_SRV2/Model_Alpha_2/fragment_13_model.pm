dtmc
     //const double p22; 
  // const double p11;  
  // const double r22;  
  // const double y1;  
  // const double y2;  
 
 const double P13_14_1;// = (((-1)*p22+1)); 
  const double P13_14_3 ;// = (( (p22) ) * ( ((-1)*y1-y2+1) ));
  const double P13_14_4 ;// = (( (p22) ) * ( (y1) ));
  const double P13_14_5 ;// = (( (p22) ) * ( ( (y2) ) * ( (p11) ) ));
  const double P13_14_6 ;// = (( (p22) ) * ( ( (y2) ) * ( ((-1)*p11+1) ) ));
 const double P13_27_2;// = ((r22)); 
  const double P13_27_7 ;// = (((-1)*r22+1));

module f13 
s : [14 .. 56] init 14; 
 
 [] s=14 -> (P13_14_1):(s'=27) + (P13_14_3):(s'=51) + (P13_14_4):(s'=52) + (P13_14_5):(s'=53) + (P13_14_6):(s'=55); 
 [] s=27 -> (P13_27_2):(s'=14) + (P13_27_7):(s'=56); 
 [] s=51 -> true; 
 [] s=52 -> true; 
 [] s=53 -> true; 
 [] s=55 -> true; 
 [] s=56 -> true; 
 
endmodule
label " prob_f13_s51 "= (s = 51); 
 label " prob_f13_s52 " = (s = 52); 
 label " prob_f13_s53 " = (s = 53); 
 label " prob_f13_s55 " = (s = 55); 
 label " prob_f13_s56 " = (s = 56); 
 