dtmc
 

module f26 
s : [73 .. 111] init 73; 
 
 [] s=73 -> ((4967/5000)):(s'=74) + ((33/5000)):(s'=111); 
 [] s=74 -> true; 
 [] s=111 -> true; 
 
endmodule
label " prob_f26_s74 "= (s = 74); 
 label " prob_f26_s111 " = (s = 111); 
 