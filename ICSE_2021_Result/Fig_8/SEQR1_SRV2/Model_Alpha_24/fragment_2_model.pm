dtmc
  //const double p62; 
  // const double r62;  
 
 const double P2_10_1;// = (((-1)*p62+1)); 
  const double P2_10_3 ;// = ((p62));
 const double P2_23_2;// = ((r62)); 
  const double P2_23_4 ;// = (((-1)*r62+1));

module f2 
s : [10 .. 37] init 10; 
 
 [] s=10 -> (P2_10_1):(s'=23) + (P2_10_3):(s'=36); 
 [] s=23 -> (P2_23_2):(s'=10) + (P2_23_4):(s'=37); 
 [] s=36 -> true; 
 [] s=37 -> true; 
 
endmodule
label " prob_f2_s36 "= (s = 36); 
 label " prob_f2_s37 " = (s = 37); 
 