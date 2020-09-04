dtmc
 

module f28 
s : [61 .. 135] init 61; 
 
 [] s=61 -> ((993/1000)):(s'=62) + ((7/1000)):(s'=135); 
 [] s=62 -> true; 
 [] s=135 -> true; 
 
endmodule
label " prob_f28_s62 "= (s = 62); 
 label " prob_f28_s135 " = (s = 135); 
 