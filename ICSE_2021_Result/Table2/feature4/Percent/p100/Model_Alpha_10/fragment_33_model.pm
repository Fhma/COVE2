dtmc
 //const double p72; 
 
 const double P33_86_1;// = ((p72)); 
  const double P33_86_2 ;// = (((-1)*p72+1));

module f33 
s : [86 .. 192] init 86; 
 
 [] s=86 -> (P33_86_1):(s'=87) + (P33_86_2):(s'=192); 
 [] s=87 -> true; 
 [] s=192 -> true; 
 
endmodule
label " prob_f33_s87 "= (s = 87); 
 label " prob_f33_s192 " = (s = 192); 
 