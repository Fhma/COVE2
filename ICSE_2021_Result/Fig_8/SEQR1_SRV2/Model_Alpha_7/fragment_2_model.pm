dtmc
  //const double p61; 
  // const double r61;  
 
 const double P2_6_1;// = (((-1)*p61+1)); 
  const double P2_6_3 ;// = ((p61));
 const double P2_21_2;// = ((r61)); 
  const double P2_21_4 ;// = (((-1)*r61+1));

module f2 
s : [6 .. 34] init 6; 
 
 [] s=6 -> (P2_6_1):(s'=21) + (P2_6_3):(s'=33); 
 [] s=21 -> (P2_21_2):(s'=6) + (P2_21_4):(s'=34); 
 [] s=33 -> true; 
 [] s=34 -> true; 
 
endmodule
label " prob_f2_s33 "= (s = 33); 
 label " prob_f2_s34 " = (s = 34); 
 