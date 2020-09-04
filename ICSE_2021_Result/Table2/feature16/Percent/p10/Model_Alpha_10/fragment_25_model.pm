dtmc
 

module f25 
s : [49 .. 52] init 49; 
 
 [] s=49 -> ((3/5)):(s'=50) + ((2/5)):(s'=52); 
 [] s=50 -> true; 
 [] s=52 -> true; 
 
endmodule
label " prob_f25_s50 "= (s = 50); 
 label " prob_f25_s52 " = (s = 52); 
 