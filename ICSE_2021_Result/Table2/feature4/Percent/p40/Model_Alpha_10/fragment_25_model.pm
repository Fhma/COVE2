dtmc
 

module f25 
s : [64 .. 183] init 64; 
 
 [] s=64 -> ((4979/5000)):(s'=65) + ((21/5000)):(s'=183); 
 [] s=65 -> true; 
 [] s=183 -> true; 
 
endmodule
label " prob_f25_s65 "= (s = 65); 
 label " prob_f25_s183 " = (s = 183); 
 