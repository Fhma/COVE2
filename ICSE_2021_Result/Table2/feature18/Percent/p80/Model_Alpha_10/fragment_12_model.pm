dtmc
 //const double p15; 
 
 const double P12_16_1;// = ((p15)); 
  const double P12_16_2 ;// = (((-1)*p15+1));

module f12 
s : [16 .. 124] init 16; 
 
 [] s=16 -> (P12_16_1):(s'=17) + (P12_16_2):(s'=124); 
 [] s=17 -> true; 
 [] s=124 -> true; 
 
endmodule
label " prob_f12_s17 "= (s = 17); 
 label " prob_f12_s124 " = (s = 124); 
 