dtmc
 //const double p55; 
 
 const double P24_68_1;// = ((p55)); 
  const double P24_68_2 ;// = (((-1)*p55+1));

module f24 
s : [68 .. 105] init 68; 
 
 [] s=68 -> (P24_68_1):(s'=69) + (P24_68_2):(s'=105); 
 [] s=69 -> true; 
 [] s=105 -> true; 
 
endmodule
label " prob_f24_s69 "= (s = 69); 
 label " prob_f24_s105 " = (s = 105); 
 