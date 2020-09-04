dtmc
 

module f19 
s : [38 .. 132] init 38; 
 
 [] s=38 -> ((41/5000)):(s'=131) + ((4959/5000)):(s'=132); 
 [] s=131 -> true; 
 [] s=132 -> true; 
 
endmodule
label " prob_f19_s131 "= (s = 131); 
 label " prob_f19_s132 " = (s = 132); 
 