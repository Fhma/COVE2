dtmc
 

module f7 
s : [8 .. 119] init 8; 
 
 [] s=8 -> ((4989/5000)):(s'=9) + ((11/5000)):(s'=119); 
 [] s=9 -> true; 
 [] s=119 -> true; 
 
endmodule
label " prob_f7_s9 "= (s = 9); 
 label " prob_f7_s119 " = (s = 119); 
 