dtmc
 

module f6 
s : [6 .. 14] init 6; 
 
 [] s=6 -> ((3/5)):(s'=7) + ((2/5)):(s'=14); 
 [] s=7 -> true; 
 [] s=14 -> true; 
 
endmodule
label " prob_f6_s7 "= (s = 7); 
 label " prob_f6_s14 " = (s = 14); 
 