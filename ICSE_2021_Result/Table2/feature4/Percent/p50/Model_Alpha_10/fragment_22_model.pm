dtmc
 

module f22 
s : [51 .. 55] init 51; 
 
 [] s=51 -> ((4/5)):(s'=52) + ((1/5)):(s'=55); 
 [] s=52 -> true; 
 [] s=55 -> true; 
 
endmodule
label " prob_f22_s52 "= (s = 52); 
 label " prob_f22_s55 " = (s = 55); 
 