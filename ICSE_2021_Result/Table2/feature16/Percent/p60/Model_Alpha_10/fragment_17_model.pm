dtmc
 //const double p28; 
 
 const double P17_35_1;// = ((p28)); 
  const double P17_35_2 ;// = (((-1)*p28+1));

module f17 
s : [35 .. 130] init 35; 
 
 [] s=35 -> (P17_35_1):(s'=36) + (P17_35_2):(s'=130); 
 [] s=36 -> true; 
 [] s=130 -> true; 
 
endmodule
label " prob_f17_s36 "= (s = 36); 
 label " prob_f17_s130 " = (s = 130); 
 