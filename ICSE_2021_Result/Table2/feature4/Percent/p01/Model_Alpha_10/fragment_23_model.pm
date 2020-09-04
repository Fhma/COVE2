dtmc
 

module f23 
s : [53 .. 122] init 53; 
 
 [] s=53 -> ((249/250)):(s'=54) + ((1/250)):(s'=122); 
 [] s=54 -> true; 
 [] s=122 -> true; 
 
endmodule
label " prob_f23_s54 "= (s = 54); 
 label " prob_f23_s122 " = (s = 122); 
 