dtmc
 //const double p60; 
 
 const double P35_81_1;// = ((p60)); 
  const double P35_81_2 ;// = (((-1)*p60+1));

module f35 
s : [81 .. 84] init 81; 
 
 [] s=81 -> (P35_81_1):(s'=82) + (P35_81_2):(s'=84); 
 [] s=82 -> true; 
 [] s=84 -> true; 
 
endmodule
label " prob_f35_s82 "= (s = 82); 
 label " prob_f35_s84 " = (s = 84); 
 