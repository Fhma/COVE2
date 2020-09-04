dtmc
 //const double p54; 
 
 const double P6_17_1;// = (((-1)*p54+1)); 
  const double P6_17_2 ;// = ((p54));

module f6 
s : [17 .. 41] init 17; 
 
 [] s=17 -> (P6_17_1):(s'=18) + (P6_17_2):(s'=41); 
 [] s=18 -> true; 
 [] s=41 -> true; 
 
endmodule
label " prob_f6_s18 "= (s = 18); 
 label " prob_f6_s41 " = (s = 41); 
 