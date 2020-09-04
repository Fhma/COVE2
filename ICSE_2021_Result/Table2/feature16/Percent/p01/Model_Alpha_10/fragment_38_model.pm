dtmc
 

module f38 
s : [93 .. 155] init 93; 
 
 [] s=93 -> ((623/625)):(s'=94) + ((2/625)):(s'=155); 
 [] s=94 -> true; 
 [] s=155 -> true; 
 
endmodule
label " prob_f38_s94 "= (s = 94); 
 label " prob_f38_s155 " = (s = 155); 
 