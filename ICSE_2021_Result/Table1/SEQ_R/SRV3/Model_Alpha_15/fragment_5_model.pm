dtmc
  //const double p52; 
  // const double r52;  
 
 const double P5_12_1;// = (((-1)*p52+1)); 
  const double P5_12_3 ;// = ((p52));
 const double P5_31_2;// = ((r52)); 
  const double P5_31_4 ;// = (((-1)*r52+1));

module f5 
s : [12 .. 51] init 12; 
 
 [] s=12 -> (P5_12_1):(s'=31) + (P5_12_3):(s'=50); 
 [] s=31 -> (P5_31_2):(s'=12) + (P5_31_4):(s'=51); 
 [] s=50 -> true; 
 [] s=51 -> true; 
 
endmodule
label " prob_f5_s50 "= (s = 50); 
 label " prob_f5_s51 " = (s = 51); 
 