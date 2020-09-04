dtmc
 //const double p9; 
 
 const double P8_10_1;// = ((p9)); 
  const double P8_10_2 ;// = (((-1)*p9+1));

module f8 
s : [10 .. 120] init 10; 
 
 [] s=10 -> (P8_10_1):(s'=11) + (P8_10_2):(s'=120); 
 [] s=11 -> true; 
 [] s=120 -> true; 
 
endmodule
label " prob_f8_s11 "= (s = 11); 
 label " prob_f8_s120 " = (s = 120); 
 