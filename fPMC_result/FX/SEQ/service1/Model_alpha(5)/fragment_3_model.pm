dtmc
 //const double p31; 
 
 const double P3_3_1;// = ((p31)); 
  const double P3_3_2 ;// = (((-1)*p31+(1)));

module f3 
s : [3 .. 14] init 3; 
 
 [] s=3 -> (P3_3_1):(s'=6) + (P3_3_2):(s'=14); 
 [] s=6 -> true; 
 [] s=14 -> true; 
 
endmodule
label " prob_f3_s6 "= (s = 6); 
 label " prob_f3_s14 " = (s = 14); 
 