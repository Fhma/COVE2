dtmc
 

module f11 
s : [18 .. 127] init 18; 
 
 [] s=18 -> ((249/250)):(s'=19) + ((1/250)):(s'=127); 
 [] s=19 -> true; 
 [] s=127 -> true; 
 
endmodule
label " prob_f11_s19 "= (s = 19); 
 label " prob_f11_s127 " = (s = 127); 
 