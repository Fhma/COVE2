dtmc
 //const double p58; 
 
 const double P25_71_1;// = ((p58)); 
  const double P25_71_2 ;// = (((-1)*p58+1));

module f25 
s : [71 .. 112] init 71; 
 
 [] s=71 -> (P25_71_1):(s'=72) + (P25_71_2):(s'=112); 
 [] s=72 -> true; 
 [] s=112 -> true; 
 
endmodule
label " prob_f25_s72 "= (s = 72); 
 label " prob_f25_s112 " = (s = 112); 
 