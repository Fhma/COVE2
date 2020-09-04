dtmc
 //const double p31; 
 
 const double P8_19_1;// = ((p31)); 
  const double P8_19_2 ;// = (((-1)*p31+1));

module f8 
s : [19 .. 50] init 19; 
 
 [] s=19 -> (P8_19_1):(s'=46) + (P8_19_2):(s'=50); 
 [] s=46 -> true; 
 [] s=50 -> true; 
 
endmodule
label " prob_f8_s46 "= (s = 46); 
 label " prob_f8_s50 " = (s = 50); 
 