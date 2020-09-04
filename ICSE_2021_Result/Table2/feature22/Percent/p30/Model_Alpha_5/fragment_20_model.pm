dtmc
 

module f20 
s : [47 .. 128] init 47; 
 
 [] s=47 -> ((2479/2500)):(s'=48) + ((21/2500)):(s'=128); 
 [] s=48 -> true; 
 [] s=128 -> true; 
 
endmodule
label " prob_f20_s48 "= (s = 48); 
 label " prob_f20_s128 " = (s = 128); 
 