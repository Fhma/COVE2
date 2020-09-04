dtmc
 

module f13 
s : [19 .. 20] init 19; 
 
 [] s=19 -> ((1)):(s'=20); 
 [] s=20 -> true; 
 
endmodule
label " prob_f13_s20 "= (s = 20); 
 