dtmc
   //const double p33; 
  // const double r33;  
  // const double p61;  
 
 const double P21_23_1;// = (((-1)*p33+1)); 
  const double P21_23_3 ;// = (( (p33) ) * ( (p61) ));
  const double P21_23_4 ;// = (( (p33) ) * ( ((-1)*p61+1) ));
 const double P21_54_2;// = ((r33)); 
  const double P21_54_5 ;// = (((-1)*r33+1));

module f21 
s : [23 .. 110] init 23; 
 
 [] s=23 -> (P21_23_1):(s'=54) + (P21_23_3):(s'=108) + (P21_23_4):(s'=109); 
 [] s=54 -> (P21_54_2):(s'=23) + (P21_54_5):(s'=110); 
 [] s=108 -> true; 
 [] s=109 -> true; 
 [] s=110 -> true; 
 
endmodule
label " prob_f21_s108 "= (s = 108); 
 label " prob_f21_s109 " = (s = 109); 
 label " prob_f21_s110 " = (s = 110); 
 