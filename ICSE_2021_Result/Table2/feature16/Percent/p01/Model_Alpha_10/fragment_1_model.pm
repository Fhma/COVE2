dtmc
 //const double p1; 
 
 const double P1_0_1;// = ((p1)); 
  const double P1_0_2 ;// = (((-1)*p1+1));

module f1 
s : [0 .. 83] init 0; 
 
 [] s=0 -> (P1_0_1):(s'=1) + (P1_0_2):(s'=83); 
 [] s=1 -> true; 
 [] s=83 -> true; 
 
endmodule
label " prob_f1_s1 "= (s = 1); 
 label " prob_f1_s83 " = (s = 83); 
 