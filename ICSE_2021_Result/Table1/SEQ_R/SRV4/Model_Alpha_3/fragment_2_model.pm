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
 const double P2_29_3;// = ((r21)); 
  const double P2_29_8 ;// = (((-1)*r21+1));

module f2 
s : [2 .. 56] init 2; 
 
 [] s=2 -> (P2_2_1):(s'=7) + (P2_2_2):(s'=29); 
 [] s=7 -> (P2_7_4):(s'=2) + (P2_7_5):(s'=53) + (P2_7_6):(s'=54) + (P2_7_7):(s'=55); 
 [] s=29 -> (P2_29_3):(s'=2) + (P2_29_8):(s'=56); 
 [] s=53 -> true; 
 [] s=54 -> true; 
 [] s=55 -> true; 
 [] s=56 -> true; 
 
endmodule
label " prob_f2_s53 "= (s = 53); 
 label " prob_f2_s54 " = (s = 54); 
 label " prob_f2_s55 " = (s = 55); 
 label " prob_f2_s56 " = (s = 56); 
 