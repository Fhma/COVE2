dtmc
 

module f26 
s : [66 .. 184] init 66; 
 
 [] s=66 -> ((2481/2500)):(s'=67) + ((19/2500)):(s'=184); 
 [] s=67 -> true; 
 [] s=184 -> true; 
 
endmodule
label " prob_f26_s67 "= (s = 67); 
 label " prob_f26_s184 " = (s = 184); 
 