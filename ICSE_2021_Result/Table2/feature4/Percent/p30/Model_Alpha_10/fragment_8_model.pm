dtmc
 //const double p6; 
 
 const double P8_9_1;// = (((-1)*p6+1)); 
  const double P8_9_2 ;// = ((p6));

module f8 
s : [9 .. 103] init 9; 
 
 [] s=9 -> (P8_9_1):(s'=92) + (P8_9_2):(s'=103); 
 [] s=92 -> true; 
 [] s=103 -> true; 
 
endmodule
label " prob_f8_s92 "= (s = 92); 
 label " prob_f8_s103 " = (s = 103); 
 