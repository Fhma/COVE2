dtmc
 //const double p30; 
 
 const double P18_41_1;// = ((p30)); 
  const double P18_41_2 ;// = (((-1)*p30+1));

module f18 
s : [41 .. 127] init 41; 
 
 [] s=41 -> (P18_41_1):(s'=42) + (P18_41_2):(s'=127); 
 [] s=42 -> true; 
 [] s=127 -> true; 
 
endmodule
label " prob_f18_s42 "= (s = 42); 
 label " prob_f18_s127 " = (s = 127); 
 