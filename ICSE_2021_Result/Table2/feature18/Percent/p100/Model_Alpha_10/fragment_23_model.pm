dtmc
 //const double p53; 
 
 const double P23_66_1;// = ((p53)); 
  const double P23_66_2 ;// = (((-1)*p53+1));

module f23 
s : [66 .. 110] init 66; 
 
 [] s=66 -> (P23_66_1):(s'=67) + (P23_66_2):(s'=110); 
 [] s=67 -> true; 
 [] s=110 -> true; 
 
endmodule
label " prob_f23_s67 "= (s = 67); 
 label " prob_f23_s110 " = (s = 110); 
 