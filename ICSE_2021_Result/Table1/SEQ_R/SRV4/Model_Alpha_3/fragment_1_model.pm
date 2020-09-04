dtmc
 //const double x; 
 
 const double P1_0_1;// = ((x)); 
  const double P1_0_2 ;// = (((-1)*x+1));

module f1 
s : [0 .. 4] init 0; 
 
 [] s=0 -> (P1_0_1):(s'=1) + (P1_0_2):(s'=4); 
 [] s=1 -> true; 
 [] s=4 -> true; 
 
endmodule
label " prob_f1_s1 "= (s = 1); 
 label " prob_f1_s4 " = (s = 4); 
 