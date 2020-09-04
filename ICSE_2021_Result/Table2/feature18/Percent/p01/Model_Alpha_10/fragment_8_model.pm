dtmc
 

module f8 
s : [10 .. 120] init 10; 
 
 [] s=10 -> ((9981/10000)):(s'=11) + ((19/10000)):(s'=120); 
 [] s=11 -> true; 
 [] s=120 -> true; 
 
endmodule
label " prob_f8_s11 "= (s = 11); 
 label " prob_f8_s120 " = (s = 120); 
 