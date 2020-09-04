dtmc
     //const double r21; 
  // const double p11;  
  // const double y1;  
  // const double y2;  
  // const double p21;  
 
 const double P2_2_1;// = ((p21)); 
  const double P2_2_2 ;// = (((-1)*p21+1));
 const double P2_7_4;// = (( (y2) ) * ( (p11) )); 
  const double P2_7_5 ;// = (((-1)*y1-y2+1));
  const double P2_7_6 ;// = ((y1));
  const double P2_7_7 ;// = (( (y2) ) * ( ((-1)*p11+1) ));
 const double P2_35_3;// = ((r21)); 
  const double P2_35_8 ;// = (((-1)*r21+1));

module f2 
s : [2 .. 68] init 2; 
 
 [] s=2 -> (P2_2_1):(s'=7) + (P2_2_2):(s'=35); 
 [] s=7 -> (P2_7_4):(s'=2) + (P2_7_5):(s'=65) + (P2_7_6):(s'=66) + (P2_7_7):(s'=67); 
 [] s=35 -> (P2_35_3):(s'=2) + (P2_35_8):(s'=68); 
 [] s=65 -> true; 
 [] s=66 -> true; 
 [] s=67 -> true; 
 [] s=68 -> true; 
 
endmodule
label " prob_f2_s65 "= (s = 65); 
 label " prob_f2_s66 " = (s = 66); 
 label " prob_f2_s67 " = (s = 67); 
 label " prob_f2_s68 " = (s = 68); 
 