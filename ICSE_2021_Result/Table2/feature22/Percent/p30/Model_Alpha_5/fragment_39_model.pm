dtmc
 

module f39 
s : [87 .. 144] init 87; 
 
 [] s=87 -> ((9909/10000)):(s'=88) + ((91/10000)):(s'=144); 
 [] s=88 -> true; 
 [] s=144 -> true; 
 
endmodule
label " prob_f39_s88 "= (s = 88); 
 label " prob_f39_s144 " = (s = 144); 
 