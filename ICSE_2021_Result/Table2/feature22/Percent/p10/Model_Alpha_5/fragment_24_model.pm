dtmc
 

module f24 
s : [54 .. 132] init 54; 
 
 [] s=54 -> (( (1) ) * ( (4/5) )):(s'=131) + (( (1) ) * ( (1/5) )):(s'=132); 
 [] s=131 -> true; 
 [] s=132 -> true; 
 
endmodule
label " prob_f24_s131 "= (s = 131); 
 label " prob_f24_s132 " = (s = 132); 
 