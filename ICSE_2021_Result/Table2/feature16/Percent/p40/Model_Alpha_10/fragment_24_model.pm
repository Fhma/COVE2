dtmc
 

module f24 
s : [44 .. 139] init 44; 
 
 [] s=44 -> ((31/10000)):(s'=134) + ((9969/10000)):(s'=139); 
 [] s=134 -> true; 
 [] s=139 -> true; 
 
endmodule
label " prob_f24_s134 "= (s = 134); 
 label " prob_f24_s139 " = (s = 139); 
 