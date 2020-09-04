dtmc
 //const double p39; 
 
 const double P21_49_1;// = ((p39)); 
  const double P21_49_2 ;// = (((-1)*p39+1));

module f21 
s : [49 .. 128] init 49; 
 
 [] s=49 -> (P21_49_1):(s'=50) + (P21_49_2):(s'=128); 
 [] s=50 -> true; 
 [] s=128 -> true; 
 
endmodule
label " prob_f21_s50 "= (s = 50); 
 label " prob_f21_s128 " = (s = 128); 
 