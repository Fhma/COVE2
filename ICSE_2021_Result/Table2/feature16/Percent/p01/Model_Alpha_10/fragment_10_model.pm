dtmc
 

module f10 
s : [13 .. 126] init 13; 
 
 [] s=13 -> ((3/5)):(s'=14) + ((2/5)):(s'=119); 
 [] s=14 -> ((4/5)):(s'=15) + ((1/5)):(s'=125); 
 [] s=15 -> ((9913/10000)):(s'=16) + ((87/10000)):(s'=126); 
 [] s=16 -> ((2477/2500)):(s'=17) + ((23/2500)):(s'=120); 
 [] s=17 -> ((1)):(s'=14); 
 [] s=119 -> true; 
 [] s=120 -> true; 
 [] s=125 -> true; 
 [] s=126 -> true; 
 
endmodule
label " prob_f10_s119 "= (s = 119); 
 label " prob_f10_s120 " = (s = 120); 
 label " prob_f10_s125 " = (s = 125); 
 label " prob_f10_s126 " = (s = 126); 
 