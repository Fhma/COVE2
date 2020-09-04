dtmc
 

module f25 
s : [71 .. 112] init 71; 
 
 [] s=71 -> ((2491/2500)):(s'=72) + ((9/2500)):(s'=112); 
 [] s=72 -> true; 
 [] s=112 -> true; 
 
endmodule
label " prob_f25_s72 "= (s = 72); 
 label " prob_f25_s112 " = (s = 112); 
 