dtmc
 //const double p4; 
 
 const double P5_3_1;// = ((p4)); 
  const double P5_3_2 ;// = (((-1)*p4+1));

module f5 
s : [3 .. 26] init 3; 
 
 [] s=3 -> (P5_3_1):(s'=4) + (P5_3_2):(s'=26); 
 [] s=4 -> true; 
 [] s=26 -> true; 
 
endmodule
label " prob_f5_s4 "= (s = 4); 
 label " prob_f5_s26 " = (s = 26); 
 