dtmc
 

module f27 
s : [59 .. 134] init 59; 
 
 [] s=59 -> ((622/625)):(s'=60) + ((3/625)):(s'=134); 
 [] s=60 -> true; 
 [] s=134 -> true; 
 
endmodule
label " prob_f27_s60 "= (s = 60); 
 label " prob_f27_s134 " = (s = 134); 
 