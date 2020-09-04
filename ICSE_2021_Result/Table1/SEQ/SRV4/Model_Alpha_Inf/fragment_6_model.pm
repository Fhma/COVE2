dtmc
 //const double p32; 
 
 const double P6_20_1;// = (((-1)*p32+1)); 
  const double P6_20_2 ;// = ((p32));

module f6 
s : [20 .. 35] init 20; 
 
 [] s=20 -> (P6_20_1):(s'=21) + (P6_20_2):(s'=35); 
 [] s=21 -> true; 
 [] s=35 -> true; 
 
endmodule
label " prob_f6_s21 "= (s = 21); 
 label " prob_f6_s35 " = (s = 35); 
 