dtmc
 //const double p71; 
 
 const double P41_94_1;// = ((p71)); 
  const double P41_94_2 ;// = (((-1)*p71+1));

module f41 
s : [94 .. 145] init 94; 
 
 [] s=94 -> (P41_94_1):(s'=95) + (P41_94_2):(s'=145); 
 [] s=95 -> true; 
 [] s=145 -> true; 
 
endmodule
label " prob_f41_s95 "= (s = 95); 
 label " prob_f41_s145 " = (s = 145); 
 