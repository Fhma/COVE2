dtmc
  //const double r42; 
  // const double p42;  
 
 const double P7_12_1;// = (((-1)*p42+1)); 
  const double P7_12_3 ;// = ((p42));
 const double P7_25_2;// = ((r42)); 
  const double P7_25_4 ;// = (((-1)*r42+1));

module f7 
s : [12 .. 44] init 12; 
 
 [] s=12 -> (P7_12_1):(s'=25) + (P7_12_3):(s'=43); 
 [] s=25 -> (P7_25_2):(s'=12) + (P7_25_4):(s'=44); 
 [] s=43 -> true; 
 [] s=44 -> true; 
 
endmodule
label " prob_f7_s43 "= (s = 43); 
 label " prob_f7_s44 " = (s = 44); 
 