dtmc
 //const double p63; 
 
 const double P3_12_1;// = (((-1)*p63+1)); 
  const double P3_12_2 ;// = ((p63));

module f3 
s : [12 .. 33] init 12; 
 
 [] s=12 -> (P3_12_1):(s'=13) + (P3_12_2):(s'=33); 
 [] s=13 -> true; 
 [] s=33 -> true; 
 
endmodule
label " prob_f3_s13 "= (s = 13); 
 label " prob_f3_s33 " = (s = 33); 
 