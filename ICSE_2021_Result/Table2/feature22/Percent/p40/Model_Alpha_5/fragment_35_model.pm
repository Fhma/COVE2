dtmc
 

module f35 
s : [81 .. 84] init 81; 
 
 [] s=81 -> ((3/5)):(s'=82) + ((2/5)):(s'=84); 
 [] s=82 -> true; 
 [] s=84 -> true; 
 
endmodule
label " prob_f35_s82 "= (s = 82); 
 label " prob_f35_s84 " = (s = 84); 
 