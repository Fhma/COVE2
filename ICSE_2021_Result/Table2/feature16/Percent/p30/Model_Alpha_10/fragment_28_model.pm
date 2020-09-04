dtmc
 

module f28 
s : [55 .. 58] init 55; 
 
 [] s=55 -> ((7/10)):(s'=56) + ((3/10)):(s'=58); 
 [] s=56 -> true; 
 [] s=58 -> true; 
 
endmodule
label " prob_f28_s56 "= (s = 56); 
 label " prob_f28_s58 " = (s = 58); 
 