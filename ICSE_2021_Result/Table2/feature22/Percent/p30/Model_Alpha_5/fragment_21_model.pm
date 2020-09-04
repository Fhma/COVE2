dtmc
 

module f21 
s : [50 .. 129] init 50; 
 
 [] s=50 -> ((623/625)):(s'=51) + ((2/625)):(s'=129); 
 [] s=51 -> true; 
 [] s=129 -> true; 
 
endmodule
label " prob_f21_s51 "= (s = 51); 
 label " prob_f21_s129 " = (s = 129); 
 