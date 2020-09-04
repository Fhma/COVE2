dtmc
 //const double p1; 
 
 const double P1_0_1;// = ((p1)); 
  const double P1_0_2 ;// = (((-1)*p1+(1)));

module f1 
s : [0 .. 30] init 0; 
 
 [] s=0 -> (P1_0_1):(s'=1) + (P1_0_2):(s'=30); 
 [] s=1 -> true; 
 [] s=30 -> true; 
 
endmodule
label " prob_f1_s1 "= (s = 1); 
 label " prob_f1_s30 " = (s = 30); 
 