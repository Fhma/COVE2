dtmc
   //const double p61; 
  // const double p52;  
  // const double r52;  
 
 const double P9_11_1;// = (((-1)*p52+1)); 
  const double P9_11_3 ;// = (( (p52) ) * ( (p61) ));
  const double P9_11_4 ;// = (( (p52) ) * ( ((-1)*p61+1) ));
 const double P9_24_2;// = ((r52)); 
  const double P9_24_5 ;// = (((-1)*r52+1));

module f9 
s : [11 .. 45] init 11; 
 
 [] s=11 -> (P9_11_1):(s'=24) + (P9_11_3):(s'=43) + (P9_11_4):(s'=44); 
 [] s=24 -> (P9_24_2):(s'=11) + (P9_24_5):(s'=45); 
 [] s=43 -> true; 
 [] s=44 -> true; 
 [] s=45 -> true; 
 
endmodule
label " prob_f9_s43 "= (s = 43); 
 label " prob_f9_s44 " = (s = 44); 
 label " prob_f9_s45 " = (s = 45); 
 