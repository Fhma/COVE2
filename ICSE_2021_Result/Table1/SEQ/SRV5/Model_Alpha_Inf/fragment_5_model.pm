dtmc
 //const double p52; 
 
 const double P5_15_1;// = (((-1)*p52+1)); 
  const double P5_15_2 ;// = ((p52));

module f5 
s : [15 .. 40] init 15; 
 
 [] s=15 -> (P5_15_1):(s'=16) + (P5_15_2):(s'=40); 
 [] s=16 -> true; 
 [] s=40 -> true; 
 
endmodule
label " prob_f5_s16 "= (s = 16); 
 label " prob_f5_s40 " = (s = 40); 
 