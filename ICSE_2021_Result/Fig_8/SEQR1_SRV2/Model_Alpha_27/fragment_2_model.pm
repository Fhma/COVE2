dtmc
  //const double p62; 
  // const double r62;  
 
 const double P2_23_1;// = (( (r62) ) * ( ((-1)*p62+1) )); 
  const double P2_23_2 ;// = (((-1)*r62+1));
  const double P2_23_3 ;// = (( (r62) ) * ( (p62) ));

module f2 
s : [23 .. 36] init 23; 
 
 [] s=23 -> (P2_23_1):(s'=23) + (P2_23_2):(s'=35) + (P2_23_3):(s'=36); 
 [] s=35 -> true; 
 [] s=36 -> true; 
 
endmodule
label " prob_f2_s35 "= (s = 35); 
 label " prob_f2_s36 " = (s = 36); 
 