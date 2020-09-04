dtmc
 //const double p31; 
 
 const double P8_16_1;// = ((p31)); 
  const double P8_16_2 ;// = (((-1)*p31+1));

module f8 
s : [16 .. 41] init 16; 
 
 [] s=16 -> (P8_16_1):(s'=38) + (P8_16_2):(s'=41); 
 [] s=38 -> true; 
 [] s=41 -> true; 
 
endmodule
label " prob_f8_s38 "= (s = 38); 
 label " prob_f8_s41 " = (s = 41); 
 