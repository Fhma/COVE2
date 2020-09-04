dtmc
  //const double r53; 
  // const double p53;  
 
 const double P6_13_1;// = (((-1)*p53+1)); 
  const double P6_13_3 ;// = ((p53));
 const double P6_32_2;// = ((r53)); 
  const double P6_32_4 ;// = (((-1)*r53+1));

module f6 
s : [13 .. 53] init 13; 
 
 [] s=13 -> (P6_13_1):(s'=32) + (P6_13_3):(s'=52); 
 [] s=32 -> (P6_32_2):(s'=13) + (P6_32_4):(s'=53); 
 [] s=52 -> true; 
 [] s=53 -> true; 
 
endmodule
label " prob_f6_s52 "= (s = 52); 
 label " prob_f6_s53 " = (s = 53); 
 