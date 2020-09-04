dtmc
  //const double r31; 
  // const double p31;  
 
 const double P3_3_1;// = ((p31)); 
  const double P3_3_2 ;// = (((-1)*p31+1));
 const double P3_18_3;// = ((r31)); 
  const double P3_18_4 ;// = (((-1)*r31+1));

module f3 
s : [3 .. 33] init 3; 
 
 [] s=3 -> (P3_3_1):(s'=6) + (P3_3_2):(s'=18); 
 [] s=6 -> true; 
 [] s=18 -> (P3_18_3):(s'=3) + (P3_18_4):(s'=33); 
 [] s=33 -> true; 
 
endmodule
label " prob_f3_s6 "= (s = 6); 
 label " prob_f3_s33 " = (s = 33); 
 