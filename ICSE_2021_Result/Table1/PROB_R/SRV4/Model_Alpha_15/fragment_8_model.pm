dtmc
 //const double p31; 
 
 const double P8_22_1;// = ((p31)); 
  const double P8_22_2 ;// = (((-1)*p31+1));

module f8 
s : [22 .. 59] init 22; 
 
 [] s=22 -> (P8_22_1):(s'=54) + (P8_22_2):(s'=59); 
 [] s=54 -> true; 
 [] s=59 -> true; 
 
endmodule
label " prob_f8_s54 "= (s = 54); 
 label " prob_f8_s59 " = (s = 59); 
 