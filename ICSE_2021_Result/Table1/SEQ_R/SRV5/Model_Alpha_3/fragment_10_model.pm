dtmc
  //const double r64; 
  // const double p64;  
 
 const double P10_12_1;// = (((-1)*p64+1)); 
  const double P10_12_3 ;// = ((p64));
 const double P10_43_2;// = ((r64)); 
  const double P10_43_4 ;// = (((-1)*r64+1));

module f10 
s : [12 .. 82] init 12; 
 
 [] s=12 -> (P10_12_1):(s'=43) + (P10_12_3):(s'=81); 
 [] s=43 -> (P10_43_2):(s'=12) + (P10_43_4):(s'=82); 
 [] s=81 -> true; 
 [] s=82 -> true; 
 
endmodule
label " prob_f10_s81 "= (s = 81); 
 label " prob_f10_s82 " = (s = 82); 
 