dtmc
  //const double p52; 
  // const double r52;  
 
 const double P6_11_1;// = (((-1)*p52+1)); 
  const double P6_11_3 ;// = ((p52));
 const double P6_24_2;// = ((r52)); 
  const double P6_24_4 ;// = (((-1)*r52+1));

module f6 
s : [11 .. 42] init 11; 
 
 [] s=11 -> (P6_11_1):(s'=24) + (P6_11_3):(s'=41); 
 [] s=24 -> (P6_24_2):(s'=11) + (P6_24_4):(s'=42); 
 [] s=41 -> true; 
 [] s=42 -> true; 
 
endmodule
label " prob_f6_s41 "= (s = 41); 
 label " prob_f6_s42 " = (s = 42); 
 