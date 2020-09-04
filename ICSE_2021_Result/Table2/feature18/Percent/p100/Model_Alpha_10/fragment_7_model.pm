dtmc
 //const double p7; 
 
 const double P7_8_1;// = ((p7)); 
  const double P7_8_2 ;// = (((-1)*p7+1));

module f7 
s : [8 .. 119] init 8; 
 
 [] s=8 -> (P7_8_1):(s'=9) + (P7_8_2):(s'=119); 
 [] s=9 -> true; 
 [] s=119 -> true; 
 
endmodule
label " prob_f7_s9 "= (s = 9); 
 label " prob_f7_s119 " = (s = 119); 
 