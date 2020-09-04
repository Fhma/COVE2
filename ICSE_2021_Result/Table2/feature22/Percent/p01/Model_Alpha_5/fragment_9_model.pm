dtmc
 

module f9 
s : [7 .. 118] init 7; 
 
 [] s=7 -> ((3/5)):(s'=117) + ((2/5)):(s'=118); 
 [] s=117 -> true; 
 [] s=118 -> true; 
 
endmodule
label " prob_f9_s117 "= (s = 117); 
 label " prob_f9_s118 " = (s = 118); 
 