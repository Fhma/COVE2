dtmc
  //const double p62; 
  // const double r62;  
 
 const double P8_10_1;// = (((-1)*p62+1)); 
  const double P8_10_3 ;// = ((p62));
 const double P8_35_2;// = ((r62)); 
  const double P8_35_4 ;// = (((-1)*r62+1));

module f8 
s : [10 .. 66] init 10; 
 
 [] s=10 -> (P8_10_1):(s'=35) + (P8_10_3):(s'=65); 
 [] s=35 -> (P8_35_2):(s'=10) + (P8_35_4):(s'=66); 
 [] s=65 -> true; 
 [] s=66 -> true; 
 
endmodule
label " prob_f8_s65 "= (s = 65); 
 label " prob_f8_s66 " = (s = 66); 
 