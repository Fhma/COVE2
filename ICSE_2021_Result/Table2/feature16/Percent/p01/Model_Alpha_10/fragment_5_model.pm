dtmc
 

module f5 
s : [3 .. 26] init 3; 
 
 [] s=3 -> ((7/10)):(s'=4) + ((3/10)):(s'=26); 
 [] s=4 -> true; 
 [] s=26 -> true; 
 
endmodule
label " prob_f5_s4 "= (s = 4); 
 label " prob_f5_s26 " = (s = 26); 
 