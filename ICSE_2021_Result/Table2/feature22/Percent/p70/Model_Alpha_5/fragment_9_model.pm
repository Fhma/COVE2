dtmc
 //const double p5; 
 
 const double P9_7_1;// = ((p5)); 
  const double P9_7_2 ;// = (((-1)*p5+1));

module f9 
s : [7 .. 118] init 7; 
 
 [] s=7 -> (P9_7_1):(s'=117) + (P9_7_2):(s'=118); 
 [] s=117 -> true; 
 [] s=118 -> true; 
 
endmodule
label " prob_f9_s117 "= (s = 117); 
 label " prob_f9_s118 " = (s = 118); 
 