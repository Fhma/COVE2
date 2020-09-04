dtmc
 

module f24 
s : [60 .. 182] init 60; 
 
 [] s=60 -> ((13/2000)):(s'=118) + ((1987/2000)):(s'=182); 
 [] s=118 -> true; 
 [] s=182 -> true; 
 
endmodule
label " prob_f24_s118 "= (s = 118); 
 label " prob_f24_s182 " = (s = 182); 
 