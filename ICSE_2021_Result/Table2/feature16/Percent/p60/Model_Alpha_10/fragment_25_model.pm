dtmc
 //const double p42; 
 
 const double P25_49_1;// = ((p42)); 
  const double P25_49_2 ;// = (((-1)*p42+1));

module f25 
s : [49 .. 52] init 49; 
 
 [] s=49 -> (P25_49_1):(s'=50) + (P25_49_2):(s'=52); 
 [] s=50 -> true; 
 [] s=52 -> true; 
 
endmodule
label " prob_f25_s50 "= (s = 50); 
 label " prob_f25_s52 " = (s = 52); 
 