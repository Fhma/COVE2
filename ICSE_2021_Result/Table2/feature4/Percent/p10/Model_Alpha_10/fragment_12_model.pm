dtmc
 

module f12 
s : [13 .. 107] init 13; 
 
 [] s=13 -> ((39/10000)):(s'=95) + ((9961/10000)):(s'=107); 
 [] s=95 -> true; 
 [] s=107 -> true; 
 
endmodule
label " prob_f12_s95 "= (s = 95); 
 label " prob_f12_s107 " = (s = 107); 
 