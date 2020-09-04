dtmc
  //const double p52; 
  // const double r52;  
 
 const double P4_11_1;// = (((-1)*p52+1)); 
  const double P4_11_3 ;// = ((p52));
 const double P4_24_2;// = ((r52)); 
  const double P4_24_4 ;// = (((-1)*r52+1));

module f4 
s : [11 .. 37] init 11; 
 
 [] s=11 -> (P4_11_1):(s'=24) + (P4_11_3):(s'=36); 
 [] s=24 -> (P4_24_2):(s'=11) + (P4_24_4):(s'=37); 
 [] s=36 -> true; 
 [] s=37 -> true; 
 
endmodule
label " prob_f4_s36 "= (s = 36); 
 label " prob_f4_s37 " = (s = 37); 
 