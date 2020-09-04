dtmc
 //const double p51; 
 
 const double P5_15_1;// = ((p51)); 
  const double P5_15_2 ;// = (((-1)*p51+1));

module f5 
s : [15 .. 61] init 15; 
 
 [] s=15 -> (P5_15_1):(s'=55) + (P5_15_2):(s'=61); 
 [] s=55 -> true; 
 [] s=61 -> true; 
 
endmodule
label " prob_f5_s55 "= (s = 55); 
 label " prob_f5_s61 " = (s = 61); 
 