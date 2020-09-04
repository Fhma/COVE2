dtmc
 

module f13 
s : [27 .. 28] init 27; 
 
 [] s=27 -> ((1)):(s'=28); 
 [] s=28 -> true; 
 
endmodule
label " prob_f13_s28 "= (s = 28); 
 