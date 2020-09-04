dtmc
  //const double p63; 
  // const double r63;  
 
 const double P4_11_1;// = (((-1)*p63+1)); 
  const double P4_11_3 ;// = ((p63));
 const double P4_30_2;// = ((r63)); 
  const double P4_30_4 ;// = (((-1)*r63+1));

module f4 
s : [11 .. 49] init 11; 
 
 [] s=11 -> (P4_11_1):(s'=30) + (P4_11_3):(s'=48); 
 [] s=30 -> (P4_30_2):(s'=11) + (P4_30_4):(s'=49); 
 [] s=48 -> true; 
 [] s=49 -> true; 
 
endmodule
label " prob_f4_s48 "= (s = 48); 
 label " prob_f4_s49 " = (s = 49); 
 