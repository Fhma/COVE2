dtmc
 //const double p54; 
 
 const double P26_66_1;// = ((p54)); 
  const double P26_66_2 ;// = (((-1)*p54+1));

module f26 
s : [66 .. 184] init 66; 
 
 [] s=66 -> (P26_66_1):(s'=67) + (P26_66_2):(s'=184); 
 [] s=67 -> true; 
 [] s=184 -> true; 
 
endmodule
label " prob_f26_s67 "= (s = 67); 
 label " prob_f26_s184 " = (s = 184); 
 