dtmc
 //const double p3; 
 
 const double P6_4_1;// = ((p3)); 
  const double P6_4_2 ;// = (((-1)*p3+1));

module f6 
s : [4 .. 102] init 4; 
 
 [] s=4 -> (P6_4_1):(s'=5) + (P6_4_2):(s'=102); 
 [] s=5 -> true; 
 [] s=102 -> true; 
 
endmodule
label " prob_f6_s5 "= (s = 5); 
 label " prob_f6_s102 " = (s = 102); 
 