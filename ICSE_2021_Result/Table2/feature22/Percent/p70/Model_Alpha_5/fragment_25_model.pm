dtmc
 //const double p40; 
 
 const double P25_55_1;// = ((p40)); 
  const double P25_55_2 ;// = (((-1)*p40+1));

module f25 
s : [55 .. 72] init 55; 
 
 [] s=55 -> (P25_55_1):(s'=56) + (P25_55_2):(s'=72); 
 [] s=56 -> true; 
 [] s=72 -> true; 
 
endmodule
label " prob_f25_s56 "= (s = 56); 
 label " prob_f25_s72 " = (s = 72); 
 