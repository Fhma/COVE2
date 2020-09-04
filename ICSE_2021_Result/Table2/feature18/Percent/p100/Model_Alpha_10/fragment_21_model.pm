dtmc
 //const double p48; 
 
 const double P21_60_1;// = (((-1)*p48+1)); 
  const double P21_60_2 ;// = ((p48));

module f21 
s : [60 .. 139] init 60; 
 
 [] s=60 -> (P21_60_1):(s'=114) + (P21_60_2):(s'=139); 
 [] s=114 -> true; 
 [] s=139 -> true; 
 
endmodule
label " prob_f21_s114 "= (s = 114); 
 label " prob_f21_s139 " = (s = 139); 
 