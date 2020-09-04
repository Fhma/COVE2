dtmc
  //const double p62; 
  // const double r62;  
 
 const double P8_10_1;// = (((-1)*p62+1)); 
  const double P8_10_3 ;// = ((p62));
 const double P8_41_2;// = ((r62)); 
  const double P8_41_4 ;// = (((-1)*r62+1));

module f8 
s : [10 .. 78] init 10; 
 
 [] s=10 -> (P8_10_1):(s'=41) + (P8_10_3):(s'=77); 
 [] s=41 -> (P8_41_2):(s'=10) + (P8_41_4):(s'=78); 
 [] s=77 -> true; 
 [] s=78 -> true; 
 
endmodule
label " prob_f8_s77 "= (s = 77); 
 label " prob_f8_s78 " = (s = 78); 
 