dtmc
 

module f9 
s : [11 .. 14] init 11; 
 
 [] s=11 -> ((3/5)):(s'=12) + ((2/5)):(s'=14); 
 [] s=12 -> true; 
 [] s=14 -> true; 
 
endmodule
label " prob_f9_s12 "= (s = 12); 
 label " prob_f9_s14 " = (s = 14); 
 