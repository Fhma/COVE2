dtmc
 

module f17 
s : [55 .. 59] init 55; 
 
 [] s=55 -> ((4/5)):(s'=56) + ((1/5)):(s'=59); 
 [] s=56 -> true; 
 [] s=59 -> true; 
 
endmodule
label " prob_f17_s56 "= (s = 56); 
 label " prob_f17_s59 " = (s = 59); 
 