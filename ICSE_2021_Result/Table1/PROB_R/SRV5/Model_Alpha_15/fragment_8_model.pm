dtmc
 //const double p31; 
 
 const double P8_25_1;// = ((p31)); 
  const double P8_25_2 ;// = (((-1)*p31+1));

module f8 
s : [25 .. 68] init 25; 
 
 [] s=25 -> (P8_25_1):(s'=62) + (P8_25_2):(s'=68); 
 [] s=62 -> true; 
 [] s=68 -> true; 
 
endmodule
label " prob_f8_s62 "= (s = 62); 
 label " prob_f8_s68 " = (s = 68); 
 