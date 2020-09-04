dtmc
 

module f14 
s : [29 .. 37] init 29; 
 
 [] s=29 -> ((3/5)):(s'=30) + ((2/5)):(s'=37); 
 [] s=30 -> true; 
 [] s=37 -> true; 
 
endmodule
label " prob_f14_s30 "= (s = 30); 
 label " prob_f14_s37 " = (s = 37); 
 