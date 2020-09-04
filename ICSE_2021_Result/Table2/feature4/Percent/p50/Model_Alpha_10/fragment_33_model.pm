dtmc
 

module f33 
s : [86 .. 192] init 86; 
 
 [] s=86 -> ((1249/1250)):(s'=87) + ((1/1250)):(s'=192); 
 [] s=87 -> true; 
 [] s=192 -> true; 
 
endmodule
label " prob_f33_s87 "= (s = 87); 
 label " prob_f33_s192 " = (s = 192); 
 