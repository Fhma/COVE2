dtmc
 //const double p46; 
 
 const double P27_53_1;// = (((-1)*p46+1)); 
  const double P27_53_2 ;// = ((p46));

module f27 
s : [53 .. 141] init 53; 
 
 [] s=53 -> (P27_53_1):(s'=136) + (P27_53_2):(s'=141); 
 [] s=136 -> true; 
 [] s=141 -> true; 
 
endmodule
label " prob_f27_s136 "= (s = 136); 
 label " prob_f27_s141 " = (s = 141); 
 