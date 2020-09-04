dtmc
     //const double p22; 
  // const double p11;  
  // const double r22;  
  // const double y1;  
  // const double y2;  
 
 const double P21_22_1;// = (((-1)*p22+1)); 
  const double P21_22_3 ;// = (( (p22) ) * ( ((-1)*y1-y2+1) ));
  const double P21_22_4 ;// = (( (p22) ) * ( (y1) ));
  const double P21_22_5 ;// = (( (p22) ) * ( ( (y2) ) * ( (p11) ) ));
  const double P21_22_6 ;// = (( (p22) ) * ( ( (y2) ) * ( ((-1)*p11+1) ) ));
 const double P21_47_2;// = ((r22)); 
  const double P21_47_7 ;// = (((-1)*r22+1));

module f21 
s : [22 .. 100] init 22; 
 
 [] s=22 -> (P21_22_1):(s'=47) + (P21_22_3):(s'=95) + (P21_22_4):(s'=96) + (P21_22_5):(s'=97) + (P21_22_6):(s'=99); 
 [] s=47 -> (P21_47_2):(s'=22) + (P21_47_7):(s'=100); 
 [] s=95 -> true; 
 [] s=96 -> true; 
 [] s=97 -> true; 
 [] s=99 -> true; 
 [] s=100 -> true; 
 
endmodule
label " prob_f21_s95 "= (s = 95); 
 label " prob_f21_s96 " = (s = 96); 
 label " prob_f21_s97 " = (s = 97); 
 label " prob_f21_s99 " = (s = 99); 
 label " prob_f21_s100 " = (s = 100); 
 