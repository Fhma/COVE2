dtmc
 //const double p31; 
 
 const double P19_38_1;// = (((-1)*p31+1)); 
  const double P19_38_2 ;// = ((p31));

module f19 
s : [38 .. 132] init 38; 
 
 [] s=38 -> (P19_38_1):(s'=131) + (P19_38_2):(s'=132); 
 [] s=131 -> true; 
 [] s=132 -> true; 
 
endmodule
label " prob_f19_s131 "= (s = 131); 
 label " prob_f19_s132 " = (s = 132); 
 