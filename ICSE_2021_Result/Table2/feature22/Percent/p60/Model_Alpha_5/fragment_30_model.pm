dtmc
 //const double p50; 
 
 const double P30_65_1;// = ((p50)); 
  const double P30_65_2 ;// = (((-1)*p50+1));

module f30 
s : [65 .. 138] init 65; 
 
 [] s=65 -> (P30_65_1):(s'=66) + (P30_65_2):(s'=71); 
 [] s=66 -> ((4/5)):(s'=67) + ((1/5)):(s'=70); 
 [] s=67 -> ((9907/10000)):(s'=68) + ((93/10000)):(s'=138); 
 [] s=68 -> ((1239/1250)):(s'=69) + ((11/1250)):(s'=137); 
 [] s=69 -> ((1)):(s'=66); 
 [] s=70 -> ((1)):(s'=65); 
 [] s=71 -> true; 
 [] s=137 -> true; 
 [] s=138 -> true; 
 
endmodule
label " prob_f30_s71 "= (s = 71); 
 label " prob_f30_s137 " = (s = 137); 
 label " prob_f30_s138 " = (s = 138); 
 