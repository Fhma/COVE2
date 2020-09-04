dtmc
  //const double p62; 
  // const double r62;  
 
 const double P3_10_1;// = (((-1)*p62+1)); 
  const double P3_10_3 ;// = ((p62));
 const double P3_23_2;// = ((r62)); 
  const double P3_23_4 ;// = (((-1)*r62+1));

module f3 
s : [10 .. 36] init 10; 
 
 [] s=10 -> (P3_10_1):(s'=23) + (P3_10_3):(s'=35); 
 [] s=23 -> (P3_23_2):(s'=10) + (P3_23_4):(s'=36); 
 [] s=35 -> true; 
 [] s=36 -> true; 
 
endmodule
label " prob_f3_s35 "= (s = 35); 
 label " prob_f3_s36 " = (s = 36); 
 