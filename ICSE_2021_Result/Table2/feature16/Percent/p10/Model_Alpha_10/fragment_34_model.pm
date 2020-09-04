dtmc
 

module f34 
s : [85 .. 88] init 85; 
 
 [] s=85 -> ((7/10)):(s'=86) + ((3/10)):(s'=88); 
 [] s=86 -> true; 
 [] s=88 -> true; 
 
endmodule
label " prob_f34_s86 "= (s = 86); 
 label " prob_f34_s88 " = (s = 88); 
 