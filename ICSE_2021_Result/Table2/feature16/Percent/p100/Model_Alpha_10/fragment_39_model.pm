dtmc
 //const double p77; 
 
 const double P39_99_1;// = ((p77)); 
  const double P39_99_12 ;// = (((-1)*p77+1));

module f39 
s : [99 .. 160] init 99; 
 
 [] s=99 -> (P39_99_1):(s'=100) + (P39_99_12):(s'=156); 
 [] s=100 -> ((4/5)):(s'=101) + ((1/5)):(s'=107); 
 [] s=101 -> ((3/5)):(s'=102) + ((2/5)):(s'=104); 
 [] s=102 -> ((624/625)):(s'=103) + ((1/625)):(s'=159); 
 [] s=103 -> ((621/625)):(s'=106) + ((4/625)):(s'=157); 
 [] s=104 -> ((9989/10000)):(s'=105) + ((11/10000)):(s'=160); 
 [] s=105 -> ((9901/10000)):(s'=106) + ((99/10000)):(s'=158); 
 [] s=106 -> ((1)):(s'=100); 
 [] s=107 -> ((1)):(s'=99); 
 [] s=156 -> true; 
 [] s=157 -> true; 
 [] s=158 -> true; 
 [] s=159 -> true; 
 [] s=160 -> true; 
 
endmodule
label " prob_f39_s156 "= (s = 156); 
 label " prob_f39_s157 " = (s = 157); 
 label " prob_f39_s158 " = (s = 158); 
 label " prob_f39_s159 " = (s = 159); 
 label " prob_f39_s160 " = (s = 160); 
 