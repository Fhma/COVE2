dtmc
 //const double p60; 
 
 const double P26_73_1;// = ((p60)); 
  const double P26_73_2 ;// = (((-1)*p60+1));

module f26 
s : [73 .. 111] init 73; 
 
 [] s=73 -> (P26_73_1):(s'=74) + (P26_73_2):(s'=111); 
 [] s=74 -> true; 
 [] s=111 -> true; 
 
endmodule
label " prob_f26_s74 "= (s = 74); 
 label " prob_f26_s111 " = (s = 111); 
 