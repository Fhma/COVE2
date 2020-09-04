dtmc
 //const double p9; 
 
 const double P8_8_1;// = ((p9)); 
  const double P8_8_2 ;// = (((-1)*p9+1));

module f8 
s : [8 .. 124] init 8; 
 
 [] s=8 -> (P8_8_1):(s'=9) + (P8_8_2):(s'=124); 
 [] s=9 -> true; 
 [] s=124 -> true; 
 
endmodule
label " prob_f8_s9 "= (s = 9); 
 label " prob_f8_s124 " = (s = 124); 
 