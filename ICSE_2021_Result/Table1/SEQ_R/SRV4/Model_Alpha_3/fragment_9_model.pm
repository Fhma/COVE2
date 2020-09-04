dtmc
  //const double p63; 
  // const double r63;  
 
 const double P9_11_1;// = (((-1)*p63+1)); 
  const double P9_11_3 ;// = ((p63));
 const double P9_36_2;// = ((r63)); 
  const double P9_36_4 ;// = (((-1)*r63+1));

module f9 
s : [11 .. 68] init 11; 
 
 [] s=11 -> (P9_11_1):(s'=36) + (P9_11_3):(s'=67); 
 [] s=36 -> (P9_36_2):(s'=11) + (P9_36_4):(s'=68); 
 [] s=67 -> true; 
 [] s=68 -> true; 
 
endmodule
label " prob_f9_s67 "= (s = 67); 
 label " prob_f9_s68 " = (s = 68); 
 