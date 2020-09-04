dtmc
 

module f20 
s : [39 .. 133] init 39; 
 
 [] s=39 -> ((9909/10000)):(s'=40) + ((91/10000)):(s'=133); 
 [] s=40 -> true; 
 [] s=133 -> true; 
 
endmodule
label " prob_f20_s40 "= (s = 40); 
 label " prob_f20_s133 " = (s = 133); 
 