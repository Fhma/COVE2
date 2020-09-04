dtmc
 

module f5 
s : [4 .. 5] init 4; 
 
 [] s=4 -> ((1)):(s'=5); 
 [] s=5 -> true; 
 
endmodule
label " prob_f5_s5 "= (s = 5); 
 