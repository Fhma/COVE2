dtmc
  //const double p63; 
  // const double r63;  
 
 const double P9_11_1;// = (((-1)*p63+1)); 
  const double P9_11_3 ;// = ((p63));
 const double P9_42_2;// = ((r63)); 
  const double P9_42_4 ;// = (((-1)*r63+1));

module f9 
s : [11 .. 80] init 11; 
 
 [] s=11 -> (P9_11_1):(s'=42) + (P9_11_3):(s'=79); 
 [] s=42 -> (P9_42_2):(s'=11) + (P9_42_4):(s'=80); 
 [] s=79 -> true; 
 [] s=80 -> true; 
 
endmodule
label " prob_f9_s79 "= (s = 79); 
 label " prob_f9_s80 " = (s = 80); 
 