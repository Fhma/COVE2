dtmc
 

module f16 
s : [33 .. 129] init 33; 
 
 [] s=33 -> ((9981/10000)):(s'=34) + ((19/10000)):(s'=129); 
 [] s=34 -> true; 
 [] s=129 -> true; 
 
endmodule
label " prob_f16_s34 "= (s = 34); 
 label " prob_f16_s129 " = (s = 129); 
 