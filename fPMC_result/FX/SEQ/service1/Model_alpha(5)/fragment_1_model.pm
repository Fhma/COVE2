dtmc
     //const double p11; 
  // const double x;  
  // const double y1;  
  // const double y2;  
  // const double p21;  
 
 const double P1_0_1;// = ((x)); 
  const double P1_0_2 ;// = (((-1)*x+(1)));
 const double P1_1_3;// = ((p11)); 
  const double P1_1_6 ;// = (((-1)*p11+(1)));
 const double P1_2_4;// = ((p21)); 
  const double P1_2_8 ;// = (((-1)*p21+(1)));
 const double P1_7_5;// = ((y2)); 
  const double P1_7_7 ;// = (( ((-1)*y1-y2+(1)) ) + ( (y1) ));

module f1 
s : [0 .. 13] init 0; 
 
 [] s=0 -> (P1_0_1):(s'=1) + (P1_0_2):(s'=4); 
 [] s=1 -> (P1_1_3):(s'=2) + (P1_1_6):(s'=11); 
 [] s=2 -> (P1_2_4):(s'=7) + (P1_2_8):(s'=13); 
 [] s=4 -> true; 
 [] s=7 -> (P1_7_5):(s'=1) + (P1_7_7):(s'=12); 
 [] s=11 -> true; 
 [] s=12 -> true; 
 [] s=13 -> true; 
 
endmodule
label " prob_f1_s4 "= (s = 4); 
 label " prob_f1_s11 " = (s = 11); 
 label " prob_f1_s12 " = (s = 12); 
 label " prob_f1_s13 " = (s = 13); 
 