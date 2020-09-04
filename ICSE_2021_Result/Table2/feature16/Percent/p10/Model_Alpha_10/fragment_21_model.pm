dtmc
 

module f21 
s : [42 .. 45] init 42; 
 
 [] s=42 -> ((3/5)):(s'=43) + ((2/5)):(s'=45); 
 [] s=43 -> true; 
 [] s=45 -> true; 
 
endmodule
label " prob_f21_s43 "= (s = 43); 
 label " prob_f21_s45 " = (s = 45); 
 