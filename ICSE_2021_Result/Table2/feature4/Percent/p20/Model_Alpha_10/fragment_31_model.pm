dtmc
 

module f31 
s : [82 .. 88] init 82; 
 
 [] s=82 -> ((3/5)):(s'=83) + ((2/5)):(s'=88); 
 [] s=83 -> true; 
 [] s=88 -> true; 
 
endmodule
label " prob_f31_s83 "= (s = 83); 
 label " prob_f31_s88 " = (s = 88); 
 