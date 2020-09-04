dtmc
 

module f41 
s : [94 .. 145] init 94; 
 
 [] s=94 -> ((4951/5000)):(s'=95) + ((49/5000)):(s'=145); 
 [] s=95 -> true; 
 [] s=145 -> true; 
 
endmodule
label " prob_f41_s95 "= (s = 95); 
 label " prob_f41_s145 " = (s = 145); 
 