dtmc
  //const double p62; 
  // const double r62;  
 
 const double P8_10_1;// = (((-1)*p62+1)); 
  const double P8_10_3 ;// = ((p62));
 const double P8_23_2;// = ((r62)); 
  const double P8_23_4 ;// = (((-1)*r62+1));

module f8 
s : [10 .. 42] init 10; 
 
 [] s=10 -> (P8_10_1):(s'=23) + (P8_10_3):(s'=41); 
 [] s=23 -> (P8_23_2):(s'=10) + (P8_23_4):(s'=42); 
 [] s=41 -> true; 
 [] s=42 -> true; 
 
endmodule
label " prob_f8_s41 "= (s = 41); 
 label " prob_f8_s42 " = (s = 42); 
 