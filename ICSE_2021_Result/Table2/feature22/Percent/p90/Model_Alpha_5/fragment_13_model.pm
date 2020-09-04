dtmc
 //const double p15; 
 
 const double P13_18_1;// = ((p15)); 
  const double P13_18_2 ;// = (((-1)*p15+1));

module f13 
s : [18 .. 120] init 18; 
 
 [] s=18 -> (P13_18_1):(s'=19) + (P13_18_2):(s'=120); 
 [] s=19 -> true; 
 [] s=120 -> true; 
 
endmodule
label " prob_f13_s19 "= (s = 19); 
 label " prob_f13_s120 " = (s = 120); 
 