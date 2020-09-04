dtmc
 

module f26 
s : [57 .. 133] init 57; 
 
 [] s=57 -> ((9997/10000)):(s'=58) + ((3/10000)):(s'=133); 
 [] s=58 -> true; 
 [] s=133 -> true; 
 
endmodule
label " prob_f26_s58 "= (s = 58); 
 label " prob_f26_s133 " = (s = 133); 
 