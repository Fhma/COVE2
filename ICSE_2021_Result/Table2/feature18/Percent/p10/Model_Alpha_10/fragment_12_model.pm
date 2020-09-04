dtmc
 

module f12 
s : [16 .. 124] init 16; 
 
 [] s=16 -> ((9909/10000)):(s'=17) + ((91/10000)):(s'=124); 
 [] s=17 -> true; 
 [] s=124 -> true; 
 
endmodule
label " prob_f12_s17 "= (s = 17); 
 label " prob_f12_s124 " = (s = 124); 
 