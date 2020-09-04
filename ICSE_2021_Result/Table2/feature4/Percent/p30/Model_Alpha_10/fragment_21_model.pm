dtmc
 

module f21 
s : [49 .. 128] init 49; 
 
 [] s=49 -> ((4973/5000)):(s'=50) + ((27/5000)):(s'=128); 
 [] s=50 -> true; 
 [] s=128 -> true; 
 
endmodule
label " prob_f21_s50 "= (s = 50); 
 label " prob_f21_s128 " = (s = 128); 
 