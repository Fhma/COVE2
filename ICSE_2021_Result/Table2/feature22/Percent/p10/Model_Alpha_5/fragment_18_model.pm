dtmc
 

module f18 
s : [41 .. 127] init 41; 
 
 [] s=41 -> ((9933/10000)):(s'=42) + ((67/10000)):(s'=127); 
 [] s=42 -> true; 
 [] s=127 -> true; 
 
endmodule
label " prob_f18_s42 "= (s = 42); 
 label " prob_f18_s127 " = (s = 127); 
 