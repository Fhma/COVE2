dtmc
 //const double p36; 
 
 const double P21_50_1;// = ((p36)); 
  const double P21_50_2 ;// = (((-1)*p36+1));

module f21 
s : [50 .. 129] init 50; 
 
 [] s=50 -> (P21_50_1):(s'=51) + (P21_50_2):(s'=129); 
 [] s=51 -> true; 
 [] s=129 -> true; 
 
endmodule
label " prob_f21_s51 "= (s = 51); 
 label " prob_f21_s129 " = (s = 129); 
 