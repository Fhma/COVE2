dtmc
 //const double p26; 
 
 const double P16_33_1;// = ((p26)); 
  const double P16_33_2 ;// = (((-1)*p26+1));

module f16 
s : [33 .. 129] init 33; 
 
 [] s=33 -> (P16_33_1):(s'=34) + (P16_33_2):(s'=129); 
 [] s=34 -> true; 
 [] s=129 -> true; 
 
endmodule
label " prob_f16_s34 "= (s = 34); 
 label " prob_f16_s129 " = (s = 129); 
 