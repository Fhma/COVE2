dtmc
 //const double p52; 
 
 const double P4_14_1;// = (((-1)*p52+1)); 
  const double P4_14_2 ;// = ((p52));

module f4 
s : [14 .. 34] init 14; 
 
 [] s=14 -> (P4_14_1):(s'=15) + (P4_14_2):(s'=34); 
 [] s=15 -> true; 
 [] s=34 -> true; 
 
endmodule
label " prob_f4_s15 "= (s = 15); 
 label " prob_f4_s34 " = (s = 34); 
 