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
 const double P2_17_3;// = ((r21)); 
  const double P2_17_8 ;// = (((-1)*r21+1));

module f2 
s : [2 .. 32] init 2; 
 
 [] s=2 -> (P2_2_1):(s'=7) + (P2_2_2):(s'=17); 
 [] s=7 -> (P2_7_4):(s'=2) + (P2_7_5):(s'=29) + (P2_7_6):(s'=30) + (P2_7_7):(s'=31); 
 [] s=17 -> (P2_17_3):(s'=2) + (P2_17_8):(s'=32); 
 [] s=29 -> true; 
 [] s=30 -> true; 
 [] s=31 -> true; 
 [] s=32 -> true; 
 
endmodule
label " prob_f2_s29 "= (s = 29); 
 label " prob_f2_s30 " = (s = 30); 
 label " prob_f2_s31 " = (s = 31); 
 label " prob_f2_s32 " = (s = 32); 
 