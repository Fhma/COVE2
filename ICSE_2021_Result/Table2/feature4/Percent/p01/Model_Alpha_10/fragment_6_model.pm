dtmc
 

module f6 
s : [4 .. 102] init 4; 
 
 [] s=4 -> ((7/10)):(s'=5) + ((3/10)):(s'=102); 
 [] s=5 -> true; 
 [] s=102 -> true; 
 
endmodule
label " prob_f6_s5 "= (s = 5); 
 label " prob_f6_s102 " = (s = 102); 
 