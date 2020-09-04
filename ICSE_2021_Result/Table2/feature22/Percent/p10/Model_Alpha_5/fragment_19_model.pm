dtmc
 

module f19 
s : [45 .. 49] init 45; 
 
 [] s=45 -> ((4/5)):(s'=46) + ((1/5)):(s'=49); 
 [] s=46 -> true; 
 [] s=49 -> true; 
 
endmodule
label " prob_f19_s46 "= (s = 46); 
 label " prob_f19_s49 " = (s = 49); 
 