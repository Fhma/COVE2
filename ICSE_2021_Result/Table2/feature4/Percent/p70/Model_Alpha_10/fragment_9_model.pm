dtmc
 //const double p8; 
 
 const double P9_11_1;// = ((p8)); 
  const double P9_11_2 ;// = (((-1)*p8+1));

module f9 
s : [11 .. 14] init 11; 
 
 [] s=11 -> (P9_11_1):(s'=12) + (P9_11_2):(s'=14); 
 [] s=12 -> true; 
 [] s=14 -> true; 
 
endmodule
label " prob_f9_s12 "= (s = 12); 
 label " prob_f9_s14 " = (s = 14); 
 