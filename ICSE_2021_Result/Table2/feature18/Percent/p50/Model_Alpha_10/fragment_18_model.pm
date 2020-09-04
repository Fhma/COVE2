dtmc
 

module f18 
s : [57 .. 117] init 57; 
 
 [] s=57 -> ((2481/2500)):(s'=58) + ((19/2500)):(s'=117); 
 [] s=58 -> true; 
 [] s=117 -> true; 
 
endmodule
label " prob_f18_s58 "= (s = 58); 
 label " prob_f18_s117 " = (s = 117); 
 