dtmc
 

module f23 
s : [66 .. 110] init 66; 
 
 [] s=66 -> ((199/200)):(s'=67) + ((1/200)):(s'=110); 
 [] s=67 -> true; 
 [] s=110 -> true; 
 
endmodule
label " prob_f23_s67 "= (s = 67); 
 label " prob_f23_s110 " = (s = 110); 
 