dtmc
 

module f17 
s : [35 .. 130] init 35; 
 
 [] s=35 -> ((2479/2500)):(s'=36) + ((21/2500)):(s'=130); 
 [] s=36 -> true; 
 [] s=130 -> true; 
 
endmodule
label " prob_f17_s36 "= (s = 36); 
 label " prob_f17_s130 " = (s = 130); 
 