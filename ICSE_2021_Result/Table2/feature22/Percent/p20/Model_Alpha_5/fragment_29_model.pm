dtmc
 

module f29 
s : [63 .. 136] init 63; 
 
 [] s=63 -> ((9981/10000)):(s'=64) + ((19/10000)):(s'=136); 
 [] s=64 -> true; 
 [] s=136 -> true; 
 
endmodule
label " prob_f29_s64 "= (s = 64); 
 label " prob_f29_s136 " = (s = 136); 
 