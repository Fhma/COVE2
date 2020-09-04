dtmc
 

module f22 
s : [64 .. 70] init 64; 
 
 [] s=64 -> ((3/5)):(s'=65) + ((2/5)):(s'=70); 
 [] s=65 -> true; 
 [] s=70 -> true; 
 
endmodule
label " prob_f22_s65 "= (s = 65); 
 label " prob_f22_s70 " = (s = 70); 
 