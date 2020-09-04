dtmc
 //const double p31; 
 
 const double P24_54_1;// = (( (1) ) * ( (p31) )); 
  const double P24_54_2 ;// = (( (1) ) * ( ((-1)*p31+1) ));

module f24 
s : [54 .. 132] init 54; 
 
 [] s=54 -> (P24_54_1):(s'=131) + (P24_54_2):(s'=132); 
 [] s=131 -> true; 
 [] s=132 -> true; 
 
endmodule
label " prob_f24_s131 "= (s = 131); 
 label " prob_f24_s132 " = (s = 132); 
 