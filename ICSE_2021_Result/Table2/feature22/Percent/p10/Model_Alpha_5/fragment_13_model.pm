dtmc
 

module f13 
s : [18 .. 120] init 18; 
 
 [] s=18 -> ((9947/10000)):(s'=19) + ((53/10000)):(s'=120); 
 [] s=19 -> true; 
 [] s=120 -> true; 
 
endmodule
label " prob_f13_s19 "= (s = 19); 
 label " prob_f13_s120 " = (s = 120); 
 