dtmc
 

module f37 
s : [91 .. 154] init 91; 
 
 [] s=91 -> ((4999/5000)):(s'=92) + ((1/5000)):(s'=154); 
 [] s=92 -> true; 
 [] s=154 -> true; 
 
endmodule
label " prob_f37_s92 "= (s = 92); 
 label " prob_f37_s154 " = (s = 154); 
 