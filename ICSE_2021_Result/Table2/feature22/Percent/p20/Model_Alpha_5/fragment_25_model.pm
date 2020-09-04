dtmc
 

module f25 
s : [55 .. 72] init 55; 
 
 [] s=55 -> ((1/2)):(s'=56) + ((1/2)):(s'=72); 
 [] s=56 -> true; 
 [] s=72 -> true; 
 
endmodule
label " prob_f25_s56 "= (s = 56); 
 label " prob_f25_s72 " = (s = 72); 
 